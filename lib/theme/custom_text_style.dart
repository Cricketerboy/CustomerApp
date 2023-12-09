import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray400,
        fontSize: 17.fSize,
      );
  static get bodyLargeGray40002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray40002,
        fontSize: 17.fSize,
      );
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 17.fSize,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargeSofiaProOnPrimary =>
      theme.textTheme.bodyLarge!.sofiaPro.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 18.fSize,
      );
  static get bodyLargeSofiaProOnPrimaryContainer =>
      theme.textTheme.bodyLarge!.sofiaPro.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyLargeTTCommonsPrimary =>
      theme.textTheme.bodyLarge!.tTCommons.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMedium13_1 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumBluegray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyMediumGray40001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray40001,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray70002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray70002,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray80001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray80001,
      );
  static get bodyMediumGray8000113 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray80001,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray80001_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray80001,
      );
  static get bodyMediumIndigoA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.indigoA700,
        fontSize: 13.fSize,
      );
  static get bodyMediumMontserrat =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumMontserratGray80001 =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: appTheme.gray80001,
      );
  static get bodyMediumNokora => theme.textTheme.bodyMedium!.nokora.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 13.fSize,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyMediumOnPrimaryContainer_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyMediumOnPrimary_1 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumSecondaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 13.fSize,
      );
  static get bodyMediumSecondaryContainer13 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 13.fSize,
      );
  static get bodyMediumSofiaProGray500 =>
      theme.textTheme.bodyMedium!.sofiaPro.copyWith(
        color: appTheme.gray500,
        fontSize: 14.fSize,
      );
  static get bodyMediumSofiaProOnPrimary =>
      theme.textTheme.bodyMedium!.sofiaPro.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumSofiaProOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.sofiaPro.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyMediumSofiaProOnPrimaryContainer14 =>
      theme.textTheme.bodyMedium!.sofiaPro.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 14.fSize,
      );
  static get bodyMediumSofiaProPrimary =>
      theme.textTheme.bodyMedium!.sofiaPro.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
      );
  static get bodyMediumSofiaProPrimary14 =>
      theme.textTheme.bodyMedium!.sofiaPro.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmall12_1 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmall9 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 9.fSize,
      );
  static get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
        fontSize: 12.fSize,
      );
  static get bodySmallGray50001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50001,
        fontSize: 12.fSize,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
        fontSize: 10.fSize,
      );
  static get bodySmallGray60010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
        fontSize: 10.fSize,
      );
  static get bodySmallGray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
        fontSize: 10.fSize,
      );
  static get bodySmallGray70001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray70001,
        fontSize: 10.fSize,
      );
  static get bodySmallGray70010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
        fontSize: 10.fSize,
      );
  static get bodySmallLight => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallNumans => theme.textTheme.bodySmall!.numans.copyWith(
        fontSize: 9.fSize,
      );
  static get bodySmallNumans10 => theme.textTheme.bodySmall!.numans.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallNumans11 => theme.textTheme.bodySmall!.numans.copyWith(
        fontSize: 11.fSize,
      );
  static get bodySmallNumans12 => theme.textTheme.bodySmall!.numans.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallNumansOnPrimaryContainer =>
      theme.textTheme.bodySmall!.numans.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 9.fSize,
      );
  static get bodySmallNumansOnPrimaryContainer10 =>
      theme.textTheme.bodySmall!.numans.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 10.fSize,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 10.fSize,
      );
  static get bodySmallOnPrimary12 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 12.fSize,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 10.fSize,
      );
  static get bodySmallOnPrimaryContainer11 =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 11.fSize,
      );
  static get bodySmallOnPrimaryContainer12 =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 12.fSize,
      );
  static get bodySmallOnPrimaryContainer_1 =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodySmallOnSecondaryContainer =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 12.fSize,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
      );
  static get bodySmallPrimary10 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
      );
  static get bodySmallPrimary10_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
      );
  static get bodySmallPrimary12 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
      );
  static get bodySmallPrimary_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallRoboto => theme.textTheme.bodySmall!.roboto.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallSofiaProGray500 =>
      theme.textTheme.bodySmall!.sofiaPro.copyWith(
        color: appTheme.gray500,
        fontSize: 12.fSize,
      );
  static get bodySmallSofiaProGray500_1 =>
      theme.textTheme.bodySmall!.sofiaPro.copyWith(
        color: appTheme.gray500,
      );
  static get bodySmallSofiaProGreen400 =>
      theme.textTheme.bodySmall!.sofiaPro.copyWith(
        color: appTheme.green400,
        fontSize: 12.fSize,
      );
  // Display text style
  static get displaySmallDMSans =>
      theme.textTheme.displaySmall!.dMSans.copyWith(
        fontSize: 34.fSize,
        fontWeight: FontWeight.w700,
      );
  static get displaySmallPassionOne =>
      theme.textTheme.displaySmall!.passionOne.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get displaySmallSofiaProOnPrimary =>
      theme.textTheme.displaySmall!.sofiaPro.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 39.fSize,
      );
  static get displaySmallTTCommonsOnError =>
      theme.textTheme.displaySmall!.tTCommons.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontSize: 35.fSize,
        fontWeight: FontWeight.w400,
      );
  // Headline text style
  static get headlineLargePoppinsOnPrimaryContainer =>
      theme.textTheme.headlineLarge!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 31.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineLargeSofiaPro =>
      theme.textTheme.headlineLarge!.sofiaPro.copyWith(
        fontSize: 31.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineMediumPoppinsBluegray900 =>
      theme.textTheme.headlineMedium!.poppins.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w500,
      );
  static get headlineMediumRegular => theme.textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallSofiaProOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.sofiaPro.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 24.fSize,
      );
  // Label text style
  static get labelLargeBlack => theme.textTheme.labelLarge!.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w900,
      );
  static get labelLargeNunitoSans =>
      theme.textTheme.labelLarge!.nunitoSans.copyWith(
        fontSize: 12.fSize,
      );
  static get labelLargeNunitoSansPrimary =>
      theme.textTheme.labelLarge!.nunitoSans.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get labelLargePoppins => theme.textTheme.labelLarge!.poppins.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePoppinsGray700 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray700,
      );
  static get labelLargePoppinsGray700Medium =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray700,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsGray700SemiBold =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray700,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePoppinsOnPrimary =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsOnPrimaryContainer =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePoppinsOnPrimaryContainerMedium =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsOnPrimaryContainerMedium_1 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsOnPrimaryContainerMedium_2 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsPrimary =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsSemiBold =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePoppins_1 => theme.textTheme.labelLarge!.poppins;
  static get labelLargePoppins_2 => theme.textTheme.labelLarge!.poppins;
  static get labelLargeSofiaPro =>
      theme.textTheme.labelLarge!.sofiaPro.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w900,
      );
  static get labelMediumGray600 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 10.fSize,
      );
  static get labelMediumGray700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 10.fSize,
      );
  static get labelMediumNunitoSansBlack900 =>
      theme.textTheme.labelMedium!.nunitoSans.copyWith(
        color: appTheme.black900,
      );
  static get labelMediumNunitoSansGray700 =>
      theme.textTheme.labelMedium!.nunitoSans.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w900,
      );
  static get labelMediumPoppins => theme.textTheme.labelMedium!.poppins;
  static get labelMediumPoppinsBlack900 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumPoppinsBlack900Medium =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumPoppinsBlack900SemiBold =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumPoppinsBlack900SemiBold_1 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumPoppinsBlack900_1 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.black900,
      );
  static get labelMediumPoppinsDeeporange300 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.deepOrange300,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumPoppinsGray600 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.gray600,
        fontSize: 10.fSize,
      );
  static get labelMediumPoppinsGray700 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.gray700,
        fontSize: 10.fSize,
      );
  static get labelMediumPoppinsGray70010 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.gray700,
        fontSize: 10.fSize,
      );
  static get labelMediumPoppinsGray700SemiBold =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumPoppinsGray700SemiBold10 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.gray700,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumPoppinsPrimary =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
      );
  static get labelMediumPrimary_1 => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelSmallNokora => theme.textTheme.labelSmall!.nokora.copyWith(
        fontWeight: FontWeight.w900,
      );
  static get labelSmallNunitoSansGray700 =>
      theme.textTheme.labelSmall!.nunitoSans.copyWith(
        color: appTheme.gray700,
        fontSize: 9.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelSmallNunitoSansOnPrimaryContainer =>
      theme.textTheme.labelSmall!.nunitoSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 9.fSize,
        fontWeight: FontWeight.w900,
      );
  static get labelSmallNunitoSansOrangeA700 =>
      theme.textTheme.labelSmall!.nunitoSans.copyWith(
        color: appTheme.orangeA700,
        fontSize: 9.fSize,
        fontWeight: FontWeight.w900,
      );
  // Nokora text style
  static get nokoraGray800 => TextStyle(
        color: appTheme.gray800,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w700,
      ).nokora;
  static get nokoraOnPrimaryContainer => TextStyle(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 5.fSize,
        fontWeight: FontWeight.w400,
      ).nokora;
  // Numans text style
  static get numansBlack900 => TextStyle(
        color: appTheme.black900,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).numans;
  static get numansOnPrimaryContainer => TextStyle(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).numans;
  static get numansOnPrimaryContainerRegular => TextStyle(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).numans;
  // Poppins text style
  static get poppinsBlack900 => TextStyle(
        color: appTheme.black900,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).poppins;
  static get poppinsGray50001 => TextStyle(
        color: appTheme.gray50001,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w600,
      ).poppins;
  // Title text style
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeGray800 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray800,
      );
  static get titleLargeGreen90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.green90001,
        fontSize: 22.fSize,
      );
  static get titleLargeNokoraGray700 =>
      theme.textTheme.titleLarge!.nokora.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeNokoraGray700Bold =>
      theme.textTheme.titleLarge!.nokora.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeNokoraGray700Regular =>
      theme.textTheme.titleLarge!.nokora.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnPrimaryContainerSemiBold =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOnPrimaryRegular => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w400,
      );
  static get titleLargePassionOne =>
      theme.textTheme.titleLarge!.passionOne.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargePassionOneOnPrimaryContainer =>
      theme.textTheme.titleLarge!.passionOne.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 22.fSize,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
      );
  static get titleMediumBluegray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleMediumOnPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleMediumPoppinsBlack900 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsBlack900Medium =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsOnPrimary =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsOnPrimary_1 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBlack900Bold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBlack900SemiBold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlack900_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallGray100 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray100,
      );
  static get titleSmallGray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray700SemiBold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray700_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
      );
  static get titleSmallMontserratGray80001 =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallNunitoSansGray700 =>
      theme.textTheme.titleSmall!.nunitoSans.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleSmallOnPrimaryContainerSemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnSecondaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSofiaPro =>
      theme.textTheme.titleSmall!.sofiaPro.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get passionOne {
    return copyWith(
      fontFamily: 'Passion One',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get tTCommons {
    return copyWith(
      fontFamily: 'TT Commons',
    );
  }

  TextStyle get nunitoSans {
    return copyWith(
      fontFamily: 'Nunito Sans',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get sofiaPro {
    return copyWith(
      fontFamily: 'Sofia Pro',
    );
  }

  TextStyle get nokora {
    return copyWith(
      fontFamily: 'Nokora',
    );
  }

  TextStyle get numans {
    return copyWith(
      fontFamily: 'Numans',
    );
  }
}
