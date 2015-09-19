
/*
  * I'MMA KRAK THE ALGORITHM
  *
  *
  *
*/

/* "PRODUCT","DRAW NUMBER","SEQUENCE NUMBER","DRAW DATE","NUMBER DRAWN 1","NUMBER DRAWN 2","NUMBER DRAWN 3","NUMBER DRAWN 4","NUMBER DRAWN 5","NUMBER DRAWN 6","BONUS NUMBER" */


// IMPORTS

import java.util.HashMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

// VARIABLES

Table table;
PFont font;

int NUMBERS_DRAWN = 6;

String [] gWinners;
Integer[] gDraws_1, gDraws_2, gDraws_3, gDraws_4, gDraws_5, gDraws_6;
ArrayList<Integer> gHighestBall_1, gHighestBall_2, gHighestBall_3, gHighestBall_4, gHighestBall_5, gHighestBall_6;
ArrayList<Integer> gHighestTimes_1, gHighestTimes_2, gHighestTimes_3, gHighestTimes_4, gHighestTimes_5, gHighestTimes_6; 


String msg_history = "";
String msg_1 = "";
String msg_2 = "";
String msg_3 = "";
String msg_4 = "";
String msg_5 = "";
String msg_6 = "";
String spacer = "------\n";

// SETUP
void setup() 
{
  // Screen
  size(1500, 500);
  background(255);
  
  // Font
  font = loadFont("font/Avenir-Black-48.vlw");
  
  // Load Our Data
  loadData();
  
  // Populate Our Data
  populateData();
  
  // Read
  for(int i = 0; i < NUMBERS_DRAWN; i++) {
    getMostDrawnNumberInArray(i+1);
    listValuesForNumber(i+1);
    setMessageForArrayByIndex(i+1);
  }
}

// DRAW

void draw() 
{
  // Render
  background(255);

  // Show 
  showHistory();
  showHighestValues();
  
  
}
