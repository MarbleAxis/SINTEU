import 'package:flutter/material.dart';
import 'package:sinteu/core/app_colors.dart';

class NoticiasPage extends StatefulWidget {
  const NoticiasPage({ Key? key }) : super(key: key);

  @override
  _NoticiasPageState createState() => _NoticiasPageState();
}

class _NoticiasPageState extends State<NoticiasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.corDeFundo01,
      body:
        ListView(
          children: [

            Padding(
              padding: const EdgeInsets.fromLTRB(200, 10, 200, 10),
              child: Container(
                width: MediaQuery.of(context).size.width-50,
                height: MediaQuery.of(context).size.height/5,
                color: AppColors.corFonte05.withOpacity(0.8),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(                  
                        'Notícias',
                        style: TextStyle(
                          fontSize: 55,
                          color: AppColors.primaria03,
                        ),
                      ),
                      Icon(Icons.new_releases_outlined, size: 55)
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildNoticias("Título da notícia", 'Descrição... ' +
                  'Empresário X cadastrou uma demanda que pagará 1000 reais. ' +
                  'Os interessados devem estar matriculados na faculdade Y.'
                  ),
                  _buildNoticias("Título da notícia", 'Descrição... ' +
                  'Empresário X cadastrou uma demanda que pagará 1000 reais. ' +
                  'Os interessados devem estar matriculados na faculdade Y.'
                  ),
                  _buildNoticias("Título da notícia", 'Descrição... ' +
                  'Empresário X cadastrou uma demanda que pagará 1000 reais. ' +
                  'Os interessados devem estar matriculados na faculdade Y.'
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildNoticias("Título da notícia", 'Descrição... ' +
                  'Empresário X cadastrou uma demanda que pagará 1000 reais. ' +
                  'Os interessados devem estar matriculados na faculdade Y.'
                  ),
                  _buildNoticias("Título da notícia", 'Descrição... ' +
                  'Empresário X cadastrou uma demanda que pagará 1000 reais. ' +
                  'Os interessados devem estar matriculados na faculdade Y.'
                  ),
                  _buildNoticias("Título da notícia", 'Descrição... ' +
                  'Empresário X cadastrou uma demanda que pagará 1000 reais. ' +
                  'Os interessados devem estar matriculados na faculdade Y.'
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildNoticias("Título da notícia", 'Descrição... ' +
                  'Empresário X cadastrou uma demanda que pagará 1000 reais. ' +
                  'Os interessados devem estar matriculados na faculdade Y.'
                  ),
                  _buildNoticias("Título da notícia", 'Descrição... ' +
                  'Empresário X cadastrou uma demanda que pagará 1000 reais. ' +
                  'Os interessados devem estar matriculados na faculdade Y.'
                  ),
                  _buildNoticias("Título da notícia", 'Descrição... ' +
                  'Empresário X cadastrou uma demanda que pagará 1000 reais. ' +
                  'Os interessados devem estar matriculados na faculdade Y.'
                  ),
                  
                ],
              ),
            ),


          ],
        ),
    );
  }

  Widget _buildNoticias(titulo, descricao){    
    return Container(
      padding: EdgeInsets.all(8),
      width: 400,
      height: 200,
      decoration: BoxDecoration(
        color: AppColors.corFonte06,
        border: Border.all(
          color: AppColors.corFontePadrao,
        ),
      ),
      
      child: Column(
        children: [
          Text(
          titulo, 
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            color: AppColors.primaria03,
          ),
         
        ),

          Divider(),

          Text(
          descricao, 
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w900,
            color: AppColors.primaria04,
          ),
         
        ),

        ],
      ),

      
    );
  }

}