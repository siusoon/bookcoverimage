String[] x = { "—","\\","|","/"};
int xx = 0;

void setup() {
  size(2000, 1000);
  background(255);

}

void draw() {

   
    for (int h = 0; h < height; h+=20) {
      for (int w = 0; w< width; w+=20) {   
        if (xx == x.length) {
         xx=0; 
        }
        fill(0);
        text(x[xx], w, h);
        xx++;
      
    }

}
noLoop();
}

void keyPressed() {
  save("screen-cover01.tif");
}
