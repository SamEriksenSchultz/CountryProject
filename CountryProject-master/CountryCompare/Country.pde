class Country implements Comparable<Country> {
  
  String country,region;
  int population,area,gdp;
  float density,migration,infants,literacy,phones,arable,crops,
  other,climate,birthrate,deathrate,agriculture,industry,service;
  
  Country(JSONObject countryData){
    country = countryData.getString("Country");
    region = countryData.getString("Region");
    population = countryData.getInt("Population");
    area = countryData.getInt("Area (sq. mi.)");
    gdp = countryData.getInt("GDP ($ per capita)");
    
    String[]fuckEurope=new String[14];
    
    fuckEurope[0]=countryData.getString("Pop. Density (per sq. mi.)");
    fuckEurope[1]=countryData.getString("Net migration");
    fuckEurope[2]=countryData.getString("Infant mortality (per 1000 births)");
    fuckEurope[3]=countryData.getString("Literacy (%)");
    fuckEurope[4]=countryData.getString("Phones (per 1000)");
    fuckEurope[5]=countryData.getString("Arable (%)");
    fuckEurope[6]=countryData.getString("Crops (%)");
    fuckEurope[7]=countryData.getString("Other (%)");
    fuckEurope[8]=countryData.getString("Climate");
    fuckEurope[9]=countryData.getString("Birthrate");
    fuckEurope[10]=countryData.getString("Deathrate");
    fuckEurope[11]=countryData.getString("Agriculture");
    fuckEurope[12]=countryData.getString("Industry");
    fuckEurope[13]=countryData.getString("Service");
    
    for(int i=0; i<14; i++)fuckEurope[i]=fuckEurope[i].replace(",",".");
     
    
    //print(fuckEurope);
    
    density=Float.parseFloat(fuckEurope[0]);
    migration=Float.parseFloat(fuckEurope[1]);
    infants=Float.parseFloat(fuckEurope[2]);
    literacy=Float.parseFloat(fuckEurope[3]);
    phones=Float.parseFloat(fuckEurope[4]);
    arable=Float.parseFloat(fuckEurope[5]);
    crops=Float.parseFloat(fuckEurope[6]);
    other=Float.parseFloat(fuckEurope[7]);
    climate=Float.parseFloat(fuckEurope[8]);
    birthrate=Float.parseFloat(fuckEurope[9]);
    deathrate=Float.parseFloat(fuckEurope[10]);
    agriculture=Float.parseFloat(fuckEurope[11]);
    industry=Float.parseFloat(fuckEurope[12]);
    service=Float.parseFloat(fuckEurope[13]);
    
  
  }
  
  int compareTo(Country other){
    return -1;
  }
  
  String getCountryName(){
    return country;
  }
  
  int getVariableInt(String var){
    if(var == "population") 
      return population;
    else if(var == "area")
      return area;
    else if(var == "gdp")
      return gdp;
    return 0;
  }
  
  Float getVariable(String var) {
    
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
  
  /*double getData(String var){
    return this.var;
  }*/
  
  String toString(){
    return country +"\n"+region +"\n"+population+"\n"+area+"\n"+gdp+"\n"+density+"\n"+migration+"\n"+infants+"\n"+literacy+"\n"+phones+"\n"+arable+"\n"+crops+"\n"+other+"\n"+climate+"\n"+birthrate+"\n"+deathrate+"\n"+agriculture+"\n"+industry+"\n"+service;
  }
}