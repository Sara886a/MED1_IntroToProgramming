//Calling different classes
Player player;
Ball[] balls = new Ball [5]; //array deciding number of balls
Time timer;

void setup () {
 size (1000,800);
 
 //publically adjustable variables
 int playerSize = 60;
 int ballSize = 100;
 int counter = 0; //starting score
 
 //loading in the balls
 for (int i = 0; i < balls.length; i++) { //forloop to load an array
  balls[i] = new Ball (ballSize, playerSize); //Adding i in the bracets to load full array
 }
 //loading in the other objects
  player = new Player (playerSize);
  timer = new Time (counter);
}

void draw () {
  background (30,50,70);
  
  //activating objects and their functions
  timer.display(); //displaying the current score and highscore
  timer.score(); //point tracking system
  player.display(); //displaying the player circle
 
  for (int i = 0; i < balls.length; i++) { //forloop to activate array objects and their functions
   balls[i].spawn(); //Resetting the balls once they leave the screen
   balls[i].damage(); //Registering when the player gets hit
  }
  
  
}
