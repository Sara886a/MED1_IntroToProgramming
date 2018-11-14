int num = 50; //number of objects in tail
int size = 30; //size of each color bubble
Tail [] tail = new Tail [num]; //setting up an array of objects
//positions of all objects in tail
int [] x = new int [num];
int [] y = new int [num];
int indexPosition; //position in array of currently changing value

void setup () {
 size(2000,1000);
 
 //loading an array of objects
 for(int i = 0; i < tail.length; i++){
 tail [i] = new Tail (size);
 }
}

void draw() {
  background(#888888);
  
  //cycling through the array values with a buffering cycle algorithm
  indexPosition = (indexPosition + 1) % num;
  
  //setting the position of currently changing object
  x[indexPosition] = mouseX;
  y[indexPosition] = mouseY;
  
  //Drawing in the objects
  for(int i = 0; i < num; i++) { //drawing amount equal to num
    int pos = (indexPosition + i) % num; //making sure we don't try drawing from unexisting values
   tail[i].rainbow(x[pos],y[pos]); //drawing the objects themself
   //tail[i].ace(x[pos],y[pos]); //drawing the objects themself
  }
  
}
