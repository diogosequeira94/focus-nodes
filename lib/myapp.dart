import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  FocusNode firstName;
  FocusNode lastName;
  FocusNode age;
  FocusNode email;
  FocusNode submit;

  @override
  void initState() {
    super.initState();
    firstName = FocusNode();
    lastName = FocusNode();
    age = FocusNode();
    email = FocusNode();
    submit = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    firstName.dispose();
    lastName.dispose();
    age.dispose();
    email.dispose();
    submit.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Focus Node Sample',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Focus Node Sample'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Personal',
                  style: TextStyle(
                    fontSize: 34.0,
                    fontWeight: FontWeight.w800,
                    color: Colors.indigoAccent,
                  ),
                ),
                SizedBox(height: 30.0),
                _buildInputSection(firstName, true, 'First name',
                    'Enter first name', lastName),
                SizedBox(height: 10.0),
                _buildInputSection(
                    lastName, false, 'Last name', 'Enter lastname', email),
                SizedBox(height: 10.0),
                _buildInputSection(
                    email, false, 'Email', 'Enter your email', age),
                SizedBox(height: 10.0),
                _buildInputSection(age, false, 'Age', 'Enter your age', submit),
                SizedBox(height: 10.0),
                FlatButton(
                  focusNode: submit,
                  onPressed: () {},
                  child: Text('Submit'),
                  color: Colors.lightBlueAccent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInputSection(
      FocusNode focusNode, bool autofocus, String label, String hint,
      [FocusNode nextFocus]) {
    return TextFormField(
      autofocus: autofocus,
      focusNode: focusNode,
      keyboardType: TextInputType.text,
      enabled: true,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.teal),
        ),
      ),
      onFieldSubmitted: (term) {
        focusNode.unfocus();
        FocusScope.of(context).requestFocus(nextFocus);
      },
    );
  }

  // For adding onFocusChangedListener

  /*
    
     focusNode.addListener(() {
      if (!focusNode.hasFocus) {
        print('$label I dont have focus now :(');
      }
    }); 
    
    */
}
