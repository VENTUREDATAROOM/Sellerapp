import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body style
  static get bodyLargeAkayaKanadaka => theme.textTheme.bodyLarge!.akayaKanadaka;
  static get bodyLargeInterOnError => theme.textTheme.bodyLarge!.inter.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyLargeInterOnErrorContainer =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get bodyLargeInterPrimary => theme.textTheme.bodyLarge!.inter.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.65),
      );
  static get bodyLargeNunitoSans =>
      theme.textTheme.bodyLarge!.nunitoSans.copyWith(
        fontSize: 19.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeNunitoSansGray900 =>
      theme.textTheme.bodyLarge!.nunitoSans.copyWith(
        color: appTheme.gray900,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeNunitoSansPrimary =>
      theme.textTheme.bodyLarge!.nunitoSans.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.8),
        fontSize: 19.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeNunitoSanscc4e6c16 =>
      theme.textTheme.bodyLarge!.nunitoSans.copyWith(
        color: Color(0XCC4E6C16),
        fontSize: 19.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumRobotoOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallPoppins => theme.textTheme.bodySmall!.poppins.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsGray60001 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray60001,
        fontSize: 12.fSize,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.65),
      );
  static get bodySmallPrimary_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.54),
      );
  static get bodySmallRalewayGray60001 =>
      theme.textTheme.bodySmall!.raleway.copyWith(
        color: appTheme.gray60001,
        fontSize: 12.fSize,
      );
  static get bodySmallRalewaya54e6c16 =>
      theme.textTheme.bodySmall!.raleway.copyWith(
        color: Color(0XA54E6C16),
      );
  static get bodySmalla54e6c16 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XA54E6C16),
      );
  // Label text style
  static get labelLargeBluegray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get labelLargeNunitoSansBlack900 =>
      theme.textTheme.labelLarge!.nunitoSans.copyWith(
        color: appTheme.black900,
      );
  static get labelLargePoppinsOnErrorContainer =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsPrimary =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePoppinsPrimaryContainer =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePrimaryExtraBold => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w800,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelMedium11 => theme.textTheme.labelMedium!.copyWith(
        fontSize: 11.fSize,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumRaleway =>
      theme.textTheme.labelMedium!.raleway.copyWith(
        fontSize: 11.fSize,
      );
  static get labelMediumRalewayPrimary =>
      theme.textTheme.labelMedium!.raleway.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumRaleway_1 =>
      theme.textTheme.labelMedium!.raleway.copyWith(fontSize: 14);
  static get labelMediumRalewayff4e6c16 =>
      theme.textTheme.labelMedium!.raleway.copyWith(
        color: Color(0XFF4E6C16),
        fontWeight: FontWeight.w700,
      );
  static get labelMediumff4e6c16 => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFF4E6C16),
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLargePoppinsPrimary =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeRaleway => theme.textTheme.titleLarge!.raleway.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeRalewayBlack900 =>
      theme.textTheme.titleLarge!.raleway.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeRalewayGray900 =>
      theme.textTheme.titleLarge!.raleway.copyWith(
        color: appTheme.gray900,
        fontSize: 21.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumGray300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray300,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumGray30001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray30001,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterOnErrorContainer =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterOnErrorContainerMedium =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumNunitoSans => theme.textTheme.titleMedium!.nunitoSans;
  static get titleMediumNunitoSanscc4e6c16 =>
      theme.textTheme.titleMedium!.nunitoSans.copyWith(
        color: Color(0XCC4E6C16),
        fontSize: 19.fSize,
      );
  static get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get titleMediumOnErrorContainerMedium =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsOnErrorContainer =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsPrimary =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsPrimaryContainer =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 17.fSize,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary18 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get titleMediumPrimaryExtraBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumPrimaryMedium => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumRobotoBluegray90001 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.blueGray90001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallLexendPrimary =>
      theme.textTheme.titleSmall!.lexend.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallNunitoSansGray900 =>
      theme.textTheme.titleSmall!.nunitoSans.copyWith(
        color: appTheme.gray900.withOpacity(0.67),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOnErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallPrimary15 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
      );
  static get titleSmallPrimarySemiBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRalewayBlack900 =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get titleSmallRalewayBluegray900 =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRalewayBluegray900SemiBold =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRalewayGray300 =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: appTheme.gray300,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRalewayOnErrorContainer =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallRalewayPrimary =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallRalewayPrimaryBold =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallRalewayPrimaryBold_1 =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallRalewayPrimarySemiBold =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRobotoRed40001 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.red40001,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get raleway {
    return copyWith(
      fontFamily: 'Raleway',
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

  TextStyle get lexend {
    return copyWith(
      fontFamily: 'Lexend',
    );
  }

  TextStyle get akayaKanadaka {
    return copyWith(
      fontFamily: 'Akaya Kanadaka',
    );
  }
}
