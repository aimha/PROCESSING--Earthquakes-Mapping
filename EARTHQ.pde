void getData() {
  json = loadJSONObject("https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_month.geojson");
  earthquakes = json.getJSONArray("features");
}

void displayEarthquakes() {
  
  float cx = mercX(mapCenter.x, zoom-1);
  float cy = mercY(mapCenter.y, zoom-1);
  
  for (int i=0; i < earthquakes.size(); i++) {
    
    JSONObject item = earthquakes.getJSONObject(i);
    
    JSONObject geometry = item.getJSONObject("geometry");
    JSONObject properties = item.getJSONObject("properties");
    
    JSONArray coordinates = geometry.getJSONArray("coordinates");
    
    String place = properties.getString("place");
    
    float mag = properties.getFloat("mag");
    float lon = coordinates.getFloat(0);
    float lat = coordinates.getFloat(1);
    
    float x = mercX(lon, zoom-1) - cx;
    float y = mercY(lat, zoom-1) - cy;
    
    ellipseMode(CENTER);
    colorMode(HSB);
    noStroke();
    
    fill(0, 255, 255);
    ellipse(x,y,zoom,zoom);
    
    fill(15, 255, 255,10);
    ellipse(x,y,mag*4*zoom,mag*4*zoom);
  }
}