import 'package:bloc/bloc.dart';
import 'package:StudyMate/Screens/home/screens/myaccount.dart';
import 'package:StudyMate/src/pages/index.dart';
import 'package:StudyMate/Screens/home/screens/home_screen.dart';
import 'package:StudyMate/Screens/home/screens/logout.dart';
import 'package:StudyMate/Screens/home/screens/about.dart';

enum NavigationEvents {
  HomeScreenClickedEvent,
  MyAccountClickedEvent,
  IndexPageClickedEvent,
  AboutPageClickedEvent,
  LogOutClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => HomeScreen();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomeScreenClickedEvent:
        yield HomeScreen();
        break;
      case NavigationEvents.MyAccountClickedEvent:
        yield MyAccountsPage();
        break;
      case NavigationEvents.IndexPageClickedEvent:
        yield IndexPage();
        break;
      case NavigationEvents.LogOutClickedEvent:
        yield LogOut();
        break;
      case NavigationEvents.AboutPageClickedEvent:
        yield AboutPage();
        break;
    }
  }
}
