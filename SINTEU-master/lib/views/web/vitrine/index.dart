// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:sinteu/core/app_colors.dart';
import 'package:sinteu/core/app_images.dart';

class VitrinePage extends StatefulWidget {
  const VitrinePage({ Key? key }) : super(key: key);

  @override
  _VitrinePageState createState() => _VitrinePageState();
}

class _VitrinePageState extends State<VitrinePage> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left:80, right:80, bottom: 20),
        child: CustomScrollView(
          slivers: [
            SliverList(delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                child: Container(
                  width: MediaQuery.of(context).size.width-50,
                  height: MediaQuery.of(context).size.height/5,
                  color: AppColors.primaria01,
                  child: Center(
                    child: Text(
                      'Vitrine Acadêmica',
                      style: TextStyle(
                        fontSize: 55,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width-50,
                height: MediaQuery.of(context).size.height/11,
                child: Center(
                  child: Text(
                    'Projetos cadastrados',
                    style: TextStyle(  
                      color: Colors.grey
                    ),
                  ),
                ),
              ),
            ])),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, childAspectRatio: 1/1.5),
              delegate: SliverChildListDelegate([

                Container(
                  margin: EdgeInsets.only(left: (largura/4-300)/2, right: (largura/4-300)/2),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.1)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Image.asset(AppImagens.projetos, width: 200,),
                  Text("Nome do Projeto",style: TextStyle(  
                              fontSize: 35,
                              color: AppColors.primaria01,
                              fontWeight: FontWeight.w700
                            ),),
                  Text("Uma breve descrição do projeto em questão",style: TextStyle(  
                              fontSize: 20,
                              color: Colors.black87,
                            ),),
                  Text("Palavras-chaves",style: TextStyle(  
                              fontSize: 20,
                              color: AppColors.primaria02,
                            ),)
                ]),),

                Container(
                  margin: EdgeInsets.only(left: (largura/4-300)/2, right: (largura/4-300)/2),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.1)
                  ),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                  Image.asset(AppImagens.projetos, width: 200,),
                  Text("Nome do Projeto",style: TextStyle(  
                              fontSize: 35,
                              color: AppColors.primaria01,
                              fontWeight: FontWeight.w700
                            ),),
                  Text("Uma breve descrição do projeto em questão",style: TextStyle(  
                              fontSize: 20,
                              color: Colors.black87,
                            ),),
                  Text("Palavras-chaves",style: TextStyle(  
                              fontSize: 20,
                              color: AppColors.primaria02,
                            ),)
                ]),),
                Container(
                  margin: EdgeInsets.only(left: (largura/4-300)/2, right: (largura/4-300)/2),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.1)
                  ),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                  Image.asset(AppImagens.projetos, width: 200,),
                  Text("Nome do Projeto",style: TextStyle(  
                              fontSize: 35,
                              color: AppColors.primaria01,
                              fontWeight: FontWeight.w700
                            ),),
                  Text("Uma breve descrição do projeto em questão",style: TextStyle(  
                              fontSize: 20,
                              color: Colors.black87,
                            ),),
                  Text("Palavras-chaves",style: TextStyle(  
                              fontSize: 20,
                              color: AppColors.primaria02,
                            ),)
                ]),),

                Container(
                  margin: EdgeInsets.only(left: (largura/4-300)/2, right: (largura/4-300)/2),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.1)
                  ),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                  Image.asset(AppImagens.projetos, width: 200,),
                  Text("Nome do Projeto",style: TextStyle(  
                              fontSize: 35,
                              color: AppColors.primaria01,
                              fontWeight: FontWeight.w700
                            ),),
                  Text("Uma breve descrição do projeto em questão",style: TextStyle(  
                              fontSize: 20,
                              color: Colors.black87,
                            ),),
                  Text("Palavras-chaves",style: TextStyle(  
                              fontSize: 20,
                              color: AppColors.primaria02,
                            ),)
                ]),),
        
        
         
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
              //   child: Container(
              //     width: MediaQuery.of(context).size.width-50,
              //     height: MediaQuery.of(context).size.height/5,
              //     color: AppColors.primaria01,
              //     child: Center(
              //       child: Text(
              //         'Vitrine Acadêmica',
              //         style: TextStyle(
              //           fontSize: 55,
              //           color: Colors.white,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // Container(
              //   width: MediaQuery.of(context).size.width-50,
              //   height: MediaQuery.of(context).size.height/11,
              //   child: Center(
              //     child: Text(
              //       'Projetos cadastrados',
              //       style: TextStyle(  
              //         color: Colors.grey
              //       ),
              //     ),
              //   ),
              // ),
              // _buildprojeto('Nome do projeto', AppImagens.projetos, 'Uma breve descrição do projeto em questão', 'palavras-chaves'),
              // _buildprojeto('Nome do projeto', AppImagens.projetos, 'Uma breve descrição do projeto em questão', 'palavras-chaves')
            ],),)],),
      )
        
    );
  }
  Widget _buildprojeto(nome, foto, descricao, palavraschaves){
    return Padding(
      padding: const EdgeInsets.fromLTRB(100, 10, 100, 15),
      child: Container(
        width: MediaQuery.of(context).size.width-100,
        height: MediaQuery.of(context).size.height/2.5,
        decoration: 
        BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0.0, 0.75)
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/2.5,
              width: MediaQuery.of(context).size.height/2.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    foto
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                  child: Container(
                    child: Text(
                      nome,
                      style: TextStyle(  
                        fontSize: 35,
                        color: AppColors.primaria01,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
                  child: Container(
                    child: Text(
                      descricao,
                      style: TextStyle(  
                        fontSize: 20,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 120, 15, 5),
                  child: Container(
                    child: Text(
                      palavraschaves,
                      style: TextStyle(  
                        fontSize: 20,
                        color: AppColors.primaria02,
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
}