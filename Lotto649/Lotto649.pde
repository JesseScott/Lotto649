
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

String[]gWinners;
Integer[] gOne, gTwo, gThree, gFour, gFive, gSix;



String msg = "";

// SETUP
void setup() 
{
  // Screen
  size(1500, 500);
  background(255);
  
  // Font
  font = loadFont("font/Avenir-Black-48.vlw");
  textFont(font, 32);
  
  // Load Our Data
  loadData();
  
  // Populate Our Data
  populateData();
  
  getOccurencesOfNumberInArray(gOne);
  
}

// DRAW

void draw() 
{
  // Render
  background(255);
  fill(0);
  text(msg, 50, 50);
  
  
}
