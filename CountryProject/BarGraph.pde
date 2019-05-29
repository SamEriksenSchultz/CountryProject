class BarGraph {
  
  Bar[] bars;
  
  String varCurrent;
  
  float mean,sigma;
  
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
  void drawGraph() {
    stroke(#7A7A7A);
    strokeWeight(5);
    //draws x axis
    line(130,925,1865,925);
    
    //draws y axis
    line(130,250,130,925);
    
    //draws descriptive stats in the top right
    fill(255);
    
    //don't display if there's no bars on the screen
    if(varCurrent!=""){
      text("μ="+mean,1690,50);
      text("σ="+sigma,1690,80);
    }
    
    //draws horizontal axis label
    textSize(25);
    text("Countries",900,960);  
  }
  
  //draws bars on bargraph
  void drawBars(){
    float y;
    for(int i=0;i<bars.length;i++){
      //calculate proprotional bar height based on the max value of the dataset, accounting for graph size
      y=bars[i].getCountryData(varCurrent)/getMax(varCurrent)*-675;
      //iterates through bar array and displays them
      bars[i].display(i*7.5+159,920,6,y);
    }
    
    //draw advanced stats after to prevent them from being covered by later bars
    //checks if the bar is active, if it is then display the advanced stats
    for(int i=0;i<bars.length;i++)if(bars[i].active)bars[i].displaySpecifics();

  }
  
  //returns the max float value for the given string variable (used to calculate proprotional bar height
  float getMax(String var){
    float temp=0;
    for(int i=0;i<countryList.size();i++){
      float compare=countryList.get(i).getVariable(var);
      if(compare>temp)
      temp=compare;
    }
    //used to get sigma and mean, to display in drawGraph()
    calculateStats();
    return temp;
  }
  
  //calculates standard deviation and mean, to be displayed on screen
  void calculateStats(){
    float sum = 0.0, standardDeviation = 0.0;
        int length = bars.length;

        for(Bar b : bars) {
            sum += b.getCountryData(varCurrent);
        }

        mean = sum/length;

        for(Bar b:bars) {
            standardDeviation += Math.pow(b.getCountryData(varCurrent) - mean, 2);
        }

    sigma=(float)Math.sqrt(standardDeviation/length);
  }
  

  
 
}
