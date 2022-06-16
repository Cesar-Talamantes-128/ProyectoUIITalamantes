import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../pagina1_2/pagina12_widget.dart';
import '../pagina_principal/pagina_principal_widget.dart';
import '../perfil/perfil_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pagina1Widget extends StatefulWidget {
  const Pagina1Widget({Key key}) : super(key: key);

  @override
  _Pagina1WidgetState createState() => _Pagina1WidgetState();
}

class _Pagina1WidgetState extends State<Pagina1Widget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF1C66E9),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back,
            color: FlutterFlowTheme.of(context).primaryBtnText,
            size: 30,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PaginaPrincipalWidget(),
              ),
            );
          },
        ),
        title: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: BoxDecoration(
            color: Color(0x00EEEEEE),
          ),
          child: Image.network(
            'https://raw.githubusercontent.com/Cesar-Talamantes-128/HagaloTalamantes6J/main/hagalo-logo-2021.png',
            width: 100,
            height: 100,
            fit: BoxFit.contain,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PerfilWidget(),
                  ),
                );
              },
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Color(0xFF232DE2),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Color(0x27000000),
                        offset: Offset(0, 3),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                    child: TextFormField(
                      controller: textController,
                      onChanged: (_) => EasyDebounce.debounce(
                        'textController',
                        Duration(milliseconds: 2000),
                        () => setState(() {}),
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Busca lo que necesitas...',
                        labelStyle: FlutterFlowTheme.of(context).bodyText2,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 110,
                  decoration: BoxDecoration(),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
                        child: Container(
                          width: 120,
                          height: 190,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x230E151B),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 4),
                                  child: Icon(
                                    Icons.shopping_bag_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 44,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 4, 0, 0),
                                  child: Text(
                                    'Objetos',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 8, 0, 8),
                        child: Container(
                          width: 120,
                          height: 190,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x230E151B),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 4),
                                  child: InkWell(
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              Pagina12Widget(),
                                        ),
                                      );
                                    },
                                    child: Icon(
                                      Icons.crop,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 44,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 4, 0, 0),
                                  child: Text(
                                    'Materiales',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 8, 0, 8),
                        child: Container(
                          width: 120,
                          height: 190,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x230E151B),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 8, 4),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 4),
                                  child: Icon(
                                    Icons.public_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 44,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 4, 0, 0),
                                  child: Text(
                                    'Ubicacion',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                        child: Text(
                          'Categories',
                          style: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                        ),
                      ),
                      Text(
                        'See All',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 44),
                  child: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      InkWell(
                        onTap: () async {
                          await launchURL(
                              'https://www.pemex.com/negocio/gasolineras/nuestros-productos/Paginas/pemex-premium.aspx');
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: 190,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x230E151B),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () async {
                                    await launchURL(
                                        'https://hagalo.mx/2799-electricidad-e-iluminacion');
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      'https://raw.githubusercontent.com/Cesar-Talamantes-128/HagaloTalamantes6J/main/assets/IMG/CablesH.png',
                                      width: double.infinity,
                                      height: 115,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 12, 0, 0),
                                  child: Text(
                                    'Electrico',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle1,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 4, 0, 0),
                                  child: Text(
                                    'Cable',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          await launchURL(
                              'https://www.pemex.com/negocio/gasolineras/nuestros-productos/Paginas/pemex-magna.aspx');
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: 190,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x230E151B),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () async {
                                    await launchURL(
                                        'https://hagalo.mx/2899-pinturas');
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      'https://raw.githubusercontent.com/Cesar-Talamantes-128/HagaloTalamantes6J/main/assets/IMG/PinturasH.png',
                                      width: double.infinity,
                                      height: 115,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 12, 0, 0),
                                  child: Text(
                                    'Pinturas',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle1,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 4, 0, 0),
                                  child: Text(
                                    'Colores',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: 190,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x230E151B),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                          child: InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://www.pemex.com/negocio/gasolineras/nuestros-productos/Paginas/pemex-diesel.aspx');
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () async {
                                    await launchURL(
                                        'https://hagalo.mx/tinacos/2714-tinaco-rotoplas-1100l-con-accesorios.html');
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      'https://raw.githubusercontent.com/Cesar-Talamantes-128/HagaloTalamantes6J/main/assets/IMG/rotoplasH.png',
                                      width: double.infinity,
                                      height: 115,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 12, 0, 0),
                                  child: Text(
                                    'Rotoplas',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle1,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 4, 0, 0),
                                  child: Text(
                                    'Agua',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: 190,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x230E151B),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'https://raw.githubusercontent.com/Cesar-Talamantes-128/HagaloImg/main/Taladro.png',
                                  width: double.infinity,
                                  height: 115,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 12, 0, 0),
                                child: Text(
                                  'Taladros',
                                  style: FlutterFlowTheme.of(context).subtitle1,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                                child: Text(
                                  'Electrico',
                                  style: FlutterFlowTheme.of(context).bodyText2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: 190,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x230E151B),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                          child: InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://www.pemex.com/negocio/gasolineras/nuestros-productos/Paginas/diesel-marino.aspx');
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    'https://raw.githubusercontent.com/Cesar-Talamantes-128/HagaloImg/main/Sacate.png',
                                    width: double.infinity,
                                    height: 115,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 12, 0, 0),
                                  child: Text(
                                    'Vegetacion ',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle1,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 4, 0, 0),
                                  child: Text(
                                    'Pasto',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: 190,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x230E151B),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'https://raw.githubusercontent.com/Cesar-Talamantes-128/HagaloImg/main/BLOCK.png',
                                  width: double.infinity,
                                  height: 115,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 12, 0, 0),
                                child: Text(
                                  'Construccion',
                                  style: FlutterFlowTheme.of(context).subtitle1,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                                child: Text(
                                  'Block',
                                  style: FlutterFlowTheme.of(context).bodyText2,
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
          ),
        ),
      ),
    );
  }
}
