
import 'package:dio/dio.dart';
import 'package:ecommerce_app/data/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial()) {
    emit(LogOutState());
  }
  final Dio _dio = Dio();
  sendSms(String mobile) async {
    emit(LoadingState());

    try {
      await _dio
          .post(Endpoints.sendSms, data: {"mobile": mobile}).then((value) {
        debugPrint(value.toString());
        if (value.statusCode == 201) {
          emit(SentState(mobile: mobile));
        } else if (value.statusCode == 403) {
          emit(ErrorState());
        } else {
          emit(ErrorState());
        }
      });
    } catch (e) {
      emit(ErrorState());
    }
  }

  verify(String mobile, String code) async {
    emit(LoadingState());

    try {
      await _dio.post(Endpoints.checkSmsCode,
          data: {"mobile": mobile, "code": code}).then((value) {
        debugPrint(value.toString());
        if (value.statusCode == 201) {
          if (value.data["data"]["is_registered"]) {
            emit(VerifiedIsRegisteredState());
          } else {}
          emit(VerifiedNotRegisteredState());
        } else {
          emit(ErrorState());
        }
      });
    } catch (e) {
      emit(ErrorState());
    }
  }

  registration() async {}
  logout() async {}
}
