void main() {
  const emails = ['abc@abc.com', 'haseeb@haseeb.com', 'he@he.com', 'me@yahoo.com'];
  const knownDomains = [
    'gmail.com',
    'yahoo.com',
  ];

  final unknownDomains = emails.map((e) => e.split('@').last).where(
        (domain) => !knownDomains.contains(domain),
      ); //the split function will break the email at the @ and return the last piece.
  print(unknownDomains.toList());
  final unKnownDomains2 = getUnknownDomains(emails, knownDomains);
  print('unknown2 = $unKnownDomains2');
}

Iterable<String> getUnknownDomains(List<String> emails, List<String> knownDomains) =>
    emails.map((e) => e.split('@').last).where((domain) => !knownDomains
        .contains(domain)); //the map returns an iterable on which we perform where to return an iterable that doesnt
    //contain kowndomains
    //the where method will loop through the entire elements and where the condition is matched it will return an iterable
    
