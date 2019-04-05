class Country implements Comparable<Country> {
  
  String country,region;
  int population,area,gdp;
  double density,migration,infants,literacy,phones,arable,crops,
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
     
    
    print(fuckEurope);
    
    density=Double.parseDouble(fuckEurope[0]);
    migration=Double.parseDouble(fuckEurope[1]);
    infants=Double.parseDouble(fuckEurope[2]);
    literacy=Double.parseDouble(fuckEurope[3]);
    phones=Double.parseDouble(fuckEurope[4]);
    arable=Double.parseDouble(fuckEurope[5]);
    crops=Double.parseDouble(fuckEurope[6]);
    other=Double.parseDouble(fuckEurope[7]);
    climate=Double.parseDouble(fuckEurope[8]);
    birthrate=Double.parseDouble(fuckEurope[9]);
    deathrate=Double.parseDouble(fuckEurope[10]);
    agriculture=Double.parseDouble(fuckEurope[11]);
    industry=Double.parseDouble(fuckEurope[12]);
    service=Double.parseDouble(fuckEurope[13]);
    
  
  }
  
  int compareTo(Country other){
    return -1;
  }
  
  String getCountryName(){
    return country;
  }
  
  String toString(){
    return country +"\n"+region +"\n"+population+"\n"+area+"\n"+gdp+"\n"+density+"\n"+migration+"\n"+infants+"\n"+literacy+"\n"+phones+"\n"+arable+"\n"+crops+"\n"+other+"\n"+climate+"\n"+birthrate+"\n"+deathrate+"\n"+agriculture+"\n"+industry+"\n"+service;
  }
}
