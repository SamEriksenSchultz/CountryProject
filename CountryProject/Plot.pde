class Plot {
  
  Country c;
  
  
  Plot(Country c) {
    this.c =c;
  }
  void display(float x, float y, float r) {
    noStroke();
    fill(#C44919);
    ellipse(x,y,r,r);
  }
  
  float getCountryData(String var){
    return c.getVariable(var);
  }
  
  
  
  
}
