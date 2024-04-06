import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 183, 130, 192),
      body: Column(
        children: [
          Text(
            'Welcome to my app',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Login to continuor',
              style: TextStyle(
                color: Colors.white,
              ),
              ),
              SizedBox(
              height: 25,
            ),
//      start of username text field
          TextField(
            decoration: InputDecoration(
              hintText: 'Username',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))),
                filled: true,
                fillColor: Colors.white.withOpacity(0.5),
              ),
          ),
          SizedBox(
              height: 25,
            ),
//    end of username text field and start of password text field
          TextField(
            decoration: InputDecoration(
              hintText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))),
                filled: true,
                fillColor: Colors.white.withOpacity(0.5),
              ),
          ),
//    end of password field
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
              print('forgot is clicked');
            },
            style: TextButton.styleFrom(
                foregroundColor: Colors.white, 
              ),
            child: Text('forgoten password?'),
          ),
          ),
//    login button
            SizedBox(
              width: 250,
            child: ElevatedButton(
              onPressed: (){
                print('Login is clicked');
              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 107, 245, 255),
                foregroundColor: Colors.black,
              ),
              
              child: Text('Log in')),
              ),

              SizedBox(
                height: 62,
              ),
//    end of login btn

          Text(
            'Or sign in with',
            style: TextStyle(
              color: Colors.white,
            ),
            ),
          SizedBox(
                height: 16,
              ),

          ElevatedButton(
            onPressed: () {
              print('o');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                  ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/google.png',
                  width: 22,
                  height: 32,
                ),
                SizedBox(
                  width: 8,
                ),
                Text('Login with google'),
              ],
            ),
          ),

          ElevatedButton(
            onPressed: () {
              print('o');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                  ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/facebook.png',
                  width: 22,
                  height: 32,
                ),
                SizedBox(
                  width: 8,
                ),
                Text('Login with facebook'),
              ],
            ),
          ),


          Row(
            children: [
              Text(
                "Don't have an account? ",
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Color.fromARGB(255, 107, 245, 255),
                ),
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    ),
                  ),
              )
            ],
          )
        ],
      ),
    );
  }
}
