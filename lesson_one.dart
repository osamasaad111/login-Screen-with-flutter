import 'package:flutter/material.dart';

class LessonOne extends StatelessWidget {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title:Center(
            child: const Text(
                "Welcome..",
              style: TextStyle(
                fontSize: 30.0,
              ),

            ),
          ),
        ),
        body:
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 80.0,
              horizontal: 20.0,
            ),
            child:
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                 const Text(
                    "We Are Hiring..",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.deepPurple,
                     fontWeight:FontWeight.bold,
                    // fontStyle: FontStyle.italic,
                  ),
                ),
                 const SizedBox(
                  height: 30.0,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType:TextInputType.emailAddress ,
                decoration: const InputDecoration(
                  labelText:
                  "Email Address",
                  prefixIcon: Icon(
                      Icons.email,
                    color: Colors.deepPurple,
                  ),

                  border: OutlineInputBorder(

                  ),
                ),
                  onFieldSubmitted: ( String value){
                    print(value);
                  },
                ),
                const SizedBox(
                  height: 30.0,
                ),
                TextFormField(
                  controller: passwordController,
                  keyboardType:TextInputType.visiblePassword ,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText:
                    "Password",
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.deepPurple,
                    ),
                    suffixIcon: Icon(
                        Icons.remove_red_eye,
                      color: Colors.deepPurple,
                    ),
                    border: OutlineInputBorder(

                    ),
                  ),
                  onFieldSubmitted: ( String value){
                    print(value);
                  },
                ),
                // const SizedBox(
                //   height: 2.0,
                // ),
                TextButton(
                  onPressed: (){},
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forget Your password ? "),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  width: double.infinity,
                  // color: Colors.deepPurple,
                  child: MaterialButton(

                    child:
                    const Text(
                        "LOGIN",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                      onPressed: (){
                        print(passwordController.text);
                        print(emailController.text);
                      },
                  ),
                ),

              ],
            ),
          ),
        ) ,
        ) ,
    );
  }
}
