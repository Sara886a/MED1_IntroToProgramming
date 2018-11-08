class Tail {
  
 int size;
  
  Tail (int temp_size){
  size = temp_size; //setting up to asign size in main code
  }
  
  
  void rainbow (int x, int y) {  
           //trying to calculate a distance, where the circles align edge to edge
    float offset = dist(0,0,(size/2),(size/2));
    noStroke();
    //drawing and coloring all the circles
    fill(#E50505);
    ellipse(x+offset*2.5, y-offset*2.5,size,size);
    fill(#E56A05);
    ellipse(x+offset*1.5, y-offset*1.5,size,size);
    fill(#F0E405);
    ellipse(x+offset/2, y-offset/2,size,size);
    fill(#089D06);
    ellipse(x-offset/2, y+offset/2,size,size);
    fill(#062DB7);
    ellipse(x-offset*1.5, y+offset*1.5,size,size);
    fill(#680986);
    ellipse(x-offset*2.5, y+offset*2.5,size,size);
    noFill();
  }
  
 void ace (int x, int y) {
          //trying to calculate a distance, where the circles align edge to edge
    float offset = dist(0,0,(size/2),(size/2));
    noStroke();
    //drawing and coloring all the circles
    fill(0);
    ellipse(x+offset*1.5, y-offset*1.5,size,size);
    fill(#aaaaaa);
    ellipse(x+offset/2, y-offset/2,size,size);
    fill(255);
    ellipse(x-offset/2, y+offset/2,size,size);
    fill(#930CAF);
    ellipse(x-offset*1.5, y+offset*1.5,size,size);  
    noFill();
  } 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
