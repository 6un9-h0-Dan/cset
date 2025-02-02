import { Component, OnInit } from '@angular/core';
import { ListTest } from './list-items/listtest.model';
import { GalleryEditorService } from './services/gallery-editor.service';
import { FaIconLibrary } from '@fortawesome/angular-fontawesome';
import { faArrows } from '@fortawesome/free-solid-svg-icons';


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit{
 
  title = 'gallery-editor';  

  list!: ListTest[]; 

  constructor(public gallerySvc: GalleryEditorService,library: FaIconLibrary) {
    library.addIcons(faArrows, faArrows);
  }

  ngOnInit(): void {
   this.gallerySvc.getGalleryItems("CSET").subscribe(  (x: any) => {
      this.list = this.gallerySvc.transformGallery(x.rows);
    }
   );
  }
}
