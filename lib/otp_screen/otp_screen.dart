import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back),
                  ),
                  SizedBox(width: size.width * 0.27),
                  const Text('Verification'),
                ],
              ),
              SizedBox(height: size.height * 0.05),
              const Text("We've send you the verification"),
              const SizedBox(height: 5),
              const Text("code on +91 9876543210"),
              const SizedBox(height: 20),
              SizedBox(
                width: 250,
                child: PinCodeTextField(
                  cursorWidth: 1,
                  appContext: context,
                  length: 4, // The length of the OTP
                  onChanged: (value) {
                    // Handle OTP changes
                  },
                  onCompleted: (value) {
                    // Handle OTP completion
                  },
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 50,
                    fieldWidth: 50,
                    activeColor: Colors.black,
                    inactiveColor: Colors.grey,
                  ),
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.number,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Resent OTP',
                  style: TextStyle(color: Color(0xffE6740C)),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: size.width * 0.7,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffE6740C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('Continue'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
