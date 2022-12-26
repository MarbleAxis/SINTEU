import 'package:flutter/material.dart';
import 'package:sinteu/core/app_colors.dart';
import 'package:sinteu/core/app_images.dart';
import 'package:sinteu/views/web/configuracoes/index.dart';

class Perfil extends StatefulWidget {
  const Perfil({ Key? key }) : super(key: key);

  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.corDeFundo01,
      body:
        ListView(
          children: [
            Container(
              
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 4,

              child: Stack(
                
                children: [
                  
                  Center(
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage(AppImagens.perfil),
                    ),
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                ],
              ),
            ),

            Container(
              child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Center(
              child: Text(
              "Nome do Usuário",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: AppColors.primaria01,
              ),
              ),
          ),
        ),
      ),

      Container(
              child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Center(
              child: Text(
              "Divinópolis-MG",
                style: TextStyle(
                  fontSize: 17,
                  // fontWeight: FontWeight.w900,
                  color: AppColors.corFonte03,
              ),
              ),
          ),
        ),
      ),

      Align(
            alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Container(
                    width: 350,
                    height: 40,
                    child: TextButton(
                      onPressed: () {
                        
                        Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ConfiguracoesPage()
                        )
                      );

                      },
                        child: Text(
                          'Editar perfil',
                          style: TextStyle(
                            color: AppColors.corFonte02,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            AppColors.primaria03
                          ),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              )
                            )
                        ),
                    ),
                  ),
              ),
          ),

        Divider(),

        Row(
          children: [
            _titulo('Formação'),
            IconButton(onPressed: (){}, icon: Icon(Icons.edit)),

          ],
        ),
        
        _texto("Graduada em Engenharia de Produção na UEMG"),

        Divider(),

        Row(
          children: [
            _titulo('Atuação Profissional'),
            IconButton(onPressed: (){}, icon: Icon(Icons.edit)),

          ],
        ),

        _texto("Planejamento da produção e da distribuição de produtos," + 
        "controle financeiro, controle dos custos e análise de investimentos."
        ),
        
        Row(
          children: [
            _titulo('Sobre'),
            IconButton(onPressed: (){}, icon: Icon(Icons.edit)),

          ],
        ),

         _texto("Descrição pessoal do usuário"),

         _titulo("Projetos"),
         _texto("Projeto 1"),
         _texto("Projeto2"),
         _texto("Projeto3"),

         Row(
          children: [
            _titulo('Áreas de Interesse'),
            IconButton(onPressed: (){}, icon: Icon(Icons.edit)),

          ],
        ),

         _texto("Interesse 1"),
         _texto("Interesse 2"),
         _texto("Interesse 3"),

         _titulo("Grupos"),
         _texto("Programadores de Divinópolis"),
         _texto("TI- Minas Gerais"),


      ],
      ),
    );
  }

  Widget _titulo(texto){
    return Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Container(
              child: Text(
                texto,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: AppColors.primaria01,
              ),
              ),
            ),
          )
        );
  }

  Widget _texto(texto){
    return Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Container(
              child: Text(
                texto,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: AppColors.corFonte03,
              ),
              ),
            ),
          )
        );
  }
}