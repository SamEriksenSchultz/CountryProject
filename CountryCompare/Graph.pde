
class Graph {
 List<Button> buttons; 
  
  Graph(){
    buttons = new ArrayList<Button>();
  }
  
  void display(){
    background(0);
    bar("");
    axis("");
    drawSelect();
  }
  
  void axis(String yLabel){
    stroke(255);
    strokeWeight(5);
    line(160,650,1865,650);
    line(160,100,160,650);
    textSize(25);
    fill(255);
    text("Countries",900,700);   
  }
  
  void bar(String var){
  
    float x=2.5;
    float y;
    
    float min=0;
    float max=0;
    float total=0;
    float index=1;
    
    for(String s:worldMap.keySet()){
      float temp=worldMap.get(s).phones;
      if(temp>max)max=temp;
      total+=temp;
    }
     
    for(String s:worldMap.keySet()){
      float temp=worldMap.get(s).phones;
      y=(temp/max)*-500;
      stroke(255,0,0);  
      rect(index*7.5+159,645,1,y);
      println(temp +", " +y);
      index++;
    }
    text((int)min,120,650);
    text((int)max,110,100);
  }
  
  void drawSelect(){
    noStroke();
    
    
    for(int i=0;i<18;i++){
      float y;
      float x;
      if(i < 9){
        y=780;
        x=200+i*180;
      } else {
        y=900;
        int temp=i;
        i-=9;
        x=200+i*180;
        i=temp;
      }
      
        
      
      
      Button b=new Button(x,y, "test");
      buttons.add(b);
      b.display();
      
     
    }
  }
  void varSelect(){
    
    
    
  }
}
