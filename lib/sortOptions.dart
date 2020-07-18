import 'package:flutter/material.dart';

class SortOptions extends StatefulWidget {
  @override
  _SortOptionsState createState() => _SortOptionsState();
}

class _SortOptionsState extends State<SortOptions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width * 0.99,
      //height: MediaQuery.of(context).size.width * 0.60,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Center(
              child : Text("SORT BY",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Divider(
                  color: Colors.grey,
                ),
              )
            ],
          ),
          ListTile(
            leading: Icon(Icons.check,
            size: 24,
            color: Colors.black,),
            title: Text("TOTAL SALES",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 18
              ),
            ),
          ),
          ListTile(
            leading: Padding(padding: EdgeInsets.all(16.0)),
            title: Text("ADD TO CART",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 18
            ),
            ),
          ),
          ListTile(
            leading: Padding(padding: EdgeInsets.all(16.0)),
            title: Text("DOWNLOADS",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 18
              ),
            ),
          ),
          ListTile(
            leading: Padding(padding: EdgeInsets.all(16.0)),
            title: Text("USER SESSIONS",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 18
              ),
            ),
          ),
        ],
      ),
    );
  }
}
