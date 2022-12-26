import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:sinteu/core/app_colors.dart';
import 'package:sinteu/views/web/home/index.dart';
import 'package:sinteu/views/web/login/controllers/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key}) : super(key: key);

  @override
  // _LoginPageState createState() => _LoginPageState();
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _controller = LoginController();

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: AppColors.primaria01,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2.40,
            width: MediaQuery.of(context).size.width,
            color: AppColors.primaria02,
          ),
          Center(
            child: Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                  color: AppColors.primaria02,
                  border: Border.all(color: AppColors.primaria01),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                      'E-mail:',
                      style: TextStyle(
                          color: AppColors.primaria01,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: TextFormField(
                      controller: _controller.email,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_rounded),
                          hintText: 'exemplo@mail.com'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                    child: Text(
                      'Senha:',
                      style: TextStyle(
                          color: AppColors.primaria01,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: TextFormField(
                      controller: _controller.senha,
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.vpn_key_rounded),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                      child: TextButton(
                          onPressed: () {}, child: Text('Esqueci minha senha')),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Container(
                        width: 350,
                        height: 31,
                        child: TextButton(
                          onPressed: () {
                            _controller.entrarOnPressed(
                              sucesso: (usuarioLogado){
                                Navigator.pushAndRemoveUntil(context, 
                                MaterialPageRoute(builder: (context) => 
                                HomePage(usuario: usuarioLogado,)),
                                (route) => false);
                              },
                              falha: (motivo){
                                MotionToast.error(
                                    title: const Text(
                                      'Error',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    description: Text(motivo),
                                    animationType: AnimationType.fromLeft,
                                    position: MotionToastPosition.top,
                                    barrierColor: Colors.black.withOpacity(0.3),
                                    width: 300,
                                    height: 80,
                                    dismissable: false,
                                  ).show(context);
                              }
                            );
                          },
                          child: Text(
                            'Entrar',
                            style: TextStyle(
                                color: AppColors.primaria02,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  AppColors.primaria01)),
                        ),
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
          ),

          //foto em cima da caixa
          Align(
            alignment: Alignment(0.0, -0.65),
            child: Container(
                height: 150,
                width: 150,
                
                decoration: BoxDecoration(
                    color: AppColors.primaria02,
                    borderRadius: BorderRadius.circular(100))),
          )
        ],
      ),

      //rodapé
      bottomSheet: Container(
        height: 30,
        color: AppColors.primaria01,
        child: Center(
          child: Text(
                '\u00a9 SINTEU - 2021', 
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.primaria02,
                  fontWeight: FontWeight.w900
                )
            ),
        ),
      ),
    );
  }
}
