import 'package:flutter/material.dart';
import 'package:tes/src/core/theme/colors/color_palette.dart';
import 'package:tes/src/core/theme/texts/typography.dart';

class MonthStockCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String decimal;
  final String imageUrl;

  const MonthStockCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.decimal,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 312,
      height: 40, // 높이를 40으로 고정
      padding: EdgeInsets.symmetric(horizontal: 8.0), // 내부 패딩 조정
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center, // 텍스트 높이 균형 맞추기
        children: [
          // 프로필 이미지
          CircleAvatar(
            radius: 16,
            backgroundImage: NetworkImage(imageUrl),
          ),
          SizedBox(width: 8.0),

          // 제목 (회사명)
          Text(title, style: AppTypography.subTitle),

          Expanded(child: SizedBox()), // 가변 공간 추가

          // 수익 + 소숫점 퍼센트 (Column 정렬)
          Column(
            mainAxisSize: MainAxisSize.min, // 높이 자동 조정
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                subtitle,
                style: AppTypography.bodySmall.copyWith(
                  color: AppColor.error,
                ),
              ),
              Text(
                "($decimal%)",
                style: AppTypography.label.copyWith(
                  color: AppColor.error,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
