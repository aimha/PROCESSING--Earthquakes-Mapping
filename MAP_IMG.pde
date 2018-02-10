void imageDisplay(float x, float y) {
  background(255);
  String url = "https://api.mapbox.com/styles/v1/mapbox/light-v9/static/" + x + "," + y + ","+ zoom +",0,0/1024x512@2x?access_token=pk.eyJ1IjoiYWltaGEiLCJhIjoiY2oxZGdveW93MDAxNDJ4cWozbHFpc2g4dCJ9.8Jg5DLdLKYf279DCqCZ48Q";
  PImage webImg = loadImage(url, "png");
  translate(width/2,height/2);
  imageMode(CENTER);
  image(webImg, 0, 0);
  println(mapCenter.x, mapCenter.y);
}