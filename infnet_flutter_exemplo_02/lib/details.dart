import 'package:flutter/material.dart';
import 'package:testando/worldpopulation.dart';

class DetailsCountry extends StatefulWidget {
  final WorldPopulation _worldPopulation;
  DetailsCountry(this._worldPopulation);

  @override
  _DetailsCountryState createState() => _DetailsCountryState();
}

class _DetailsCountryState extends State<DetailsCountry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details")),
      body: buildDetails(),
    );
  }

  Widget buildDetails() {
    return Container(
        color: Color(0xFF555555),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 30.0),
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundColor: Colors.blueAccent,
                    backgroundImage: NetworkImage("${widget._worldPopulation.flag}",
                    scale: 1.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    "${widget._worldPopulation.country}",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0),
                    )
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text("Rank:" +
                    " ${widget._worldPopulation.rank}",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                    )
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text("Population:" +
                    " ${widget._worldPopulation.population}",
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                    )
                )
              ],
            )
          ],
        ));
  }
}
