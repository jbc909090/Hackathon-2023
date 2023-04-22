class Video {
  int numOfFrames = 400;
  int frameWidth, frameHeight;
  PImage[] frames = new PImage[numOfFrames];
  PImage currentFrame;

  Video(int wid, int hei) {
    frameWidth = wid;
    frameHeight = hei;
    textSize(40);
  }

  void loadFrames(String filePath) {
    PImage img;
    frames[0] = loadImage(filePath + "0001.jpg");
    for (int i = 1; i < numOfFrames; i++) {
      img = loadImage(filePath + convertIntTo4DigitString(i) + ".jpg");
      frames[i] = img.copy();
    }
  }

  void playVideo(float resolutionMultiplier) {
    float r = resolutionMultiplier;
    if(r < 0.1){
      r = 0.1;
    }
    currentFrame = frames[currentFrameIndex%numOfFrames].copy();
    currentFrame.resize((int)(frameWidth * r)/2, (int)(frameHeight * r)/2);
    currentFrame.resize(frameWidth, frameHeight);
    image(currentFrame, 0, 0);
    currentFrameIndex++;
    text("resolutionMultiplier: " + r, 40, 50);
  }

}
