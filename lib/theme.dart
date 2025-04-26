import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4278216573),
      surfaceTint: Color(4278216573),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4289915903),
      onPrimaryContainer: Color(4278198055),
      secondary: Color(4283130474),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4291749616),
      onSecondaryContainer: Color(4278591013),
      tertiary: Color(4283980926),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4292862207),
      onTertiaryContainer: Color(4279572791),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      background: Color(4294310653),
      onBackground: Color(4279704606),
      surface: Color(4294310653),
      onSurface: Color(4279704606),
      surfaceVariant: Color(4292601064),
      onSurfaceVariant: Color(4282402891),
      outline: Color(4285560956),
      outlineVariant: Color(4290758860),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281086259),
      inverseOnSurface: Color(4293718516),
      inversePrimary: Color(4287025641),
      primaryFixed: Color(4289915903),
      onPrimaryFixed: Color(4278198055),
      primaryFixedDim: Color(4287025641),
      onPrimaryFixedVariant: Color(4278210142),
      secondaryFixed: Color(4291749616),
      onSecondaryFixed: Color(4278591013),
      secondaryFixedDim: Color(4289972947),
      onSecondaryFixedVariant: Color(4281616978),
      tertiaryFixed: Color(4292862207),
      onTertiaryFixed: Color(4279572791),
      tertiaryFixedDim: Color(4290888939),
      onTertiaryFixedVariant: Color(4282467429),
      surfaceDim: Color(4292271069),
      surfaceBright: Color(4294310653),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293915895),
      surfaceContainer: Color(4293586929),
      surfaceContainerHigh: Color(4293192171),
      surfaceContainerHighest: Color(4292797414),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4278209113),
      surfaceTint: Color(4278216573),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4281106068),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281353806),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4284577920),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4282204513),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4285493909),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      background: Color(4294310653),
      onBackground: Color(4279704606),
      surface: Color(4294310653),
      onSurface: Color(4279704606),
      surfaceVariant: Color(4292601064),
      onSurfaceVariant: Color(4282139719),
      outline: Color(4283981924),
      outlineVariant: Color(4285758592),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281086259),
      inverseOnSurface: Color(4293718516),
      inversePrimary: Color(4287025641),
      primaryFixed: Color(4281106068),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278216058),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4284577920),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282998631),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4285493909),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4283849339),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292271069),
      surfaceBright: Color(4294310653),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293915895),
      surfaceContainer: Color(4293586929),
      surfaceContainerHigh: Color(4293192171),
      surfaceContainerHighest: Color(4292797414),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4278199856),
      surfaceTint: Color(4278216573),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4278209113),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4279117100),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4281353806),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4280033342),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4282204513),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      background: Color(4294310653),
      onBackground: Color(4279704606),
      surface: Color(4294310653),
      onSurface: Color(4278190080),
      surfaceVariant: Color(4292601064),
      onSurfaceVariant: Color(4280100136),
      outline: Color(4282139719),
      outlineVariant: Color(4282139719),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281086259),
      inverseOnSurface: Color(4294967295),
      inversePrimary: Color(4291752703),
      primaryFixed: Color(4278209113),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278202941),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4281353806),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4279840823),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4282204513),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4280691273),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292271069),
      surfaceBright: Color(4294310653),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293915895),
      surfaceContainer: Color(4293586929),
      surfaceContainerHigh: Color(4293192171),
      surfaceContainerHighest: Color(4292797414),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4287025641),
      surfaceTint: Color(4287025641),
      onPrimary: Color(4278203970),
      primaryContainer: Color(4278210142),
      onPrimaryContainer: Color(4289915903),
      secondary: Color(4289972947),
      onSecondary: Color(4280103995),
      secondaryContainer: Color(4281616978),
      onSecondaryContainer: Color(4291749616),
      tertiary: Color(4290888939),
      onTertiary: Color(4280954445),
      tertiaryContainer: Color(4282467429),
      onTertiaryContainer: Color(4292862207),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      background: Color(4279178262),
      onBackground: Color(4292797414),
      surface: Color(4279178262),
      onSurface: Color(4292797414),
      surfaceVariant: Color(4282402891),
      onSurfaceVariant: Color(4290758860),
      outline: Color(4287206038),
      outlineVariant: Color(4282402891),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797414),
      inverseOnSurface: Color(4281086259),
      inversePrimary: Color(4278216573),
      primaryFixed: Color(4289915903),
      onPrimaryFixed: Color(4278198055),
      primaryFixedDim: Color(4287025641),
      onPrimaryFixedVariant: Color(4278210142),
      secondaryFixed: Color(4291749616),
      onSecondaryFixed: Color(4278591013),
      secondaryFixedDim: Color(4289972947),
      onSecondaryFixedVariant: Color(4281616978),
      tertiaryFixed: Color(4292862207),
      onTertiaryFixed: Color(4279572791),
      tertiaryFixedDim: Color(4290888939),
      onTertiaryFixedVariant: Color(4282467429),
      surfaceDim: Color(4279178262),
      surfaceBright: Color(4281612860),
      surfaceContainerLowest: Color(4278783761),
      surfaceContainerLow: Color(4279704606),
      surfaceContainer: Color(4279967779),
      surfaceContainerHigh: Color(4280625965),
      surfaceContainerHighest: Color(4281349688),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4287288814),
      surfaceTint: Color(4287025641),
      onPrimary: Color(4278196512),
      primaryContainer: Color(4283341745),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4290236376),
      onSecondary: Color(4278327584),
      secondaryContainer: Color(4286420125),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4291152111),
      onTertiary: Color(4279243825),
      tertiaryContainer: Color(4287336115),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      background: Color(4279178262),
      onBackground: Color(4292797414),
      surface: Color(4279178262),
      onSurface: Color(4294376446),
      surfaceVariant: Color(4282402891),
      onSurfaceVariant: Color(4291022032),
      outline: Color(4288455848),
      outlineVariant: Color(4286350472),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797414),
      inverseOnSurface: Color(4280625965),
      inversePrimary: Color(4278210400),
      primaryFixed: Color(4289915903),
      onPrimaryFixed: Color(4278195226),
      primaryFixedDim: Color(4287025641),
      onPrimaryFixedVariant: Color(4278205513),
      secondaryFixed: Color(4291749616),
      onSecondaryFixed: Color(4278195226),
      secondaryFixedDim: Color(4289972947),
      onSecondaryFixedVariant: Color(4280498497),
      tertiaryFixed: Color(4292862207),
      onTertiaryFixed: Color(4278849068),
      tertiaryFixedDim: Color(4290888939),
      onTertiaryFixedVariant: Color(4281349203),
      surfaceDim: Color(4279178262),
      surfaceBright: Color(4281612860),
      surfaceContainerLowest: Color(4278783761),
      surfaceContainerLow: Color(4279704606),
      surfaceContainer: Color(4279967779),
      surfaceContainerHigh: Color(4280625965),
      surfaceContainerHighest: Color(4281349688),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294311167),
      surfaceTint: Color(4287025641),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4287288814),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294311167),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4290236376),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294834687),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4291152111),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      background: Color(4279178262),
      onBackground: Color(4292797414),
      surface: Color(4279178262),
      onSurface: Color(4294967295),
      surfaceVariant: Color(4282402891),
      onSurfaceVariant: Color(4294311167),
      outline: Color(4291022032),
      outlineVariant: Color(4291022032),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797414),
      inverseOnSurface: Color(4278190080),
      inversePrimary: Color(4278202170),
      primaryFixed: Color(4290768639),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4287288814),
      onPrimaryFixedVariant: Color(4278196512),
      secondaryFixed: Color(4292078580),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4290236376),
      onSecondaryFixedVariant: Color(4278327584),
      tertiaryFixed: Color(4293191167),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4291152111),
      onTertiaryFixedVariant: Color(4279243825),
      surfaceDim: Color(4279178262),
      surfaceBright: Color(4281612860),
      surfaceContainerLowest: Color(4278783761),
      surfaceContainerLow: Color(4279704606),
      surfaceContainer: Color(4279967779),
      surfaceContainerHigh: Color(4280625965),
      surfaceContainerHighest: Color(4281349688),
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
