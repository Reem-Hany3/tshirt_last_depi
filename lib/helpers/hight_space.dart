import 'package:notifications/helpers/parallel_import.dart';

class HightSpace extends StatelessWidget {
  const HightSpace(  this.height,{super.key,});
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height.h);
  }
}
