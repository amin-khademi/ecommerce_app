import 'package:ecommerce_app/gen/assets.gen.dart';
import 'package:ecommerce_app/resource/strings.dart';
import 'package:ecommerce_app/route/names.dart';
import 'package:ecommerce_app/screens/auth/cubit/auth_cubit.dart';
import 'package:ecommerce_app/widgets/app_textfield.dart';
import 'package:ecommerce_app/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SendSmsScreen extends StatelessWidget {
  SendSmsScreen({super.key});
  
  TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(Assets.png.mainLogo.path),
            SizedBox(
              height: size.height / 7.7,
            ),
            AppTextField(inputType: TextInputType.number,
                lable: AppStrings.enterYourNumber,
                hint: AppStrings.hintPhoneNumber,
                controller: phoneNumberController),
            BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {
                if (state is SentState) {
                  Navigator.pushNamed(context, ScreensNames.getOtpScreen,
                      arguments: phoneNumberController.text);
                } else if (state is ErrorState) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      backgroundColor: Colors.red,
                      duration: Duration(seconds: 1),
                      content: Text("خطا")));
                }
              },
              builder: (context, state) {
                if (state is LoadingState) {
                  const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return MainButton(
                  text: AppStrings.next,
                  onPressed: (){
                    BlocProvider.of<AuthCubit>(context)
                        .sendSms(phoneNumberController.text);
                  },
                );
              },
            )
          ],
        ),
      ),
    ));
  }
}
