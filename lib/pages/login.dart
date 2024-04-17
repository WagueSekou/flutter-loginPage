import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SizedBox(
          //this sizebox height parameter below makes
          //posible for all the contained of our page to fit in our screen hence make it more reponsive
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Spacer(),
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
                   Spacer(),
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
                    width: double.infinity,
                    height: 48,
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
            
                  Spacer(),   
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
            
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      print('ol');
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
                ),
                    SizedBox(height: 16,),
          
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      print('ol2');
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
                ),

                  TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.5),
                    ),
                ),
               

                  //  const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
