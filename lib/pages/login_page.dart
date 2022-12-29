import 'package:app_susti/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  String id = 'login_page';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://images.pexels.com/photos/2815150/pexels-photo-2815150.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "El mejor momento para viajar es ahora",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                _idtexfield(),
                const SizedBox(
                  height: 15.0,
                ),
                _passwordtextfield(),
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  "olvidaste tu contraseña?",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                _bottonlogin(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _idtexfield() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          color: Colors.white.withOpacity(0.7),
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              icon: Icon(
                Icons.email,
                color: Colors.black,
                size: 30,
              ),
              hintText: "email",
              labelText: "email",
            ),
            onChanged: (valor) {},
          ),
        );
      },
    );
  }

  _passwordtextfield() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          color: Colors.white.withOpacity(0.7),
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(
                Icons.password,
                color: Colors.black,
                size: 30,
              ),
              hintText: "contraseña",
              labelText: "contraseña",
            ),
            onChanged: (valor) {},
          ),
        );
      },
    );
  }

  _bottonlogin() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => HomePage()),
            );
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 80,
            ),
            child: Text(
              "iniciar Sesion",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
          ),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            backgroundColor: Colors.blue,
          ),
        );
      },
    );
  }
}
