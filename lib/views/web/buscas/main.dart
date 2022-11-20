import 'package:flutter/material.dart';
import 'package:sinteu/core/app_colors.dart';
import 'package:sinteu/core/app_images.dart';

class Buscar extends StatefulWidget {
  const Buscar({ Key? key }) : super(key: key);

  @override
  _BuscarState createState() => _BuscarState();
}

class _BuscarState extends State<Buscar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [

          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
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
            
          _buildprojeto('Nome do projeto', AppImagens.projetos, 'Uma breve descrição do projeto em questão', 'palavras-chaves'),
          _buildprojeto('Nome do projeto', AppImagens.projetos, 'Uma breve descrição do projeto em questão', 'palavras-chaves')
        ],
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