class ScatterGraph {
  Plot[] plots;
  
  String xVarCurrent;
  String yVarCurrent;
 
  ScatterGraph() {
    xVarCurrent = "";
    yVarCurrent = "";
    plots = new Plot[227];
  }
 
  void setCurrent(String newVarX, String newVarY) {
    xVarCurrent = newVarX;
    yVarCurrent = newVarY;
  }
 
  public void loadPlots(){
    for(int i=0;i<countryList.size();i++) {
      //creates Plot objects to match country objects
      plots[i] = new Plot(countryList.get(i));
    }
  }
  //Draws the x and y axis and their labels
  void drawGraph(){
    stroke(#7A7A7A);
    strokeWeight(5);
    //draws x axis
    line(130,925,1865,925);
    
    //draws y axis
    line(130,250,130,925);
    
    textSize(25);
    fill(255);
    text(xVarCurrent,900,960);
 
    translate(100,775);
    rotate(-HALF_PI);
    text(yVarCurrent,0,0);
    rotate(HALF_PI);
    translate(-100,-775);
  }
  
  //draws bars on bargraph
  void drawPlots(){
    float y;
    float x;
    for(int i=0;i<plots.length;i++){
      //calculate proprotional bar height based on the max value of the dataset, accounting for graph size
      y=plots[i].getCountryData(yVarCurrent)/getMax(yVarCurrent)*-675;
      x=plots[i].getCountryData(xVarCurrent)/getMax(xVarCurrent)*1735;
      //iterates through bar array and displays them
      plots[i].display(x+135/*i*7.5+159*/,y+920,6);
    }
  }
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
