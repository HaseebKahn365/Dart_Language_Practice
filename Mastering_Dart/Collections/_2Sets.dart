var countries = {'India', 'USA', 'China', 'Germany'};
var europe = {'France', 'Germany', 'Italy'};
void main() {
  var country = 'Pakistan';
  countries.add(country);
  print(countries);
  print(countries.elementAt(1));
  print(countries.union(europe));
  print(countries.intersection(europe));
}
