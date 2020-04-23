void setup (){
textSize(10);
fill(0,0,0,255);
text("me", 43, 45);

text("me", 43, 45);
text("dog",65,25,25);
text("mom",17,25,25);
text("dad",39,70);
}
void draw(){
    if (mousePressed){
    println("your coordinates are "+mouseX+","+mouseY);
    fill( random(0,255),random(0,255),random(0,255),random(0,255));
    ellipse(  random(0,100), random(0,100), 5,5);

  }
  else{
        background(random(0,255),random(0,255),random(0,255));
  }

  fill(0,0,0,255);
text("me", 43, 45);

text("me", 43, 45);
text("jacob",63,25,25);
text("sk8rboi",15,25,25);
text("bored",39,70);
  fill(255,0,0,40);
ellipse(35,30, 50, 50);
fill(0,255,0,40);
ellipse(65,30, 50,50);
fill(0,0,255,40);
ellipse(50,60,50,50);
fill(0,0,0,255);

}