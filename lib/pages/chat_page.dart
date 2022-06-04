// Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Widgets
import '../widgets/top_bar.dart';
//import '../widgets/custom_list_view_tiles.dart';
import '../widgets/custom_input_fields.dart';

// Models
//import '../models/chat.dart';
//import '../models/chat_message.dart';

// Providers
import '../providers/authentication_provider.dart';

// Services
// import '../services/navigation_service.dart';

class ChatPage extends StatefulWidget {
  //final Chat chat;

  //ChatPage({
  //@required this.chat,
  //});

  @override
  State<StatefulWidget> createState() {
    return _ChatPageState();
  }
}

class _ChatPageState extends State<ChatPage> {
  late double _deviceHeight;
  late double _deviceWidth;

  late AuthenticationProvider _auth;
  // late NavigationService _navigation;
  late GlobalKey<FormState> _messageFormState;
  late ScrollController _messagesListViewController;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    _auth = Provider.of<AuthenticationProvider>(context);
    return _buildUI();
  }

  Widget _buildUI() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: _deviceWidth * 0.10,
        vertical: _deviceHeight * 0.02,
      ),
      height: _deviceHeight * 0.98,
      width: _deviceWidth * 0.97,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TopBar(
            'Aisha',
            primaryAction: Container(
              padding: EdgeInsets.symmetric(
                horizontal: _deviceWidth * 0.00,
                vertical: _deviceHeight * 0.00,
              ),
              height: _deviceHeight * 0.05,
              width: _deviceWidth * 0.05,
              child: TextButton(
                onPressed: () {
                  _auth.logout();
                },
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
