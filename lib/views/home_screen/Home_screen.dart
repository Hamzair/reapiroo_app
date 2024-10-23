import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:repairoo/const/color.dart';
import 'package:repairoo/const/images.dart';
import 'package:repairoo/const/svg_icons.dart';
import 'package:repairoo/const/text_styles.dart';
import 'package:repairoo/controllers/home_controller.dart';
import 'package:repairoo/views/home_screen/main_home.dart';
import 'package:repairoo/views/home_screen/new_task_home.dart';
import 'package:repairoo/views/home_screen/task_description_home.dart';
import 'package:repairoo/widgets/app_bars.dart';
import 'package:repairoo/widgets/custom_box.dart';
import 'package:repairoo/widgets/my_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final HomeController homeVM = Get.find<HomeController>();


  @override
  Widget build(BuildContext context) {
    return Obx(
        ()=> homeVM.isHome.value == "main"
            ? MainHome()
            : homeVM.isHome.value == "task"
            ? TaskDescriptionHome()
            : NewTaskHome(),
    );
  }
}
