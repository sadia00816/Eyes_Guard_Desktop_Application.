import 'package:material_ui/material_ui.dart';
import 'package:get/get.dart';
import 'register.dart';

class LoginPage extends StatefulWidget {
 const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final emailController=TextEditingController();
  final passwordcontroller=TextEditingController();
  bool showPassword= true;
  bool rememberMe = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Eye Guard", 
        style:TextStyle(
          color: const Color.fromARGB(176, 0, 0, 0)),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child:Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                flex: 40,
                child:Container(
                  height: 700,
                  padding: EdgeInsets.all(35.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 9, 67, 94),
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
                        color:const Color.fromARGB(255, 130, 221, 212), 
                        fontSize: 10, 
                        letterSpacing: 1),
                      ),
                      SizedBox(height:20),
                      Center(
                        child:SizedBox(width:280, height: 280, 
                          child:Stack(
                            alignment: AlignmentGeometry.center,
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
                                width: 220,
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
                      SizedBox(height: 50),
                      Text('A little care for the eyes \nthat do so much.',
                      style:TextStyle(
                       color: Colors.white ,
                       fontSize: 26, fontWeight: 
                       FontWeight.bold, 
                       height: 1.5),
                      ),
                          
                      SizedBox(height: 20),
                          
                      Text('A mindset companion for every study session,\nworkday and late-night idea.', 
                      style: TextStyle(color:Colors.white70, fontSize: 15),),
                          
                      SizedBox(height: 50),

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
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('EYE GUARD FOR WINDOWS', style: TextStyle(color: Colors.black87, fontSize:10),),
                      SizedBox(height: 50),
                      Text('Welcome back', 
                        style: TextStyle(
                          color:Colors.black, 
                          fontSize: 40, 
                          fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text('Your eyes deserve a little attention today' ,style:TextStyle(color:Colors.grey),),
                      SizedBox(height: 30),                      
                      Text('Email address', style: TextStyle(color: Colors.black87, fontSize: 15, ),),
                      SizedBox(height: 10),
                      TextField(
                        controller: emailController,
                         decoration: InputDecoration(
                          hintText: 'Enter your email address',
                          //labelText: 'Email Address',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                      SizedBox(height:30),
                      Text('Password', style: TextStyle(color: Colors.black87, fontSize: 15,),),
                      SizedBox(height: 10),
                      TextField(
                        controller: passwordcontroller,
                        obscureText: showPassword,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(onPressed: (){
                            setState(() {
                              showPassword =!showPassword;
                            });
                          }, icon: Icon(Icons.remove_red_eye)),
                          hintText: 'Enter your password',
                          //labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                       Row(
                            children: [
                    
                              Checkbox(
                                value: rememberMe,
                                activeColor: Colors.teal,
                                onChanged: (value) {
                                  setState(() {
                                    rememberMe = value ?? false;
                                  });
                                },
                              ),const Text(
                                'Remember me',
                                style: TextStyle(fontSize: 12),
                              ),
                    
                              const Spacer(),
                    
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Forgot password?',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        SizedBox(height: 20),
                        Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.teal,
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              if (emailController.text.trim()=="sadiajavaid123@gmail.com" && passwordcontroller.text=="12345"){
                                Get.snackbar( "Success", "Login Successful",);
                                Get.to(RegisterPage());
                              }
                              else{
                                Get.snackbar("Error", "Invalid email or password",);
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("login", style: TextStyle(color: Colors.black, fontSize: 16),),
                                SizedBox(width: 10),
                                Icon(Icons.arrow_forward, color: Colors.black),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                              Text(
                               "Don’t have an account?",
                                style: TextStyle(
                                 color: Colors.grey,
                                 fontSize: 12,
                                ),
                              ),
                            SizedBox(width: 5),
                            TextButton(onPressed: (){Get.to(()=> RegisterPage());},
                              child: Text(
                                'Create Account',
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 40),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.lock_outline, size: 14, color: Colors.grey),
                              SizedBox(width: 5),
                              Text('Secure sign-in. Private by default.', 
                                style: TextStyle(
                                  color: Colors.grey, 
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 40),
                        Text('© 2026 Eye Guard. Designed for healthier screen time', 
                          style: TextStyle(
                            color: Colors.grey, 
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}