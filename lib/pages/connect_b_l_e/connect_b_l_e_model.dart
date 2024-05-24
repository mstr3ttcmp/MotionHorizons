import '/flutter_flow/flutter_flow_util.dart';
import 'connect_b_l_e_widget.dart' show ConnectBLEWidget;
import 'package:flutter/material.dart';

class ConnectBLEModel extends FlutterFlowModel<ConnectBLEWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
