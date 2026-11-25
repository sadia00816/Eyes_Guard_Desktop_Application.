import 'package:material_ui/material_ui.dart';
import 'package:get/get.dart';
import '../Routes/app_routes.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();
  final showPassword = false.obs;
  final showConfirmPassword = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text("Eye Guard", 
        style:TextStyle(
          color: Color.fromARGB(176, 0, 0, 0)),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child:Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                flex:50,
                child:Container( 
                  height: 800,
                  padding: EdgeInsets.all(35.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 9, 67, 94),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children:[
                          Icon(Icons.visibility_outlined, color:Colors.teal, size:27),
                          SizedBox(width: 20),
                          Text('Eye Guard',
                          style: TextStyle(
                            color: Colors.white, 
                            fontSize: 22, 
                            fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height:25),
                      Text('SCREEN WELLNESS, REIMAGINED',
                      style: TextStyle(
                        color: Color.fromARGB(255, 130, 221, 212), 
                        fontSize: 10, 
                        letterSpacing: 1),
                      ),
                      SizedBox(height: 30),
                      Center(
                        child:SizedBox(width:280, height: 280, 
                          child:Stack(
                            alignment: Alignment.center,
                            children:[
                              Container(
                                width: 270,
                                height: 270,
                                decoration:BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:Border.all(color:Colors.white12,)
                                ),
                              ),
                              Container(
                                width: 200,
                                height: 200,
                                decoration:BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:Border.all(color:Colors.white12,)
                                ),
                              ),
                              Container(
                                width: 130,
                                height: 130,
                                decoration:BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:Border.all(color:Colors.white12,)
                                ),
                                child:Icon(Icons.visibility_outlined,color:Colors.teal, size: 90),
                              ),
                              Positioned(
                                top: 40,
                                right: 0,
                                child:Container(
                                  padding: EdgeInsets.symmetric(horizontal:12, vertical: 8,),
                                  decoration: BoxDecoration(color: Color.fromARGB(255, 61, 124, 118),
                                  borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text('✦AI-powered care', 
                                  style: TextStyle(
                                    color:Colors.white, 
                                    fontSize: 10,),
                                  ),
                                ),
                              ),
                            ]
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Text('Your next healthy habit \nstarts right here.',
                      style:TextStyle(
                       color: Colors.white ,
                       fontSize: 26, fontWeight: 
                       FontWeight.bold, 
                       height: 1.5),
                      ),
                          
                      SizedBox(height: 50),
                          
                      Text('A mindset companion for every study session,\nworkday and late-night idea.', 
                      style: TextStyle(color:Colors.white70, fontSize: 15),),
                          
                      SizedBox(height: 30),
                      Row(children: [
                        Icon(Icons.lock_outline, color:Colors.white70, size: 16),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text('On-device analysis. Your camera stays private.', 
                          style: TextStyle(
                            color:Colors.white70,
                            fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ),
                SizedBox(width: 45),
                 Expanded(
                  flex: 50,
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40),
                      Text(
                        "EYE GUARD FOR WINDOWS",
                        style: TextStyle(
                          color: Colors.black87, fontSize:10,
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Start seeing the difference.",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Create your account . Build healthier screen habits.",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 40),
                      Text("Full name"),
                      SizedBox(height: 10),
                      TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          hintText: "Enter your name",
                          border: OutlineInputBorder(),
                        ),
                      ),
                   
                      SizedBox(height: 20),
                      Text("Email address"),
                      SizedBox(height: 10),
                      TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: "Enter your email",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text("Password"),
                      SizedBox(height: 10),
                      Obx(()=> TextField(
                          controller: passwordController,
                          obscureText: !showPassword.value,
                          decoration: InputDecoration(
                            hintText: "Create a strong password",
                            border: OutlineInputBorder(),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.remove_red_eye),
                              onPressed: () {
                                showPassword.value=!showPassword.value;
                              },
                            ),
                          ),
                        ),
                      ),
                   
                      SizedBox(height: 8),
                      Text(
                        "Use 8+ characters, a number and a symbol.",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text("Confirm password"),
                      SizedBox(height: 10),
                      Obx(()=> TextField(
                          controller: confirmController,
                          obscureText: !showConfirmPassword.value,
                          decoration: InputDecoration(
                            hintText: "Re-enter your password",
                            border:  OutlineInputBorder(),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.remove_red_eye),
                              onPressed: () {
                                showConfirmPassword.toggle();
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.teal,
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Create Account", style: TextStyle(color: Colors.black, fontSize: 16),),
                                SizedBox(width: 10),
                                Icon(Icons.arrow_forward, color: Colors.black),
                              ],
                            ),
                          ),
                        ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(color: Colors.grey),
                          ),
                          TextButton(
                            onPressed: () {
                              if (Navigator.canPop(context)) {
                                Get.back();
                              } else {
                                Get.offAllNamed(AppRoutes.login);
                              }
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.teal,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),  
                      SizedBox(height: 40),
                      Row(
                        children: [
                          Text('© 2026 Eye Guard. Designed for healthier screen habits.',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]
            )
          ),
        ),
      )
    );
  }
}