int num = 1000;
int size = 15;
Tail [] tail = new Tail [num];
int [] x = new int [num];
int [] y = new int [num];
int indexPosition;

void setup () {
 size(800,800);
 
 for(int i = 0; i < tail.length; i++){
 tail [i] = new Tail (size);
 }
}

void draw() {
  background(0);
  
  indexPosition = (indexPosition + 1) % num;
  
  x[indexPosition] = mouseX;
  y[indexPosition] = mouseY;
  
  for(int i = 0; i < num; i++) {
    int pos = (indexPosition + i) % num;
   tail[i].display(x[pos],y[pos]); 
  }
  
}
