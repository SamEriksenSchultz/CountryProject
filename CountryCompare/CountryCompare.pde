import java.util.Scanner;
import java.io.File;
import java.util.Arrays;
import java.util.Map;
import java.util.TreeMap;
import java.util.Iterator;

void setup(){
  WorldMap wm=new WorldMap();
  wm.loadCountries();
  print(wm);
}
