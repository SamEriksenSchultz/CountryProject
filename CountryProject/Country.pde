class Country {
  
  String[] stringFixer;
  String country,region;
  float population,area,gdp,density,migration,infants,literacy,phones,arable,crops,
  other,climate,birthrate,deathrate,agriculture,industry;
  
  Country(JSONObject data){
    //set instance variables with data from the JSON file for each country
    country = data.getString("Country");
    region = data.getString("Region");
    population = (float)data.getInt("Population");
    area = (float)data.getInt("Area (sq. mi.)");
    gdp = (float)data.getInt("GDP ($ per capita)");
    
    //create array for syntax errors, and set their values in the array
    stringFixer = new String[13];
    
    stringFixer[0]=data.getString("Pop. Density (per sq. mi.)");
    stringFixer[1]=data.getString("Net migration");
    stringFixer[2]=data.getString("Infant mortality (per 1000 births)");
    stringFixer[3]=data.getString("Literacy (%)");
    stringFixer[4]=data.getString("Phones (per 1000)");
    stringFixer[5]=data.getString("Arable (%)");
    stringFixer[6]=data.getString("Crops (%)");
    stringFixer[7]=data.getString("Other (%)");
    stringFixer[8]=data.getString("Climate");
    stringFixer[9]=data.getString("Birthrate");
    stringFixer[10]=data.getString("Deathrate");
    stringFixer[11]=data.getString("Agriculture");
    stringFixer[12]=data.getString("Industry");
    
    //replace the commas with periods, and parse the Strings into floats
    for(int i=0; i<13; i++)stringFixer[i]=stringFixer[i].replace(",",".");
    
    density=Float.parseFloat(stringFixer[0]);
    migration=Float.parseFloat(stringFixer[1]);
    infants=Float.parseFloat(stringFixer[2]);
    literacy=Float.parseFloat(stringFixer[3]);
    phones=Float.parseFloat(stringFixer[4]);
    arable=Float.parseFloat(stringFixer[5]);
    crops=Float.parseFloat(stringFixer[6]);
    other=Float.parseFloat(stringFixer[7]);
    climate=Float.parseFloat(stringFixer[8]);
    birthrate=Float.parseFloat(stringFixer[9]);
    deathrate=Float.parseFloat(stringFixer[10]);
    agriculture=Float.parseFloat(stringFixer[11]);
    industry=Float.parseFloat(stringFixer[12]);
  }
  
  float getVariable(String var) {
    if(var == "Population") 
      return population;
    else if(var == "Area (sq. mi.)")
      return area;
    else if(var == "GDP ($ per capita)")
      return gdp;
    if(var == "Pop. Density (per sq. mi.)")
      return density;
    else if(var == "Net migration")
      return migration;
    else if(var == "Infant mortality (per 1000 births)")
      return infants;
    else if(var == "Literacy (%)")
      return literacy;
    else if(var == "Phones (per 1000)")
      return phones;
    else if(var == "Arable (%)")
      return arable;
    else if(var == "Crops (%)")
      return crops;
    else if(var == "Other (%)")
      return other;
    else if(var == "Climate")
      return climate;
    else if(var == "Birthrate")
      return birthrate;
    else if(var == "Deathrate")
      return deathrate;
    else if(var == "Agriculture")
      return agriculture;
    else if(var == "Industry")
      return industry;
    else 
      return 0.0;
  }
  
}
