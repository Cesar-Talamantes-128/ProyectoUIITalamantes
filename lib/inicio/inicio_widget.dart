import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../pagina1/pagina1_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InicioWidget extends StatefulWidget {
  const InicioWidget({Key key}) : super(key: key);

  @override
  _InicioWidgetState createState() => _InicioWidgetState();
}

class _InicioWidgetState extends State<InicioWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.network(
                'https://github.com/Cesar-Talamantes-128/HagaloImg/blob/main/paredLadrillo.png.jpg?raw=true',
              ).image,
            ),
            gradient: LinearGradient(
              colors: [Color(0xFF4B39EF), Color(0xFFEE8B60)],
              stops: [0, 1],
              begin: AlignmentDirectional(1, -1),
              end: AlignmentDirectional(-1, 1),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 200, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://raw.githubusercontent.com/Cesar-Talamantes-128/HagaloTalamantes6J/main/assets/IMG/logoH.png',
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.height * 0.3,
                      fit: BoxFit.contain,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                      child: Text(
                        'Te damos la Bienvenida a Hagalo',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).title1.override(
                              fontFamily: 'Lexend Deca',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 120),
                      child: Text(
                        'Hágalo Home Center, compra en línea. Con 9 sucursales en el país y más de 70 años en servicio, puedes tener la confianza de que somos tu mejor opción.',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Lexend Deca',
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ],
                ),
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
                          text: '',
                          icon: Icon(
                            Icons.arrow_right_alt_sharp,
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            size: 45,
                          ),
                          options: FFButtonOptions(
                            width: 130,
                            height: 40,
                            color: Color(0xFF454EE0),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                            borderSide: BorderSide(
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              width: 1,
                            ),
                            borderRadius: 12,
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
