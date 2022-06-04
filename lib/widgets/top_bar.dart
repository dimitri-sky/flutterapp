import 'package:flutter/material.dart';
import '../widgets/rounded_image.dart';

class TopBar extends StatelessWidget {
  String _barTitle;
  Widget? primaryAction;
  Widget? secondaryAction;
  double? fontSize;

  late double _deviceHeight;
  late double _deviceWidth;

  TopBar(
    this._barTitle, {
    this.primaryAction,
    this.secondaryAction,
    this.fontSize = 15,
  });

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return _buildUI();
  }

  Widget _buildUI() {
    return Material(
      type: MaterialType.transparency,
      child: new Container(
        height: _deviceHeight * 0.14,
        width: _deviceWidth,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _profileImageField(),
                if (secondaryAction != null) secondaryAction!,
                // some space
                SizedBox(width: _deviceWidth * 0.01),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _barTitle,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Wondering how do you have such a fat...",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            if (primaryAction != null) primaryAction!,
          ],
        ),
      ),
    );
  }

  Widget _titleBar() {
    return Text(
      _barTitle,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _profileImageField() {
    return RoundedImageNetwork(
        key: UniqueKey(),
        //imagePath: 'https://i.ibb.co/HV8YWv3/logo.png',
        //imagePath: "https://i.pravatar.cc/1000?img=65",
        size: _deviceHeight * 0.07);
  }
}
