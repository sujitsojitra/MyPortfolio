import 'package:flutter/material.dart';
import 'package:myportfolio/ui/responsive_widget.dart';

import '../config/styles.dart';
import '../config/colors.dart';
import 'icon.dart';

class WorkingProcess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 100,
        ),
        child: Column(
          children: [
            Text('WORKING PROCESS', style: AppStyles.title),
            Container(width: 100, height: 2, color: AppColors.blue),
            const SizedBox(height: 3),
            Container(width: 75, height: 2, color: AppColors.blue),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: __buildProcess(
                      context,
                      '01.',
                      'assets/icons/pencil.png',
                      'Plan',
                      'In this phase, we gathered requirements to clearly understand the exact customer requirements and to weed out any ambiguities, incompleteness and inconsistencies from the initial customer perception of the problem.'),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: __buildProcess(
                      context,
                      '02.',
                      'assets/icons/design.png',
                      'Design',
                      'In this phase, we transform the requirement specification document into the design document. We would design different modules in the solution in the form of functions and data, define control relationship among modules and structures of the individual module.'),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: __buildProcess(
                      context,
                      '03.',
                      'assets/icons/coding.png',
                      'Code',
                      'In this phase, the actual coding of the design document is performed. Front end and back end coding is done and the various algorithms are implemented with least time, testing is done to validate a fully developed system to assure that it meets its requirements.'),
                ),
                // const SizedBox(width: 10),
                // Expanded(
                //   child: __buildProcess(
                //       context,
                //       '04.',
                //       'assets/icons/coding.png',
                //       'Deployment',
                //       'In this phase, testing is done to validate a fully developed system to assure that it meets its requirements, Now starts the real thing, you get the opportunity to see your website being brought to life at your location.'),
                // )
              ],
            ),
          ],
        ),
      ),
      mobileScreen: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 50,
        ),
        child: Column(
          children: [
            Text(
              'WORKING PROCESS',
              style: AppStyles.title,
              textAlign: TextAlign.center,
            ),
            Container(width: 75, height: 2, color: AppColors.blue),
            const SizedBox(height: 3),
            Container(width: 50, height: 2, color: AppColors.blue),
            const SizedBox(height: 50),
            __buildProcess(context, '01.', 'assets/icons/pencil.png', 'Plan',
                'In this phase, we gathered requirements to clearly understand the exact customer requirements and to weed out any ambiguities, incompleteness and inconsistencies from the initial customer perception of the problem.'),
            const SizedBox(height: 10),
            __buildProcess(context, '02.', 'assets/icons/design.png', 'Design',
                'In this phase, we transform the requirement specification document into the design document. We would design different modules in the solution in the form of functions and data, define control relationship among modules and structures of the individual module.'),
            const SizedBox(height: 10),
            __buildProcess(context, '03.', 'assets/icons/coding.png', 'Code',
                'In this phase, the actual coding of the design document is performed. Front end and back end coding is done and the various algorithms are implemented with least time, testing is done to validate a fully developed system to assure that it meets its requirements.'),
          ],
        ),
      ),
    );
  }

  Widget __buildProcess(BuildContext context, String index, String iconPath,
      String title, String description) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text(
                index,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Divider(color: AppColors.greyLight),
            const SizedBox(height: 10),
            AppIcon(iconPath, color: AppColors.black, size: 40),
            const SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(
                color: AppColors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                color: Colors.black45,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
