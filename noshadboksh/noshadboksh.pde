Table BeatleTable;
ArrayList<bubble> Circles; //array list of each object of data
ArrayList<Button> Buttons; //array list of buttons
int column; //number of columns
int row; // number of rows
int [][] dataArray; //2d array of the data
String [] titles = {"RANK", "RANKWEEKS", "TENWEEKS", "SPOTIFY"}; //Array of headers
int data; //Which column of data

//button variables
boolean ButtonPress = false;
int ButtonX =2;
int ButtonY = 55;
int ButtonW = 15;
int ButtonH = 15;
String title;
int r = 100;
int g = 200;
int blue = 200;
int ButtonCount = 0;
String [] SongNames; //Array of song names






void setup() {
  size(1200, 800);
  textSize(20);
  background(255);
  //Creates all the arrays
  Circles = new ArrayList<bubble>();
  Buttons = new ArrayList<Button>();
  BeatleTable = loadTable("Beatles.csv", "header");
  column = BeatleTable.getColumnCount();
  row = BeatleTable.getRowCount();
  SongNames = new String[row];
  dataArray = new int[row][column]; //creating 2d array of data
  for (int i = 0; i < row; i++) {
    for (int j = 1; j < column; j++) {
      dataArray[i][j] =  BeatleTable.getInt(i, j); //inserting the data into the array
    }
  }
  for (int k = 0; k < row; k++) {
    SongNames[k]=BeatleTable.getString(k, 0); //gets the song names from excel file
  }
}
void draw() {
  //drawing the buttons on different Y axis
  fill(0); 
  for (int i = 0; i<titles.length; i++) {
    title = titles[i];
    Buttons.add(new Button(ButtonX, ButtonY, ButtonW, ButtonH, title, r, g, blue));
    Button b = Buttons.get(i);
    b.BDraw();
    ButtonY+=50;
  }

  //clears the array list to draw a new graph
  if (ButtonCount > 1) {
    for (int j = Circles.size()-1; j>=0; j--) {
      background(255);
      Circles.remove(j);
      ButtonCount = 0;
    }
  }

  line(100, 50, 100, 700);
  line(100, 700, 1100, 700);
}


void mousePressed() {
  //checks if button is pressed and which button is pressed to see which data to display
  for (int i = 0; i<Buttons.size()-1; i++) {
    if (Buttons.get(i).isMouseOnButton() == true) {
      ButtonPress= true;
      ButtonCount++;
      data = i+2;


      if (ButtonPress) {

        for (int j = 0; j<dataArray.length; j++) {

          if (data == 5) {
            Circles.add(new bubble(dataArray[j][1], dataArray[j][data]));
            bubble c = Circles.get(j);
            c.Spotify();
          } 
          if (data == 4) {
            Circles.add(new bubble(dataArray[j][1], dataArray[j][data]));
            bubble c = Circles.get(j);
            c.TenWeeks();
          } 
          if (data == 3) {
            Circles.add(new bubble(dataArray[j][1], dataArray[j][data]));
            bubble c = Circles.get(j);
            c.Rank();
          } 
          if (data == 2) {
            Circles.add(new bubble(dataArray[j][1], dataArray[j][data]));
            bubble c = Circles.get(j);
            c.Rank();
          }
        }
      }
    }
  }
}
