//This is a car racing game. You have to press 'W' for the Lamborghini and 'O' for the Porche.







PImage road;
PImage car1;
PImage car2;
int x= 200;
int z= 200;
import ddf.minim.*;
Minim minim;
AudioPlayer song;
AudioInput input;

void setup()

{

  minim = new Minim(this);
  song = minim.loadFile("careffect.mp3");
  song.play();

  size (1280, 750);

  car1 = loadImage ("car1.png");
  car1.resize (400, 175);

  car2 = loadImage ("car2.png");
  car2.resize (400, 175);

  road = loadImage ("road.jpg");
  road.resize (1280, 750);


  imageMode (CENTER);

  background (road);
}

void draw()

{

  background (road);

  image (car1, x, 500);
  image (car2, z, 660);

  if (x>width)

  {
    background (51);
    textSize (125);
    fill (219, 2, 2);
    text ("Lamborghini Wins", 100, 400);

  }


  if (z>width)

  {

    background (219, 2, 2);
    textSize (175);
    fill (51);
    text ("Porsche Wins", 100, 400);

  }
}

void keyPressed ()
{
  if ( key == 'w')

    x=x+10;

  if ( key == 'o')

    z=z+10;
}