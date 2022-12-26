// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:sinteu/core/app_colors.dart';
import 'package:sinteu/core/app_images.dart';
import 'package:sinteu/views/web/buscas/index.dart';
import 'package:sinteu/views/web/buscas/main.dart';
import 'package:sinteu/views/web/cadastro/pages/form_orientador.dart';
import 'package:sinteu/views/web/cadastros/index.dart';
import 'package:sinteu/views/web/contato/index.dart';
import 'package:sinteu/views/web/grupos/index.dart';
import 'package:sinteu/views/web/home/controllers/home_controller.dart';
import 'package:sinteu/views/web/login/controllers/login_controller.dart';
import 'package:sinteu/views/web/noticias/index.dart';
import 'package:sinteu/views/web/notificacoes/index.dart';
import 'package:sinteu/views/web/pagina_inicial/index.dart';
import 'package:sinteu/views/web/perfil/index.dart';
import 'package:sinteu/views/web/sobre/index.dart';
import 'package:sinteu/views/web/vitrine/index.dart';

import '../cadastro/models/usuario_model.dart';

class HomePage extends StatefulWidget {
  final UsuarioModel? usuario;
  const HomePage({Key? key, required this.usuario}) : super(key: key);

  @override
  // _HomePageState createState() => _HomePageState();
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controllers = HomeController();

  var menuAtivo = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  final _pageController = new PageController();
  var _paginaAtual = 0;
  final _logado = LoginController();
  bool logado = false;

  @override
  void initState() {
    super.initState();
    _controllers.carregaDados();
    if(_logado.logado == false){ 
      logado = false;
    }
    else if (_logado.logado == true){
      logado = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar:(logado==false)? PreferredSize(
        preferredSize: Size(screenSize.width, 110),
        child: Column(
          children: [
            _buildAreaLogo(screenSize.width),
          ],
        ),
      ):null,
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          PaginaInicial(), //0
          SobrePage(),//1
          NoticiasPage(), //2
          GruposPage(),//3
          VitrinePage(),//4
          NotificacoesPage(),//5
          ContatoPage(),//6
          CadastrosPage(),//7
          BuscasPage(),//8
          Buscar(),
          Perfil(),      
          ValueListenableBuilder(
            valueListenable: _controllers.usuarioDataSourceNotifier,
            builder: (context, value, child) {
              return ListView.builder(
                itemCount: _controllers.usuarioDataSource.length,
                itemBuilder: (context, indice) {
                    final usuario = 
                      _controllers.usuarioDataSource[indice];
                    return ListTile(
                      title: Text(usuario.nome ?? 'Sem Nome'),
                      subtitle: Text(usuario.email ?? 'Sem Email'),
                      trailing: SizedBox(
                        width: 100,
                        child: Row(
                          children: [
                            IconButton(onPressed: () async {
                              await Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Orientador(current: usuario)
                              ));

                            _controllers.carregaDados();
                            }
                              , icon: const Icon(Icons.edit, color: Colors.green,)),
                            IconButton(onPressed: (){
                              _controllers.excluirOnPressed(usuario,
                              () { 
                                _controllers.carregaDados();
                              }, () => print('Deu ruim')
                              );
                            }
                            , icon: const Icon(Icons.delete, color: Colors.red,))
                          ],
                        ),
                      ),
                    );
                  }
                );
            },
          ),    
        ],
      ),
    );
      
  }

  Widget _buildAreaLogo(largura) {
    return Container(
      color: AppColors.primaria02,
      height: 110,
      width: largura,
      child: Stack(
        children: [ 
          Container(
            child: 
              Image.asset('../assets/images/funndo.jpg',  fit: BoxFit.cover),
              width: largura,
          ),
          Row(  
          mainAxisSize: MainAxisSize.max,
          children: [            
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 1, 0 ),
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AppImagens.logo))),
              ),
            ),
            
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround, 
                children: [
              _buildItemMenu(
                  Icons.home, 'Home', 0, () => _pageController.jumpToPage(0)),
              _buildItemMenu(
                  Icons.add, 'Cadastros', 1, () => _pageController.jumpToPage(7)),
              _buildItemMenu(Icons.notification_important, 'Noticias', 3,
                  () => _pageController.jumpToPage(2)),
              _buildItemMenu(
              Icons.search, 'Buscas', 2, () => _pageController.jumpToPage(8)),
              _buildItemMenu(
                  Icons.group, 'Grupos', 4, () => _pageController.jumpToPage(3)),
              _buildItemMenu(Icons.amp_stories_rounded , 'Vitrine', 5,
                  () => _pageController.jumpToPage(4)),
              _buildItemMenu(Icons.notifications, 'Notificações', 6,
                  () => _pageController.jumpToPage(5)),
              _buildItemMenu(Icons.contact_page, 'Contato', 7,
                  () => _pageController.jumpToPage(6)),
              _buildItemMenu(
                  Icons.info, 'Sobre', 8, () => _pageController.jumpToPage(1)),
                      ]),
            ),
            
               Container(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 35, 60, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: (){ 
                            _pageController.jumpToPage(10);
                          },
                          child: Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                image: AssetImage(AppImagens.perfil)
                              )               
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            
          ],
        ),],
      ),
    );
  }

  Widget _buildItemMenu(icone, texto, indice, VoidCallback onClick) {
    return Container(
        
        child: InkWell(
          child: Row(
            children: [
              Icon(icone,
                  color: menuAtivo[indice]
                      ? AppColors.corFonte04
                      : AppColors.corFonte02),
              SizedBox(width: 5),
              Text(texto,
                  style: menuAtivo[indice]
                      ? TextStyle(color: AppColors.corFonte04)
                      : TextStyle(color: AppColors.corFonte02))
            ],
          ),
          onHover: (value) {
            setState(() {
              menuAtivo[indice] = value;
            });
          },
          onTap: () {
            onClick();
          },
        ),
      
    );
  }

  /* Widget _buildRodape(){
      return Container(
          height: 50,
          color: AppColors.primaria02,
          child: Row(

          children: [

            Padding(padding:  const EdgeInsets.fromLTRB(25, 15, 10, 0 ),
            child: Text(
                '\u00a9 SINTEU - 2021', 
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.primaria01,
                  fontWeight: FontWeight.w900
                )
            ),),
             _buildItemMenu(
              Icons.search, 'Buscas', 2, () => _pageController.jumpToPage(8)),

            Padding(
            padding: const EdgeInsets.fromLTRB(25, 15, 10, 0 ),
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppImagens.logo))),
            ),
          ),
            ],
          ),
      );
  } */

}
