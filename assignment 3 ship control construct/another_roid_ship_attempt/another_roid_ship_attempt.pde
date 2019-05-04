float speed, theta, x, y;
 
void setup() {
  size(600, 600);
  speed = 1.0;
  theta = 0.0;
  x = width*0.5;
  y = height*0.5;
}
 
void draw() {
  background(255);
 
  translate(x, y); // Display the ship at the correct location
  rotate(theta); // Display the ship with the correct rotation
  triangle(-30, -20, 20, 0, -30, 20);
 
  // Move the ship in the direction theta
  x += cos(theta)*speed;
  y += sin(theta)*speed;
 
  // Screen wrapping so that the ship does not get lost off the screen
  if (x > width+30) x = -20;
  else if (x < -20) x = width+30;
  if (y > height+20) y = -20;
  else if (y < -20) y = height+20;
 
  if (keyPressed && key == CODED) {
    if (keyCode == LEFT) theta -= radians(5.0); // 5 degrees translated to radians
    if (keyCode == RIGHT) theta += radians(5.0); // 5 degrees translated to radians
    if (keyCode == UP) speed += 0.2;
    if (keyCode == DOWN) speed -= 0.2;
  }
}
