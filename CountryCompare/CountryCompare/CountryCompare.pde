import java.util.Scanner;
import java.io.File;
import java.util.Arrays;
import java.util.Map;
import java.util.TreeMap;
import java.util.Iterator;
import java.util.List;

Graph g = new Graph();

void setup(){
  WorldMap wm=new WorldMap();
  wm.loadCountries();
  

  size(1920,1080);
  //g=new Graph();
  //g.display();
  
}

void draw(){
  g.display();
}

void mouseClicked(){
  print("click");
  g.varSelect();
}