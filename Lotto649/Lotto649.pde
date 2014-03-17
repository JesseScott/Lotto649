



// VARIABLES
String[] lines;
String[] winningDraws;
String[] splitData;
String   drawDate;

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
     splitData = split(lines[i], ",");
     drawDate  = splitData[3];
     println(drawDate);
  }
  
}

// DRAW
