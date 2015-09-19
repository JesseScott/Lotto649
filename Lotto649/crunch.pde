
 /* 
  * various functions called to analyze data
  * 
  */
  
  void getMostDrawnNumberInArray(int index) 
  {
    println("GET MOST DRAWN NUMBER FROM ARRAY");
    println(spacer);

    int highest = 0;
    int occurences = 0;
    int count = 0;
    Integer[] mArray = new Integer[table.getRowCount()];
    
    switch(index) {
      case 1: 
        mArray = gDraws_1;
      break;
      case 2: 
        mArray = gDraws_2;
        break;
      case 3: 
        mArray = gDraws_3;
        break;
      case 4: 
        mArray = gDraws_4;
        break;
      case 5: 
        mArray = gDraws_5;
        break;
      case 6: 
        mArray = gDraws_6;
        break;    
    }
    
    List<Integer> list = Arrays.asList(mArray);
    Set<Integer> unique = new HashSet<Integer>(list);
    for (int i = 0; i < unique.size(); i++) {
      int val = Collections.frequency(list, i);
      //println("The #" + i + " occurs " + val + " times.");
      if(val > occurences) {
        occurences = val;
        highest = i;
        switch(index) {
          case 1: 
            gHighestBall_1.add(highest);
            gHighestTimes_1.add(occurences);
          break;
          case 2: 
            gHighestBall_2.add(highest);
            gHighestTimes_2.add(occurences);
          break;
          case 3: 
            gHighestBall_3.add(highest);
            gHighestTimes_3.add(occurences);
          break;
          case 4: 
            gHighestBall_4.add(highest);
            gHighestTimes_4.add(occurences);            
          break;
          case 5: 
            gHighestBall_5.add(highest);
            gHighestTimes_5.add(occurences);            
          break;
          case 6: 
            gHighestBall_6.add(highest);
            gHighestTimes_6.add(occurences);            
          break;    
        }
      }
    }
    //println("Highest Value is " + highest + " which occurs " + occurences + " times.");
  }
  
  void listValuesForNumber(int index) 
  {
    println("LIST HIGHEST VALUES FOR NUMBER");
    println(spacer);
    
    ArrayList<Integer> mListBall  = new ArrayList<Integer>();  
    ArrayList<Integer> mListTimes = new ArrayList<Integer>();  
    
    switch(index) {
      case 1: 
        mListBall = gHighestBall_1;
        mListTimes = gHighestTimes_1;
      break;
      case 2: 
        mListBall = gHighestBall_2;
        mListTimes = gHighestTimes_2;        
      break;
      case 3: 
        mListBall = gHighestBall_3;
        mListTimes = gHighestTimes_3;    
      break;
      case 4: 
        mListBall = gHighestBall_4;
        mListTimes = gHighestTimes_4;
      break;
      case 5: 
        mListBall = gHighestBall_5;
        mListTimes = gHighestTimes_5;
      break;
      case 6: 
        mListBall = gHighestBall_6;
        mListTimes = gHighestTimes_6;
      break;    
    }
    
    for(int i = 0; i < mListBall.size(); i++) {
       println("New Highest Value for Ball #" + index + ": " + mListBall.get(i) + " which occurs " + mListTimes.get(i) + " times.\n");
    }
  }
  
  void setMessageForArrayByIndex(int index)
  {
    println("SET MESSAGE FOR BALL");
    println(spacer);
    switch(index) {
      case 1: 
        msg_1 = "The most drawn value for Ball #" + index + " is " + gHighestBall_1.get(gHighestBall_1.size()-1) + " which has been drawn " + gHighestTimes_1.get(gHighestTimes_1.size()-1) + " times.";
        println(msg_1);
      break;
      case 2: 
        msg_2 = "The most drawn value for Ball #" + index + " is " + gHighestBall_2.get(gHighestBall_2.size()-1) + " which has been drawn " + gHighestTimes_2.get(gHighestTimes_2.size()-1) + " times.";
        println(msg_2);     
        break;
      case 3: 
        msg_3 = "The most drawn value for Ball #" + index + " is " + gHighestBall_3.get(gHighestBall_3.size()-1) + " which has been drawn " + gHighestTimes_3.get(gHighestTimes_3.size()-1) + " times.";
        println(msg_3);      
        break;
      case 4: 
       msg_4 = "The most drawn value for Ball #" + index + " is " + gHighestBall_4.get(gHighestBall_4.size()-1) + " which has been drawn " + gHighestTimes_4.get(gHighestTimes_4.size()-1) + " times.";
        println(msg_4);       
        break;
      case 5: 
        msg_5 = "The most drawn value for Ball #" + index + " is " + gHighestBall_5.get(gHighestBall_5.size()-1) + " which has been drawn " + gHighestTimes_5.get(gHighestTimes_5.size()-1) + " times.";
        println(msg_5);      
        break;
      case 6: 
        msg_6 = "The most drawn value for Ball #" + index + " is " + gHighestBall_6.get(gHighestBall_6.size()-1) + " which has been drawn " + gHighestTimes_6.get(gHighestTimes_6.size()-1) + " times.";
        println(msg_6);       
        break;    
    }
  }
