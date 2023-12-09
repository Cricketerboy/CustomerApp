import '../meal_plan_page/widgets/mealplan_item_widget.dart';
import 'package:deliveryapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MealPlanPage extends StatefulWidget {
  const MealPlanPage({Key? key})
      : super(
          key: key,
        );

  @override
  MealPlanPageState createState() => MealPlanPageState();
}

class MealPlanPageState extends State<MealPlanPage>
    with AutomaticKeepAliveClientMixin<MealPlanPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 30.v),
              _buildMealPlan(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMealPlan(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 151.v,
            crossAxisCount: 2,
            mainAxisSpacing: 20.h,
            crossAxisSpacing: 20.h,
          ),
          physics: BouncingScrollPhysics(),
          itemCount: 8,
          itemBuilder: (context, index) {
            return MealplanItemWidget();
          },
        ),
      ),
    );
  }
}
