int numberOfBoxes = 20;

Conveyor[] conveyorLines = new Conveyor[27];
Cake[] cakes = new Cake[7];
Box[] boxes = new Box[numberOfBoxes];
MovingCharacter[] characters = new MovingCharacter[2];

PImage cake;
PImage box;
PImage bg;
PImage charImages[];
PImage endTitle;

PFont text;

int counter = 0;

import ddf.minim.*;
Minim minim;
AudioPlayer music;

void setup(){
  size(700,500);
  
  // Loading Images
  cake = loadImage("mendl3.png");
  cake.resize(220,150);
  box = loadImage("mendl1.png");
  box.resize(150,150);
  bg = loadImage("mendls_background.png");
  endTitle = loadImage("hotel_big.jpg");
  // Image Array for the Character object
  charImages = new PImage[2];
  charImages[0] = loadImage("mustafa_fullheight.png");
  charImages[1] = loadImage("agatha_fullheight.png");
  
  // Creating a font
  text = createFont("Archer-Bold-Pro.otf", 40);
  
  // Loading music
  minim = new Minim(this);
  music = minim.loadFile("grandbudapest.mp3");
  
  // Initializing Objects
  for(int i = 0; i < conveyorLines.length; i++){
    conveyorLines[i] = new Conveyor(i);
  }
  for(int i = 0; i < cakes.length; i++){
    cakes[i] = new Cake(i);
  }
  for(int i = 0; i < boxes.length; i++){
    boxes[i] = new Box(i);
    
  }
  for(int i = 0; i < characters.length; i++){
    characters[i] = new MovingCharacter(i);
  }
}

//______________________________________________________________________________________

void draw(){
  textFont(text);
  textAlign(CENTER);
  background(222,180,207);
  image(bg, 150, -60);
  
  // Character object functions
  for(int i = 0; i < characters.length; i++){
    characters[i].show(i);
    characters[i].move();
  }
  
  // Basic setup design
  noStroke();
  // Conveyor
  fill(0, 80);
  rect(0, 298, width, 150);
  fill(148, 153, 200);
  rect(0, 300, width, 150);
  fill(119, 123, 158);
  rect(0, 450, width, 50);
 
  music.play();
  if(music.position() >= music.length()){
    music.rewind();
  }
  
  for(int i = 0; i < conveyorLines.length; i++){
    conveyorLines[i].show();
    conveyorLines[i].move();
  }
  
  
  for(int i = 0; i < cakes.length; i++){
    cakes[i].show();
    cakes[i].move();
  }
  
  for(int i = 0; i < boxes.length; i++){
    if(!boxes[i].outside) {
      boxes[i].show();
      boxes[i].move(i, i);
    }
    
    if(boxes[i].x_pos > width){
      boxes[i].outside = true;
      
      boxes[i].x_pos = 0;
      
      counter++;
    }
  } 
  
  if(counter >= numberOfBoxes - 5){
    charImages[0] = loadImage("mustafa_angry.png");
  }
  
  if(counter >= numberOfBoxes){
    image(endTitle, 0, 0);
    fill(24,71,101);
    text("Directed by Wes Anderson", width/2, 70);
  }
  
}

void mousePressed(){
  println(mouseX, mouseY);
}
