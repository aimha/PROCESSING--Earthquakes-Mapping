float mercX(float lon,int zoom) {
  float x = radians(lon);
  float result = (1024/PI)*pow(2,zoom)*(x+PI);
  return result;
}

float mercY(float lat, int zoom) {
  float y = radians(lat);
  float result = (1024/PI)*pow(2,zoom)*(PI - log(tan(PI/4+y/2)));
  return result;
}