class MovingCharacter {
  float x;
  float y;
  float[] xArray  = {310,30};
  
  
  float speed;
  int time;
  boolean movement = false;
  
  MovingCharacter(int num){
    x = xArray[num];
    y = 400;
  }
  
  void show(int num){
    image(charImages[num], x, y);
  }
  
  void move(){
    speed = 10;
    
    time = millis();
    
    if(time % 5 == 0 && y >= 50){
      y -= speed;
    }
    
    if(keyPressed){
      y += speed;
    }
    
    //if(y == 50 && millis() - time == 5000){
    //  y += speed; 
    //}
    
  }
  
  //void keyPressed(){
    
  //}
  
}
