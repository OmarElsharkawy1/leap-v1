  import 'package:dartz/dartz.dart';
import 'package:leap/core/error/failure.dart';
import 'package:leap/core/models/my_data_model.dart';
import 'package:leap/features/auth/data/auth_remote_data_source.dart';
import 'package:leap/features/auth/domain/use_case/login_with_email_and_password_use_case.dart';
import 'package:leap/features/auth/domain/use_case/sign_up_use_case.dart';

abstract class BaseRepository {
  Future<Either<Map<String, dynamic>, Failure>> loginWithEmailAndPassword(
      AuthModel authModel);
  Future<Either<Map<String, dynamic>, Failure>> signUpWithEmailAndPassword(
      SignUpModel signUpModel);
  Future<Either<Map<String, dynamic>, Failure>> changePassword(
      SignUpModel signUpModel);
  Future<Either<Map<String, dynamic>, Failure>> sendCode(
      SignUpModel signUpModel);
  Future<Either<Map<String, dynamic>, Failure>> verifyCode(
      SignUpModel signUpModel);
  Future<Either<AuthWithGoogleModel, Failure>> signWithGoogle();

}
