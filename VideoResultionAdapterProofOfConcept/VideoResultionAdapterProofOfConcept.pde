
import java.util.Scanner;  
import java.io.*;//power surplus is between -1 and 1
Video test;
float powerSurplus;
int currentFrameIndex;
Scanner sc;
A dataIn = new A();

void setup(){
  dataIn.set_up();
  size(1280, 720);
  frameRate(30);
  powerSurplus = 0;
  currentFrameIndex = 0;
  test = new Video(1280, 720);
  test.loadFrames("data/video/");
}

void draw(){
  test.playVideo(0.5 + 0.5*powerSurplus);
  if(currentFrameIndex % 25 == 0 && currentFrameIndex > 100){
    dataIn.surplus_set();
  }
}

void keyPressed(){
  switch(key){
    case 'w':
      powerSurplus += 0.1;
      break;
    case 's':
      powerSurplus -= 0.1;
      break;
  }
  if(powerSurplus < -1){
    powerSurplus = -1;
  } else if(powerSurplus > 1){
    powerSurplus = 1;
  }
}
