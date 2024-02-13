import 'package:dating_app/application/business_logic/Profile/profile_bloc.dart';
import 'package:dating_app/application/presentation/screens/edit_profile_screen/widgets/choice_chip.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/loading_indicator.dart/loading.dart';
import 'package:dating_app/application/presentation/utils/show_snackbar/snackbar.dart';
import 'package:dating_app/domain/modules/profile/edit_profile_model/edit_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<int> selectedInterests = [];

class EditInterestScreen extends StatefulWidget {
  final List<int> initialInterests; // Change type to List<int>?
  const EditInterestScreen({Key? key, required this.initialInterests})
      : super(key: key);

  @override
  _InterestScreenState createState() => _InterestScreenState();
}

class _InterestScreenState extends State<EditInterestScreen> {
  // Change type to List<int>
  Map<String, int> interestMapping = {
    'reading': 1,
    'art and creativity': 2,
    'fitness and exercise': 3,
    'music': 4,
    'pets': 5,
    'movies and tv shows': 6,
    'travel': 7,
    'dance': 8,
    'gardening': 9,
    'cooking and food': 10,
    'photography': 11,
    'technology': 12,
    'games': 13,
  }; // Change value type to int

  void toggleInterest(int interest) {
    setState(() {
      if (selectedInterests.contains(interest)) {
        selectedInterests.remove(interest);
      } else {
        if (selectedInterests.length < 5) {
          selectedInterests.add(interest);
        }
      }
    });
  }

  @override
  void initState() {
    super.initState();
    print(
        "---------------------iniatial interests${widget.initialInterests.toString()}");
    selectedInterests = widget.initialInterests;
  }

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        // title: Text(
        //   'Edit Interests',
        //   style: TextStyle(color: Colors.white, letterSpacing: 1, fontSize: 21),
        // ),
      ),
      body: Padding(
        padding: EdgeInsets.all(screenSize.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Edit Interests',
              style: TextStyle(
                color: kwhite,
                fontSize: 24,
                fontWeight: FontWeight.w800,
                letterSpacing: 1,
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.01,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Interests make it easier to find who shares your\ninterests. Add more or Edit your current intersts to your profile to make better connections',
                style: TextStyle(color: Colors.white60, letterSpacing: 0.3),
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
            Row(
              children: [
                ChoiceChipss(
                  chipLabel: 'Reading',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains(1),
                  value: 1,
                ),
                Spacer(),
                ChoiceChipss(
                  chipLabel: 'Art and creativity',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains(2),
                  value: 2,
                ),
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.01,
            ),
            Row(
              children: [
                ChoiceChipss(
                  chipLabel: 'Fitness and Execise',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains(3),
                  value: 3,
                ),
                Spacer(),
                ChoiceChipss(
                  chipLabel: 'Music',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains(4),
                  value: 4,
                ),
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.01,
            ),
            Row(
              children: [
                ChoiceChipss(
                  chipLabel: 'Travel',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains(7),
                  value: 7,
                ),
                Spacer(),
                ChoiceChipss(
                  chipLabel: 'Movies and TV shows',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains(6),
                  value: 6,
                ),
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.01,
            ),
            Row(
              children: [
                ChoiceChipss(
                  chipLabel: 'Pet',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains(5),
                  value: 5,
                ),
                Spacer(),
                ChoiceChipss(
                  chipLabel: 'Dance',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains(8),
                  value: 8,
                ),
                Spacer(),
                ChoiceChipss(
                  chipLabel: 'Gardening',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains(9),
                  value: 9,
                ),
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.01,
            ),
            Row(
              children: [
                ChoiceChipss(
                  chipLabel: 'Cooking and Food',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains(10),
                  value: 10,
                ),
                Spacer(),
                ChoiceChipss(
                  chipLabel: 'Games',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains(13),
                  value: 13,
                ),
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.01,
            ),
            Row(
              children: [
                ChoiceChipss(
                  chipLabel: 'Photography',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains(11),
                  value: 11,
                ),
                Spacer(),
                ChoiceChipss(
                  chipLabel: 'Technology',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains(12),
                  value: 12,
                ),
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.25,
            ),
            BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                return ElevatedButton(
                  onPressed: () async {
                    if (selectedInterests.length >= 3) {
                      print(
                          "------------new interest${selectedInterests.toString()}");
                      EditProfileModel editedprofile = EditProfileModel(
                          bio:
                              state.profileDetailsModel!.data!.userDetails!.bio,
                          city: state
                              .profileDetailsModel!.data!.userDetails!.city,
                          country: state
                              .profileDetailsModel!.data!.userDetails!.country,
                          name: state
                              .profileDetailsModel!.data!.userDetails!.name,
                          phNo: state
                              .profileDetailsModel!.data!.userDetails!.phNo,
                          interests: selectedInterests);
                      print(editedprofile.bio.toString());
                      print(editedprofile.city.toString());
                      print(editedprofile.country.toString());
                      print(editedprofile.name.toString());
                      print(editedprofile.phNo.toString());
                      print(editedprofile.interests.toString());
                      context.read<ProfileBloc>().add(
                          ProfileEvent.editprofileDetails(
                              editProfileModel: editedprofile));

                      if (state.dataIsLoading) {
                        LoadingAnimation(
                          width: 20,
                        );
                      } else {
                        Navigator.pop(context);
                      }
                    } else {
                      showSnack(
                        context: context,
                        message: 'Select at least 3 interests !',
                        color: Colors.transparent,
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: kred,
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
                          'Save (${selectedInterests.length}/5 selected)',
                          style: TextStyle(
                            fontSize: screenSize.width * 0.04,
                            color: kwhite,
                            //fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
