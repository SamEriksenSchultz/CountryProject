class VarSelector {
  
  PVector pos;
  

  
  VarSelector(){
    pos=new PVector(-200,0);
    //rect dimensions = 200,1080

  }
  
 //checks if mouse is far enough to the left to activate
 
  boolean checkActive(){
    //checks if mouse is pass the threshold
    if(mouseX<100)
    return true;
    
    //if the mouse is pass the initial area but the menu is extended
    else if(mouseX<250 && pos.x>-200)
    return true;
    
    return false;
  }
  
  //
  void showMenu(){
    //sets acceleration based on the distance between the two points
    float speed=(200-pos.x)/50;
    //float speed=5;
    
    
    //extends menu out or retracts depending on the position
    if(checkActive()){
      if(pos.x<0)
        pos.x+=speed;
     
    }else if(!checkActive() && pos.x>-200){
        pos.x-=speed;
    }
    
    fill(150);
    noStroke();
    rect(pos.x,pos.y,200,1080);
  }
}
