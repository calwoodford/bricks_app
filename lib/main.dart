import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //removes the debug banner
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.close),
              color: Color(0xFF07122A),
              onPressed: () {
                // Add onPressed action here
              },
            ),
          ],
          backgroundColor: Colors.white,
          leading: IconTheme(
              data: IconThemeData(color: Color(0xFF07122A)),
              child: Icon(Icons.menu)),
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/brick_person.png',
                      height: 300,
                    ),
                    SizedBox(width: 200.0, height: 30.0),
                    Text(
                      'Science based techniques to improve your life',
                      style: GoogleFonts.robotoMono(
                        textStyle: TextStyle(fontSize: 8),
                      ),
                    ),
                    SizedBox(width: 200.0, height: 60.0),
                    Container(
                      width: 245,
                      child: MyWidget(
                        labelText: 'Email address',
                        suffixIcon: Icons.mail,
                      ),
                    ),
                    SizedBox(width: 200.0, height: 20.0),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 75, // Customize the indent (space on the left)
                      endIndent:
                          75, // Customize the end indent (space on the right)
                    ),
                    Container(
                        width: 245,
                        child: MyWidget(
                            labelText: 'Password', suffixIcon: Icons.lock)),
                    SizedBox(width: 200.0, height: 40.0),
                    Container(
                      width: 245.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFF07122A),
                      ),
                      child: Center(
                          child: Text(
                        "Login",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      )),
                    ),
                    SizedBox(width: 200.0, height: 40.0),
                    Text("Forgot Password?", style: TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  final String labelText;
  final IconData? suffixIcon; // New property for suffix icon

  MyWidget({required this.labelText, this.suffixIcon});

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String _inputText = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 30,
          child: TextField(
            onChanged: (text) {
              setState(() {
                _inputText = text;
              });
            },
            style: TextStyle(fontSize: 12),
            decoration: InputDecoration(
              suffixIcon: widget.suffixIcon != null
                  ? Icon(widget.suffixIcon,
                      size: 20) // Use the provided suffix icon
                  : null, // If no suffix icon is provided, set to null
              contentPadding: EdgeInsets.symmetric(
                vertical: 1, // Adjust the vertical padding
                horizontal: 1,
              ), // Adjust the horizontal padding
              labelText: widget.labelText,
              // Use the provided labelText
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}

//
