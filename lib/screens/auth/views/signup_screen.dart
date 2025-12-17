import 'package:e_commerce/constants/validator.dart';
import 'package:e_commerce/route/route_constants.dart';
import 'package:e_commerce/variables/sign_in_variables.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '/constants/constants.dart';
import '/constants/icon_constants.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  static TextEditingController firstNameController = TextEditingController();
  static TextEditingController middleNameController = TextEditingController();
  static TextEditingController lastNameController = TextEditingController();

  Gender? selectedGender = Gender.male;
  static TextEditingController emailController = TextEditingController();
  static TextEditingController phoneController = TextEditingController();

  static TextEditingController addressLine1Controller = TextEditingController();
  static TextEditingController addressLine2Controller = TextEditingController();
  static TextEditingController cityController = TextEditingController();
  static TextEditingController stateController = TextEditingController();
  static TextEditingController countryController = TextEditingController();
  static TextEditingController pinCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Image.network(
              loginImage,
              height: MediaQuery.of(context).size.height * 0.35,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Let’s get started!",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: defaultPadding / 2),
                    const Text(
                      "Please enter your valid data in order to create an account.",
                    ),
                    const SizedBox(height: defaultPadding),
                    // SignUpForm(formKey: _formKey),
                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            onSaved: (value) {},
                            controller: firstNameController,
                            validator: fieldValidator.call,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "First Name",
                              prefixIcon: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: defaultPadding * 0.75,
                                ),
                                child: SvgPicture.asset(
                                  iconProfile,
                                  height: 24,
                                  width: 24,
                                  colorFilter: ColorFilter.mode(
                                    Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .color!
                                        .withValues(alpha: 0.3),
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (value) {},
                            controller: middleNameController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "Middle Name",
                              prefixIcon: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: defaultPadding * 0.75,
                                ),
                                child: SvgPicture.asset(
                                  iconProfile,
                                  height: 24,
                                  width: 24,
                                  colorFilter: ColorFilter.mode(
                                    Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .color!
                                        .withValues(alpha: 0.3),
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (value) {},
                            controller: lastNameController,
                            validator: fieldValidator.call,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "Last Name",
                              prefixIcon: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: defaultPadding * 0.75,
                                ),
                                child: SvgPicture.asset(
                                  iconProfile,
                                  height: 24,
                                  width: 24,
                                  colorFilter: ColorFilter.mode(
                                    Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .color!
                                        .withValues(alpha: 0.3),
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (value) {},
                            readOnly: true,
                            validator: emailIdValidator.call,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "Gender",
                              prefixIcon: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: defaultPadding * 0.75,
                                ),
                                child: SvgPicture.asset(
                                  iconProfile,
                                  height: 24,
                                  width: 24,
                                  colorFilter: ColorFilter.mode(
                                    Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .color!
                                        .withValues(alpha: 0.3),
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          RadioGroup<Gender>(
                            groupValue: selectedGender,
                            onChanged: (Gender? value) {
                              setState(() {
                                selectedGender = value;
                              });
                            },
                            child: Column(
                              children: [
                                for (var gender in Gender.values)
                                  RadioListTile<Gender>(
                                    title: Text(
                                      gender.name[0].toUpperCase() +
                                          gender.name.substring(1),
                                    ),
                                    // Capitalize for display
                                    value: gender,
                                  ),
                              ],
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (value) {},
                            controller: emailController,
                            validator: emailIdValidator.call,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "Email address",

                              prefixIcon: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: defaultPadding * 0.75,
                                ),
                                child: SvgPicture.asset(
                                  iconMessage,
                                  height: 24,
                                  width: 24,
                                  colorFilter: ColorFilter.mode(
                                    Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .color!
                                        .withValues(alpha: 0.3),
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (value) {},
                            controller: phoneController,
                            validator: phoneNumberValidator.call,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "Phone Number",
                              prefixIcon: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: defaultPadding * 0.75,
                                ),
                                child: SvgPicture.asset(
                                  iconMessage,
                                  height: 24,
                                  width: 24,
                                  colorFilter: ColorFilter.mode(
                                    Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .color!
                                        .withValues(alpha: 0.3),
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (value) {},
                            controller: addressLine1Controller,
                            validator: fieldValidator.call,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "Address Line 1",
                              prefixIcon: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: defaultPadding * 0.75,
                                ),
                                child: SvgPicture.asset(
                                  iconAddress,
                                  height: 24,
                                  width: 24,
                                  colorFilter: ColorFilter.mode(
                                    Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .color!
                                        .withValues(alpha: 0.3),
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (value) {},
                            controller: addressLine2Controller,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "Address Line 2",
                              prefixIcon: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: defaultPadding * 0.75,
                                ),
                                child: SvgPicture.asset(
                                  iconAddress,
                                  height: 24,
                                  width: 24,
                                  colorFilter: ColorFilter.mode(
                                    Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .color!
                                        .withValues(alpha: 0.3),
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (value) {},
                            controller: cityController,
                            validator: fieldValidator.call,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "City",
                              prefixIcon: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: defaultPadding * 0.75,
                                ),
                                child: SvgPicture.asset(
                                  iconAddress,
                                  height: 24,
                                  width: 24,
                                  colorFilter: ColorFilter.mode(
                                    Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .color!
                                        .withValues(alpha: 0.3),
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (value) {},
                            controller: stateController,
                            validator: fieldValidator.call,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "State",
                              prefixIcon: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: defaultPadding * 0.75,
                                ),
                                child: SvgPicture.asset(
                                  iconAddress,
                                  height: 24,
                                  width: 24,
                                  colorFilter: ColorFilter.mode(
                                    Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .color!
                                        .withValues(alpha: 0.3),
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (value) {},
                            controller: countryController,
                            validator: fieldValidator.call,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "Cuntry",
                              prefixIcon: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: defaultPadding * 0.75,
                                ),
                                child: SvgPicture.asset(
                                  iconAddress,
                                  height: 24,
                                  width: 24,
                                  colorFilter: ColorFilter.mode(
                                    Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .color!
                                        .withValues(alpha: 0.3),
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (value) {},
                            controller: pinCodeController,
                            validator: fieldValidator.call,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(6),
                            ],
                            decoration: InputDecoration(
                              hintText: "Pin code",
                              prefixIcon: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: defaultPadding * 0.75,
                                ),
                                child: SvgPicture.asset(
                                  iconAddress,
                                  height: 24,
                                  width: 24,
                                  colorFilter: ColorFilter.mode(
                                    Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .color!
                                        .withValues(alpha: 0.3),
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (value) {},
                            controller: passwordController,
                            validator: passwordValidator.call,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "New Password",
                              prefixIcon: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: defaultPadding * 0.75,
                                ),
                                child: SvgPicture.asset(
                                  iconMessage,
                                  height: 24,
                                  width: 24,
                                  colorFilter: ColorFilter.mode(
                                    Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .color!
                                        .withValues(alpha: 0.3),
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (pass) {},
                            controller: confirmPasswordController,
                            validator: confirmPasswordValidator.call,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Confirm Password",
                              prefixIcon: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: defaultPadding * 0.75,
                                ),
                                child: SvgPicture.asset(
                                  iconLock,
                                  height: 24,
                                  width: 24,
                                  colorFilter: ColorFilter.mode(
                                    Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .color!
                                        .withValues(alpha: 0.3),
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: defaultPadding),
                    Row(
                      children: [
                        Checkbox(onChanged: (value) {

                        }, value: false),
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              text: "I agree with the",
                              children: [
                                TextSpan(
                                  recognizer: TapGestureRecognizer(),
                                  text: " Terms of service ",
                                  style: const TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const TextSpan(text: "& privacy policy."),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: defaultPadding * 2),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, entryPointScreenRoute);
                      },
                      child: const Text("Continue"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Do you have an account?"),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, logInScreenRoute);
                          },
                          child: const Text("Log in"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
