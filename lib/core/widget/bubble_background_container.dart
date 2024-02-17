// import 'dart:math';
//
// import 'package:flutter/material.dart';
// import 'package:simple_animations/animation_builder/mirror_animation_builder.dart';
// import 'package:simple_animations/movie_tween/movie_tween.dart';
//
// const Duration _animationDuration = Duration(seconds: 30);
//
// class BubbleBackgroundContainer extends StatelessWidget {
//   final Widget child;
//
//   const BubbleBackgroundContainer({super.key, required this.child});
//
//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       clipBehavior: Clip.antiAlias,
//       child: Stack(children: <Widget>[
//         const Positioned.fill(child: ColorFadeLoop()),
//         const Positioned.fill(child: Particles(30)),
//         Positioned.fill(
//             child: Container(
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               color: Colors.grey.shade700.withOpacity(0.15)),
//         )),
//         Positioned.fill(child: child),
//       ]),
//     );
//   }
// }
//
// class ColorFadeLoop extends StatelessWidget {
//   final Widget? child;
//
//   const ColorFadeLoop({this.child, Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     var tween = MovieTween()
//       ..scene(duration: _animationDuration)
//           .tween(
//               'color1',
//               ColorTween(
//                   begin: Theme.of(context).colorScheme.primary.withOpacity(0.3),
//                   end: Theme.of(context).colorScheme.primary.withOpacity(0.8)))
//           .tween(
//               'color2',
//               ColorTween(
//                   begin: Theme.of(context).colorScheme.primary.withOpacity(0.8),
//                   end: Theme.of(context).colorScheme.primary.withOpacity(0.3)));
//
//     return MirrorAnimationBuilder<Movie>(
//       tween: tween,
//       duration: tween.duration,
//       builder: (context, value, _) {
//         return Container(
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               gradient: LinearGradient(
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                   colors: [value.get("color1"), value.get("color2")])),
//           child: child,
//         );
//       },
//     );
//   }
// }
//
// class Particles extends StatefulWidget {
//   final int numberOfParticles;
//
//   const Particles(this.numberOfParticles, {super.key});
//
//   @override
//   ParticlesState createState() => ParticlesState();
// }
//
// class ParticlesState extends State<Particles>
//     with SingleTickerProviderStateMixin {
//   final List<ParticleModel> particles = [];
//   late AnimationController _controller;
//
//   @override
//   void initState() {
//     _controller =
//         AnimationController(vsync: this, duration: _animationDuration);
//     _controller.addListener(() {
//       if (_controller.status == AnimationStatus.completed) {
//         for (var particle in particles) {
//           particle.restart();
//         }
//         _controller.repeat();
//       } else if (_controller.status == AnimationStatus.dismissed) {
//         for (var particle in particles) {
//           particle.restart();
//         }
//         _controller.forward();
//       }
//       setState(() {});
//     });
//     _controller.forward();
//     List.generate(widget.numberOfParticles, (index) {
//       particles.add(ParticleModel());
//     });
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(
//       painter: ParticlePainter(particles, _controller.value),
//     );
//   }
// }
//
// class ParticlePainter extends CustomPainter {
//   List<ParticleModel> particles;
//   double progress;
//
//   ParticlePainter(this.particles, this.progress);
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()..color = Colors.white.withAlpha(50);
//     for (var particle in particles) {
//       final Movie animation = particle.tween.transform(progress);
//       final position = Offset(
//           animation.get('x') * size.width, animation.get('y') * size.height);
//       canvas.drawCircle(position, size.width * 0.2 * particle.size, paint);
//     }
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => true;
// }
//
// class ParticleModel {
//   late MovieTween tween;
//   late double size;
//   final Random random = Random();
//   ParticleModel() {
//     start();
//   }
//
//   late List X = [
//     Offset(-0.4, random.nextDouble()),
//     Offset(1.4, random.nextDouble()),
//     Offset(random.nextDouble(), -0.4),
//     Offset(random.nextDouble(), 1.4),
//   ];
//
//   start() {
//     final startPosition = Offset(random.nextDouble(), random.nextDouble());
//     final endPosition = X[random.nextInt(3)];
//     const duration = _animationDuration;
//     tween = MovieTween()
//       ..scene(duration: duration)
//           .tween('x', Tween(begin: startPosition.dx, end: endPosition.dx))
//           .tween('y', Tween(begin: startPosition.dy, end: endPosition.dy));
//     size = 0.2 + random.nextDouble() * 0.2;
//   }
//
//   restart() {
//     final startPosition = X[random.nextInt(3)];
//     final endPosition = X[random.nextInt(3)];
//     const duration = _animationDuration;
//     tween = MovieTween()
//       ..scene(duration: duration)
//           .tween('x', Tween(begin: startPosition.dx, end: endPosition.dx))
//           .tween('y', Tween(begin: startPosition.dy, end: endPosition.dy));
//     size = 0.2 + random.nextDouble() * 0.2;
//   }
// }
