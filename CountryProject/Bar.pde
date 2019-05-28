//objects on the graph that represent the respective values for comparative values in the countrylist array
//each bar takes in a country object and has a length, width, and height, with the latter being based on the value of the 
//variable being shown

class Bar {
 
  Country c;
  
  //number of standard deviations from the mean
  float zScore;
  
  //active string being examined
  String varActive;
  
  boolean active;
  
  //the var that is currently being displayed, used in displaySpecifics()
  Bar(Country c){
    this.c = c;
  }
  
  //draws the bar on the graph; to be called in the BarGraph class
  void display(float x,float y,float w,float h){
     noStroke();
    //if mouse is over, change color
    if(testCollision(x,y,w,h)){
      fill(200);
      println(c.country);
    }else fill(#C44919);

    rect(x,y,w,h);
    
    //if mouse over and clicked, display specific stats
    if(testCollision(x,y,w,h) && mousePressed && varActive!="")
      active=true;
    else active=false;
  }  
  
  float getCountryData(String var){
    varActive=var;
    return c.getVariable(var);
  }
  
  boolean testCollision(float x,float y,float w,float h){
    return mouseX>x && mouseX<x+w && mouseY<925 && mouseY>130;
  }
  
  float calcZ(){
    //z equations is xbar-mu/sigma
    return (getCountryData(varActive)-bg.mean)/bg.sigma;
  }
  
  void displaySpecifics(){
    fill(255);
    
    PVector rectPos=new PVector(mouseX+15,mouseY-15);
    
    if(mouseY>800)rectPos.y-=100;
    if(mouseX>1600)rectPos.x-=250;
    
    rect(rectPos.x,rectPos.y,225,125);
    fill(0);
    text(c.country + "\n"+Float.toString(getCountryData(varActive))+"\nz="+calcZ(),rectPos.x+5,rectPos.y+5,rectPos.x+240,rectPos.y+240);
    //println(Float.toString(getCountryData(varCurrent)));
  }
  
  
}
