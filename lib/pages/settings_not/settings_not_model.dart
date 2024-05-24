import '/components/button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'settings_not_widget.dart' show SettingsNotWidget;
import 'package:flutter/material.dart';

class SettingsNotModel extends FlutterFlowModel<SettingsNotWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue1;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue2;
  // Model for Button component.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    buttonModel.dispose();
  }
}
