import 'package:flutterbyexample/widgets/animated_builder.dart';
import 'package:flutterbyexample/widgets/animated_container.dart';
import 'package:flutterbyexample/widgets/animated_crossfade.dart';
import 'package:flutterbyexample/widgets/animated_default_textstyle.dart';
import 'package:flutterbyexample/widgets/animated_list_state.dart';
import 'package:flutterbyexample/widgets/animated_modal_barrier.dart';
import 'package:flutterbyexample/widgets/animated_opacity.dart';
import 'package:flutterbyexample/widgets/animated_physical_model.dart';
import 'package:flutterbyexample/widgets/animated_positioned.dart';
import 'package:flutterbyexample/widgets/animated_size.dart';
import 'package:flutterbyexample/widgets/container.dart';
import 'package:flutterbyexample/widgets/decorated_box_transition.dart';
import 'package:flutterbyexample/widgets/fade_transition.dart';
import 'package:flutterbyexample/widgets/hero.dart';
import 'package:flutterbyexample/widgets/positioned_transition.dart';
import 'package:flutterbyexample/widgets/rotation_transition.dart';
import 'package:flutterbyexample/widgets/scale_transition.dart';
import 'package:flutterbyexample/widgets/size_transition.dart';
import 'package:flutterbyexample/widgets/slide_transition.dart';
import 'package:flutterbyexample/widgets/text.dart';

class Register {
  static final List<Map<String, dynamic>> widgetList = [
    {"widget": AnimatedContainerExample(), "title": "AnimatedContainer"},
    {"widget": AnimatedCrossFadeExample(), "title": "AnimatedCrossFade"},
    {"widget": HeroExample(), "title": "Hero"},
    {"widget": AnimatedBuilderExample(), "title": "AnimatedBuilder"},
    {
      "widget": DecoratedBoxTransitionExample(),
      "title": "DecorationBoxTransition"
    },
    {"widget": FadeTransitionExample(), "title": "FadeTransition"},
    {"widget": PositionedTransitionExample(), "title": "PositionedTransition"},
    {"widget": RotationTransitionExample(), "title": "RotationTransition"},
    {"widget": ScaleTransitionExample(), "title": "ScaleTransition"},
    {"widget": SizeTransitionExample(), "title": "SizeTransition"},
    {"widget": SlideTransitionExample(), "title": "SlideTransititon"},
    {
      "widget": AnimatedDefaultTextStyleExample(),
      "title": "AnimatedDefaultTextStyle"
    },
    {"widget": AnimatedListStateExample(), "title": "AnimatedListState"},
    {"widget": AnimatedModalBarrierExample(), "title": "AnimatedModal Barrier"},
    {"widget": AnimatedOpacityExample(), "title": "AnimatedOpacity"},
    {
      "widget": AnimatedPhysicalModelExample(),
      "title": "AnimatedPhysicalModel"
    },
    {"widget": AnimatedPostionedExample(), "title": "AnimatedPosition"},
    {"widget": AnimatedSizeExample(), "title": "AnimatedSize"},
    // {"widget": TextExample(), "title": "Text"},
    // {"widget": ContainerExample(), "title": "Container"}
  ];

  static final List<String> canLaunchSelf = ["Hero"];
}
