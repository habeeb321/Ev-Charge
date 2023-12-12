import 'package:ev_charge/otp_screen/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: size.height * 0.08),
                const Text(
                  'ChargeMOD',
                  style: TextStyle(fontSize: 18),
                ),
                const Text(
                  "Let's Start",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "From Login",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffE6740C)),
                ),
                SizedBox(height: size.height * 0.1),

                // Row for country flag and phone number
                Row(
                  children: [
                    // Placeholder for country flag selection
                    Container(
                      width: 140,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CountryPickerDropdown(
                          initialValue: 'IN', // Default country code
                          itemBuilder: (Country country) {
                            return Row(
                              children: <Widget>[
                                CountryPickerUtils.getDefaultFlagImage(country),
                                const SizedBox(width: 8),
                                Text(country.phoneCode),
                              ],
                            );
                          },
                          onValuePicked: (Country country) {
                            // Handle country code selection
                          },
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),

                    // TextField for entering phone number
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.phone_outlined,
                                color: Colors.grey,
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  hintText: 'Enter phone number',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const OtpScreen(),
                      ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffE6740C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('Sent OTP'),
                  ),
                ),
                const Spacer(),
                const Text('By Continuing you agree to our'),
                const SizedBox(height: 10),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Terms & Condition ',
                        style:
                            TextStyle(fontSize: 15, color: Color(0xffE7740C)),
                      ),
                      TextSpan(
                        text: 'and ',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style:
                            TextStyle(fontSize: 15, color: Color(0xffE7740C)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
