import 'package:flutter/material.dart';

void main() {runApp(MaterialApp(
  home: MattCard(),
));}

class  MattCard extends StatefulWidget {

  @override
  State<MattCard> createState() => _MattCardState();
}

class _MattCardState extends State<MattCard> {
  int Level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Matt ID Card'),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Level += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
        ),
       
        
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar_0.jpg'),
                radius: 65.0,
              ),
            ),
            Divider(height: 60.0, color: Colors.grey[600],),
            Text(
            'NAME',
            style: TextStyle(
              color: Colors.grey,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
            'MatKwiat',
            style: TextStyle(
              color: Colors.amberAccent[100],
              letterSpacing: 2.0,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
            'CURRENT LEVEL',
            style: TextStyle(
              color: Colors.grey,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
            '$Level',
            style: TextStyle(
              color: Colors.amberAccent[100],
              letterSpacing: 2.0,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Row(children: <Widget>[
              Icon(
                Icons.email,
                color: Colors.grey[400],
              ),
              SizedBox(width: 10.0,),
              Text(
                'mk.matkwiat@gmail.com',
                style: TextStyle(
                  fontSize:18.0 ,
                  color: Colors.grey[400],
                  letterSpacing: 1.0, 
                ),

              )
            ],)

            

          ],
        ),
      ),
    );
  }
}


  
