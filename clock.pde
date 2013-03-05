String clockTime;
String clockDate;
color timer;

void setup(){
  background(0);
  size(400, 400);
  colorMode(HSB, 100);
  frameRate(100);
 



}

void draw(){
  color timer2 = circlesColor();
  //println(timer2);
  String timeIs = timeDisplay();
  println(timeIs);
  smooth();
  fill(timer2);
  noStroke();
  rect(0, height/2, width, height/2);


}

color circlesColor(){
  float s = map(float(second()), 0, 59, 0, 100);
  float m = map(float(minute()), 0, 59, 0, 100);
  float h = map(float(hour()), 0, 23, 0, 100);
  float d = map(float(day()), 1, 31, 0, 100);
  return timer = color(s, m, h, d);
}




String usableNumbers(float timeThing){
  String timeString;
   if(timeThing < 10){
    timeString = "0" + str(int(timeThing));
  }
  else{
    timeString = str(int(timeThing));
  }
  return timeString;
} 


String timeDisplay(){
  float h = hour();
  float m = minute();
  float s = second();
  String hours;
  String morn;
  String min;
  String sec;

  if(h<= 12 && h != 0){
    hours = str(int(h));
    morn = "AM";
  }
  if (h >12){
    hours = str(int(h%12));
    morn = "PM";
  }
  else{
  hours = "12";
  morn = "AM";
  }
  
  
  min = usableNumbers(m);
  sec = usableNumbers(s);
  
   return clockTime =  hours + ":" + min + ":" + sec + " " + morn;
}
//String dateDisplay(){
  //return clockDate =
//}

