import 'package:flutter/material.dart';
import 'package:sinteu/core/app_colors.dart';
import 'package:sinteu/views/web/cadastro/controllers/usuario_controller.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';


import '../models/usuario_model.dart';


class Orientador extends StatefulWidget {
  final UsuarioModel? current;
  const Orientador({Key? key, this.current}) : super(key: key);

  @override
  State<Orientador> createState() => _OrientadorState();
}

class _OrientadorState extends State<Orientador> with SingleTickerProviderStateMixin {
  // late AnimationController _controller;
  final _controllers = UsuarioController();

  var mostrarSenha = false;
  var _controllerCep = TextEditingController();
  var _controllerLogradouro = TextEditingController();
  var _controllerBairro = TextEditingController();  
  var _controllerCidade = TextEditingController();  
  var _controllerEstado = TextEditingController();  
  var _controllerFormacao = TextEditingController();  
  var _controllerAtuacao = TextEditingController();  
  var _controllerInteresse = TextEditingController();  


  @override
  void initState() {
    super.initState();
    // _controller = AnimationController(vsync: this);

    if (widget.current != null){
      _controllers.email.text = widget.current!.email ?? '';
      _controllers.senha.text = widget.current!.senha ?? '';
      _controllers.nome.text = widget.current!.nome ?? '';
      _controllers.telefone.text = widget.current!.telefone ?? '';
    }
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _controller.dispose();
  // }

 @override
  Widget build(BuildContext context) {
    return Column(
      children: [
  Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                child: Container(
                  width: MediaQuery.of(context).size.width/2-30,
                  height: 600,
                  color: AppColors.primaria04,
                  child: Align(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Text(
                            'Informações Pessoais',
                            style: TextStyle(
                              color: AppColors.primaria01,
                              fontWeight: FontWeight.w800,
                              fontSize: 30,
                            ),
                          ),
                        ),
                          
                            Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Text(
                                'Nome:',
                                style: TextStyle(
                                  color: AppColors.primaria01,
                                  fontWeight: FontWeight.w800
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: TextFormField(
                                controller: _controllers.nome,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.people),
                                  hintText: 'João'),
                              ),
                            ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
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
                                  controller: _controllers.email,
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.email_rounded),
                                      hintText: 'exemplo@mail.com'),
                                ),
                              ),
                              
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                child: Text(
                                  'Telefone:',
                                  style: TextStyle(
                                      color: AppColors.primaria01,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: TextFormField(
                                  controller: _controllers.telefone,
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.phone),
                                      hintText: '(37) 99999-9999'),
                                ),
                              ),
        
                            
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
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
                                  controller: _controllers.senha,
                                  obscureText: !mostrarSenha,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    hintText: 'Ex. 123@A',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    prefixIcon: Icon(Icons.vpn_key_rounded),
                                    suffix: IconButton(onPressed: (){
                                      setState((){
                                          mostrarSenha = !mostrarSenha;
                                      });                  
                                    },
                                    icon: Icon(mostrarSenha == true ? Icons.visibility_off : Icons.remove_red_eye_outlined), color: Colors.grey),    
                                  ),
                                ),
                              ),
                              
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                child: Text(
                                  'Confirmar senha:',
                                  style: TextStyle(
                                      color: AppColors.primaria01,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: TextFormField(
                                  controller: _controllers.csenha,
                                  obscureText: !mostrarSenha,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    hintText: 'Ex. 123@A',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    prefixIcon: Icon(Icons.vpn_key_rounded),
                                    suffix: IconButton(onPressed: (){
                                      setState((){
                                          mostrarSenha = !mostrarSenha;
                                      });                  
                                    },
                                    icon: Icon(mostrarSenha == true ? Icons.visibility_off : Icons.remove_red_eye_outlined), color: Colors.grey),              
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 15, 5),
                      child: Container(
                        width: MediaQuery.of(context).size.width/2-30,
                        height: 600,
                        color: AppColors.primaria00,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                              child: Text(
                                'Cadastro de endereço',
                                style: TextStyle(
                                    color: AppColors.primaria04,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 30,
                                ),
                              ),
                            ),
              
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Text(
                                'CEP:',
                                style: TextStyle(
                                    color: AppColors.primaria04,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: TextFormField(
                                controller: _controllerCep,
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.add_home),
                                    hintText: '11111-111',
                                    ),
                              ),
                            ),
              
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                              child: Text(
                                'Logradouro:',
                                style: TextStyle(
                                    color: AppColors.primaria04,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: TextFormField(
                                controller: _controllerLogradouro,
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.add_location),
                                    hintText: 'Av. 7 de setembro',
                                ),
                              ),
                            ),
              
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                              child: Text(
                                'Bairro:',
                                style: TextStyle(
                                    color: AppColors.primaria04,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: TextFormField(
                                controller: _controllerBairro,
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.house_sharp),
                                    hintText: 'Centro'),
                              ),
                            ),
              
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                              child: Text(
                                'Cidade:',
                                style: TextStyle(
                                    color: AppColors.primaria04,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: TextFormField(
                                controller: _controllerCidade,
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.place),
                                    hintText: 'Divinópolis'),
                              ),
                            ),
              
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                              child: Text(
                                'Estado:',
                                style: TextStyle(
                                    color: AppColors.primaria04,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: TextFormField(
                                controller: _controllerEstado,
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.local_activity_rounded),
                                    hintText: 'Minas Gerais'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(350, 5, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width/2-30,
                  height: 300,
                  color: AppColors.primaria00,
                  child: Column(   
                    children: [
                      Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                          child: Text(
                            'Informações Profissionais',
                            style: TextStyle(
                              color: AppColors.primaria04,
                              fontWeight: FontWeight.w800,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(
                          'Formação:',
                          style: TextStyle(
                              color: AppColors.primaria04,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: TextFormField(
                          controller: _controllerFormacao,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.arrow_drop_down)
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Text(
                          'Atuação profissional:',
                          style: TextStyle(
                              color: AppColors.primaria04,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: TextFormField(
                          controller: _controllerAtuacao,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.arrow_drop_down),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Text(
                          'Área de interesse',
                          style: TextStyle(
                              color: AppColors.primaria04,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: TextFormField(
                          controller: _controllerInteresse,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.arrow_drop_down),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                    child: Container(
                      width: 500,
                      height: 70,
                      child: TextButton(
                        onPressed: () {
                          _controllers.salvarOnPressed(
                            alteracao: widget.current != null,
                            onSuccess: (){
                            Navigator.pop(context);
                          }, 
                          onFailure: (motivo){
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
                          return null;
                          });
                        },
                        child: Text(
                          'Cadastre-se',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(AppColors.primaria03),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            )
                          )
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
      ],

    );   
  }
}