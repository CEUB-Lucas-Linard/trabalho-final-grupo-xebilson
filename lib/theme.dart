import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4287058459),
      surfaceTint: Color(4287058459),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4294958273),
      onPrimaryContainer: Color(4281210112),
      secondary: Color(4285749571),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294958273),
      onSecondaryContainer: Color(4280948486),
      tertiary: Color(4284113464),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4292864178),
      onTertiaryContainer: Color(4279770624),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      background: Color(4294965493),
      onBackground: Color(4280424980),
      surface: Color(4294965493),
      onSurface: Color(4280424980),
      surfaceVariant: Color(4294107089),
      onSurfaceVariant: Color(4283515962),
      outline: Color(4286805097),
      outlineVariant: Color(4292264886),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281806632),
      inverseOnSurface: Color(4294897379),
      inversePrimary: Color(4294948984),
      primaryFixed: Color(4294958273),
      onPrimaryFixed: Color(4281210112),
      primaryFixedDim: Color(4294948984),
      onPrimaryFixedVariant: Color(4285217539),
      secondaryFixed: Color(4294958273),
      onSecondaryFixed: Color(4280948486),
      secondaryFixedDim: Color(4293050533),
      onSecondaryFixedVariant: Color(4284105261),
      tertiaryFixed: Color(4292864178),
      onTertiaryFixed: Color(4279770624),
      tertiaryFixedDim: Color(4291021720),
      onTertiaryFixedVariant: Color(4282599971),
      surfaceDim: Color(4293318605),
      surfaceBright: Color(4294965493),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963688),
      surfaceContainer: Color(4294700001),
      surfaceContainerHigh: Color(4294305243),
      surfaceContainerHighest: Color(4293910741),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4284888832),
      surfaceTint: Color(4287058459),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4288767791),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4283776554),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4287328088),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4282336799),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4285561164),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      background: Color(4294965493),
      onBackground: Color(4280424980),
      surface: Color(4294965493),
      onSurface: Color(4280424980),
      surfaceVariant: Color(4294107089),
      onSurfaceVariant: Color(4283252791),
      outline: Color(4285160530),
      outlineVariant: Color(4287068268),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281806632),
      inverseOnSurface: Color(4294897379),
      inversePrimary: Color(4294948984),
      primaryFixed: Color(4288767791),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4286861081),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4287328088),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4285617985),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4285561164),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4283981878),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293318605),
      surfaceBright: Color(4294965493),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963688),
      surfaceContainer: Color(4294700001),
      surfaceContainerHigh: Color(4294305243),
      surfaceContainerHighest: Color(4293910741),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4281801472),
      surfaceTint: Color(4287058459),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4284888832),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281409036),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4283776554),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4280165635),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4282336799),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      background: Color(4294965493),
      onBackground: Color(4280424980),
      surface: Color(4294965493),
      onSurface: Color(4278190080),
      surfaceVariant: Color(4294107089),
      onSurfaceVariant: Color(4281082393),
      outline: Color(4283252791),
      outlineVariant: Color(4283252791),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281806632),
      inverseOnSurface: Color(4294967295),
      inversePrimary: Color(4294961367),
      primaryFixed: Color(4284888832),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4282786816),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4283776554),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282198037),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4282336799),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4280889355),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293318605),
      surfaceBright: Color(4294965493),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963688),
      surfaceContainer: Color(4294700001),
      surfaceContainerHigh: Color(4294305243),
      surfaceContainerHighest: Color(4293910741),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294948984),
      surfaceTint: Color(4294948984),
      onPrimary: Color(4283180800),
      primaryContainer: Color(4285217539),
      onPrimaryContainer: Color(4294958273),
      secondary: Color(4293050533),
      onSecondary: Color(4282461209),
      secondaryContainer: Color(4284105261),
      onSecondaryContainer: Color(4294958273),
      tertiary: Color(4291021720),
      onTertiary: Color(4281086734),
      tertiaryContainer: Color(4282599971),
      onTertiaryContainer: Color(4292864178),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      background: Color(4279833100),
      onBackground: Color(4293910741),
      surface: Color(4279833100),
      onSurface: Color(4293910741),
      surfaceVariant: Color(4283515962),
      onSurfaceVariant: Color(4292264886),
      outline: Color(4288581250),
      outlineVariant: Color(4283515962),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293910741),
      inverseOnSurface: Color(4281806632),
      inversePrimary: Color(4287058459),
      primaryFixed: Color(4294958273),
      onPrimaryFixed: Color(4281210112),
      primaryFixedDim: Color(4294948984),
      onPrimaryFixedVariant: Color(4285217539),
      secondaryFixed: Color(4294958273),
      onSecondaryFixed: Color(4280948486),
      secondaryFixedDim: Color(4293050533),
      onSecondaryFixedVariant: Color(4284105261),
      tertiaryFixed: Color(4292864178),
      onTertiaryFixed: Color(4279770624),
      tertiaryFixedDim: Color(4291021720),
      onTertiaryFixedVariant: Color(4282599971),
      surfaceDim: Color(4279833100),
      surfaceBright: Color(4282464048),
      surfaceContainerLowest: Color(4279438599),
      surfaceContainerLow: Color(4280424980),
      surfaceContainer: Color(4280688152),
      surfaceContainerHigh: Color(4281411618),
      surfaceContainerHighest: Color(4282135340),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294950275),
      surfaceTint: Color(4294948984),
      onPrimary: Color(4280684800),
      primaryContainer: Color(4290937672),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4293379241),
      onSecondary: Color(4280488451),
      secondaryContainer: Color(4289301362),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4291285148),
      onTertiary: Color(4279441408),
      tertiaryContainer: Color(4287468902),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      background: Color(4279833100),
      onBackground: Color(4293910741),
      surface: Color(4279833100),
      onSurface: Color(4294966008),
      surfaceVariant: Color(4283515962),
      onSurfaceVariant: Color(4292528058),
      outline: Color(4289831059),
      outlineVariant: Color(4287660149),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293910741),
      inverseOnSurface: Color(4281411618),
      inversePrimary: Color(4285283332),
      primaryFixed: Color(4294958273),
      onPrimaryFixed: Color(4280225024),
      primaryFixedDim: Color(4294948984),
      onPrimaryFixedVariant: Color(4283706368),
      secondaryFixed: Color(4294958273),
      onSecondaryFixed: Color(4280093953),
      secondaryFixedDim: Color(4293050533),
      onSecondaryFixedVariant: Color(4282855966),
      tertiaryFixed: Color(4292864178),
      onTertiaryFixed: Color(4279112448),
      tertiaryFixedDim: Color(4291021720),
      onTertiaryFixedVariant: Color(4281481491),
      surfaceDim: Color(4279833100),
      surfaceBright: Color(4282464048),
      surfaceContainerLowest: Color(4279438599),
      surfaceContainerLow: Color(4280424980),
      surfaceContainer: Color(4280688152),
      surfaceContainerHigh: Color(4281411618),
      surfaceContainerHighest: Color(4282135340),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294966008),
      surfaceTint: Color(4294948984),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4294950275),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294966008),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4293379241),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294508497),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4291285148),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      background: Color(4279833100),
      onBackground: Color(4293910741),
      surface: Color(4279833100),
      onSurface: Color(4294967295),
      surfaceVariant: Color(4283515962),
      onSurfaceVariant: Color(4294966008),
      outline: Color(4292528058),
      outlineVariant: Color(4292528058),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293910741),
      inverseOnSurface: Color(4278190080),
      inversePrimary: Color(4282524160),
      primaryFixed: Color(4294959563),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4294950275),
      onPrimaryFixedVariant: Color(4280684800),
      secondaryFixed: Color(4294959563),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4293379241),
      onSecondaryFixedVariant: Color(4280488451),
      tertiaryFixed: Color(4293127350),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4291285148),
      onTertiaryFixedVariant: Color(4279441408),
      surfaceDim: Color(4279833100),
      surfaceBright: Color(4282464048),
      surfaceContainerLowest: Color(4279438599),
      surfaceContainerLow: Color(4280424980),
      surfaceContainer: Color(4280688152),
      surfaceContainerHigh: Color(4281411618),
      surfaceContainerHighest: Color(4282135340),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary, 
    required this.surfaceTint, 
    required this.onPrimary, 
    required this.primaryContainer, 
    required this.onPrimaryContainer, 
    required this.secondary, 
    required this.onSecondary, 
    required this.secondaryContainer, 
    required this.onSecondaryContainer, 
    required this.tertiary, 
    required this.onTertiary, 
    required this.tertiaryContainer, 
    required this.onTertiaryContainer, 
    required this.error, 
    required this.onError, 
    required this.errorContainer, 
    required this.onErrorContainer, 
    required this.background, 
    required this.onBackground, 
    required this.surface, 
    required this.onSurface, 
    required this.surfaceVariant, 
    required this.onSurfaceVariant, 
    required this.outline, 
    required this.outlineVariant, 
    required this.shadow, 
    required this.scrim, 
    required this.inverseSurface, 
    required this.inverseOnSurface, 
    required this.inversePrimary, 
    required this.primaryFixed, 
    required this.onPrimaryFixed, 
    required this.primaryFixedDim, 
    required this.onPrimaryFixedVariant, 
    required this.secondaryFixed, 
    required this.onSecondaryFixed, 
    required this.secondaryFixedDim, 
    required this.onSecondaryFixedVariant, 
    required this.tertiaryFixed, 
    required this.onTertiaryFixed, 
    required this.tertiaryFixedDim, 
    required this.onTertiaryFixedVariant, 
    required this.surfaceDim, 
    required this.surfaceBright, 
    required this.surfaceContainerLowest, 
    required this.surfaceContainerLow, 
    required this.surfaceContainer, 
    required this.surfaceContainerHigh, 
    required this.surfaceContainerHighest, 
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
