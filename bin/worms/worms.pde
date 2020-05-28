Integer x = 0;
Integer y = 0;
void setup(){
  size(1000, 1000);
    background(0, 0, 0);
    
}
void draw(){
 
for(int i = 300; i >= 0; i--){
  fill(random(255), random(3), random(255));
  ellipse( x, y,5,5);
  x += 10;
  y += 10;
}
}
