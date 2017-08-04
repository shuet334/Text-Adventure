PFont oswald;
PImage bg, hungry, meal, closed, expensive, satisfied;
int x, y;
String word[];
String FirstChoice[];
String SecondChoice[];
String ThirdChoice[];
int count;
//-------------------------------------------------setup
void setup()
{
  x = 0;
  y = 0;
  count = 0;
  size(800, 600);
  oswald = createFont("Oswald-Regular.ttf", 30);
  bg = loadImage("BG.jpg");
  hungry = loadImage("hungry.jpg");
  meal = loadImage("meal.jpg");
  closed = loadImage("closed.jpg");
  expensive = loadImage("expensive.jpg");
  satisfied = loadImage("satisfied.jpg");
  word = new String [9];
  word[0]="I want to have a meal.";
  word[1]="Eat at home.";
  word[2]="Go to the restaurant.";
  word[3]="When I arrive my favorite restaurant does not open.";
  word[4]="Other resraurants are expensive.";
  word[5]="I have a great meal which is cheap.";
  word[6]="I starve to death.";
  
  FirstChoice = new String [9];
  FirstChoice[0]="Press Z : I have a lot of money.";
  FirstChoice[1]="Press X : Do not have enough money.";
  
  SecondChoice = new String [9];
  SecondChoice[0]="Press Z : Go further to seek for other restaurants.";
  SecondChoice[1]="Press X : Give up";
  
  ThirdChoice = new String [9];
  ThirdChoice[0] = "Press Z : Ask for discount";
  ThirdChoice[1] = "Press X : It's too expensive, I can't afford it";
  
  textFont(oswald, 30);
  
  image(meal, 0, 0, width, height);
  fill(0, 0, 0);
  text(word[0], 100, 100);
  text(FirstChoice[0], 100, 200);
  text(FirstChoice[1], 100, 250);
}
//-------------------------------------------------draw
void draw()
{
  textFont(oswald, 30);
  HighLight();
}
//-------------------------------------------------keyPressed
void keyPressed()
{
    if(keyPressed)
    {
      if(key == 'z')
      {
        count ++;
        if (count == 1) {
          image(closed, 0, 0, width, height);
          fill(255, 255, 255);
          text(word[3], 100, 100);
          text(SecondChoice[0], 100, 250);
          text(SecondChoice[1], 100, 300);
        } 
        else if (count == 2) 
        {
           image(expensive, 0, 0, width, height);
           fill(0, 0, 0);
           text(word[4], 100, 100);
           text(ThirdChoice[0], 100, 250);
           text(ThirdChoice[1], 100, 300);
        }
        else if (count == 3)
        {
           image(satisfied, 0, 0, width, height);
           text(word[5], 100, 100);
           text("press R to play again!", 500, 500);
        }
      }
      
      else if(key == 'x')
      {
        count ++;
        if(count == 1)
        {
          count = 10000;
          image(hungry, 0, 0, width, height);
          fill(0, 0, 0);
          text(word[1], 200, 100);
          text("press R to play again!", 250, 500);
        }
        else if(count == 2)
        {
          count = 10000;
          image(hungry, 0, 0, width, height);
          fill(0, 0, 0);
          text(word[1], 200, 100);
          text("press R to play again!", 250, 500);
        }
        else if(count == 3)
        {
          count = 10000;
          image(bg, 0, 0, width, height);
          fill(255, 0, 0);
          text(word[6], 100, 100);
          text("press R to play again!", 500, 500);
        }        
    }
    else if(key == 'r')
    {
      count = 0;
      image(meal, 0, 0, width, height);
      fill(0, 0, 0);
      text(word[0], 100, 100);
      text(FirstChoice[0], 100, 200);
      text(FirstChoice[1], 100, 250);
    }
  }
}
//-------------------------------------------------function

void HighLight()
{
  if(mousePressed)
  {
    fill(255, 253, 60);
    noStroke();
    ellipse( mouseX, mouseY, 30, 30);
  }
}