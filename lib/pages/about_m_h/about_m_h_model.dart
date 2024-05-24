import '/flutter_flow/flutter_flow_util.dart';
import 'about_m_h_widget.dart' show AboutMHWidget;
import 'package:flutter/material.dart';

class AboutMHModel extends FlutterFlowModel<AboutMHWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
