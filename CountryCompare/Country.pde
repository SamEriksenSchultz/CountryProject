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
  Float getVariable(String var) {
    /*if(var == "population") 
      return population;
    if(var == "area")
      return area;
    if(var == "gdp")
      return gdp;*/
    if(var == "density")
      return density;
    return null;
    
    
    
  }
  
  /*double getData(String var){
    return this.var;
  }*/
  
  String toString(){
    return country +"\n"+region +"\n"+population+"\n"+area+"\n"+gdp+"\n"+density+"\n"+migration+"\n"+infants+"\n"+literacy+"\n"+phones+"\n"+arable+"\n"+crops+"\n"+other+"\n"+climate+"\n"+birthrate+"\n"+deathrate+"\n"+agriculture+"\n"+industry+"\n"+service;
  }
}
