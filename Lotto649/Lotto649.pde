
/*
  *
  *
  *
  *
*/

/* "PRODUCT","DRAW NUMBER","SEQUENCE NUMBER","DRAW DATE","NUMBER DRAWN 1","NUMBER DRAWN 2","NUMBER DRAWN 3","NUMBER DRAWN 4","NUMBER DRAWN 5","NUMBER DRAWN 6","BONUS NUMBER" */


// VARIABLES

Table       table;


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
  table = loadTable("649.csv", "header");
  println("There Have Been " + table.getRowCount() + " Lotto 649 Draws");
  
  // Create Array To Hold Winning Numbers
  winningDraws = new String[table.getRowCount()];
  
  // Loop Through Data
  for(TableRow row : table.rows()) {

    int num        = row.getInt("DRAW NUMBER");
    String date    = row.getString("DRAW DATE");
    String one     = row.getString("NUMBER DRAWN 1");
    String two     = row.getString("NUMBER DRAWN 2");
    String three   = row.getString("NUMBER DRAWN 3");
    String four    = row.getString("NUMBER DRAWN 4");
    String five    = row.getString("NUMBER DRAWN 5");
    String six     = row.getString("NUMBER DRAWN 6");
    String bonus   = row.getString("BONUS NUMBER");

    println("Draw #" + num + " on " + date + " had a winning sequence of " + one + "-" + two + "-" + three + "-" + four + "-" + five + "-" + six);

  }
  
}

// DRAW
