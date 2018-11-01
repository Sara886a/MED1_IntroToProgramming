//class to keep track of points
class Time {
 
  //global variables for class
 int counter = 0;
 int time;
 int highScore = 0;
 int textsize = 100;

 
 Time (int temp_time) {
//variables that can be defined outside of class
  time = temp_time;
 }
  //function displaying current score
    void display () {
    counter += 1;
    
    //aproximating points to seconds
    if (counter >= 60) {
     time += 1;
     counter = 0;
    }
    //drawing in the score
   textSize(textsize);
   fill(60,80,100);
   text (time, width/2-textsize/5*3, textsize); 
    
  } 
  //function drawing in the high score
  void score () {
    
    if (time >= highScore) { //canging highscore along with points, when a new highscore is being set
     highScore = time; 
    }
    //drawing in the highscore
    fill(45,65,85);
    text (highScore, width/2-textsize/5*3, height-textsize/4); 
    
  }
  

  
}
