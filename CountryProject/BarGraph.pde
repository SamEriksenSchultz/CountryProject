class BarGraph {
  
  Bar[]bars;
  
  String varCurrent;
  
  BarGraph(){
    bars=new Bar[227];
  }
  
  //responsible for final graphing elements
  void drawGraph(){
    stroke(255);
    strokeWeight(5);
    line(160,650,1865,650);
    line(160,100,160,650);
    textSize(25);
    fill(255);
    text("Countries",900,700);  
  }
  
  //draws bars on bargraph
  void drawBars(){
    float y;
    for(int i=0;i<bars.length;i++){
      //calculate proprotional bar height based on the max value of the dataset, accounting for graph size
      y=bars[i].getCountryData(varCurrent)/getMax(varCurrent)*-500;
      
      //iterates through bar array and displays them
      bars[i].display(i*7.5+159,645,6,y);
    }
  }
  
  //returns the max float value for the given string variable (used to calculate proprotional bar height
  float getMax(String var){
    float temp=0;
    for(int i=0;i<countryList.size();i++){
      float compare=countryList.get(i).getVariable(var);
      if(compare>temp)
      temp=compare;
    }
    return temp;
  }
  
 
}
