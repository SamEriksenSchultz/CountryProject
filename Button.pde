//contained within the varselector class, used to select the variable(s) being examined
//also takes in an info string that can be examined with a right click

class Button {
  
  Button b;
  
  //represents the buttons position on the coordinate plane (top left)
  PVector position;
  
  //the variable that the button represents
  String variable;
  
  //an indepth description of what the variable represents specifically, cited from the dataset source
  String info;
  
  //indicates that the button is currently being used
  boolean active;
  
  //dimensions of the button
  float len,wid;
  
  Button(String var,String info, PVector pos, int len, int wid){
    position=pos;
    variable=var;
    this.info=info;
    
    this.len=len;
    this.wid=wid;
  }
  
  //constructor for non-variable buttons
  Button(String var,PVector pos){
    position=pos;
    variable=var;
    
    len=225;
    wid=45;
  }
  
  Button(String var, PVector pos, Button b){
    position=pos;
    
    variable=var;
    
    this.b=b;
    
    len=50;
    wid=45;
  }
  
  //displays textbox overlay containing the info string
  void showInfo(){
    
  }
  
  boolean checkActive(){return active;}
  
  //responsible for drawing the text overlay and button graphic
  //takes in colors for easy access in VarSelector
  
  void drawButton(float x){
    //updates the button to the position of the VarSelector
    position.x=x+10;
    if(active){
      fill(200);
      rect(position.x,position.y,len,wid);
      fill(0);
      text(variable,position.x+5,position.y+5,position.x+len-5,position.y+wid-5);
    } else {
      fill(#C44919);
      rect(position.x,position.y,len,wid);
      fill(255);
      text(variable,position.x+5,position.y+5,position.x+len-5,position.y+wid-5);
    }
    
    //draws x and y selector buttons, excluding bargraph and the switch graph button
    /*if(vs.getSwitch()==-1 && variable!="Switch Graph" && !(vs.pos.x<-340)){
      fill(#C44919);
      rect(position.x+len+15,position.y,50,wid);
      rect(position.x+len+80,position.y,50,wid);
      fill(255);
      text(variable,position.x+len+30,position.y+30);
      text(variable,position.x+len+95,position.y+30);
    }*/
  }
  
  
  //checks if the button is being hovered over. Only called when VarSelector is active
  boolean checkHover(){
    if(mouseX>position.x && mouseX<position.x+len && mouseY>position.y && mouseY<position.y+wid){
      print(variable + " active");
      return true;
    }
    return false;
  }
  
  
  
}
