//class for the player "character"
class Player {
  
  //global variables for class
  int playSize;


  
  Player (int temp_size) { 
    //variablezs that can be defined outside of class
   playSize = temp_size; 
       

  }
  
  void display () {
    //displaying background text saying "survive"
       int textsize = 200;
   textSize(textsize);
   fill(35,55,75);
   text ("SURVIVE", textsize/2, height/2+textsize/5);
        
    //drawing in the player character
    noStroke ();
    fill (0,200,0);
   ellipse (mouseX, mouseY, playSize, playSize); 
       
  }
  

}
