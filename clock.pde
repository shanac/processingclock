
color timer;

void setup(){
  background(0);
  size(400, 400);
  colorMode(HSB, 100);
  frameRate(100);
 




}

void draw(){
  color timer2 = circlesColor();
  println(timer2);
  smooth();
  fill(timer2);
  noStroke();
  rect(0, height/2, width, height/2);


}

color circlesColor(){
  //float s = float(second()) ;
  //float m = float(minute());
  //float h = float(hour());
  //float d = float(day());
  float s = map(float(second()), 0, 59, 0, 100);
  float m = map(float(minute()), 0, 59, 0, 100);
  float h = map(float(hour()), 0, 23, 0, 100);
  float d = map(float(day()), 1, 31, 0, 100);
  

 return timer = color(s, m, h, d);
}


