int score = 0;
 int y = 0;
 int x = 0;
 int randomNumber = (int) random(width);
void setup(){
  size(300, 300);
}
void draw(){
    background(50, 100, 60);
      fill(10, 30, 100);
    stroke(10, 30, 100);
    ellipse(randomNumber, y, 2, 5);
     y += 5;
     fill(90, 90, 90);
     stroke(90,90,90);
      rect( mouseX, 250, 35, 50);
        fill( 255,255,255);
        text("Your score is now: " + score, 150, 50);
         checkCatch(x);
}
  void checkCatch(int x){
         if (x > mouseX && x < mouseX+100 && y >= height){
            score++;
            y =0;
             println("Your score is now: " + score);
         }
       else if (score > 0) 
            score--;
            
        println("Your score is now: " + score);
         
    }
