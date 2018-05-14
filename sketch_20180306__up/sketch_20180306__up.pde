int cross = 6;    // Size of the crossess
int speed = 80;   // Speed of pattern (larger = slower)

                  // Change direction: line 41

// pattern
float frames[][] = {{29,28,27,26,25,24,23,22,21,20,20,21,22,23,24,25,26,27,28,29},
                  {28,27,26,25,24,23,22,21,20,19,19,20,21,22,23,24,25,26,27,28},
                  {27,26,25,24,23,22,21,20,19,18,18,19,20,21,22,23,24,25,26,27},
                  {26,25,24,23,22,21,20,19,18,17,17,18,19,20,21,22,23,24,25,26},
                  {25,24,23,22,21,20,19,18,17,16,16,17,18,19,20,21,22,23,24,25},
                  {24,23,22,21,20,19,18,17,16,15,15,16,17,18,19,20,21,22,23,24},
                  {23,22,21,20,19,18,17,16,15,14,14,15,16,17,18,19,20,21,22,23},
                  {22,21,20,19,18,17,16,15,14,13,13,14,15,16,17,18,19,20,21,22},
                  {21,20,19,18,17,16,15,14,13,12,12,13,14,15,16,17,18,19,20,21},
                  {20,19,18,17,16,15,14,13,12,11,11,12,13,14,15,16,17,18,19,20},
                  {19,18,17,16,15,14,13,12,11,10,10,11,12,13,14,15,16,17,18,19},
                  {18,17,16,15,14,13,12,11,10,9,9,10,11,12,13,14,15,16,17,18},
                  {17,16,15,14,13,12,11,10,9,8,8,9,10,11,12,13,14,15,16,17},
                  {16,15,14,13,12,11,10,9,8,7,7,8,9,10,11,12,13,14,15,16},
                  {15,14,13,12,11,10,9,8,7,6,6,7,8,9,10,11,12,13,14,15},
                  {14,13,12,11,10,9,8,7,6,5,5,6,7,8,9,10,11,12,13,14},
                  {13,12,11,10,9,8,7,6,5,4,4,5,6,7,8,9,10,11,12,13},
                  {12,11,10,9,8,7,6,5,4,3,3,4,5,6,7,8,9,10,11,12},
                  {11,10,9,8,7,6,5,4,3,2,2,3,4,5,6,7,8,9,10,11},
                  {10,9,8,7,6,5,4,3,2,1,1,2,3,4,5,6,7,8,9,10}};             
                  
float fcount = .0;

void setup() {
  size(500, 500);
  background(5);
}

void draw() {
  
  fcount = (millis()/speed)%10;
  background(5);
  
  for(int j=1; j<20; j++) {
    for(int i=1; i<20; i++) {
      
      int ti = j;          // direction: ti=j, tj=i: bottom > top
      int tj = i;          //            ti=i, tj=j: right > left
                           //            ti=20-j, tj=20-i: top > bottom
                           //            ti=20-i, tj=20-j: left > right
      
      if(frames[tj][ti]%10 == (fcount+0+10)%10 ||
         frames[tj][ti]%10 == (fcount+1+10)%10 ||
         frames[tj][ti]%10 == (fcount+2+10)%10 ||
         frames[tj][ti]%10 == (fcount+3+10)%10 ||
         frames[tj][ti]%10 == (fcount+4+10)%10) {
        stroke(255,0,0);
      } else {
        stroke(80);
      } 
      
      int mx = j*25;
      int my = i*25;
      float r = (random(cross)+cross)/2;
      line(mx-r, my, mx+r, my);
      line(mx, my-r, mx, my+r);
      
    }
  }
  
  // saveFrame("two-####.png");
  
}