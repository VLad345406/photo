// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:firebase_core/firebase_core.dart';
import 'package:photo/app/app.dart';
import 'package:photo/bootstrap.dart';

//import 'firebase_options.dart';

Future<void> main() async {
  await Firebase.initializeApp(
  //  options: DefaultFirebaseOptions.currentPlatform,
  );
  await bootstrap(() => const App());
}
