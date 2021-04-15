import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationWidget extends StatefulWidget {
  NotificationWidget({Key key}) : super(key: key);

  @override
  _NotificationWidgetState createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xFF263238),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                    child: Text(
                      'Notification',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(2, 20, 0, 0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.black,
                  size: 24,
                ),
                title: Text(
                  'Jeewan Beema Policy',
                  style: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Quicksand',
                    color: Color(0xFF31ACCC),
                  ),
                ),
                subtitle: Text(
                  '5 mins before',
                  style: FlutterFlowTheme.subtitle1.override(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                trailing: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 24,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(2, 2, 0, 0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.black,
                  size: 24,
                ),
                title: Text(
                  'Jeewan Beema Policy',
                  style: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Quicksand',
                    color: Color(0xFF31ACCC),
                  ),
                ),
                subtitle: Text(
                  '5 mins before',
                  style: FlutterFlowTheme.subtitle1.override(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                trailing: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 24,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(2, 2, 0, 0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.black,
                  size: 24,
                ),
                title: Text(
                  'Jeewan Beema Policy',
                  style: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Quicksand',
                    color: Color(0xFF31ACCC),
                  ),
                ),
                subtitle: Text(
                  '5 mins before',
                  style: FlutterFlowTheme.subtitle1.override(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                trailing: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 24,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(2, 2, 0, 0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.black,
                  size: 24,
                ),
                title: Text(
                  'Jeewan Beema Policy',
                  style: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Quicksand',
                    color: Color(0xFF31ACCC),
                  ),
                ),
                subtitle: Text(
                  '5 mins before',
                  style: FlutterFlowTheme.subtitle1.override(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                trailing: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 24,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(2, 2, 0, 0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.black,
                  size: 24,
                ),
                title: Text(
                  'Jeewan Beema Policy',
                  style: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Quicksand',
                    color: Color(0xFF31ACCC),
                  ),
                ),
                subtitle: Text(
                  '5 mins before',
                  style: FlutterFlowTheme.subtitle1.override(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                trailing: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 24,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(2, 2, 0, 0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.black,
                  size: 24,
                ),
                title: Text(
                  'Jeewan Beema Policy',
                  style: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Quicksand',
                    color: Color(0xFF31ACCC),
                  ),
                ),
                subtitle: Text(
                  '5 mins before',
                  style: FlutterFlowTheme.subtitle1.override(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                trailing: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 24,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
            )
          ],
        ),
      ),
    );
  }
}
