//contained within the varselector class, used to select the variable(s) being examined
//also takes in an info string that can be examined with a right click

class Button {
  
  //represents the buttons position on the coordinate plane (top left)
  PVector position;
  
  //the variable that the button represents
  String var;
  
  //an indepth description of what the variable represents specifically, cited from the dataset source
  String info;
  
  
  Button(String var,String info, PVector pos){
    position=pos;
    this.var=var;
    this.info=info;
  }
  
  //displays textbox overlay containing the info string
  void showInfo(){
    
  }
  
  //responsible for drawing the text overlay and button graphic
  void drawButton(){
    //updates the button to the position of the VarSelector
    position.x=vs.pos.x+10;
    fill(130);
    rect(position.x,position.y,325,75);
  }
  
  //checks if the button is being hovered over. Only called when VarSelector is active
  boolean checkHover(){
    return false;
  }
  
}
