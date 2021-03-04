class Box{
  float x_pos;
  float y_pos;
  float y_speed;
  float x_speed;
  Boolean outside = false;
  
  float r;
  
  Boolean y_movement = true;
  Boolean x_movement = false;
  
  Box(){
    x_pos = random(0,width);
    y_pos = random(-height,0);
  }
  
  Box(float _y_pos){
    x_pos = 100;
    y_pos = -_y_pos * 452.5;
  }
  
  void show(){
      image(box, x_pos, y_pos);
  }
  
  void move(int _x_pos, int _y_pos){
    x_speed = 5;
    y_speed = 15;
    
    r = 260;
    
    if(y_pos <= r){
      y_pos += y_speed;
    }
    
    if(y_pos > r && x_pos <= width){
      x_pos += x_speed;
    }
    
  }
  
}
