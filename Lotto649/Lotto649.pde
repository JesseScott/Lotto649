



// VARIABLES
String[]   lines;
String[]   winningDraws;
String[]   splitData;
String     drawDate;
String[]   winningNumbers = new String[6];
String     winningDraw;

// SETUP
void setup() {
  size(500, 500);
  background(255);
  
  // Load Our Data
  lines = loadStrings("649.csv");
  println("There Have Been " + lines.length + " Lotto 649 Draws");
  
  // Loop Through Data
  for(int i = 0; i < lines.length; i++) {
     println(lines[i]); 
     
     // Split Data
     splitData = split(lines[i], ",");
     
     // Get Date
     drawDate  = splitData[3];
     println(drawDate);
     
     // Get Individual Numbers
     winningNumbers[0] = splitData[4];
     winningNumbers[1] = splitData[5];
     winningNumbers[2] = splitData[6];
     winningNumbers[3] = splitData[7];
     winningNumbers[4] = splitData[8];
     winningNumbers[5] = splitData[9];
     
     // Get Final Draw
     winningDraw = join(winningNumbers, "-");
     println(winningDraw); 
     
  }
  
}

// DRAW
