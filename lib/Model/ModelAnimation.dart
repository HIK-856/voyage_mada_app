import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class AnimationModel {
  // late AnimationController iconAnimationController;
  final  iconAnimationController = AnimationController(
      vsync:
          MyTickerProviderStateMixin(), // Utilisez `this` car votre modèle n'implémente pas TickerProvider
      duration: const Duration(seconds: 1),
    );
  }

class MyTickerProviderStateMixin implements TickerProvider {
  @override
  Ticker createTicker(TickerCallback onTick) => Ticker(onTick);
}
