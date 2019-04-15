class Button {
  float x,y;
  String p;
  boolean active;
  
  public Button(float x, float y, String p) {
    this.x = x;
    this.y = y;
    this.p = p;
    
    active=false;
    
    
    
  }
  
  boolean active(){return active;}
  
  public void display() {
    if(!active)
    fill(150);
    else fill(150,0,0);
    rect(x, y, 150, 65);
    fill(255);
    text(p,x+25,y+25);  
  }
  
  boolean testClicked(float mx, float my){
    if(mx>x && mx<x+150 && my>y && my<y+65){
      active=true;
      print(p);
      return true;
    }
    active=false;
    return false;
    
    
  }
  
  
  
  
  
  
  
}
