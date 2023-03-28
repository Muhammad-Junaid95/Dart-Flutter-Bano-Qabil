//Create a map that associates the names of countries with their population and area. Find the top 5 largest countries by population density (population / area).
void main() {
  Map<String, Map<String, double>> countries = {
    'Pakistan': {'population': 220892340, 'area': 881912},
    'China': {'population': 1439323776, 'area': 9706961},
    'India': {'population': 1380004385, 'area': 3287263},
    'United States': {'population': 331002651, 'area': 9372610},
    'Indonesia': {'population': 273523615, 'area': 1910931},
    'Bangladesh': {'population': 164689383, 'area': 147570},
    'Nepal': {'population': 29136808, 'area': 147181},
    'Saudi Arabia': {'population': 35340683, 'area': 2149690},
    'Egypt': {'population': 104258327, 'area': 1001450},
    'Russia': {'population': 144526636, 'area': 17098242},
    'Japan': {'population': 126150000, 'area': 377915},
    'Turkey': {'population': 84339067, 'area': 783356},
  };

  List<MapEntry<String, double>> densityList = [];

  countries.forEach((key, value) {
    double density = value['population']! / value['area']!;
    densityList.add(MapEntry(key, density));
  });

  densityList.sort((a, b) => b.value.compareTo(a.value));

  print("\nTop 5 Largest Countries According to Population Density:");
  for (int i = 0; i < 5; i++) {
    print("\t\n${i + 1}. ${densityList[i].key}: ${densityList[i].value}");
  }
}
