import 'bootstrap';
import "../plugins/flatpickr"
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import { displayMap } from '../components/map';
import { loadDynamicBannerText } from '../components/banner';
// import { initAutocomplete } from '../plugins/init_autocomplete';

import places from 'places.js';

initMapbox();
loadDynamicBannerText();
displayMap();

const addressInput = document.getElementById('garden_address');
console.log(addressInput)
if (addressInput) {
  places({ container: addressInput });
}
