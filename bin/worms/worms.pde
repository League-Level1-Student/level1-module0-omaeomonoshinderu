Integer x = 0;
Integer y = 0;
void setup(){
  size(1000, 1000);
    background(0, 0, 0);
   
    
}
void draw(){
 makeMagical();

 for(int i = 300; i >= 0; i--){
  fill(frameCount, i, random(255));
  ellipse( getWormX(i), getWormY(i) ,10,10);
  x += 10;
  y += 10;
   if(mousePressed){
 ellipse( getWormX(i), getWormY(i) ,10,10);
}
}

}
 float frequency = .001;
    float noiseInterval = PI;

    void makeMagical() {
        fill( 0, 0, 0, 10 );
        rect(0, 0, width, height);
        noStroke();
    }

    float getWormX(int i) {
        return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
    }

    float getWormY(int i) {
        return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
    }
