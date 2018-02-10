JSONObject json;
JSONArray earthquakes;

PVector mapCenter = new PVector(0,0);
int zoom = 1;

void setup() {
  size (2048, 1024);
  background(255);
  
  // MAP IMAGE
  
  imageDisplay(0, 0);  
    
  // EARTHQUAKE JSON
  
  getData();
  displayEarthquakes();

}

void draw() {
  
}