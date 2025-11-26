//train whistle Sound Effect from <a href="https://pixabay.com/sound-effects/?utm_source=link-attribution&utm_medium=referral&utm_campaign=music&utm_content=102834">Pixabay</a>

//import the sound library
import processing.sound.*; //author | library | name | portion (* = everything)

//Train
Train train;

//Timer
float timerLength = 50, currentTimerValue = 0; 

//declare a SoundFile

SoundFile whistle;
SoundFile pling;

//color
color c = 255;

void setup() {
  size(400, 400);
  
  //load the sound effect from the data folder
  whistle = new SoundFile(this, "train-whistle.wav");
  pling = new SoundFile(this, "pling.wav");

  train = new Train(random(100, 300), random(0.5, 2));
  
}

void draw() {
  currentTimerValue ++;
  if (currentTimerValue > timerLength)
  {
    currentTimerValue = 0;
    background(random(255), random(255), random(255));
    pling.play();
  }
  background(c);
  train.update();
}

void keyPressed(){
 //press space to toot the horn! But don't allow it to keep starting
  if (key == ' ' && !whistle.isPlaying())
    whistle.play();
}
