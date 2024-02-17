import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/caht/presentation/caht.dart';

import '../presentation/chat_massage_page.dart';
import '../presentation/new_massage_page.dart';



class ChatRoute extends GoRoute {
  ChatRoute()
      : super(
      path: Routes.chatPage,
      name: Routes.chatPage,
      builder: (context, state) => const ChatPage(),
      routes: [
        NewMassageRoute(),
      ]);
}
class NewMassageRoute extends GoRoute {
  NewMassageRoute()
      : super(
      path: Routes.newChatPage,
      name: Routes.newChatPage,
      builder: (context, state) => const NewMassagePage(),
      routes: []);
}


// class ChatMassageRoute extends GoRoute {
//   ChatMassageRoute()
//       : super(
//       path: Routes.chatMassagePage,
//       name: Routes.chatMassagePage,
//       builder: (context, state) => const ChatMassagePage(),
//       routes: []);
// }

