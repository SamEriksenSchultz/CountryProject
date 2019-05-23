class Country {
  
  String[] stringFixer;
  String country,region;
  float population,area,gdp,density,migration,infants,literacy,phones,arable,crops,
  other,climate,birthrate,deathrate,agriculture,industry,service;
  
  Country(JSONObject data){
    //set instance variables with data from the JSON file for each country
    country = data.getString("Country");
    region = data.getString("Region");
    population = (float)data.getInt("Population");
    area = (float)data.getInt("Area (sq. mi.)");
    gdp = (float)data.getInt("GDP ($ per capita)");
    
    //create array for syntax errors, and set their values in the array
    stringFixer = new String[14];
    
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
    stringFixer[13]=data.getString("Service");
    
    //replace the commas with periods, and parse the Strings into floats
    for(int i=0; i<14; i++)stringFixer[i]=stringFixer[i].replace(",",".");
    
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
    service=Float.parseFloat(stringFixer[13]);
  }
  
  float getVariable(String var) {
    if(var == "population") 
      return population;
    else if(var == "area")
      return area;
    else if(var == "gdp")
      return gdp;
    if(var == "density")
      return density;
    else if(var == "migration")
      return migration;
    else if(var == "infants")
      return infants;
    else if(var == "literacy")
      return literacy;
    else if(var == "phones")
      return phones;
    else if(var == "arable")
      return arable;
    else if(var == "crops")
      return crops;
    else if(var == "other")
      return other;
    else if(var == "climate")
      return climate;
    else if(var == "birthrate")
      return birthrate;
    else if(var == "deathrate")
      return deathrate;
    else if(var == "agriculture")
      return agriculture;
    else if(var == "industry")
      return industry;
    else if(var == "service")
      return service;
    else 
      return 0.0;
  }
  
}
