import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../iniciodesesion/iniciodesesion_widget.dart';
import '../pagina1/pagina1_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PaginaPrincipalWidget extends StatefulWidget {
  const PaginaPrincipalWidget({Key key}) : super(key: key);

  @override
  _PaginaPrincipalWidgetState createState() => _PaginaPrincipalWidgetState();
}

class _PaginaPrincipalWidgetState extends State<PaginaPrincipalWidget> {
  PageController pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF313AE1),
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(65, 0, 0, 0),
          child: Text(
            'Hagalo Talamantes',
            style: FlutterFlowTheme.of(context).title2.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.of(context).lineColor,
                  fontSize: 22,
                ),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 100),
                        child: PageView(
                          controller: pageViewController ??=
                              PageController(initialPage: 0),
                          scrollDirection: Axis.horizontal,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(55),
                              child: Image.network(
                                'https://raw.githubusercontent.com/Cesar-Talamantes-128/HagaloTalamantes6J/main/assets/IMG/logoH.png',
                                width: 55,
                                height: 55,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Image.network(
                              'https://github.com/Cesar-Talamantes-128/HagaloTalamantes6J/blob/main/assets/IMG/Gente2H.png?raw=true',
                              width: 100,
                              height: 100,
                              fit: BoxFit.contain,
                            ),
                            Image.network(
                              'https://github.com/Cesar-Talamantes-128/HagaloTalamantes6J/blob/main/assets/IMG/GenteH.png?raw=true',
                              width: 250,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            Image.network(
                              'https://github.com/Cesar-Talamantes-128/HagaloTalamantes6J/blob/main/assets/IMG/HFuera.png?raw=true',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            Image.network(
                              'https://github.com/Cesar-Talamantes-128/HagaloTalamantes6J/blob/main/assets/IMG/imagesCartelH.png?raw=true',
                              width: 100,
                              height: 100,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 1),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 100),
                          child: SmoothPageIndicator(
                            controller: pageViewController ??=
                                PageController(initialPage: 0),
                            count: 5,
                            axisDirection: Axis.horizontal,
                            onDotClicked: (i) {
                              pageViewController.animateToPage(
                                i,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            effect: ExpandingDotsEffect(
                              expansionFactor: 15,
                              spacing: 5,
                              radius: 22,
                              dotWidth: 9,
                              dotHeight: 10,
                              dotColor: Color(0xFF9E9E9E),
                              activeDotColor: Color(0xFF3F51B5),
                              paintStyle: PaintingStyle.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(125, 0, 0, 8),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => IniciodesesionWidget(),
                              ),
                            );
                          },
                          text: 'Iniciar sesion',
                          options: FFButtonOptions(
                            width: 150,
                            height: 40,
                            color: Color(0xFF232DE2),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 5,
                            ),
                            borderRadius: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(125, 0, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Pagina1Widget(),
                              ),
                            );
                          },
                          text: 'Sin Cuenta',
                          options: FFButtonOptions(
                            width: 150,
                            height: 40,
                            color: Color(0xFF454EE0),
                            textStyle:
                                FlutterFlowTheme.of(context).title2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 5,
                            ),
                            borderRadius: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
