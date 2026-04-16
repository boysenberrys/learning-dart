//?@createdby #boysenberrys
void main(List<String> args) async{
  print( await getUserName());
  print(await getAdress());
  print(await getPhoneNumber());
  print(await getCity());
}

Future<String> getUserName()async =>'John Doe'; 
Future<String> getAdress()=> Future.value('123 Main St');

Future<String> getPhoneNumber() => Future.delayed(const Duration(seconds: 1),
()=>'555-555-555',);


Future<String> getCity() async{
  await Future.delayed(const Duration(seconds: 3));
  return 'New York';
}

//!async keyword doesn't really contribute with anything in the codes below.😶
Future<String> getZipCode() async => Future.delayed(
  const Duration(seconds: 1),
  ()=> '12345',
);

//? async help to return raw code, but await help to kickstart the future code.