import 'package:flutter/material.dart';
import 'package:sinteu/core/app_colors.dart';
import 'package:sinteu/views/web/components/combobox/index.dart';
import 'package:sinteu/views/web/login/pages/index.dart';

class CadastrosPage extends StatefulWidget {
  const CadastrosPage({ Key? key }) : super(key: key);

  @override
  _CadastrosPageState createState() => _CadastrosPageState();
}

class _CadastrosPageState extends State<CadastrosPage> {
  @override
  Widget build(BuildContext context) {
    var atividadeController = new TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [          
          //texto cadastre sua demanda
          Padding(
              padding: const EdgeInsets.fromLTRB(290, 50, 290, 0),
              child: Container(
                width: MediaQuery.of(context).size.width-50,
                height: MediaQuery.of(context).size.height/6,
                color: AppColors.primaria01,
                child: Center(
                  child: Text(
                    'Cadastro de demandas',
                    style: TextStyle(
                      fontSize: 45,
                      color: AppColors.corFonte02,
                    ),
                  ),
                ),
              ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(290, 0, 290, 0),
            child: Container(
              child: 
                ComboBox(                  
                  controller: atividadeController,
                  aoSelecionar: (value) {
                    print(atividadeController.text);
                  },
                  
                  hint: 'O que você deseja cadastrar?',
                  items: [
                    DropdowItem(key: '1', value: 'Demandas de Empresas'),
                    DropdowItem(key: '2', value: 'Projetos em Desenvolvimento'),
                    DropdowItem(key: '3', value: 'Editais de Extensão'),
                    DropdowItem(key: '4', value: 'Oportunidades de Emprego'),
                    DropdowItem(key: '5', value: 'Oportunidades de Estágio'),
                    DropdowItem(key: '6', value: 'Oficina de Ideias'),
                    DropdowItem(key: '7', value: 'Oferta de Serviços'),
                    DropdowItem(key: '8', value: 'Todos'),
                  ],
                  
                ),                 
              color: Color.fromARGB(255, 247, 246, 224),
            ), 
            
          ),
          

          Padding(
            padding: const EdgeInsets.fromLTRB(290, 0, 290, 0),
            child: Container(
            height: MediaQuery.of(context).size.height/9,
            alignment: Alignment.centerLeft,
            child: 
              TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Ex. Estágio em, Projeto em...',
                hintStyle: TextStyle(color: Colors.grey),
                label: Text('Nome do Cadastro:'),
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
              ),
              style: 
              TextStyle(
                color: AppColors.corFontePadrao,
                fontWeight: FontWeight.w800,
                fontSize: 20
              ),
            ),               
            color: Color.fromARGB(255, 247, 246, 224),
          ),
        ),

        Padding(
            padding: const EdgeInsets.fromLTRB(290, 0, 290, 0),
            child: Container(
            height: MediaQuery.of(context).size.height/9,
            alignment: Alignment.centerLeft,
            child: 
              TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                label: Text('Tipo do Projeto:'),
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
              ),
              style: 
              TextStyle(
                color: AppColors.corFontePadrao,
                fontWeight: FontWeight.w800,
                fontSize: 20
              ),
            ),
            color: Color.fromARGB(255, 247, 246, 224),
          ),
        ),
       
        Padding(
            padding: const EdgeInsets.fromLTRB(290, 0, 290, 0),
            child: Container(
            height: MediaQuery.of(context).size.height/9,
            alignment: Alignment.centerLeft,
            child: 
              TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Ex. Estágio integrado...',
                hintStyle: TextStyle(color: Colors.grey),
                label: Text('Descrição:'),
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
              ),
              style: 
              TextStyle(
                color: AppColors.corFontePadrao,
                fontWeight: FontWeight.w800,
                fontSize: 20
              ),
            ),
            color: Color.fromARGB(255, 247, 246, 224),
          ),
        ),

        Padding(
            padding: const EdgeInsets.fromLTRB(290, 0, 290, 0),
            child: Container(
            height: MediaQuery.of(context).size.height/9,
            alignment: Alignment.centerLeft,
            child: 
              TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Ex. Divinópolis - MG, R. 123...',
                hintStyle: TextStyle(color: Colors.grey),
                label: Text('Local:'),
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
              ),
              style: 
              TextStyle(
                color: AppColors.corFontePadrao,
                fontWeight: FontWeight.w800,
                fontSize: 20
              ),
            ),
            color: Color.fromARGB(255, 247, 246, 224),
          ),
        ),

        Padding(
            padding: const EdgeInsets.fromLTRB(290, 0, 290, 0),
            child: Container(
            height: MediaQuery.of(context).size.height/10,
            alignment: Alignment.centerLeft,
            child: 
              TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Ex. Informática',
                hintStyle: TextStyle(color: Colors.grey),
                label: Text('Área do Conhecimento:'),
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
              ),
              style: 
              TextStyle(
                color: AppColors.corFontePadrao,
                fontWeight: FontWeight.w800,
                fontSize: 20
              ),
            ),
            color: Color.fromARGB(255, 247, 246, 224),
          ),
        ),

        Padding(
            padding: const EdgeInsets.fromLTRB(290, 0, 290, 0),
            child: Container(
            height: MediaQuery.of(context).size.height/10,
            alignment: Alignment.centerLeft,
            child: 
              TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Ex. Estágio, Projeto...',
                hintStyle: TextStyle(color: Colors.grey),
                label: Text('Palavras-chave:'),
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
              ),
              style: 
              TextStyle(
                color: AppColors.corFontePadrao,
                fontWeight: FontWeight.w800,
                fontSize: 20
              ),
            ),
            color: Color.fromARGB(255, 247, 246, 224),
          ),
        ),          
         

          Align(
            alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(300, 40, 300, 40),
                  child: Container(
                    width: 350,
                    height: 50,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => LoginPage()
                          )
                        );
                      },
                        child: Text(
                          'Cadastrar',
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

        ],
      ),
    );
  }



}