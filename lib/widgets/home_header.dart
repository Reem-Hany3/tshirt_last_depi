import 'package:notifications/helpers/parallel_import.dart';


class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('hello'.tr(),style: AppStyles.kTextStyle17Black,),
              HightSpace(AppSizes.size12),
              Text('hello_text'.tr() ,style: AppStyles.kTextStyle30Black,),

            ],
          ),
        ),
        WidthSpace(AppSizes.size120),
        CircleAvatar(
          radius: AppSizes.borderprofile,
          child: Icon(Icons.person),),

      ],
    );
  }
}
