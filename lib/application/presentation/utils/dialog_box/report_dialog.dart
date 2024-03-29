// ignore_for_file: deprecated_member_use

import 'package:dating_app/application/business_logic/Features/features_bloc.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:dating_app/domain/modules/features/block_reson_model/Report_reson_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReportDialog extends StatefulWidget {
  final int? id;
  ReportDialog({required this.id});

  @override
  State<ReportDialog> createState() => _ReportDialogState();
}

class _ReportDialogState extends State<ReportDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Color.fromARGB(255, 28, 28, 28),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    SizedBox(height: 28),
                    Text(
                      "Are you sure you want to Report\n this user?",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white60,
                          letterSpacing: 0.4,
                          wordSpacing: 1),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 22),
                    kheight10,
                    ElevatedButton(
                      onPressed: () {
                        try {
                          {
                            setState(() {
                              ReportResonModel reportResonModel =
                                  ReportResonModel(
                                      message: "I did n't like this user");

                              context.read<FeaturesBloc>().add(
                                  FeaturesEvent.reportUsers(
                                      reportResonModel: reportResonModel,
                                      id: widget.id));
                            });
                          }
                        } catch (e) {
                          print('Error: $e');
                          // Handle any exceptions here
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        // Color.fromARGB(255, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                          height: 20,
                          width: 160,
                          child: Center(
                            child: Text(
                              'Report',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    kheight10,
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white38,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
