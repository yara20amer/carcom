import 'package:carcom/Controllers/login_controller.dart';
import 'package:carcom/Models/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final LoginController loginController = Get.put(LoginController());
  User? user;
  @override
  Widget build(BuildContext context) {
    user = loginController.user;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          "Edit Profile",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue.shade900,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    margin: const EdgeInsets.only(
                      top: 50,
                      bottom: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(2, 2),
                          blurRadius: 10,
                        ),
                      ],
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/person.jpg",
                        ),
                      ),
                    ),
                  ),
                  Text(
                    user != null ? user!.fullName : "User",
                    style: const TextStyle(
                      fontFamily: "Montserrat",
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    user != null ? user!.email : "email",
                    style: const TextStyle(
                      fontFamily: "Montserrat",
                      color: Colors.black54,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 9,
              child: Container(
                padding: const EdgeInsets.only(
                  top: 4,
                  left: 24,
                  right: 24,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "PROFILE",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    listProfile(
                      Icons.person,
                      "Full Name",
                      user != null ? user!.fullName : "User",
                    ),
                    listProfile(
                      Icons.date_range,
                      "Date of Birth",
                      "July 21, 2000",
                    ),
                    listProfile(
                      Icons.location_pin,
                      "Location",
                      "California, United States",
                    ),
                    listProfile(
                      Icons.male,
                      "Gender",
                      "Male",
                    ),
                    listProfile(
                      Icons.phone,
                      "Phone Number",
                      user != null ? user!.mobileNumber : "0770667293",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget listProfile(IconData icon, String text1, String text2) {
    var nameController = TextEditingController();
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 10),
        child: ListTile(
          leading: Icon(
            icon,
            size: 20,
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: const TextStyle(
                  color: Colors.black87,
                  fontFamily: "Montserrat",
                  fontSize: 14,
                ),
              ),
              Text(
                text2,
                style: const TextStyle(
                  color: Colors.black87,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          trailing: IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text("Change your $text1"),
                    content: TextFormField(
                      controller: nameController,
                    ),
                    actions: [
                      TextButton(
                          onPressed: () {
                            setState(() {
                              //Todo found a way to change the variable
                              user?.fullName = nameController.text;
                            });
                            Navigator.pop(context);
                          },
                          child: const Text("Save")),
                    ],
                  ),
                );
              },
              icon: const Icon(Icons.edit)),
        ));
  }
}
