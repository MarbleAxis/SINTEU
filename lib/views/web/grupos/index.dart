import 'package:flutter/material.dart';
import 'package:sinteu/core/app_colors.dart';
import 'package:sinteu/core/app_images.dart';

class GruposPage extends StatefulWidget {
  const GruposPage({ Key? key }) : super(key: key);

  @override
  _GruposPageState createState() => _GruposPageState();
}

class _GruposPageState extends State<GruposPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
        ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
              child: Container(
                width: MediaQuery.of(context).size.width-50,
                height: MediaQuery.of(context).size.height/5,
                child: Center(
                  child: Text(
                    'Grupos',
                    style: TextStyle(
                      fontSize: 55,
                      color: AppColors.primaria03,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Container(
                    height: 900,
                    child: Column(
                      children: [
                        Container(                    
                          width: MediaQuery.of(context).size.width*2/3,
                          height: 50,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 25),
                              child: Text(
                                'A empresa X é boa?',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'data',
                                    style: TextStyle(
                                      color: AppColors.primaria02,
                                      fontSize: 15
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 8, 15, 8),
                                  child: Text(
                                    '3 dias atrás',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'grupo',
                                    style: TextStyle(
                                      color: AppColors.primaria02,
                                      fontSize: 15
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 8, 15, 8),
                                  child: Text(
                                    'Grupo da mecatronica',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'visualizações',
                                    style: TextStyle(
                                      color: AppColors.primaria02,
                                      fontSize: 15
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 8, 350, 8),
                                  child: Text(
                                    '103 k',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 0.9,
                          color: Colors.grey
                        ),
                        Container(
                          width: 800,
                          child: Text(
                            'Estou com uma oferta de emprego na empresa X e não achei muitas recomendações na internet. Se alguém tiver alguma experiencia nesse empresa gostaria de saber se é um bom lugar de se trabalhar.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15
                            ),
                          ),
                        ),
                        Container(
                          width: 800,
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 50, 20, 0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.add_comment ),
                                hintText: 'Adicionar comentário'
                              ),
                            ),
                          ),
                        ),
                        Container(                    
                          width: MediaQuery.of(context).size.width*2/3,
                          height: 50,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 25),
                              child: Text(
                                '1 Resposta ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 800,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'É uma ótima empresa, trabalhei lá por 3 anos! Super recomendo!',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 900,
                          child: Row(
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 45,
                                  height:45,
                                  child: Stack(               
                                    children: [
                                      Center(
                                        child: CircleAvatar(
                                          radius: 50,
                                          backgroundImage: AssetImage(AppImagens.perfil),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Nome do usuário',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Respondido em 1 de maio',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                //  Padding(
                //         padding: const EdgeInsets.only(top:15, bottom: 15),
                //         child: VerticalDivider(
                //           thickness: 0.9,
                //           color: Colors.blueGrey,
                //         ),
                //       ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 25, bottom: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width/3-60,
                   
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width-50,
                          height: MediaQuery.of(context).size.height/11,
                          child: Center(
                            child: Text(
                              'Favoritos',
                              style: TextStyle(  
                                color: Colors.grey
                              ),
                            ),
                          ),
                        ),
                        _buildgruposja(AppImagens.negocios, 'Grupo da Mecatronica'),
                        Container(
                          width: MediaQuery.of(context).size.width-50,
                          height: MediaQuery.of(context).size.height/11,
                          child: Center(
                            child: Text(
                              'Grupos Sugeridos',
                              style: TextStyle(  
                                color: Colors.grey
                              ),
                            ),
                          ),
                        ),
                        _buildgruposnew(AppImagens.negocios, 'Programadores em Divinópolis'),
                        _buildgruposnew(AppImagens.negocios, 'Programadores em Divinópolis'),
                        _buildgruposnew(AppImagens.negocios, 'Programadores em Divinópolis'),
                        _buildgruposnew(AppImagens.negocios, 'Programadores em Divinópolis'),
                        _buildgruposnew(AppImagens.negocios, 'Programadores em Divinópolis'),

                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Container(
                            width: MediaQuery.of(context).size.width/3-60,
                            height: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.primaria02), 
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: CircleAvatar(
                                      radius: 50,
                                      backgroundColor: Colors.grey,
                                      child: IconButton(
                                        icon: Icon(Icons.add_a_photo, color: Colors.white, size: 25,),
                                        onPressed: null,
                                      ),                             
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 35, left: 10),
                                      child: Container(
                                        width: 250,
                                        height: 40,
                                        child: TextButton(
                                          onPressed: null,
                                          child: Text(
                                          'Crie seu grupo',
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
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
    );
  }
  Widget _buildgruposja(foto, nome){
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        width: MediaQuery.of(context).size.width/3-60,
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaria02), 
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(foto),                             
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35, left: 10),
                  child: Container(
                    child: Text(
                      nome,
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.primaria01,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                ),               
              ],
            )
          ],
        ),
      ),
    );
   }
   Widget _buildgruposnew(foto, nome){
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        width: MediaQuery.of(context).size.width/3-60,
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaria02), 
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(foto),                             
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 10, 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 200,
                  height: 100,
                  child: Text(
                    nome,
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColors.primaria01,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
              ),
            ),
            CircleAvatar(
              backgroundColor: AppColors.primaria03,
              radius: 23,
              child: IconButton(
                icon: Icon(Icons.favorite, color: Colors.white, size: 20,),
                onPressed: null,
              ),
            ),
          ],
        ),
      ),
    );
   }
}