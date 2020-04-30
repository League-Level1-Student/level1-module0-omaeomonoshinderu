import ddf.minim.*;             //at the very top of your sketch
PImage pictureOfRecord;                        //as member variable
int aor = 0;                                //probably a member variable?
Minim minim;        //as a member variable
  AudioPlayer song;      //as a member variable
void setup(){
        size(600,600);                                 //in setup method
        pictureOfRecord= loadImage("record.jpg");      //in setup method
        pictureOfRecord.resize(600,600);
         minim = new Minim(this);    //in the setup method
  song = minim.loadFile("BadAndGoodPowerpuffGirls.mp3", 512);   //in the setup method
}
void draw(){
   rotateImage(pictureOfRecord, aor);
   image(pictureOfRecord, 0, 0);  //in draw method
   if(mousePressed){
     song.play();
    aor += 150; 
   }
  else{
   song.pause(); 
  }
}
 void rotateImage(PImage image, int amountToRotate) {
        translate(width/2, height/2);
        rotate(amountToRotate*TWO_PI/360);
        translate(-image.width/2, -image.height/2);
    }
