int wid = 800;
int hei = 800;
int greMax = 255;
int greMult = 3;
int gre = greMax;

void setup() {
  size(wid, hei);
}

void draw() {
  if (mousePressed) {
    fill(map(mouseX, 0, wid, 0, 255), map(gre, 0, greMax, 0, 255), map(mouseY, 0, hei, 0, 255));
    gre = max(gre-1, 0);
  } 
  else {
    gre = min(gre+greMult, greMax);
  }
  splat();
}

void splat() {
  if (mousePressed) {
    rect(mouseX, mouseY, 30, 30);
    rect(wid - mouseX, mouseY, 30, 30);
    rect(mouseX, hei - mouseY, 30, 30);
    rect(wid - mouseX, hei - mouseY, 30, 30);
  }
}

