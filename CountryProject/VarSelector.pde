class VarSelector {
  
  //varselector's position on the plane
  PVector pos;
  
  //array that represents the buttons for each selectable variable
  Button[]buttons;
  
  VarSelector(){
    pos=new PVector(-350,0);
    
    //creates button array, instansiates new button objects with their text and descriptions, as well as a pvector representing their position
    //the constants on this pvector are subject to change, to reflect a better size and feel
    buttons=new Button[16];
    
    for(int i=0;i<buttons.length;i++){
      PVector bPos=new PVector(pos.x+10,i*50+225);
      buttons[i]=new Button(variable[i],variable[i],bPos);
    }
  }
  
 //checks if mouse is far enough to the left to activate
  
  boolean checkActive(){
    //checks if mouse is pass the threshold
    if(mouseX<50)
    return true;
    
    //if the mouse is pass the initial area but the menu is extended
    else if(mouseX<400 && pos.x>-350)
    return true;
    
    return false;
  }
  
  //
  void showMenu(){
    //sets acceleration based on the distance between the two points
    float speed=(350-pos.x)/40;
    //float speed=5;
    
    
    //extends menu out or retracts depending on the position
    if(checkActive()){
      if(pos.x<0)
        pos.x+=speed;
      if(pos.x>0)
        pos.x=0;
    }else if(!checkActive() && pos.x>-350){
        pos.x-=speed;
    }
    
    fill(#A2CDF2);
    noStroke();
    rect(pos.x,pos.y,350,1080);
    
    drawButtons();
  }
  
  //draws all the buttons and their corresponding information
  void drawButtons(){
    for(int i=0; i<buttons.length; i++){
      buttons[i].drawButton();
    }
  }
  
  //checks if buttons are being pressed, and updates them if they are/are not
  //called in mousePressed()
  void checkButtons(){
    println("checking");
    
    for(int i=0; i<buttons.length; i++){
      //if the button is being hovered over, then set it to active
      if(buttons[i].checkHover()){
        buttons[i].active=true;
        //set the current var to be examined to the var from the button being pressed
        bg.setCurrent(buttons[i].variable);
      }else buttons[i].active=false;
    }
  }
}