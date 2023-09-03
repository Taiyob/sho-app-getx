import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shop_app_getx/testsForworking/forButtonLinkIssues.dart';
import 'package:shop_app_getx/users/authentication/registration_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var isObscure = true.obs;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (context,cons)
        {
          return ConstrainedBox(constraints: BoxConstraints(
             minHeight: cons.maxHeight
          ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // login screen header
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 285,
                    child: Image.asset('images/login.jpg'),
                  ),
                  // login screen sign-in form
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.all(
                          Radius.circular(60),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8,
                            color: Colors.black26,
                            offset: Offset(0,-3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30,30,30,8),
                        child: Column(
                          children: [
                            // email password and login button
                            Form(
                              key: formKey,
                              child: Column(
                                children:
                                [
                                  // email
                                  TextFormField(
                                    controller: emailController,
                                    validator: (val)=>val == ''? 'please write email': null,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(Icons.email,color: Colors.black,),
                                      hintText: 'email....',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.white60,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(),
                                      focusedBorder: OutlineInputBorder(),
                                      disabledBorder: OutlineInputBorder(),
                                      contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 14,
                                        vertical: 6,
                                      ),
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                  ),
                                  const SizedBox(height: 18,),
                                  // password
                                  Obx(
                                          () =>  TextFormField(
                                            controller: passwordController,
                                            obscureText: isObscure.value,
                                            validator: (val)=>val == ''? 'please write password': null,
                                            decoration: InputDecoration(
                                              prefixIcon: const Icon(Icons.vpn_key_sharp,color: Colors.black,),
                                              suffixIcon: Obx(
                                                      ()=>GestureDetector(
                                                    onTap: ()
                                                    {
                                                      isObscure.value = !isObscure.value;
                                                    },
                                                    child: Icon(
                                                      isObscure.value ? Icons.visibility_off : Icons.visibility,
                                                      color: Colors.black,
                                                    ),
                                                  )
                                              ),
                                              hintText: 'password....',
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(30),
                                                borderSide: const BorderSide(
                                                  color: Colors.white60,
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(),
                                              focusedBorder: OutlineInputBorder(),
                                              disabledBorder: OutlineInputBorder(),
                                              contentPadding: const EdgeInsets.symmetric(
                                                horizontal: 14,
                                                vertical: 6,
                                              ),
                                              fillColor: Colors.white,
                                              filled: true,
                                            ),
                                          ),
                                  ),
                                  const SizedBox(height: 18,),
                                  // button
                                  Material(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(30),
                                    child: InkWell(
                                      onTap: ()
                                      {

                                      },
                                      borderRadius: BorderRadius.circular(30),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 10,
                                          horizontal: 20,
                                        ),
                                        child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 16),),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 16,),
                            // don't have an account button
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                    const Text("Don't have an account?",style: TextStyle(color: Colors.white),),
                                   TextButton(
                                       onPressed: (){
                                        Get.to(const SignUpScreen());
                                       }, child: const Text('Register Here')),
                                 ],
                               ),
                            const Text('Or',style: TextStyle(color: Colors.white),),
                            // Only for admin
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Are you an admin?",style: TextStyle(color: Colors.white),),
                                TextButton(
                                    onPressed: (){

                                    }, child: const Text('Click Here')),
                              ],
                            ),
                               ElevatedButton(
                                child: const Text('Elevated Button'),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForButtonLink()));
                                  //ForButtonLink();
                                },
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
