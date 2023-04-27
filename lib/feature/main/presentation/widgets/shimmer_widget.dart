import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 120),
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Material(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(16),
                elevation: 4,
                child: const ShimmerCard()),
          );
        },
      ),
    );
  }
}

class ShimmerCard extends StatelessWidget {
  const ShimmerCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ShimmerComponent.rectangular(height: 210),
        const SizedBox(height: 8),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: const [
            SizedBox(
              width: 120,
              child: ShimmerComponent.rectangular(height: 12),
            ),
            SizedBox(height: 5),
            SizedBox(
              width: 60,
              child: ShimmerComponent.rectangular(height: 12),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(
                    width: 150,
                    child: ShimmerComponent.rectangular(height: 12),
                  ),
                  SizedBox(
                    width: 120,
                    child: ShimmerComponent.rectangular(height: 12),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(
                    width: 120,
                    child: ShimmerComponent.rectangular(height: 12),
                  ),
                  SizedBox(
                    width: 150,
                    child: ShimmerComponent.rectangular(height: 12),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(16))),
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(
                        width: 120,
                        child: ShimmerComponent.rectangular(height: 20),
                      ),
                      SizedBox(
                        width: 120,
                        child: ShimmerComponent.rectangular(height: 20),
                      ),
                    ],
                  ),
                ),
                const VerticalDivider(
                  color: Colors.black,
                  thickness: 1,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      SizedBox(
                        width: 120,
                        child: ShimmerComponent.rectangular(height: 20),
                      ),
                      SizedBox(
                        width: 120,
                        child: ShimmerComponent.rectangular(height: 20),
                      ),
                    ],
                  ),
                ),
                const VerticalDivider(
                  color: Colors.black,
                  thickness: 1,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      SizedBox(
                        width: 120,
                        child: ShimmerComponent.rectangular(height: 20),
                      ),
                      SizedBox(
                        width: 120,
                        child: ShimmerComponent.rectangular(height: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ShimmerComponent extends StatelessWidget {
  final double width;
  final double height;
  final ShapeBorder shapeBorder;

  const ShimmerComponent.rectangular({
    Key? key,
    this.width = double.infinity,
    required this.height,
  })  : shapeBorder = const RoundedRectangleBorder(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade200,
      child: Container(
        width: width,
        height: height,
        decoration: ShapeDecoration(
          shape: shapeBorder,
          color: Colors.grey,
        ),
      ),
    );
  }
}
