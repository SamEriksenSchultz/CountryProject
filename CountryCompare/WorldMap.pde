Map<String,Country>UnsortedWorldMap;



class WorldMap {
  

    
  WorldMap(){
    UnsortedWorldMap=new TreeMap<String,Country>();
    
  }
  
  void loadCountries(){
    //JSONArray data=loadJSONArray("C:\\Users\\grayw\\Downloads\\CountryProject-master\\CountryProject-master\\CountryCompare\\countryCompareData.json");
    JSONArray data=loadJSONArray("Desktop/CountryProject-master/CountryCompare/countryCompareData.json");
    for(int i=0;i<227;i++){
      Country c=new Country(data.getJSONObject(i));
      UnsortedWorldMap.put(c.getCountryName(),c);
    }
    
  }
  
  String toString(){
    String fin="";
    for(String s:UnsortedWorldMap.keySet()){
      fin+=s;
    }
    return fin;
  }
  
}
