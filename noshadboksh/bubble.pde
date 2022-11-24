//y axis changeable
//x axis years
//1962 - 1963 Purple Cirlces
//1964 - 1965 Blue Circles
//1966 - 1967 Red Circles
//1968 - 1996 Green Circles
class bubble {
  //songs y and x
  int textX = 850;
  int textY = 15;
  int x; // bubble x
  float y; //bubble y




  bubble(int years, int data1) {
    x = years;
    y = data1;
  }


  void Rank() {//Draws Graph for Rank y axis
    //finds where to draw the circle
    if (x==1962 || x==1963) {
      fill(128, 0, 130, 150);
    } else if (x==1964 || x==1965) {
      fill(0, 0, 200, 150);
    } else if (x==1966 || x==1967) {
      fill(200, 0, 0, 150);
    } else if (x>1967) {
      fill(0, 200, 0, 150);
    }
    x = (x-1960)*80; //separates the circles to a readable
    if (x>800) {
      x=800;
    }

    if (y >= 8 ) {
      y = 80;
    } else {
      y = (y-8)*80;
      y = y*-1;
    }
    //this change of y makes sure that the y axis starts at 0 from the bottom instead of from the top
    ellipse(x, y, 50, 50);
    fill(0, 255);
    if ((x/80)+1960>=1970) {
      textSize(15);
      text("1970-1996", x-45, 750);
    } else {
      text((x/80)+1960, x-25, 750);
      text("years", 30, 750);
    }
    for (int i =0; i<row; i++) {
      textSize(12);
      text(SongNames[i], textX, textY);
      for (int j=1; j<2; j++) {
        text(dataArray[i][j], textX+200, textY);
      }
      textX+=45;
      for (int k=2; k<3; k++) {
        text(dataArray[i][k], textX+200, textY);
      }
      textY+=20;
      textX-=45;
    }
    textSize(20);
  }


  void RankWeeks() { //Draws Graph for Rankweeks y axis
    //finds where to draw the circle
    if (x==1962 || x==1963) {
      fill(128, 0, 130, 150);
    } else if (x==1964 || x==1965) {
      fill(0, 0, 200, 150);
    } else if (x==1966 || x==1967) {
      fill(200, 0, 0, 150);
    } else if (x>1967) {
      fill(0, 200, 0, 150);
    }
    x = (x-1960)*80; //separates the circles to a readable 
    if (x>800) {
      x=800;
    }
    y = (y-8)*80;
    y = y*-1; //this change of y makes sure that the y axis starts at 0 from the bottom instead of from the top
    // if (y == 0){
    //  ellipse(x,650,50,50);
    //}
    //else{
    ellipse(x, y, 50, 50);
    fill(0, 255);
    if ((x/80)+1960>=1970) {
      textSize(15);
      text("1970-1996", x-45, 750);
    } else {
      text((x/80)+1960, x-25, 750);
      text("years", 30, 750);
    }
    text((x/80)+1960, x-25, 750);
    text("years", 30, 750);
    for (int i =0; i<row; i++) {
      textSize(12);
      text(SongNames[i], textX, textY);
      for (int j=1; j<2; j++) {
        text(dataArray[i][j], textX+200, textY);
      }
      textX+=45;
      for (int k=3; k<4; k++) {
        text(dataArray[i][k], textX+200, textY);
      }
      textY+=20;
      textX-=45;
    }
    textSize(20);
    //  }
    println(x, y);
  }

  void TenWeeks() { //Draws Graph for TenWeeks y axis
    if (x==1962 || x==1963) {
      fill(128, 0, 130, 150);
    } else if (x==1964 || x==1965) {
      fill(0, 0, 200, 150);
    } else if (x==1966 || x==1967) {
      fill(200, 0, 0, 150);
    } else if (x>1967) {
      fill(0, 200, 0, 150);
    }
    x = (x-1960)*80; //separates the circles to a readable
    if (x>800) {
      x=800;
    }

    if (y > 11 ) {
      y = 80;
    } else {
      y = (y-12)*50;
      y = y*-1;
    }
    //this change of y makes sure that the y axis starts at 0 from the bottom instead of from the top
    ellipse(x, y, 50, 50);
    fill(0, 255);
    if ((x/80)+1960>=1970) {
      textSize(15);
      text("1970-1996", x-45, 750);
    } else {
      text((x/80)+1960, x-25, 750);
      text("years", 30, 750);
    }
    for (int i =0; i<row; i++) {
      textSize(12);
      text(SongNames[i], textX, textY);
      for (int j=1; j<2; j++) {
        text(dataArray[i][j], textX+200, textY);
      }
      textX+=45;
      for (int k=4; k<5; k++) {
        text(dataArray[i][k], textX+200, textY);
      }
      textY+=20;
      textX-=45;
    }
    textSize(20);
  }



  void Spotify() { //Draws Graph for Spotify y axis
    //Checks years to decide where to draw bubble
    if (x==1962 || x==1963) {
      fill(128, 0, 130, 150);
    } else if (x==1964 || x==1965) {
      fill(0, 0, 200, 150);
    } else if (x==1966 || x==1967) {
      fill(200, 0, 0, 150);
    } else if (x>1967) {
      fill(0, 200, 0, 150);
    }
    x = (x-1960)*80; //separates the circles to a readable
    if (x>800) {
      x=800;
    }


    y = ((y-100000000)/150000);
    y = y*-1;
    if (y<0) {
      y=650;
    }

    // }
    //this change of y makes sure that the y axis starts at 0 from the bottom instead of from the top
    println(y);
    println(x);
    stroke(0);
    ellipse(x, y, 50, 50);
    fill(0, 255);
    if ((x/80)+1960>=1970) {
      textSize(15);
      text("1970-1996", x-45, 750);
    } else {
      text((x/80)+1960, x-25, 750);
      text("years", 30, 750);
    }
    for (int i =0; i<row; i++) {
      textSize(12);
      text(SongNames[i], textX, textY);
      for (int j=1; j<2; j++) {
        text(dataArray[i][j], textX+200, textY);
      }
      textX+=45;
      for (int k=5; k<6; k++) {
        text(dataArray[i][k], textX+200, textY);
      }
      textY+=20;
      textX-=45;
    }
    textSize(20);
  }
}
