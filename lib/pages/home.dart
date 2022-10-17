part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //array
   List? data;
  //function getapi
  Future<String> getApi() async {
    //connect URL
    http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    //jika terkonksi ke status code
    this.setState(() {
      data = jsonDecode(response.body);
    });
    return 'SUCCESS';
    print(
      data![1]["title"].toString(),
    );
  }

  @override
  void initState() {
    getApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("API Flutter TEST"),
        ),
        body: ListView.builder(
          itemCount: data == null ? 0 : data!.length, //jika null
          itemBuilder: (context, index) {
            return Card(
              child: Text(
                data![index]["title"].toString(),
              ),
            );
          },
        ));
  }
}
