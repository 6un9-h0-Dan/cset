////////////////////////////////
//
//   Copyright 2022 Battelle Energy Alliance, LLC
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//
////////////////////////////////
import { Component, OnInit, Output, EventEmitter } from '@angular/core';
import { DiagramService } from '../../../../services/diagram.service';

@Component({
  selector: 'app-diagram-components',
  templateUrl: './diagram-components.component.html',
  styleUrls: ['./diagram-components.component.scss']
})
export class DiagramComponentsComponent implements OnInit {

  diagramComponentList: any;
  
  @Output()
  change = new EventEmitter<any>();

  displayedColumns = ['tag', 'hasUniqueQuestions', 'sal', 'criticality', 'layerC', 'ipAddress', 'assetType', 'zone', 'subnetName', 'description', 'hostName', 'visibleC'];
  assetTypes: any;
  sal: any;
  criticality: any;

  /**
   * 
   */
  constructor(public diagramSvc: DiagramService) { }

  /**
   * 
   */
  ngOnInit() {
    this.diagramSvc.getAllSymbols().subscribe((x: any) => {
      this.assetTypes = x;
    });
    this.getComponents();
  }

  /**
   * 
   */
  getComponents() {
    this.diagramSvc.getDiagramComponents().subscribe((x: any) => {
      this.diagramComponentList = x;
      this.change.emit(this.diagramComponentList);
    });
  }
}
