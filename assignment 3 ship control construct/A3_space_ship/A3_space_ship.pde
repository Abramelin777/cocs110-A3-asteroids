// basics for ship control
// mouse location dictated by mouse x,y .
// The left and right mouse buttons/ heading 
// rotating the ship anticlockwise/clockwise respectively

// ship direction shown in console in degrees. i was trying to work
// shooting and thrust from or around this

float direction;
PImage img;

void setup(){
size(500,500);
noCursor();
imageMode(CENTER);
//to try the different ships just remove // from one of the following

//img = loadImage("asteroid_ship.png");
img=loadImage("spaceship.pod_.1.small_.red_.png");

}

void draw()
{
 if (direction >360){direction=0;
 }else if( direction<0){direction=360;
 }
 
  println("Degrees: "+(direction));
  background(0);
  translate(mouseX,mouseY);
  rotate(radians(direction));
  image(img,0,0);
  
  if (mousePressed && (mouseButton ==LEFT)){
        direction-=4;}
    else if (mousePressed &&(mouseButton == RIGHT)){
          direction+=4;}
            
 
   


 }
