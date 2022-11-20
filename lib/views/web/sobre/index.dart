import 'package:flutter/material.dart';
import 'package:sinteu/core/app_images.dart';

class SobrePage extends StatefulWidget {
  const SobrePage({Key? key}) : super(key: key);

  @override
  _SobrePageState createState() => _SobrePageState();
}

class _SobrePageState extends State<SobrePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
        ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Center(
                  child: Container(
                    width: 400,
                    height: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImagens.logoEscrita)
                      )
                    ),
                  ),
                ),
              ),
            ),
            _titulo('NOME'),
            _texto('SINTEU - Sistema de Integração Tecnológica Empresa/Universidade'),
            _titulo('PROJETO EM UMA FRASE'),
            _texto('Conexão de empresários com as universidades de uma forma mais simples.'),
            _titulo('PROBLEMA'),
            _texto(
              'Muitos alunos e professores têm dificuldade de se conectar com empresas em busca de'    
              +'projetos científicos ou estágios. As empresas, por sua vez, também possuem dificuldades'
              +'em encontrar profissionais que melhor atendam suas demandas, visto que elas nem sempre '
              +'chegam a serem conhecidas. De acordo com uma pesquisa realizada pela equipe,'
              +'concluímos que a cada 10 pessoas do meio acadêmico, 8 já tiveram problemas para se'
              +'conectar com empresas, e muitas dessas empresas não possuem uma indicação válida'
              +'para contratar seus funcionários. Além disso, de acordo com dados do Ministério da'
              +'Educação, o Brasil tem cerca de 17 milhões de estudantes com possibilidade de estagiar,'
              +'mas apenas 1 milhão deles conseguem garantir uma vaga. Isso acaba dificultando a '
              +'inserção destas pessoas no mercado de trabalho.'
            ),
            _titulo('SOLUÇÃO'),
            _texto(
              'Uma plataforma online em que as empresas vão encontrar funcionários que possuem os'
              +'requisitos desejados com mais facilidade, além de poderem usar as soluções propostas'
              +'pelas instituições de ensino e que podem ser usadas em diversos segmentos de mercado,'
              +'como na resolução de demandas das empresas. Através dela, os membros das'
              +'universidades entrarão em contato mais facilmente com as empresas para trabalharem'
              +'juntos em pesquisas, projetos de conclusão de curso, estágios e afins.'
            ),
            
            SizedBox(height: 100, width: 90),

          ],
        ),
    );
  }

  Widget _titulo(texto){
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Center(
          child: Text(
            texto,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w900,
              color: Colors.black
            ),
          ),
        ),
      ),
    );
  }

  Widget _texto(texto){
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 150, right: 150, bottom: 15),
        child: Center(
          child: Text(
            texto,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
