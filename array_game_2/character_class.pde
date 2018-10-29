class Player {
  
  int playSize;


  
  Player (int temp_size) {
   playSize = temp_size; 
       

  }
  
  void display () {
    
       int textsize = 200;
   textSize(textsize);
   fill(35,55,75);
   text ("SURVIVE", textsize/2, height/2+textsize/5);
        
    noStroke ();
    fill (0,200,0);
   ellipse (mouseX, mouseY, playSize, playSize); 
       
  }
  

}
