import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio_leonardo_vivo/widgets/svg_button.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class SectionIntro extends StatelessWidget {
  final ItemScrollController itemScrollController;
  const SectionIntro({super.key, required this.itemScrollController});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double fontSizeTitle = constraints.maxWidth > 800 ? 100 : 50;
        double fontSizeSubtitle = constraints.maxWidth > 800 ? 40 : 24;
        double spacing = constraints.maxWidth > 800 ? 80 : 40;
        double horizontalPadding = constraints.maxWidth > 800 ? 100 : 20;

        return Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FittedBox(
                        child: Text(
                          'Leonardo Vivo Guerreiro',
                          style: TextStyle(
                            fontFamily: 'Dancing Script',
                            fontSize: fontSizeTitle,
                            color: Colors.white,
                          ),
                        ),
                      )
                          .animate()
                          .fadeIn(duration: 1500.ms, curve: Curves.easeOutQuart)
                          .scale(
                            begin: const Offset(0.3, 0.3),
                            end: const Offset(1.0, 1.0),
                            duration: 1800.ms,
                            curve: Curves.elasticOut,
                          )
                          .rotate(
                            begin: -0.1,
                            end: 0,
                            duration: 1800.ms,
                            curve: Curves.easeOutBack,
                          )
                          .blur(
                            begin: const Offset(10, 10),
                            end: const Offset(0, 0),
                            duration: 1500.ms,
                          )
                          .then(delay: 200.ms)
                          .shimmer(
                            duration: 2500.ms,
                            // ignore: deprecated_member_use
                            color: Colors.white.withOpacity(0.5),
                            angle: 45,
                          ),
                      const SizedBox(height: 10),
                      Text(
                        'Desenvolvedor Mobile',
                        style: TextStyle(
                          fontFamily: 'Cormorant Garamond',
                          fontSize: fontSizeSubtitle,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 4,
                        ),
                      )
                          .animate()
                          .fadeIn(
                              duration: 1200.ms,
                              delay: 800.ms,
                              curve: Curves.easeOutCubic)
                          .slideY(
                            begin: 1.5,
                            end: 0,
                            duration: 1500.ms,
                            delay: 800.ms,
                            curve: Curves.easeOutBack,
                          )
                          .blur(
                            begin: const Offset(30, 30),
                            end: const Offset(0, 0),
                            duration: 1500.ms,
                            delay: 800.ms,
                          )
                          .scale(
                            begin: const Offset(0.8, 0.8),
                            end: const Offset(1.0, 1.0),
                            duration: 1500.ms,
                            delay: 800.ms,
                            curve: Curves.easeOutBack,
                          )
                          .then(delay: 300.ms)
                          .shimmer(
                            duration: 2800.ms,
                            // ignore: deprecated_member_use
                            color: Colors.blue.withOpacity(0.4),
                            angle: -45,
                          ),
                      SizedBox(height: spacing),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgButton(
                            assetPath: 'assets/icons/linkedin.svg',
                            url: Uri.parse(
                                'https://www.linkedin.com/in/leonardovivoguerreiro/'),
                            hoverColor: Colors.blue,
                          )
                              .animate()
                              .fadeIn(
                                  duration: 900.ms,
                                  delay: 1400.ms,
                                  curve: Curves.easeOut)
                              .scale(
                                begin: const Offset(0.0, 0.0),
                                end: const Offset(1.15, 1.15),
                                duration: 1200.ms,
                                delay: 1400.ms,
                                curve: Curves.elasticOut,
                              )
                              .rotate(
                                begin: -2,
                                end: 0,
                                duration: 1200.ms,
                                delay: 1400.ms,
                                curve: Curves.easeOutBack,
                              )
                              .then()
                              .scale(
                                begin: const Offset(1.15, 1.15),
                                end: const Offset(1.0, 1.0),
                                duration: 400.ms,
                                curve: Curves.easeInOut,
                              )
                              .shimmer(
                                duration: 1800.ms,
                                delay: 200.ms,
                                // ignore: deprecated_member_use
                                color: Colors.blue.withOpacity(0.5),
                              ),
                          const SizedBox(width: 25),
                          SvgButton(
                            assetPath: 'assets/icons/github.svg',
                            url: Uri.parse('https://github.com/leonardovivo'),
                            hoverColor:
                                const Color.fromARGB(255, 190, 184, 184),
                          )
                              .animate()
                              .fadeIn(
                                  duration: 900.ms,
                                  delay: 1600.ms,
                                  curve: Curves.easeOut)
                              .scale(
                                begin: const Offset(0.0, 0.0),
                                end: const Offset(1.15, 1.15),
                                duration: 1200.ms,
                                delay: 1600.ms,
                                curve: Curves.elasticOut,
                              )
                              .rotate(
                                begin: 2,
                                end: 0,
                                duration: 1200.ms,
                                delay: 1600.ms,
                                curve: Curves.easeOutBack,
                              )
                              .then()
                              .scale(
                                begin: const Offset(1.15, 1.15),
                                end: const Offset(1.0, 1.0),
                                duration: 400.ms,
                                curve: Curves.easeInOut,
                              )
                              .shimmer(
                                duration: 1800.ms,
                                delay: 200.ms,
                                // ignore: deprecated_member_use
                                color: Colors.white.withOpacity(0.5),
                              ),
                          const SizedBox(width: 25),
                          SvgButton(
                            assetPath: 'assets/icons/whatsapp.svg',
                            url: Uri.parse(
                                'https://wa.me/5511943858097?text=Olá!%20Vim%20pelo%20seu%20portfólio'),
                            hoverColor: Colors.greenAccent,
                          )
                              .animate()
                              .fadeIn(
                                  duration: 900.ms,
                                  delay: 1800.ms,
                                  curve: Curves.easeOut)
                              .scale(
                                begin: const Offset(0.0, 0.0),
                                end: const Offset(1.15, 1.15),
                                duration: 1200.ms,
                                delay: 1800.ms,
                                curve: Curves.elasticOut,
                              )
                              .rotate(
                                begin: -2,
                                end: 0,
                                duration: 1200.ms,
                                delay: 1800.ms,
                                curve: Curves.easeOutBack,
                              )
                              .then()
                              .scale(
                                begin: const Offset(1.15, 1.15),
                                end: const Offset(1.0, 1.0),
                                duration: 400.ms,
                                curve: Curves.easeInOut,
                              )
                              .shimmer(
                                duration: 1800.ms,
                                delay: 200.ms,
                                // ignore: deprecated_member_use
                                color: Colors.green.withOpacity(0.5),
                              ),
                          const SizedBox(width: 25),
                          SvgButton(
                            assetPath: 'assets/icons/email.svg',
                            url: Uri.parse('mailto:leonardovivo3@gmail.com'),
                            hoverColor: Colors.red,
                          )
                              .animate()
                              .fadeIn(
                                  duration: 900.ms,
                                  delay: 2000.ms,
                                  curve: Curves.easeOut)
                              .scale(
                                begin: const Offset(0.0, 0.0),
                                end: const Offset(1.15, 1.15),
                                duration: 1200.ms,
                                delay: 2000.ms,
                                curve: Curves.elasticOut,
                              )
                              .rotate(
                                begin: 2,
                                end: 0,
                                duration: 1200.ms,
                                delay: 2000.ms,
                                curve: Curves.easeOutBack,
                              )
                              .then()
                              .scale(
                                begin: const Offset(1.15, 1.15),
                                end: const Offset(1.0, 1.0),
                                duration: 400.ms,
                                curve: Curves.easeInOut,
                              )
                              .shimmer(
                                duration: 1800.ms,
                                delay: 200.ms,
                                // ignore: deprecated_member_use
                                color: Colors.red.withOpacity(0.5),
                              ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
