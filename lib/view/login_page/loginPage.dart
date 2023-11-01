import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  FocusNode inputNode = FocusNode();
  bool isHidePassword = true;
  bool isAwaiting = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            fit: StackFit.loose,
            children: <Widget>[
              Container(
                child: Center(
                    child: AppBar(
                      title: const Text(
                        'Đăng nhập',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      centerTitle: true,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //SizedBox(height: 25.0),
                    Container(
                      margin: const EdgeInsets.only(top: 100),
                      child: TextFormField(
                        autofocus: true,
                        style: const TextStyle(fontSize: 20),
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                            labelText: "Số điện thoại",
                            hintText: "Nhập số điện thoại",
                            labelStyle:
                            TextStyle(color: Color(0xff888888), fontSize: 20),
                            hintStyle:
                            TextStyle(color: Color(0xff888888), fontSize: 20)),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      alignment: AlignmentDirectional.centerEnd,
                      child: TextFormField(
                        obscureText: isHidePassword,
                        decoration: InputDecoration(
                            labelText: "Mật khẩu",
                            hintText: "Nhập mật khẩu",
                            labelStyle: const TextStyle(
                                color: Color(0xff888888), fontSize: 20),
                            hintStyle:
                            const TextStyle(color: Color(0xff888888), fontSize: 20),
                            suffixIcon: InkWell(
                                onTap: _togglePasswordView,
                                child: const Icon(
                                  Icons.visibility,
                                ))),
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(top: 50),
                      child: OutlinedButton(
                        style: ButtonStyle(
                            backgroundColor:
                            const MaterialStatePropertyAll<Color>(Colors.black),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)))),
                        onPressed: () {},
                        child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 110),
                            child: const Text(
                              'Đăng nhập',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            )),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text('Hoặc đăng nhập bằng tài khoản khác'),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: SignInButton(
                        Buttons.Google,
                        text: "Đăng nhập bằng Google",
                        onPressed: () {
                          setState(() {
                            this.isAwaiting = true;
                          });

                          // Authentication.signInWithGoogle().then((value) =>
                          //     Navigator.pushAndRemoveUntil(
                          //         context,
                          //         PageTransition(
                          //             type: PageTransitionType.rightToLeftWithFade,
                          //             child: MyApp(),
                          //             childCurrent: widget),
                          //             (Route route) => false));
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: SignInButton(
                        Buttons.Facebook,
                        text: "Đăng nhập bằng Facebook",
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              // if (this.isAwaiting == true)
              //   Container(
              //       width: double.infinity,
              //       height: double.infinity,
              //       color: Colors.white,
              //       child: const RiveAnimation.asset('assets/icons/delivery.riv'))
            ],
          ),
          //children: [IconButton(onPressed: () {}, icon: Icon(Icons.login))],
        ));
  }

  void _togglePasswordView() {
    setState(() {
      isHidePassword = !isHidePassword;
    });
  }
}
