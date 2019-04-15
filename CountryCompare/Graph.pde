
class Graph {
  
  Map<String,Button>buttons; 
  String[]vars;
  String current;
  
  Graph(){
    buttons = new HashMap<String,Button>();
    vars=new String[17];
    vars[0]="population";
    vars[1]="area";
    vars[2]="gdp";
    vars[3]="density";
    vars[4]="migration";
    vars[5]="infants";
    vars[6]="literacy";
    vars[7]="phones";
    vars[8]="arable";
    vars[9]="crops";
    vars[10]="other";
    vars[11]="climate";
    vars[12]="birthrate";
    vars[13]="deathrate";
    vars[14]="agriculture";
    vars[15]="industry";
    vars[16]="service";
    
    current="density";
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
          float temp=worldMap.get(s).getVariable(current);
          if(temp>max)max=temp;
      total+=temp;
    }
     
    for(String s:worldMap.keySet()){
      float temp=worldMap.get(s).getVariable(current);
      y=(temp/max)*-500;
      stroke(255,0,0);  
      rect(index*7.5+159,645,1,y);
      //println(temp +", " +y);
      index++;
    }
    
    
    text((int)min,120,650);
    text((int)max,110,100);
  }
  
  void updateAllButtons(){
    for(String s:buttons.keySet()){
        buttons.get(s).display();
        if(buttons.get(s).active())current=s;
    }
  }
  void drawSelect(){
    noStroke();
    
    for(int i=0;i<16;i++){
      float y;
      float x;
      if(i < 8){
        y=780;
        x=325+i*180;
      } else {
        y=900;
        int temp=i;
        i-=8;
        x=325+i*180;
        i=temp;
      }
      
        
      
      
      Button b=new Button(x,y,vars[i]);
      buttons.put(vars[i],b);
      b.display();
      
     
    }
  }
  void varSelect(){
    for(int i=0; i<16; i++){
      buttons.get(vars[i]).testClicked(mouseX,mouseY);
    }
    
    updateAllButtons();
  }
}
