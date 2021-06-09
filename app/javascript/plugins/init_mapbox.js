import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};
  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v8'
  });

  const markers = JSON.parse(mapElement.dataset.markers);
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup({closeButton: false}).setHTML(marker.info_window); // This line was added today
    const element = document.createElement('div');
    element.className = 'marker';
    element.style.backgroundImage = `url('${marker.image_url}')`;
    element.style.backgroundSize = 'contain';
    element.style.width = '50px';
    element.style.height = '50px';
    const mapboxMarker = new mapboxgl.Marker(element)
    .setLngLat([ marker.lng, marker.lat ])
    .setPopup(popup) // This line was added today
    .addTo(map);
    const markerElement = mapboxMarker.getElement();
    markerElement.addEventListener('mouseenter', () => mapboxMarker.togglePopup());
    markerElement.addEventListener('mouseleave', () => mapboxMarker.togglePopup());
  });
  fitMapToMarkers(map, markers);
  }
};



export { initMapbox };
