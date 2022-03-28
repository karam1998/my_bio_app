import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of my application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
            // color: Colors.blue,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue.shade500,
                Colors.blue.shade100,
              ],
            ),
          ),

          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                const CircleAvatar(
                  // Icon(Icons.add),
                  radius: 60,
                  backgroundColor: Colors.deepPurpleAccent,

                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/karam.jpeg'),
                    radius: 55,
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                const Text(
                  'karam mohammed shaat',
                  style: TextStyle(
                    fontSize: 21,
                    color: Colors.white,
                    fontFamily: 'Noto',
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),

                InkWell(
                  onTap: () async =>
                      {await launch("mailto:karm.shaat@gmail.com")},
                  child: Card(
                    margin: const EdgeInsets.only(bottom: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 5,
                    shadowColor: Colors.deepPurple,
                    child: const ListTile(
                      leading: Icon(Icons.email_sharp),
                      title: Text(
                        "Email",
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 22,
                          letterSpacing: 1,
                        ),
                      ),
                      subtitle: Text('karm.shaat@gmail.com'),
                      trailing: Icon(
                        Icons.send_sharp,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                InkWell(
                  onTap: () async => {await launch("tel:+970595783031")},
                  child: Card(
                    margin: const EdgeInsets.only(bottom: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 5,
                    shadowColor: Colors.deepPurple,
                    child: const ListTile(
                      leading: Icon(Icons.call),
                      title: Text(
                        'Phone',
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 22,
                          letterSpacing: 1,
                        ),
                      ),
                      subtitle: Text('+970595783031'),
                      trailing: Icon(
                        Icons.phone_android,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Contact with me on :  ',
                  style:
                      TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20 ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15, left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Center(
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () async => {
                                      await launch(
                                          "https://www.facebook.com/2kaRaM.SHaat1/")
                                    },
                                icon: const Icon(Icons.facebook),
                                color: Colors.blue,
                                iconSize: 30),
                          ],
                        ),
                      ),
                      Center(
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () async => {
                                      await launch(
                                          "https://twitter.com/Karam11shaat1")
                                    },
                                icon: const Icon(FontAwesomeIcons.twitter),
                                color: Colors.blue,
                                iconSize: 30),
                          ],
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                                onPressed: () async => {
                                      await launch(
                                          "https://www.instagram.com/karam.shaat/")
                                    },
                                icon: const Icon(FontAwesomeIcons.instagram),
                                color: Colors.pink.shade400,
                                iconSize: 30),
                            // SizedBox(height: 3,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Divider(
                  color: Colors.black,
                  thickness: 1,
                ),

                const SizedBox(height: 40,),
                // const Text("Abo Hassan",style: TextStyle(fontSize: 40,color: Colors.pink),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
