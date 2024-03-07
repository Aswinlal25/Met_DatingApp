import 'package:dating_app/application/business_logic/Profile/profile_bloc.dart';
import 'package:dating_app/application/presentation/screens/edit_profile_screen/edited_profile.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserPictureAvatar extends StatelessWidget {
  const UserPictureAvatar({
    super.key,
    required this.edit_sharp,
  });

  final IconData edit_sharp;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                //color: Color.fromARGB(255, 244, 67, 54),
                gradient: LinearGradient(
                  colors: [
                    const Color.fromARGB(255, 244, 67, 54),
                    Color.fromARGB(90, 244, 67, 54),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: CircleAvatar(
                backgroundColor:
                    Colors.transparent, // Make the CircleAvatar transparent
                radius: 88,
                // Add child or background image if needed
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              left: 3,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.black,

                  radius: 85,
                  // Add child or background image if needed
                ),
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              left: 6,
              child: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 40, 40, 40),
                radius: 82,
                child: ClipOval(
                  child: FadeInImage(
                    placeholder: AssetImage(
                        'assets/images/palce_holder_images/PlaceHolder.jpg'),
                    image: state.profileDetailsModel != null &&
                            state.profileDetailsModel!.data!.image!.isNotEmpty
                        ? NetworkImage(
                            state.profileDetailsModel!.data!.image!.first)
                        : AssetImage(
                                'assets/images/palce_holder_images/PlaceHolder.jpg')
                            as ImageProvider,
                    fit: BoxFit.cover,
                    width: 160,
                    height: 160,
                  ),
                ),
              ),
            ),
            Positioned(
                right: 15,
                bottom: 8,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => EditProfilePictureScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: kred, width: 1), // Adjust width as needed
                    ),
                    child: CircleAvatar(
                      backgroundColor: kblack,
                      radius: 17,
                      child: Icon(
                        edit_sharp,
                        color: kgrey,
                        size: 20,
                      ),
                    ),
                  ),
                ))
          ],
        );
      },
    );
  }
}
