// import 'package:dating_app/application/presentation/utils/colors.dart';
// import 'package:dating_app/application/presentation/utils/constant.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class GenderSelectionPage extends StatefulWidget {
//   @override
//   _GenderSelectionPageState createState() => _GenderSelectionPageState();
// }

// class _GenderSelectionPageState extends State<GenderSelectionPage> {
//   int selectedGender = 1; // Default selected gender

//   final Map<int, String> genderMap = {
//     1: 'Male',
//     2: 'Female',
//     3: 'Others',
//   };

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kblack,
//       appBar: AppBar(
//         backgroundColor: kblack,
//         leading: Icon(CupertinoIcons.back),
//         // title: Text('Select Gender'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Select Gender',
//               style: TextStyle(
//                 color: kwhite,
//                 fontSize: 24,
//                 fontWeight: FontWeight.w800,
//                 letterSpacing: 1,
//               ),
//             ),
//             kheight20,
//             Container(
//               height: 200,
//               decoration: BackgroundBoxStyle(),
//               child: Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: ListView(
//                     children: genderMap.keys.map((int genderKey) {
//                       return ListTile(
//                         title: Text(
//                           genderMap[genderKey]!,
//                           style: TextStyle(color: kwhite, fontSize: 17),
//                         ),
//                         leading: Radio(
//                           activeColor: kred,
//                           value: genderKey,
//                           groupValue: selectedGender,
//                           onChanged: (int? value) {
//                             setState(() {
//                               selectedGender = value!;
//                             });
//                           },
//                         ),
//                         onTap: () {
//                           setState(() {
//                             selectedGender = genderKey;
//                           });
//                         },
//                       );
//                     }).toList(),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:dating_app/application/business_logic/Users/users_bloc.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:dating_app/application/presentation/utils/loading_indicator.dart/loading.dart';
import 'package:dating_app/domain/modules/edit_uder_preference/edit_uder_preference.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenderSelectionPage extends StatefulWidget {
  @override
  _GenderSelectionPageState createState() => _GenderSelectionPageState();
}

class _GenderSelectionPageState extends State<GenderSelectionPage> {
  @override
  void initState() {
    context.read<UsersBloc>().add(UsersEvent.getprefrence());

    selectedGender =
        context.read<UsersBloc>().state.getUserPreference!.data!.gender;
    super.initState();
  }

  int? selectedGender;
  bool isnewnumber = false;
  final Map<int, String> genderMap = {
    1: 'Male',
    2: 'Female',
    3: 'Others',
  };

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kblack,
      appBar: AppBar(
        backgroundColor: kblack,
        leading: IconButton(
          icon: Icon(CupertinoIcons.back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // title: Text('Select Gender'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: BlocBuilder<UsersBloc, UsersState>(
          builder: (context, state) {
            final userspref = context.read<UsersBloc>().state.getUserPreference;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Select Gender',
                  style: TextStyle(
                    color: kwhite,
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1,
                  ),
                ),
                kheight20,
                Container(
                  height: 200,
                  decoration: BackgroundBoxStyle(),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      children: genderMap.keys.map((int genderKey) {
                        return ListTile(
                          title: Text(
                            genderMap[genderKey]!,
                            style: TextStyle(color: kwhite, fontSize: 17),
                          ),
                          trailing: selectedGender == genderKey
                              ? Icon(
                                  Icons.check,
                                  color: kred,
                                )
                              : null,
                          onTap: () {
                            setState(() {
                              selectedGender = selectedGender == genderKey
                                  ? null
                                  : genderKey;
                              isnewnumber = true;

                              print(selectedGender);
                            });
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ),
                kheight20,
                ElevatedButton(
                  onPressed: () {
                    context.read<UsersBloc>().add(UsersEvent.editprefrence(
                        editUserPreference: EditUserPreference(
                            minAge: userspref?.data?.minAge ?? 0,
                            maxAge: userspref?.data?.maxAge ?? 0,
                            gender: selectedGender,
                            maxDistance: userspref?.data?.maxDistance ?? 0)));
                    if (state.prefrencedataHasError) {
                      LoadingAnimation(
                        width: 20,
                      );
                    } else if (state.editUserPreferenceResponse != null) {
                      Navigator.pop(context);
                      context.read<UsersBloc>().add(UsersEvent.getprefrence());
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        isnewnumber ? kred : Color.fromARGB(133, 51, 51, 51),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: screenSize.height * 0.045,
                      width: screenSize.width * 0.75,
                      child: Center(
                        child: Text(
                          'Save',
                          style: TextStyle(
                            fontSize: screenSize.width * 0.043,
                            color: kwhite,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
