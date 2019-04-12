class Button {
  float x,y;
  String p;
  
  
  public Button(float x, float y, String p) {
    this.x = x;
    this.y = y;
    this.p = p;
    
    
    
  }
  
  public void display() {
    fill(150);
    rect(x, y, 150, 65);
    fill(255);
    text(p,x+25,y+25);  
    
    
  }
  
  
  
  
  
}
