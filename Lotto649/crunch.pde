
 /* 
  * various functions called to analyze data
  * 
  */
  
  void getMostDrawnNumberInArray(Integer[] _array) 
  {
    int highest = 0;
    int occurences = 0;
    int count = 0;
    
    List<Integer> list = Arrays.asList(_array);
    Set<Integer> unique = new HashSet<Integer>(list);
    for (int i = 0; i < unique.size(); i++) {
      int key = i;
      int val = Collections.frequency(list, key);
      println("The #" + key + " occurs " + val + " times.");
      if(val > occurences) {
        occurences = val;
        highest = i;
        gOneByOccurence.add(occurences);
        gOneByVal.add(highest);
      }
    }
    println("Highest Value is " + highest + " which occurs " + occurences + " times.");
  }
  
  void listValuesForNumber(int index) {
    println("\n----\n------\n");
    int sz = gOneByVal.size();
    for(int i = 0; i < sz; i++) {
       println("Highest Value is " + gOneByVal.get(i) + " which occurs " + gOneByOccurence.get(i) + " times.");
    }
  }
