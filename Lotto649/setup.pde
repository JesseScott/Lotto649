
 /* 
  * various functions called in setup
  * to loads table, setup arrays, run through table, and populate arrays
  * 
  */
  
   void loadData() 
  {
    table = loadTable("csv/649.csv", "header");
    
    gWinners = new String[table.getRowCount()];
    gOne = new Integer[table.getRowCount()];
    gTwo = new Integer[table.getRowCount()];
    gThree = new Integer[table.getRowCount()];
    gFour = new Integer[table.getRowCount()];
    gFive = new Integer[table.getRowCount()];
    gSix = new Integer[table.getRowCount()];
    
    msg = "There have been " + table.getRowCount() + " Lotto 6/49 draws since " + table.getRow(1).getString("DRAW DATE");
  }
  
  void populateData() 
  {
    for(int i = 0; i < 100 /*table.getRowCount()*/; i++) {
      TableRow      row = table.getRow(i);
      int num     = row.getInt("DRAW NUMBER");
      String date = row.getString("DRAW DATE");
      int one     = row.getInt("NUMBER DRAWN 1");
      int two     = row.getInt("NUMBER DRAWN 2");
      int three   = row.getInt("NUMBER DRAWN 3");
      int four    = row.getInt("NUMBER DRAWN 4");
      int five    = row.getInt("NUMBER DRAWN 5");
      int six     = row.getInt("NUMBER DRAWN 6");
      int bonus   = row.getInt("BONUS NUMBER");    
      
      gOne[i]     = one;
      gTwo[i]     = two;
      gThree[i]   = three;
      gFour[i]    = four;
      gFive[i]    = five;
      gSix[i]     = six;
      gWinners[i] = "Draw #" + num + " on " + date + " had a winning sequence of " + one + "-" + two + "-" + three + "-" + four + "-" + five + "-" + six;
      
      //println(gWinners[i]);
    }
  }
