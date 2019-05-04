//http://turing.une.edu.au/~cosc101/lectures/lecture_7/pvector_circle/pvector_circle.pde
PVector location;
PVector velocity;
PVector acceleration;

void setup(){
  
  size(800,800);
  location = new PVector(width/2, height/2);
  velocity = new PVector(0,0);
  acceleration = new PVector(0,0);
  velocity.limit(0.3);
}

void draw(){
  
  background(255);
  
  //Check for a keypress
  if(keyPressed){
    if (key == CODED) {
      if (keyCode == UP) {
        acceleration.add(new PVector(0,-0.02));
        strokeWeight(10);
        stroke(255,0,0);
        line(location.x, location.y,location.x,location.y+30);
        
      } else if (keyCode == DOWN) {
        acceleration.add(new PVector(0,0.02));
        strokeWeight(10);
        stroke(255,0,0);
        line(location.x, location.y,location.x,location.y-30);
      } else if (keyCode == LEFT) {
        acceleration.add(new PVector(-0.02,0));
        strokeWeight(10);
        stroke(255,0,0);
        line(location.x, location.y,location.x+30,location.y);
      }else if (keyCode == RIGHT) {
        acceleration.add(new PVector(0.02,0));
        strokeWeight(10);
        stroke(255,0,0);
        line(location.x, location.y,location.x-30,location.y);
      }
    } 
  }else{
   // If there is no keypress, there is no acceleration
   acceleration = new PVector(0,0);
  }
  
  //Bounce off the edges
  if(location.x < 1 ){
      velocity.x = velocity.x *-1;
  }else if (location.x > width){
      velocity.x = velocity.x *-1;
  }
  if(location.y < 1 ){
      velocity.y = velocity.y *-1;
  }else if (location.y > height){
      velocity.y = velocity.y *-1;
  }
  
  velocity.add(acceleration);
  velocity.limit(5);
  location.add(velocity);
  noStroke();
  strokeWeight(2);
  fill(71,242,5);
  ellipse(location.x,location.y,48,48);
  
  
  
}
