import 'package:flutter/material.dart';
import 'package:sinteu/core/app_colors.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({ Key? key }) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  var mostrarSenha = false;
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
                      Navigator.of(context).pop();
                      // Navigator.of(context).pushReplacement(
                      //   MaterialPageRoute(
                      //     builder: (context) => BuscasPage()
                      //   )
                      // );
                    },
                  )
                ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
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
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.people),
                                  hintText: 'João'),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                              child: Text(
                                'Sobrenome:',
                                style: TextStyle(
                                  color: AppColors.primaria01,
                                  fontWeight: FontWeight.w800
                                ),
                              ),
                            ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.people),
                                      hintText: 'Almeida Campos'),
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
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.phone),
                                      hintText: '(37) 99999-9999'),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                child: Text(
                                  'CPF:',
                                  style: TextStyle(
                                      color: AppColors.primaria01,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.card_travel),
                                      hintText: '111.111.111-11'),
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
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.local_activity_rounded),
                              hintText: 'Minas Gerais'),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Text(
                          'Número:',
                          style: TextStyle(
                              color: AppColors.primaria04,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.numbers_rounded),
                              hintText: '999',
                              ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Text(
                          'Complemento',
                          style: TextStyle(
                              color: AppColors.primaria04,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.apartment_outlined),
                              hintText: 'Ap, casa...'
                          ),
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
                          Navigator.of(context).pop();
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
      )
    );
  }
}