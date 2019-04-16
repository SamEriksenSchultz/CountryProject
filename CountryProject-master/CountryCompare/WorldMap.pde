Map<String,Country>worldMap;

class WorldMap {
  
  WorldMap(){
    worldMap=new TreeMap<String,Country>();
  }
  
  void loadCountries(){
    JSONArray data=loadJSONArray("C:\\Users\\grayw\\Desktop\\CountryProject-master\\CountryCompare\\countryCompareData.json");
    for(int i=0;i<227;i++){
      Country c=new Country(data.getJSONObject(i));
      worldMap.put(c.getCountryName(),c);
    }
    
  }
  
  String toString(){
    String fin="";
    for(String s:worldMap.keySet()){
      fin+=s;
    }
    return fin;
  }
  
}
