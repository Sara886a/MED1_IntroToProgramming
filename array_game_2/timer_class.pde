class Time {
  
 int counter = 0;
 int time;
 int highScore = 0;
 int textsize = 100;

 
 Time (int temp_time) {

  time = temp_time;
 }
  
    void display () {
    counter += 1;
    
    if (counter >= 60) {
     time += 1;
     counter = 0;
    }
    
   textSize(textsize);
   fill(60,80,100);
   text (time, width/2-textsize/5*3, textsize); 
    
  } 
  
  void score () {
    
    if (time >= highScore) {
     highScore = time; 
    }
    
    fill(45,65,85);
    text (highScore, width/2-textsize/5*3, height-textsize/4); 
    
  }
  

  
}
