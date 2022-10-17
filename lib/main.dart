import 'package:flutter/material.dart';
import 'pages/pages.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demos',
      home:HomePage(),
    );
  }
}

// class ProjectApi extends StatefulWidget {
//   @override
//   State<ProjectApi> createState() => _ProjectApiState();
// }

// class _ProjectApiState extends State<ProjectApi> {
//   // String myUrl  = '';
//   //function untuk getApi
//   Future getApi() async{
//     var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"),
//     );

//     //if Connect
//     if(response.statusCode == 200) {
//       print(response.body);
//     }else{
//       print('Object Not Found');
//     }
//   }

//   //call function
//   @override 
//   void initState(){
//     getApi();
//     super.initState();
//   }

//   @override 
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
