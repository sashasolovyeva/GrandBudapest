class Cake{
  float x_pos;
  float speed;
  
  Cake(){
    x_pos = random(0,width);
  }
  
  Cake(float _x_pos){
    x_pos = _x_pos * 150 - 300;
  }
  
  void show(){
    image(cake, x_pos, 275);
  }
  
  void move(){
    speed = 5;
    
    x_pos += speed;
    
    if(x_pos > width){
      x_pos = -200;
    }
  }
  
}
