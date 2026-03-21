
void main(List<String> args) {
  
}

Future<String> getFullName({
  required String firstName,
  required String lastName,
}){
  if(firstName.isEmpty || lastName.isEmpty){
    throw FirstOrLastNamemissingException();
  } else {
    return Future.value('$firstName $lastName');
  }
}

class FirstOrLastNamemissingException implements Exception {
  const FirstOrLastNamemissingException();
}