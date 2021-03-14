import 'package:flutter/material.dart';

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
        title: Text('Read the Story'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share), onPressed: (){},)
        ],
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
                height: data.size.height * .5,
                width: data.size.height * .6,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(16.0, 250.0,16.0,16.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0)
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Fighting for justice against acid attack. Need a lawyer to support my issue.", style: Theme.of(context).textTheme.title,),
                    SizedBox(height: 10.0),
                    Text("Feb 21, 2020 By Sad Girl"),
                    SizedBox(height: 10.0),
                    Divider(),
                    SizedBox(height: 10.0,),
                    Row(children: <Widget>[
                      Icon(Icons.comment),
                      SizedBox(width: 5.0,),
                      Text("25"),
                    ],),
                    SizedBox(height: 10.0,),
                    Text("Few days ago while walking on Gandhinagar road, few guys started came out of nowhere and started harrsing me. I stood strong and opposed them.Next moment, they threw acid on my face. I am badly burnt and hospitalized for many days. I filed case against them.  I need help to fight against those people who threw acid on me so that this thing doesnt happen to any other girl. I want people to support me and guide me through this hardest situation. I am tired of roaming around courts and asking lawyers to fight for my issue. Basically, I want a lawyer to support for my justice.", textAlign: TextAlign.justify,),
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
