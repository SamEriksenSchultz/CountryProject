
import java.util.List;
import java.util.Map;

//instantiate list for storing country objects
List<Country>countryList=new ArrayList<Country>();

//array that holds all possible variables
String[]variable=new String[16];

//map that represents the String values of all the variableDescriptions from the dataset (country, region, population, etc.), along with their coinciding explanations
Map<String,String>variableDescription;


//the current variableDescription being referenced, for either bar or scatterplot
String varCurrent;

BarGraph bg;
ScatterGraph sg;
VarSelector vs;

void setup() {
  bg=new BarGraph();
  sg=new ScatterGraph();
      
  variable[0]="Population";
  variable[1]="Area (sq. mi.)";
  variable[2]="GDP ($ per capita)";
  variable[3]="Pop. Density (per sq. mi.)";
  variable[4]="Net migration";
  variable[5]="Infant mortality (per 1000 births)";
  variable[6]="Literacy (%)";
  variable[7]="Phones (per 1000)";
  variable[8]="Arable (%)";
  variable[9]="Crops (%)";
  variable[10]="Other (%)";
  variable[11]="Climate";
  variable[12]="Birthrate";
  variable[13]="Deathrate";
  variable[14]="Agriculture";
  variable[15]="Industry";
  
  vs=new VarSelector();


  variableDescription=new HashMap<String,String>();
  variableDescription.put("Population","The total number of people living within the country's borders");
  variableDescription.put("Area (sq. mi.)","The total area of a given country, measured in square miles");
  variableDescription.put("GDP ($ per capita)","GDP per capita is a measure of a country's economic output that accounts for its number of people");
  variableDescription.put("Pop. Density (per sq. mi.)","The average number of people living in one sqaure mile; measures population spread");
  variableDescription.put("Net migration","The sum of total immigrations and emigrations to and from a country");
  variableDescription.put("Infant mortality (per 1000 births)","The recorded rate of infant mortalities in a given country, per 1000 births that took place");
  variableDescription.put("Literacy (%)","The average literacy rate for a given country, recorded as a percentage");
  variableDescription.put("Phones (per 1000)","The number of phones owned between 1000 residents of a given country");
  variableDescription.put("Arable (%)","The percentage of the land that is considered arable and suitable for growing crops");
  variableDescription.put("Crops (%)","tbd");
  variableDescription.put("Other (%)","tbd");
  variableDescription.put("Climate","Climate index from 1-4 based on the growability of crops in the country as a whole");
  variableDescription.put("Birthrate","tbd");
  variableDescription.put("Deathrate","tbd");
  variableDescription.put("Agriculture","tbd");
  variableDescription.put("Industry","tbd");
  
  size(1920,1080);
  background(#292929);
  loadCountries();
  //for(int i=0;i<variable.length;i++)println(variable[i]);
}

void draw() {
  background(#292929);
  sg.loadPlots();
  bg.loadBars();
  if(vs.getSwitch() == 1) {
    bg.drawGraph();
    bg.drawBars();
  } else if(vs.getSwitch() == -1) {
    sg.setCurrent("GDP ($ per capita)","Infant mortality (per 1000 births)");
    //sg.setCurrent("GDP ($ per capita)","Literacy (%)");
    //sg.setCurrent("Agriculture","Industry");
    //sg.setCurrent("GDP ($ per capita)","Phones (per 1000)");
    
    sg.drawGraph();
    sg.drawPlots();
  }
  vs.showMenu();
}

void loadCountries(){
  //create json array and iterate through to create all the countries
  //JSONArray data=loadJSONArray("C:\\Users\\grayw\\Desktop\\CountryProject\\countryCompareData.json");
  JSONArray data=loadJSONArray("Desktop/CountryCompare/countryCompareData.json");
  for(int i=0;i<227;i++){countryList.add(new Country(data.getJSONObject(i)));}
}

//iterate through button array and check their checkHover() methods to see which one to activate
void mousePressed(){
  //if the mouse is pressed, check if the mouse was over a button
  vs.checkButtons();
}
