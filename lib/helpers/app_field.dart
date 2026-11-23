import 'package:notifications/helpers/parallel_import.dart';

class AppField extends StatelessWidget {
  AppField({
    super.key,
    this.enabled = false,
    required this.hint,
    this.controller,
    this.onTap, this.prefixIcon
  });
  final void Function()? onTap;
  final String hint;
  final TextEditingController? controller;
  final bool enabled;
  final Widget? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: enabled,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.size8.r),
          borderSide: BorderSide(color: AppColors.whitegrey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.size8.r),
          borderSide: BorderSide(color: AppColors.primary),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(AppSizes.size8.r),
          borderSide: BorderSide(color: AppColors.whitegrey),),
        filled: true,
        fillColor: AppColors.whitegrey,
        hintText: hint,

      ),
      onTap:onTap ,
    );
  }
}
