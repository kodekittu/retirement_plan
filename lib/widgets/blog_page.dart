import 'package:flutter/material.dart';
import 'package:retirement_plan/widgets/choose_page.dart';

final List<String> topic = ["GOLD", "Mutual Funds", "Equity", "Stocks"];

final List<String> para = ["Lorem Ipsum is simply dummy text of the printing and typesetting industry. \nLorem Ipsum has been the industry's standard dummy text ever since the 1500s. \nWhen an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting. Remaining essen \nLorem Ipsum has been the industry's standard dummy text ever since the 1500stially unchanged. It was popularised in the 1960s simply dummy text printing standard dummy text.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer \nLorem Ipsum has been the industry's standard dummy text ever since the 1500s took a galley of type and scrambled it to make a type speci \nLorem Ipsum has been the industry's standard dummy text ever since the 1500smen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."];



class BlogPage extends StatefulWidget {

  @override
  _BlogPageState createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData data = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(topic[x]),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/b4.jpg'),
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
                height: data.size.height * .25,
                width: data.size.height * .6,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(16.0, 100.0,16.0,16.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0)
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10.0),

                    Text(para[0]),
                    SizedBox(height: 10.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
