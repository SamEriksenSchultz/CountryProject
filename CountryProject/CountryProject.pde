import java.util.List;

//instantiate list for storing country objects
List<Country>countryList=new ArrayList<Country>();
//array that represents the String values of all the variables from the dataset (country, region, population, etc.)
String[]variable;

//the current variable being referenced, for either bar or scatterplot
String varCurrent;

BarGraph bg=new BarGraph();

VarSelector vs=new VarSelector();

void setup() {
  size(1920,1080);
  background(0);
  loadCountries();
}

void draw() {
  background(0);
  bg.loadBars();
  bg.drawGraph();
  bg.drawBars();
  if(vs.checkActive())
  println("active");
  else println("not active");
  vs.showMenu();

}

void loadCountries(){
  //create json array and iterate through to create all the countries
  JSONArray data=loadJSONArray("C:\\Users\\grayw\\Desktop\\CountryProject\\countryCompareData.json");
  //JSONArray data=loadJSONArray("Desktop/CountryProject-master/CountryCompare/countryCompareData.json");
  for(int i=0;i<227;i++){countryList.add(new Country(data.getJSONObject(i)));}
}
