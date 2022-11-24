class Button {
  int BWidth; // button width
  int BHeight; // button height
  color Fill; // button colour
  String BTitle; // button title
  int Bx; // button X
  int By; /// button Y

  Button(int x, int y, int w, int h, String Title, int r, int g, int b) //takes Button Variables
  {
    Bx = x;
    By = y;
    BWidth = w;
    BHeight = h;
    Fill = color(r, g, b);
    BTitle = Title;
  }




  void BDraw() { //draws the button
    fill(Fill);
    rect(Bx, By, BWidth+50, BHeight);
    fill(0);
    textAlign(LEFT);
    text(BTitle, Bx, By);
  }

  boolean isMouseOnButton() { // checks if mouse is on button
    if (mouseX >Bx && mouseX <Bx +(BWidth + 50) && mouseY> By && mouseY < (By +BHeight)) {
      return true;
    } else {
      return false;
    }
  }
}
