import 'package:anime_ui/core/utils/assets_manager.dart';
import 'package:anime_ui/core/utils/hex_color.dart';
import 'package:anime_ui/core/utils/spacing.dart';
import 'package:anime_ui/core/utils/styles.dart';
import 'package:anime_ui/core/utils/texts_manager.dart';
import 'package:flutter/material.dart';

class AppMonthlySubscriptionOption extends StatefulWidget {
  final String? monthly;
  final String? monthlyPrice;
  final String? pricePeriod;
  final String? includeFamilySharing;
  final double? height;
  final Color? color;
  final TextStyle? styleMonthly;
  final TextStyle? styleMonthlyPrice;
  final void Function(String? value)? onChanged;
  const AppMonthlySubscriptionOption({
    super.key,
    this.monthly,
    this.monthlyPrice,
    this.pricePeriod,
    this.includeFamilySharing,
    this.onChanged,
    this.height,
    this.color,
    this.styleMonthly,
    this.styleMonthlyPrice,
  });

  @override
  State<AppMonthlySubscriptionOption> createState() =>
      _AppMonthlySubscriptionOptionState();
}

class _AppMonthlySubscriptionOptionState
    extends State<AppMonthlySubscriptionOption> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height ?? 102,
      decoration: BoxDecoration(
        color: widget.color ?? HexColor(hexColor: '#18153F'),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(AssetsManager.filesFolders),
                horizontalSpacing(width: 22),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.monthly ?? TextsManager.monthly,
                      style: widget.styleMonthly ?? TextStyles.font16Bold,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                widget.monthlyPrice ??
                                TextsManager.monthlyPrice,
                            style:
                                widget.styleMonthlyPrice ??
                                TextStyles.font16Bold,
                          ),
                          TextSpan(
                            text:
                                widget.pricePeriod ?? TextsManager.pricePeriod,
                            style: TextStyles.font14Bold.copyWith(
                              color: HexColor(hexColor: 'A49AD8'),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Text(
                      widget.includeFamilySharing ??
                          TextsManager.includeFamilySharing,
                      style: TextStyles.font14Bold.copyWith(
                        color: HexColor(hexColor: 'A49AD8'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 25, top: 20),
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: isSelected
                          ? HexColor(hexColor: '5436F8')
                          : Colors.transparent,
                      border: Border.all(
                        color: isSelected
                            ? HexColor(hexColor: '5436F8')
                            : HexColor(hexColor: '000000'),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: isSelected
                        ? Icon(Icons.check, color: Colors.white, size: 16)
                        : null,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
