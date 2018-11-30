import 'bootstrap';
import "../plugins/flatpickr"
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import { displayMap } from '../components/map';
// import { loadDynamicBannerText } from '../components/banner';
import { activeLinks } from '../components/navbar';
// import { initAutocomplete } from '../plugins/init_autocomplete';

import places from 'places.js';

initMapbox();
// loadDynamicBannerText();
displayMap();
activeLinks();

const addressInput = document.getElementById('garden_address');
if (addressInput) {
  places({ container: addressInput });
}

const cards = document.querySelectorAll(".card.card-grid");
let number = Math.floor((Math.random() * 5) + 0);

cards.forEach((card) => {
  console.log(number)
  card.style.transform = "rotate(" + number + "deg)";
  number += Math.floor((Math.random() * ( Math.random() < 0.5 ? (Math.floor(Math.random() * -5) - 3) :  (Math.floor(Math.random() * 5) + 3) )));
})
