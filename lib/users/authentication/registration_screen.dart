import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app_getx/users/authentication/log_in_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var isObsecure = true.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(builder: (context, cons)
      {
       return ConstrainedBox(constraints: BoxConstraints(
          minHeight: cons.maxHeight,
       ),
       child: SingleChildScrollView(
           child: Column(
           children: [
             // Register Header
             SizedBox(
               width: MediaQuery.of(context).size.width,
               height: 285,
               child: Image.asset('images/register.png'),
             ),
             // Sign up screen form
             Padding(padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(60),),
                    boxShadow: [BoxShadow(
                      blurRadius: 8,
                      color: Colors.white,
                      offset: Offset(0,10),
                    ),],
                  ),
                 child: Padding(
                   padding: EdgeInsets.fromLTRB(30, 30, 30, 8),
                   child: Column(
                     children: [
                       // name email password signup-button
                       Form(
                         key:formKey,
                         child: Column(
                           children: [
                             // name
                             TextFormField(
                               controller: nameController,
                               validator: (val) => val == "" ? "Please write your name" : null,
                               decoration: InputDecoration(
                                 prefixIcon: Icon(Icons.person, color: Colors.black,),
                                 hintText: 'name....',
                                 border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(30),
                                   borderSide: BorderSide(color: Colors.white),
                                 ),
                                 enabledBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(30),
                                   borderSide: BorderSide(color: Colors.white),
                                 ),
                                 focusedBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(30),
                                   borderSide: BorderSide(color: Colors.white),
                                 ),
                                 disabledBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(30),
                                   borderSide: BorderSide(color: Colors.white),
                                 ),
                                 contentPadding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                                 fillColor: Colors.white,
                                 filled: true,
                               ),
                             ),
                             SizedBox(height: 18,),
                             // email
                             TextFormField(
                               controller: emailController,
                               validator: (val) => val == "" ? "Please write your email" : null,
                               decoration: InputDecoration(
                                 prefixIcon: Icon(Icons.email, color: Colors.black,),
                                 hintText: 'email....',
                                 border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(30),
                                   borderSide: BorderSide(color: Colors.white),
                                 ),
                                 enabledBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(30),
                                   borderSide: BorderSide(color: Colors.white),
                                 ),
                                 focusedBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(30),
                                   borderSide: BorderSide(color: Colors.white),
                                 ),
                                 disabledBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(30),
                                   borderSide: BorderSide(color: Colors.white),
                                 ),
                                 contentPadding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                                 fillColor: Colors.white,
                                 filled: true,
                               ),
                             ),
                             SizedBox(height: 18,),
                             // password
                             Obx(
                                     () => TextFormField(
                                       controller: passwordController,
                                       obscureText: isObsecure.value,
                                       validator: (val)=>val == '' ? 'please give password' : null,
                                       decoration: InputDecoration(
                                         prefixIcon: Icon(Icons.vpn_key_sharp,color: Colors.black,),
                                         suffixIcon: Obx(() => GestureDetector(onTap: ()
                                         {
                                          isObsecure.value = !isObsecure.value;
                                         },child: Icon(isObsecure.value ? Icons.visibility_off : Icons.visibility,color:Colors.black,),
                                         ),
                                         ),
                                         hintText: 'password.....',
                                         border: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(30),
                                           borderSide: BorderSide(color: Colors.white),
                                         ),
                                         enabledBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(30),
                                           borderSide: BorderSide(color: Colors.white),
                                         ),
                                         focusedBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(30),
                                           borderSide: BorderSide(color: Colors.white),
                                         ),
                                         disabledBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(30),
                                           borderSide: BorderSide(color: Colors.white),
                                         ),
                                         contentPadding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                                         fillColor: Colors.white,
                                         filled: true,
                                       ),
                                     )
                             ),
                             SizedBox(height: 18,),
                             // button
                             Material(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(30),
                               child: InkWell(
                                 onTap: (){},
                                 borderRadius: BorderRadius.circular(30),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                                    child: Text('sign up',style: TextStyle(color: Colors.black,fontSize: 16),),
                                  ),
                               ),
                             ),
                           ],
                         ),
                       ),
                       SizedBox(height: 16,),
                       // already have account button
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('Already have an account?',style: TextStyle(color: Colors.white),),
                           TextButton(onPressed: (){Get.to(LogInScreen());},
                             child: Container(
                                 decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.all(Radius.circular(20))),
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Text('sign in here',style: TextStyle(color: Colors.white,),),
                                 )),
                           ),
                         ],
                       ),
                     ],
                   ),
                 ),
                ),
             )
         ],
       ),
       ),
       );
      },),
    );
  }
}
