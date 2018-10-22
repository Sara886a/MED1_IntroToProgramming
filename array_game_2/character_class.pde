class Player {
  
  int size;

  
  Player (int temp_size) {
   size = temp_size; 

  }
  
  void display () {
    
       int textsize = 200;
   textSize(textsize);
   fill(60,80,100);
   text ("SURVIVE", textsize/2, height/2+textsize/5);
        
    noStroke ();
    fill (0,200,0);
   ellipse (mouseX, mouseY, size, size); 
       
  }
  
  
}
