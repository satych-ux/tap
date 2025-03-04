import 'package:flutter/material.dart';

class CompnayLogoContainer extends StatelessWidget {
  const CompnayLogoContainer({super.key, this.logoUrl});

  final String? logoUrl;

  @override
  Widget build(BuildContext context) {
    return  Container(
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.grey.shade300, width: 1),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      width: 60,
                      height: 60,
                      child: Container(
                        margin: const EdgeInsets.all(5.5),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              // result.logo ??
                                  'https://cdn.brandfetch.io/idVluv2fZa/w/200/h/200/theme/dark/icon.jpeg?c=1dxbfHSJFAPEGdCLU4o5B', // Use your default logo here
                            ),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    );
  }
}
