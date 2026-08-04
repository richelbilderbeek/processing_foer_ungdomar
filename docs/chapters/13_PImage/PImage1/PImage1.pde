PImage bild;

void setup() 
{
  fullScreen();
  bild = loadImage("mario.png");
}

void draw() 
{
  background(255, 255, 255);
  image(bild, width / 2, height / 2);
}
