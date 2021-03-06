import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';
import { initializePickers } from '../plugins/datepicker';

initMapbox();

import { initStarRating } from '../plugins/init_star_rating';

initStarRating();
initializePickers();
