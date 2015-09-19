
 /* 
  * various functions called in setup
  * to loads table, setup arrays, run through table, and populate arrays
  * 
  */
  
   void loadData() 
  {
    println("LOAD DATA");
    println(spacer);

    table = loadTable("csv/649.csv", "header");
    int num = table.getRowCount();
    
    gWinners = new String[num];
    gDraws_1 = new Integer[num];
    gDraws_2 = new Integer[num];
    gDraws_3 = new Integer[num];
    gDraws_4 = new Integer[num];
    gDraws_5 = new Integer[num];
    gDraws_6 = new Integer[num];
    
    gHighestBall_1 = new ArrayList<Integer>();
    gHighestBall_2 = new ArrayList<Integer>(); 
    gHighestBall_3 = new ArrayList<Integer>(); 
    gHighestBall_4 = new ArrayList<Integer>(); 
    gHighestBall_5 = new ArrayList<Integer>(); 
    gHighestBall_6 = new ArrayList<Integer>(); 
    
    gHighestTimes_1 = new ArrayList<Integer>(); 
    gHighestTimes_2 = new ArrayList<Integer>(); 
    gHighestTimes_3 = new ArrayList<Integer>(); 
    gHighestTimes_4 = new ArrayList<Integer>(); 
    gHighestTimes_5 = new ArrayList<Integer>(); 
    gHighestTimes_6 = new ArrayList<Integer>(); 
    
    msg_history = "There have been " + table.getRowCount() + " Lotto 6/49 draws since " + table.getRow(1).getString("DRAW DATE");
  }
  
  void populateData() 
  {
    println("POPULATE DATA");
    println(spacer);

    for(int i = 0; i < table.getRowCount(); i++) {
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
      gWinners[i] = "Draw #" + num + " on " + date + " had a winning sequence of " + one + "-" + two + "-" + three + "-" + four + "-" + five + "-" + six;
      
      gDraws_1[i] = one;
      gDraws_2[i] = two;
      gDraws_3[i] = three;
      gDraws_4[i] = four;
      gDraws_5[i] = five;
      gDraws_6[i] = six;
      
      //println(gWinners[i]);
    }
  }
