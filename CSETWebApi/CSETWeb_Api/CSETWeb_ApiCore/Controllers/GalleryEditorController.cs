﻿using CSETWebCore.Business.GalleryParser;
using CSETWebCore.DataLayer.Model;
using CSETWebCore.Interfaces.Helpers;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;

namespace CSETWebCore.Api.Controllers
{
  
    [ApiController]
    public class GalleryEditorController : ControllerBase
    {
        
        private readonly ITokenManager _token;        
        private CSETContext _context;

        public GalleryEditorController(ITokenManager token, CSETContext context)
        {
            _token = token;
            _context = context;
        }
        [HttpPost]
        [Route("api/galleryEdit/updatePosition")]
        public IActionResult updatePosition(MoveItem moveItem)
        {
            try
            {
                if(String.IsNullOrWhiteSpace(moveItem.fromId) || string.IsNullOrWhiteSpace(moveItem.toId))
                {
                    //we are changing position of the rows. 
                    //move the item from the old index to the new index and then 
                    //update the indexes of everything below them.
                    var rows = (from r in _context.GALLERY_ROWS
                               where r.Layout_Name == moveItem.Layout_Name
                               orderby r.Row_Index
                               select r).ToList();
                    _context.GALLERY_ROWS.RemoveRange(rows);
                    //question can I violate the primary key before I save? 
                    //if so then remove the old one and insert it at the new position.
                    //iterate through all the items and just reassign the row_index. 
                    var itemToMove = rows[int.Parse(moveItem.oldIndex)];
                    rows.Remove(itemToMove);
                    rows.Insert(int.Parse(moveItem.newIndex), itemToMove);
                    RenumberGroup(rows);
                    _context.GALLERY_ROWS.AddRange(rows);
                    _context.SaveChanges();
                }
                else if(moveItem.fromId == moveItem.toId)
                {
                    //the items is moved in the same group 
                    //find the group and move it
                    //get the group
                    var detailsList = _context.GALLERY_GROUP_DETAILS.Where(r => r.Group_Id == int.Parse(moveItem.fromId)).OrderBy(r=> r.Column_Index).ToList();
                    var itemToMove = detailsList[int.Parse(moveItem.oldIndex)];
                    detailsList.Remove(itemToMove);
                    detailsList.Insert(int.Parse(moveItem.newIndex), itemToMove);
                    RenumberGroup(detailsList);
                }
                else
                {
                    //find the old group and remove it
                    //find the new group and insert it
                    //renumber both groups
                    var detailsOldList = _context.GALLERY_GROUP_DETAILS.Where(r => r.Group_Id == int.Parse(moveItem.fromId)).OrderBy(r => r.Column_Index).ToList();
                    var itemToMove = detailsOldList[int.Parse(moveItem.oldIndex)];
                    detailsOldList.Remove(itemToMove);
                    RenumberGroup(detailsOldList);
                    var detailsNewList = _context.GALLERY_GROUP_DETAILS.Where(r => r.Group_Id == int.Parse(moveItem.toId)).OrderBy(r => r.Column_Index).ToList();
                    detailsNewList.Insert(int.Parse(moveItem.newIndex), itemToMove);
                    RenumberGroup(detailsNewList);
                }

                return Ok();
            }
            catch (Exception e)
            {
                return BadRequest(e.Message);
            }
        }

        private void RenumberGroup(List<GALLERY_GROUP_DETAILS> detailsList)
        {
            int i = 0;
            foreach (var item in detailsList)
            {
                item.Column_Index = i++;
            }
        }

        private void RenumberGroup(List<GALLERY_ROWS> rows)
        {
            int i = 0; 
            foreach(var row in rows)
            {
                row.Row_Index = i++;
            }
        }

        [HttpPost]
        [Route("api/galleryEdit/updateItem")]
        public IActionResult updateItem([FromBody]UpdateItem item)
        {
            try
            {
                if (item.IsGroup)
                {
                    var galleryGroup = _context.GALLERY_GROUP.Where(x => x.Group_Id == item.Group_Id).FirstOrDefault();
                    if (galleryGroup == null) return BadRequest();

                    galleryGroup.Group_Title = item.Value;
                    _context.SaveChanges();
                }
                else
                {
                    var galleryItem = _context.GALLERY_ITEM.Where(x => x.Gallery_Item_Id == item.Group_Id).FirstOrDefault();
                    if(galleryItem == null) return BadRequest();

                    galleryItem.Title = item.Value;
                    _context.SaveChanges();
                }

                return Ok();
            }
            catch (Exception e)
            {
                return BadRequest(e.Message);
            }
        }
    }

    public class MoveItem
    {
        public string Layout_Name { get; set; }
        public string fromId { get; set; }
        public string toId { get;set; }
        public string oldIndex { get; set; }
        public string newIndex { get; set; }
    }

    public class UpdateItem
    {
        public bool IsGroup { get; set; }
        public int Group_Id { get; set; }

        public string Value { get; set; }
    }
}
