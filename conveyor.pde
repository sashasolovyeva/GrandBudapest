class Conveyor{
  float x_pos;
  float speed;
  
  Conveyor(){
    x_pos = random(width);
  }
  
  Conveyor(float _x_pos){
    x_pos = (_x_pos*30) - 100;
  }
  
  void show(){
    stroke(70, 100);
    noFill();
    arc(x_pos, 375, 100, 295, -PI / 6, PI / 6);
  
  }
  
  void move(){
    speed = 5;
    x_pos += speed;
    
    if(x_pos > width){
      x_pos = -100;
    }
  }
  
}
