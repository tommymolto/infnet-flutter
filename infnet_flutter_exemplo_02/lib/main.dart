import 'package:flutter/material.dart';
import 'package:testando/world_api.dart';
import 'package:testando/worldpopulation.dart';
import 'package:testando/details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    WorldWidget world = new WorldWidget();
    
    return MaterialApp(
        title: 'Flutter',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar:
              AppBar(
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.refresh), 
                    onPressed: () {
                      
                    }
                    )],
                title: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Country Ranking - INF1300'),                      
                    ],
                  ))
              ),
          body: world,
        ),
        theme: ThemeData(
          primaryColor: Colors.green)
        );
  }
}

class WorldWidget extends StatefulWidget {
  WorldWidget({
    Key keyteste
  }):super (key:keyteste);

  @override
  _WorldWidgetState createState() => _WorldWidgetState();
}

class _WorldWidgetState extends State<WorldWidget> {
  WorldApi _api = new WorldApi();
  List<WorldPopulation> _worldpopulation;

  @override
  void initState() {
    super.initState();
    getCountries();
  }
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: _worldpopulation == null
          ? CircularProgressIndicator()
          : ListView.builder(
              itemCount: _worldpopulation.length,
              itemBuilder: (BuildContext context, int index) {
                WorldPopulation world = _worldpopulation[index];

                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new DetailsCountry(world)));
                  },
                  child: ListTile(
                    title: Text(
                        "${world.country}" + " - " + "${world.population}"),
                    leading: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text("${world.rank} "),
                        CircleAvatar(
                          backgroundColor: Colors.blueAccent,
                          backgroundImage: NetworkImage("${world.flag}"),
                        )
                      ],
                    ),
                  ),
                );
              }),
    );
  }

  void getCountries() async {
    _worldpopulation = await _api.loadJsonFromApi();
    setState(() {});
  }
}
