import 'package:login/launch.dart';
import 'package:login/models/users.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/mapScreen.dart';
import 'card.dart';

class UsersDetails extends StatefulWidget {
  User user;
  UsersDetails(this.user);
  @override
  _UsersDetailsState createState() => _UsersDetailsState();
}

class _UsersDetailsState extends State<UsersDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users")),
      body: ListView(
        padding: EdgeInsets.all(11),
        children: [
          MyCard(content: "${widget.user.name}",),
          SizedBox(
            height: 12),
            InkWell(
              onTap: () {
                launchURL("mailto:${widget.user.email}");
              },
              child: Text("Enter Your Email:${widget.user.email}"),
            ),
            SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: (){
                launchURL("Mob:${widget.user.phone}");
              },
              child: Text("mobile: ${widget.user.phone}"),
            ),
            SizedBox(
              height: 12,
            ),
            Divider(),
            SizedBox(height: 12,),
            InkWell(
              onTap: (){
                launchURL("https:// ${widget.user.website}");
              },
              child: Text("Browser: ${widget.user.website}")),
            MaterialButton(
              onPressed: (){
                pushPage(context, MapSample(
                  userLocation: widget.user.address.geo,
                ));
              },
              child: Text("Map view"),
        
      ),
        ],
      ),
    );
  }
}