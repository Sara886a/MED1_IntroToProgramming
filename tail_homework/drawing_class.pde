class Tail {
  
 int size;
  
  Tail (int temp_size){
  size = temp_size;
  }
  
  void display (int x, int y) { 
    float offset = dist(0,0,(size/2),(size/2));
    noStroke();
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
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
