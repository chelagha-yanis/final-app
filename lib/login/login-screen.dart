import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/backgroundd.png'), fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.all(35),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('WELCOME!',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w400,
                      color: Colors.white)),
              SizedBox(
                height: 25,
              ),
              Container(
                alignment: Alignment.center,
                width: 250,
                height: 1,
                color: Colors.white,
              ),
              SizedBox(
                height: 25,
              ),
              Text('Create new account',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Colors.white)),
              SizedBox(
                height: 25,
              ),
              Container(
                alignment: Alignment.center,
                width: 120,
                height: 1,
                color: Colors.white,
              ),
              SizedBox(
                height: 25,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    " Username",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  )),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "  Username",
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    " Email",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  )),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "  Email",
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    " Mobile Number",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  )),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "  Mobile Number",
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    " Password",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  )),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "  Password",
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue)),
                onPressed: () {
                  Navigator.pushNamed(context, '/myapp');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Center(
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        textStyle: TextStyle(
                      color: Colors.grey,
                    )),
                    onPressed: () {
                      Navigator.pushNamed(context, '/forgotpassword');
                    },
                    child: const Text('Login'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
