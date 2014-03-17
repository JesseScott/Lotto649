

// VARIABLES
String[] lines;


// SETUP
void setup() {
  size(500, 500);
  background(255);
  
  lines = loadStrings("649.csv");
  println("There Have Been " + lines.length + " Lotto 649 Draws");
  for(int i = 0; i < lines.length; i++) {
     println(lines[i]); 
  }
  
}



// DRAW
