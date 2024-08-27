import 'package:flutter/material.dart';

class SectionProjects extends StatelessWidget {
  const SectionProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 300),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'PROJETOS',
                        style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.1),
                        ),
                      ),
                      TextSpan(
                        text: '.',
                        style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 145, 0, 255),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 100),
          const Padding(
            padding: EdgeInsets.only(left: 150),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedShaderMask(),
                SizedBox(height: 20),
                Text(
                  'O Sky Pulse é um aplicativo que passa ao usuário informações climáticas\nda cidade que ele inserir. Ele cobre inúmeras cidades ao redor do mundo.',
                  style: TextStyle(
                    fontFamily: 'Cormorant Garamond',
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AnimatedShaderMask extends StatefulWidget {
  const AnimatedShaderMask({super.key});

  @override
  _AnimatedShaderMaskState createState() => _AnimatedShaderMaskState();
}

class _AnimatedShaderMaskState extends State<AnimatedShaderMask>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return ShaderMask(
          shaderCallback: (bounds) {
            return LinearGradient(
              colors: [
                const Color.fromARGB(255, 119, 0, 255),
                Colors.blue,
                Colors.greenAccent,
              ],
              stops: [0.0, 0.5, 1.0],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              tileMode: TileMode.mirror,
              transform: GradientRotation(_controller.value * 2.0 * 3.14),
            ).createShader(bounds);
          },
          child: Text(
            'Sky Pulse',
            style: TextStyle(
              fontFamily: 'Cormorant Garamond',
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
