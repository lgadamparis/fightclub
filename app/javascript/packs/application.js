// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

// External imports
import "bootstrap";

import { initFlatpickr } from "../plugins/flatpickr";
import { initMapbox } from '../plugins/init_mapbox';
import { showFight } from '../plugins/show_fight';

document.addEventListener('turbolinks:load', () => {
  window.addEventListener('scroll', (e) => {
    if (window.scrollY > 0) {
      document.querySelector('.navbar-lewagon').classList.add('black-scroll');
    } else if (window.scrollY === 0) {
      document.querySelector('.navbar-lewagon').classList.remove('black-scroll');
    }
  })
  initMapbox();
  showFight();
  initFlatpickr();


  if (document.querySelector(".fa-search")) {
    document.querySelector(".fa-search").addEventListener("click",() => {
      document.querySelector('#submit-search').click()
    })
  }
})

