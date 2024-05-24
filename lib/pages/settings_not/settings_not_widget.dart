import '/components/button_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'settings_not_model.dart';
export 'settings_not_model.dart';

class SettingsNotWidget extends StatefulWidget {
  const SettingsNotWidget({super.key});

  @override
  State<SettingsNotWidget> createState() => _SettingsNotWidgetState();
}

class _SettingsNotWidgetState extends State<SettingsNotWidget> {
  late SettingsNotModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsNotModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'Settings',
          style: FlutterFlowTheme.of(context).headlineSmall.override(
                fontFamily: 'Outfit',
                color: Colors.white,
                letterSpacing: 0.0,
              ),
        ),
        actions: const [],
        centerTitle: true,
        elevation: 2.0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
              child: Text(
                'Choose your notification preferences below.',
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
            child: SwitchListTile.adaptive(
              value: _model.switchListTileValue1 ??= true,
              onChanged: (newValue) async {
                setState(() => _model.switchListTileValue1 = newValue);
              },
              title: Text(
                'Push Notifications',
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                      lineHeight: 2.0,
                    ),
              ),
              subtitle: Text(
                'Receive Push notifications from \nthis application.',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: const Color(0xFF8B97A2),
                      letterSpacing: 0.0,
                    ),
              ),
              tileColor: FlutterFlowTheme.of(context).secondaryBackground,
              activeColor: const Color(0xFF2F77B8),
              activeTrackColor: const Color(0x7F2F77B8),
              dense: false,
              controlAffinity: ListTileControlAffinity.trailing,
              contentPadding:
                  const EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: SwitchListTile.adaptive(
              value: _model.switchListTileValue2 ??= true,
              onChanged: (newValue) async {
                setState(() => _model.switchListTileValue2 = newValue);
              },
              title: Text(
                'Email Notifications',
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                      lineHeight: 2.0,
                    ),
              ),
              subtitle: Text(
                'Receive email notifications from Motion Horizons about app features and product news.',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: const Color(0xFF8B97A2),
                      letterSpacing: 0.0,
                    ),
              ),
              tileColor: FlutterFlowTheme.of(context).secondaryBackground,
              activeColor: FlutterFlowTheme.of(context).primary,
              activeTrackColor: const Color(0x7F2F77B8),
              dense: false,
              controlAffinity: ListTileControlAffinity.trailing,
              contentPadding:
                  const EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
            ),
          ),
          wrapWithModel(
            model: _model.buttonModel,
            updateCallback: () => setState(() {}),
            child: const ButtonWidget(),
          ),
        ],
      ),
    );
  }
}
