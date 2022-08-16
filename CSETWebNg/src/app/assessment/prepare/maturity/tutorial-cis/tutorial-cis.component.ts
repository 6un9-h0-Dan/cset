
import { Component, OnInit } from '@angular/core';
import { ConfigService } from '../../../../services/config.service';
import { LayoutService } from '../../../../services/layout.service';

@Component({
  selector: 'app-tutorial-cis',
  templateUrl: './tutorial-cis.component.html',
  styleUrls: ['./tutorial-cis.component.scss']
})
export class TutorialCisComponent implements OnInit {

  constructor(
    public configSvc: ConfigService,
    public layoutSvc: LayoutService
  ) { }

  ngOnInit(): void {
  }

}
