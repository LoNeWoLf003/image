import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Widget bottom_sheet_widget(snapshot , index , context){
  return Container(
    height: 800,
    child: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 8,
                right: 8,
                bottom: 28,
                top: 18),

          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 8,
                right: 8,
                bottom: 28,
                top: 8),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.all(
                      Radius.circular(
                          20))),
              child: Column(
                children: [
                  Align(
                    alignment:
                    Alignment.centerLeft,
                    child: Padding(
                      padding:
                      const EdgeInsets
                          .all(8.0),
                      child: Text(
                        "Add more Instructions",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight:
                            FontWeight
                                .bold),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Center(
                          child: Padding(
                              padding:
                              EdgeInsets
                                  .only(left: 8,right: 8),
                              child: InkWell(
                                  onTap: () {
                                    AwesomeDialog(
                                      context:
                                      context,                              
                                      body: Center(
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.all(8.0),
                                            child:
                                            TextFormField(),
                                          )),
                                      title:
                                      'Enter Instructions',
                                      btnOkOnPress:
                                          () {},
                                    )..show();
                                  },
                                  child: Text(
                                    "Click Here to add Instructions",
                                    style: TextStyle(
                                        decoration:
                                        TextDecoration.underline),
                                  ))))),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}