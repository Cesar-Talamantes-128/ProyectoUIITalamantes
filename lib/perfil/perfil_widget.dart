import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../pagina1/pagina1_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PerfilWidget extends StatefulWidget {
  const PerfilWidget({Key key}) : super(key: key);

  @override
  _PerfilWidgetState createState() => _PerfilWidgetState();
}

class _PerfilWidgetState extends State<PerfilWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  bool switchListTileValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController(text: '[User Email]');
    textController2 = TextEditingController(text: '[User Name]');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 30,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Pagina1Widget(),
              ),
            );
          },
        ),
        title: Text(
          'Editar Perfil',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Image.network(
                              'https://raw.githubusercontent.com/Cesar-Talamantes-128/HagaloTalamantes6J/main/assets/IMG/CablesH.png',
                              width: MediaQuery.of(context).size.width,
                              height: 130,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 130,
                              decoration: BoxDecoration(
                                color: Color(0x77090F13),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 30,
                                    buttonSize: 48,
                                    icon: Icon(
                                      Icons.photo_camera,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                  Text(
                                    'Tu foto de portada',
                                    style: GoogleFonts.getFont(
                                      'DM Sans',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Container(
                      width: 80,
                      height: 80,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        'https://raw.githubusercontent.com/Cesar-Talamantes-128/HagaloImg/main/Foto%20de%20Eduardo.jpeg.jpeg',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Editar foto de perfil',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      textStyle: FlutterFlowTheme.of(context).bodyText1,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 8,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: textController1,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Email Address',
                            hintText: 'Enter a new email',
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: textController2,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Your Nam',
                            hintText: 'What do people call you...?',
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
                SwitchListTile.adaptive(
                  value: switchListTileValue ??= true,
                  onChanged: (newValue) =>
                      setState(() => switchListTileValue = newValue),
                  title: Text(
                    'Recibir Notificaciones',
                    style: FlutterFlowTheme.of(context).subtitle2,
                  ),
                  subtitle: Text(
                    'Sonido de notificaciones',
                    style: FlutterFlowTheme.of(context).bodyText2,
                  ),
                  tileColor: Colors.white,
                  activeColor: Color(0xFF4B39EF),
                  activeTrackColor: Color(0x8D4B39EF),
                  dense: true,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Pagina1Widget(),
                        ),
                      );
                    },
                    text: 'Guardar Cambios',
                    options: FFButtonOptions(
                      width: 230,
                      height: 50,
                      color: Color(0xFF3A25EB),
                      textStyle:
                          FlutterFlowTheme.of(context).bodyText2.override(
                                fontFamily: 'Lexend Deca',
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                      elevation: 3,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 8,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
