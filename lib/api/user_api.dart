import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart' as model;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:heal_chat/constants/appwrite_constants.dart';
import 'package:heal_chat/core/common_providers.dart';
import 'package:heal_chat/core/failure.dart';
import 'package:heal_chat/core/type_defs.dart';
import 'package:heal_chat/models/user_model.dart';

final userAPIProvider = Provider((ref) {
  return UserAPI(db: ref.watch(appwriteDatabaseProvider));
});

abstract class IUserAPI {
  FutureEitherVoid saveUserData(UserModel userModel);
  Future<model.Document> getUserData(String uid);
}

class UserAPI implements IUserAPI {
  final Databases _db;
  UserAPI({required Databases db}) : _db = db;

  @override
  FutureEitherVoid saveUserData(UserModel userModel) async {
    Client client = _db.client;
    client.setEndpoint("https://cloud.appwrite.io/v1");
    client.addHeader('X-Appwrite-Project', '658e7e4803640a5691da');
    try {
      await _db.createDocument(
        databaseId: AppwriteConstants.databaseID,
        collectionId: AppwriteConstants.usersCollection,
        documentId: userModel.uid,
        data: userModel.toMap(),
      );
      return right(null);
    } on AppwriteException catch (e, st) {
      return left(Failure(e.message ?? "Unexpected", st));
    } catch (e, st) {
      return left(Failure(e.toString(), st));
    }
  }

  @override
  Future<model.Document> getUserData(String uid) {
    Client client = _db.client;
    client.setEndpoint("https://cloud.appwrite.io/v1");
    client.addHeader('X-Appwrite-Project', '658e7e4803640a5691da');
    return _db.getDocument(
      databaseId: AppwriteConstants.databaseID,
      collectionId: AppwriteConstants.usersCollection,
      documentId: uid,
    );
  }
}
