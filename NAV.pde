void keyPressed() {
  if (key == CODED) {
    if (keyCode == SHIFT) {
      if (zoom < 10) {
        zoom++;
        imageDisplay(mapCenter.x, mapCenter.y);
        displayEarthquakes();
      }
    } else if (keyCode == CONTROL) {
      if (zoom > 1) {
        zoom--;
        imageDisplay(mapCenter.x, mapCenter.y);
        displayEarthquakes();
      }
    } else if (keyCode == UP) {
      if (mapCenter.y < 80) {
        mapCenter.y += 10/zoom;
        imageDisplay(mapCenter.x, mapCenter.y);
        displayEarthquakes();
      }
    } else if (keyCode == DOWN) {
      if (mapCenter.y > -80) {
        mapCenter.y -= 10/zoom;
        imageDisplay(mapCenter.x, mapCenter.y);
        displayEarthquakes();
      }
    } else if (keyCode == LEFT) {
      if (mapCenter.x > -170) {
        mapCenter.x -= 10/zoom;
        imageDisplay(mapCenter.x, mapCenter.y);
        displayEarthquakes();
      }
    } else if (keyCode == RIGHT) {
      if (mapCenter.x < 170) {
        mapCenter.x += 10/zoom;
        imageDisplay(mapCenter.x, mapCenter.y);
        displayEarthquakes();
      }
    } 
  } 
}