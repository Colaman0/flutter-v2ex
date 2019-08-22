import 'package:flutter/cupertino.dart';

class DropClickView extends StatefulWidget {
  DropClickViewState _state;

  /// 传入一个[Widget]作为监听的控件，在milliseconds时间内如果连续点击，则路由出栈，可以用在
  /// APP首页的返回按钮出作为双击退出的控制
  DropClickView(Widget childView, int milliseconds) {
    _state = DropClickViewState(childView, milliseconds);
  }

  @override
  State<StatefulWidget> createState() {
    return _state;
  }
}

class DropClickViewState extends State<DropClickView> {
  Widget _childView;
  int _milliseconds;
  DateTime _lastPressedAt; //上次点击时间

  DropClickViewState(Widget childView, int milliseconds) {
    _childView = childView;
    _milliseconds = milliseconds;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: _childView,
      onWillPop: () async {
        // ignore: missing_return
        var nowTime = DateTime.now();
        if (_lastPressedAt == null ||
            nowTime.difference(_lastPressedAt) >
                (Duration(milliseconds: _milliseconds))) {
          // 不算作规定时间内连续点击，重置上一个点击的时间
          _lastPressedAt = nowTime;
          return false;
        } else {
          return true;
        }
      },
    );
  }
}
