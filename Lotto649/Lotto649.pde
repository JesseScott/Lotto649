



// VARIABLES
String[]   lines;
String[]   winningDraws;
String[]   splitData;
String[]   winningNumbers = new String[6];
String     drawDate;
String     winningDraw;

// SETUP
void setup() {
  size(500, 500);
  background(255);
  
  // Load Our Data
  lines = loadStrings("649.csv");
  println("There Have Been " + lines.length + " Lotto 649 Draws");
  
  // Create Array To Hold Winning Numbers
  winningDraws = new String[lines.length];
  
  // Loop Through Data
  for(int i = 0; i < lines.length; i++) {
     // Ignore First Line 
     if(i > 0) {
       // Split Data
       splitData = split(lines[i], ",");
       
       // Get Date
       drawDate  = splitData[3];
       
       // Get Individual Numbers
       winningNumbers[0] = splitData[4];
       winningNumbers[1] = splitData[5];
       winningNumbers[2] = splitData[6];
       winningNumbers[3] = splitData[7];
       winningNumbers[4] = splitData[8];
       winningNumbers[5] = splitData[9];
       
       // Get Final Draw
       winningDraw = join(winningNumbers, "-");
       
       // Print
       println("The Winning Draw On " + drawDate + " Was " + winningDraw);
       
       // Cast Winning Draws Into New Array
       winningDraws[i] = winningDraw;
       
     }
  }
  
}

// DRAW
