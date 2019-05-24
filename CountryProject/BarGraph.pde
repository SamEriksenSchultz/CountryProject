class BarGraph {
  
  Bar[] bars;
  
  String varCurrent;
  
  BarGraph(){
    varCurrent="";
    bars=new Bar[227];
  }
  
  //sets the var to be examined
  void setCurrent(String newVar){varCurrent=newVar;}
  
  //loads bars into bar array bars[]
  public void loadBars(){
    for(int i=0;i<countryList.size();i++) {
      //creates bar objects to match country objects
      bars[i] = new Bar(countryList.get(i));
    }
  }
  
  //responsible for final graphing elements
  void drawGraph(){
    stroke(255);
    strokeWeight(5);
    line(130,925,1865,925);
    line(130,250,130,925);
    textSize(25);
    fill(255);
    text("Countries",900,960);  
  }
  
  //draws bars on bargraph
  void drawBars(){
    float y;
    for(int i=0;i<bars.length;i++){
      //calculate proprotional bar height based on the max value of the dataset, accounting for graph size
      y=bars[i].getCountryData("area"/*varCurrent*/)/getMax("area"/*varCurrent*/)*-675;
      
      //iterates through bar array and displays them
      bars[i].display(i*7.5+159,920,6,y);
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
