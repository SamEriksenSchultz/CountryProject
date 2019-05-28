//objects on the graph that represent the respective values for comparative values in the countrylist array
//each bar takes in a country object and has a length, width, and height, with the latter being based on the value of the 
//variable being shown

class Bar {
 
  Country c;
  
  //if the bar is being hovered over
  boolean selected;
  
  //the var that is currently being displayed, used in displaySpecifics()
  String varActive;
  Bar(Country c){
    this.c = c;
  }
  
  //draws the bar on the graph; to be called in the BarGraph class
  void display(float x,float y,float w,float h){
    
    if(testCollision(x,y,w,h)){
      fill(255,0,0);
      println(c.country);
      
      
      
    }else fill(#0B42FF);

    //check if mouse if over
    noStroke();
    rect(x,y,w,h);
    
    //if mouse over and clicked, display specific stats
    if(testCollision(x,y,w,h) && mousePressed && varActive!="")
      displaySpecifics();
  }
  
  float getCountryData(String var){
    varActive=var;
    return c.getVariable(var);
  }
  
  boolean testCollision(float x,float y,float w,float h){
    return mouseX>x && mouseX<x+w && mouseY<925 && mouseY>130;
  }
  
  void displaySpecifics(){
    fill(255);
    
    PVector rectPos=new PVector(mouseX,mouseY);
    
    if(mouseY>800)rectPos.y-=100;
    if(mouseX>1600)rectPos.x-=250;
    
    rect(rectPos.x,rectPos.y,250,100);
    fill(0);
    text(c.country + "\n"+varActive+Float.toString(getCountryData(varActive)),rectPos.x,rectPos.y,rectPos.x+240,rectPos.y+240);
  }
  
  
}
