/*
- play with font and size
- save high resolution image
*/
import processing.pdf.*;
String[] x = {"—","\\","|","/"};
int xx = 0;
int scaleFactor = 5;

void setup() {
  size(2000,2000);
  background(255);
  beginRecord(PDF, "screencover.pdf");
}

void draw() {
    scale(200/72.0);
    for (int h = 0; h < height; h+=10) {
      for (int w = 0; w< width; w+=10) {   
        if (xx == x.length) {
         xx=0; 
        }
        fill(0);
        println(xx);
        textSize(6);
        int y = int(random(0, x.length));
        //text(x[xx], w, h);
        text(x[y], w, h);
        xx++;    
    }
}
endRecord();
noLoop();
}

void keyPressed() {
  save("screen-cover01.tif");
  exit();
}
