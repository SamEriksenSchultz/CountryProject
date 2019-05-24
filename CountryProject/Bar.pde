//objects on the graph that represent the respective values for comparative values in the countrylist array
//each bar takes in a country object and has a length, width, and height, with the latter being based on the value of the 
//variable being shown

class Bar {
 
  Country c;
  
  Bar(Country c){
    this.c = c;
  }
  
  //draws the bar on the graph; to be called in the BarGraph class
  void display(float x,float y,float w,float h){
    noStroke();
    fill(255,0,0);
    rect(x,y,w,h);
  }
  
  float getCountryData(String var){
    return c.getVariable(var);
  }
  
  
  
  
}
