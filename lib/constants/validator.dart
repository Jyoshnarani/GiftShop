import 'package:e_commerce/variables/sign_in_variables.dart';
import 'package:form_field_validator/form_field_validator.dart';

final passwordValidator = MultiValidator([
  RequiredValidator(errorText: 'Password is required'),
  MinLengthValidator(8, errorText: 'Password must be at least 8 digits long'),
  PatternValidator(r'(?=.*?[#?!@$%^&*-])',
      errorText: 'Passwords must have at least one special character')
]);

final phoneNumberValidator = MultiValidator([
  PatternValidator(r'^[0-9]{10}$',
    errorText: 'Enter a valid 10-digit phone number',
  ),
]);

String? confirmPasswordValidator(String? value) {
  if (value == null || value.isEmpty) {
    return "Confirm Password is required";
  }
  return MatchValidator(errorText: "Passwords do not match")
      .validateMatch(value ?? '', passwordController.text);
}

enum Gender { male, female, others }

final emailIdValidator = MultiValidator([
  RequiredValidator(errorText: 'Email is required'),
  EmailValidator(errorText: "Enter a valid email address"),
]);

final fieldValidator = MultiValidator([
  RequiredValidator(errorText: 'This field is required'),
]);


const pasNotMatchErrorText = "passwords do not match";