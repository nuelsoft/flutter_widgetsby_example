import 'package:flutterbyexample/widgets/alert_dialog.dart';
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
import 'package:flutterbyexample/widgets/bottom_sheet.dart';
import 'package:flutterbyexample/widgets/card.dart';
import 'package:flutterbyexample/widgets/checkbox.dart';
import 'package:flutterbyexample/widgets/checkbox_listtile.dart';
import 'package:flutterbyexample/widgets/chip.dart';
import 'package:flutterbyexample/widgets/container.dart';
import 'package:flutterbyexample/widgets/data_table.dart';
import 'package:flutterbyexample/widgets/date_time_picker.dart';
import 'package:flutterbyexample/widgets/decorated_box_transition.dart';
import 'package:flutterbyexample/widgets/expansion_panel.dart';
import 'package:flutterbyexample/widgets/fade_transition.dart';
import 'package:flutterbyexample/widgets/hero.dart';
import 'package:flutterbyexample/widgets/positioned_transition.dart';
import 'package:flutterbyexample/widgets/radio.dart';
import 'package:flutterbyexample/widgets/radio_listtile.dart';
import 'package:flutterbyexample/widgets/rotation_transition.dart';
import 'package:flutterbyexample/widgets/scale_transition.dart';
import 'package:flutterbyexample/widgets/simple_dialog.dart';
import 'package:flutterbyexample/widgets/size_transition.dart';
import 'package:flutterbyexample/widgets/slide_transition.dart';
import 'package:flutterbyexample/widgets/slider.dart';
import 'package:flutterbyexample/widgets/snackbar.dart';
import 'package:flutterbyexample/widgets/switch.dart';
import 'package:flutterbyexample/widgets/switch_listtile.dart';
import 'package:flutterbyexample/widgets/text.dart';
import 'package:flutterbyexample/widgets/textfield.dart';
import 'package:flutterbyexample/widgets/tooltip.dart';

class Register {
  static final List<Map<String, dynamic>> widgetList = [
    {"widget": CardExample(), "title": "Card"},
    {"widget": DataTableExample(), "title": "DataTable"},
    {"widget": TooltipExample(), "title": "Tooltip"},
    {"widget": ChipEXample(), "title": "Chip"},
    {"widget": SnackbarExample(), "title": "SnackBar", "canLaunchSelf": true},
    {"widget": ExpansionPanelExample(), "title": "ExpansionPanelList"},
    {"widget": BottomSheetExample(), "title": "BottomSheet"},
    {"widget": AlertDialogExample(), "title": "AlertDialog"},
    {"widget": SimpleDialogExample(), "title": "SimpleDialog"},
    {"widget": DateTimePickers(), "title": "Date and Time Pickers"},
    {"widget": SliderExample(), "title": "Slider"},
    {"widget": SwitchListTileExample(), "title": "SwitchListTile"},
    {"widget": SwitchExample(), "title": "Switch"},
    {"widget": RadioListTileExample(), "title": "RadioListTile"},
    {"widget": RadioExample(), "title": "Radio"},
    {"widget": CheckboxListTileExample(), "title": "CheckboxListTile"},
    {"widget": CheckBoxExample(), "title": "Checkbox"},
    {"widget": TextFieldExample(), "title": "TextField"},
    {"widget": AnimatedContainerExample(), "title": "AnimatedContainer"},
    {"widget": AnimatedCrossFadeExample(), "title": "AnimatedCrossFade"},
    {"widget": HeroExample(), "title": "Hero", "canLaunchSelf": true},
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
}
