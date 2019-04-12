class Graph {
 
  
  Graph(){
    
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
    fill(150);
    rect(175,700,115,50);
    
    for(int i=0;i<18;i++){
      
      int y=0;
      if(i<9)y=725;
      rect(175+i*200,725,115,50);
    }
  }
  void varSelect(){
    
    
    
  }
}
