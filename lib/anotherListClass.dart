

// ignore_for_file: file_names, unused_import, prefer_const_declarations



import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handbook/restApi.dart';

import 'apiController.dart';

final userDataProvider = FutureProvider<List<RestApi>>((ref) async {
  return await ref.watch(userProvider).getPostApi();
});

// final launcherData= FutureProvider<List<RestApi>>((ref) async{
//   return ref.watch(userProvider).launch;
// });
