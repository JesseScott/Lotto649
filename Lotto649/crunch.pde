
 /* 
  * various functions called to analyze data
  * 
  */
  
  int getOccurencesOfNumberInArray(Integer[] _array) 
  {
    int count = 0;
    
    List<Integer> list = Arrays.asList(_array);
    Set<Integer> unique = new HashSet<Integer>(list);
    for (Integer key : unique) {
      println("Unique Item:" + key + " occurs " + Collections.frequency(klist, key) + " times.");
    }
      
    return count;
  }
