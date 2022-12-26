import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:sinteu/core/app_colors.dart';
import 'package:sinteu/views/web/cadastro/pages/form_empresa.dart';
import 'package:sinteu/views/web/cadastro/pages/form_estudante.dart';
import 'package:sinteu/views/web/cadastro/pages/form_orientador.dart';
import 'package:sinteu/views/web/home/index.dart';
import 'package:sinteu/views/web/login/controllers/login_controller.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({ Key? key }) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final _controller = LoginController();
  String tipoAtual = "estudante";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 25),
              child: Container(
                width: 50,
                height: 50,
               decoration: BoxDecoration(
                borderRadius: new BorderRadius.all(new Radius.circular(100)),
                color: AppColors.primaria03,
              ),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 20,
                    ),
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
                      });
                    },
                  )
                ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: Center(
                child: Text(
                  'Cadastre-se',
                  style: TextStyle(
                    fontSize: 40,
                    color: AppColors.primaria01,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        SizedBox(
          width: MediaQuery.of(context).size.width/5,
          child: DropdownButton<String>(
            

            value: tipoAtual,
            items: [DropdownMenuItem(child: Text("Estudante"), value: "estudante",),
          DropdownMenuItem(child: Text("Empresa/Visitante"), value: "empresa",),
          DropdownMenuItem(child: Text("Professor Orientador"), value: "professor",),], onChanged: (value){
            setState(() {
              tipoAtual=value!;
            });
          }),
        ),
          tipoAtual=="estudante"? Estudante(): tipoAtual=="empresa"? Empresa():Orientador()
           
        ],
      )
    );
  }
}