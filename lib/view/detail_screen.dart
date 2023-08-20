import 'package:covid19tracker/view/world_states.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  String name,image;
  int totalCases,totalDeath,totalRecovered,active,critical,todayRecovered,test;
  DetailScreen({super.key,
    required this.name,
    required this.image,
    required this.totalCases,
    required this.totalDeath,
    required this.totalRecovered,
    required this.active,
    required this.critical,
    required this.todayRecovered,
    required this.test,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment:Alignment.topCenter,
            children: [
                  Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height *.067),
                    child: Card(
                      child: Column(
                        children: [
                          SizedBox(height: MediaQuery.of(context).size.height *.06,),
                          ReusableRow(title: 'Cases', value: widget.totalCases.toString()),
                          ReusableRow(title: 'Recovered', value: widget.totalRecovered.toString()),
                          ReusableRow(title: 'Death', value: widget.totalDeath.toString()),
                          ReusableRow(title: 'Critical', value: widget.critical.toString()),
                          ReusableRow(title: 'Today Recovered', value: widget.todayRecovered.toString()),
                          ReusableRow(title: 'Tests', value: widget.test.toString()),
                        ],
                      ),
                    ),
                  ),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(widget.image),
              )
            ],
          )
        ],
      ),
    );
  }
}
