  String[]vars;
  
class Graph {
  
  Map<String,Button>buttons; 
  String current;
  float[]vals;
  float mu;
  float sigma;

  boolean sorted;
  
  Graph(){
    
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
    sorted=false;
    vals=new float[237];
    buttons = new HashMap<String,Button>();
    
    
    current="";
  }
  
  
  
  void display(){
    background(0);
    bar();
    axis();
    viewAdvancedStats();
    drawSelect();
  }
  
  void axis(){
    stroke(255);
    strokeWeight(5);
    line(160,650,1865,650);
    line(160,100,160,650);
    textSize(25);
    fill(255);
    text("Countries",900,700);   
  }
  
  void bar(){
  
    float x=2.5;
    float y;
    
    float max=0;
    float index=1;
    
    int i=0;
    
    
    for(String s:UnsortedWorldMap.keySet()){
      i++;
      float temp=UnsortedWorldMap.get(s).getVariable(current);
      vals[i]=temp;
      if(temp>max)
        max=temp;
      
    }
    
    
    if(current == "migration") {
      for(String s:UnsortedWorldMap.keySet()){
        float temp=UnsortedWorldMap.get(s).getVariable(current);
        y=(temp/max)*-250;
        UnsortedWorldMap.get(s).display(index*7.5+159,375,6,y);
        index++;
      }
      fill(255);
      text((int)max *-1,110,650);
      text(0,120,375);
      text((int)max,110,100);
    } else {
      for(String s:UnsortedWorldMap.keySet()){
        float temp=UnsortedWorldMap.get(s).getVariable(current);
        y=(temp/max)*-500;
        UnsortedWorldMap.get(s).display(index*7.5+159,645,6,y);
        index++;
        }
      }
    
    

    
   if(current == "agriculture" || current == "industry") {
     fill(255);
     text(0,120,650);
     text(max,110,100);
   } else {
     fill(255);
     text(0,120,650);
     text((int)max,110,100);
   }

  
   String yLabel;
   if(current == "population")
     yLabel = "Population";
   else if(current == "area")
     yLabel = "Area (sq. mi.)";
   else if(current == "gdp")
     yLabel = "GDP ($ per capita)";
   else if(current == "density")
     yLabel = "Pop. Density (per sq. mi.)";
   else if(current == "migration")
     yLabel = "Net migration";
   else if(current == "infants")
     yLabel = "Infant mortality (per 1000 births)"; 
   else if(current == "literacy")
     yLabel = "Literacy (%)";
   else if(current == "phones")
     yLabel = "Phones (per 1000)";  
   else if(current == "arable")
     yLabel = "Arable (%)"; 
   else if(current == "crops")
     yLabel = "Crops (%)";
   else if(current == "other")
     yLabel = "Other (%)";
   else if(current == "climate")
     yLabel = "Climate";
   else if(current == "birthrate")
     yLabel = "Birthrate";
   else if(current == "deathrate")
     yLabel = "Deathrate";
   else if(current == "agriculture")
     yLabel = "Agriculture";
   else if(current == "industry")
     yLabel = "Industry";  
   else if(current == "service")
     yLabel = "Service";
   else
     yLabel = "";
  
    translate(100,475);
    rotate(-HALF_PI);
    text(yLabel,0,0);
    rotate(HALF_PI);
    translate(-100,-475);
    
    
  }
  
  void updateAllButtons(){
    for(String s:buttons.keySet()){
        buttons.get(s).display();
        if(buttons.get(s).active())
          current=s;
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

  
  void viewAdvancedStats(){
    for(String s:UnsortedWorldMap.keySet()){
      UnsortedWorldMap.get(s).testCollision();
      if(UnsortedWorldMap.get(s).active == true && mousePressed == true) {
        fill(150);
        noStroke();
        if(mouseX > 960) 
          displacement = -300;
        else
          displacement = 0;
        rect(UnsortedWorldMap.get(s).xPos + displacement,100,300,300);
        fill(255);
        text("Country: " + UnsortedWorldMap.get(s).country, UnsortedWorldMap.get(s).xPos + displacement,130);
        if(UnsortedWorldMap.get(s).getVariable(current) == 0) 
          text(current + ": " + "n/a", UnsortedWorldMap.get(s).xPos + displacement,160);
        else
          text(current + ": " + UnsortedWorldMap.get(s).getVariable(current), UnsortedWorldMap.get(s).xPos + displacement,160);
        
      }
    }
    calculateSD();
  }



    void calculateSD()
    {
      
        float sum = 0.0, standardDeviation = 0.0;
        int len = vals.length;
        for(float num : vals) {
            if(num!=0){
              sum += num;
            }else len--;
        }

        mu = sum/len;

        for(float num: vals) {
            if(num!=0)
            standardDeviation += Math.pow(num - mu, 2);
        }

        sigma = (float)Math.sqrt(standardDeviation/(len-1));
        text("μ = "+mu,50,800);
        text("σ = "+sigma,50,850);
    }

  
  

}

    
