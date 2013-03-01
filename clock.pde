
color timer;

void setup(){
  background(0);
  size(400, 400);
  colorMode(HSB, 100);
  frameRate(100);
 




}

void draw(){
  color timer2 = circlesColor();
  smooth();
  fill(timer2);
  noStroke();
  rect(0, height/2, width, height/2);


}

color circlesColor(){
  float s = float(second()) ;
float m = float(minute());
float h = float(hour());
float d = float(day());
   float newS = map(s, 0, 59, 0, 100);
  float newM = map(m, 0, 59, 0, 100);
  float newH = map(h, 0, 23, 0, 100);
  float newD = map(d, 1, 31, 0, 100);
  println(newS + " " + newM + " " + newH + " " + newD);

 return timer = color(newS, newM, newH, newD);
}


