import { Component, Input, OnInit } from '@angular/core';

@Component({
  selector: 'app-side-nav',
  templateUrl: './side-nav.component.html',
  styleUrls: ['./side-nav.component.css']
})
export class SideNavComponent implements OnInit {

  @Input() sideNavStatus: boolean = false;

  list = [
    {
      number: '1',
      name: 'home',
      icon: 'fa-solid fa-house',
    }
  ]
  
  constructor() { }

  ngOnInit(): void {
  }

}
