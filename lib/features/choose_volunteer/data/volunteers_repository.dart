import 'package:appwrite/models.dart' as model;
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class IVolunteerAPI {
  Future<model.Document> getVolunteersList();
  Future<model.Document> getVolunteerData(String uid);
}

class VolunteerAPI implements IVolunteerAPI {
  @override
  Future<model.Document> getVolunteersList() {
    // TODO: implement getVolunteersData
    throw UnimplementedError();
  }

  @override
  Future<model.Document> getVolunteerData(String uid) {
    // TODO: implement getVolunteerData
    throw UnimplementedError();
  }
}

final volunteersProvider = Provider<VolunteerAPI>((ref) {
  return VolunteerAPI();
});
