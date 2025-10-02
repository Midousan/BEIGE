// ===============================================================================
// FASHION HUB - COMPLETE FLUTTER APPLICATION
// ===============================================================================
// This file contains the entire Fashion Hub Flutter app codebase
// Combined from multiple source files for easy distribution
// Generated on: 2025-09-28 12:26:57
// ===============================================================================

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

// ===============================================================================
// MAIN APPLICATION ENTRY POINT
// ===============================================================================

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  bool _hasShownError = false;

  // 🚨 CRITICAL: Custom error handling - DO NOT REMOVE
  ErrorWidget.builder = (FlutterErrorDetails details) {
    if (!_hasShownError) {
      _hasShownError = true;

      // Reset flag after 3 seconds to allow error widget on new screens
      Future.delayed(Duration(seconds: 5), () {
        _hasShownError = false;
      });

      return CustomErrorWidget(
        errorDetails: details,
      );
    }
    return SizedBox.shrink();
  };

  // 🚨 CRITICAL: Device orientation lock - DO NOT REMOVE
  Future.wait([
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  ]).then((value) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        title: 'fashion_hub',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.light,
        // 🚨 CRITICAL: NEVER REMOVE OR MODIFY
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaler: TextScaler.linear(1.0),
            ),
            child: child!,
          );
        },
        // 🚨 END CRITICAL SECTION
        debugShowCheckedModeBanner: false,
        routes: AppRoutes.routes,
        initialRoute: AppRoutes.initial,
      );
    });
  }
}

// ===============================================================================
// APPLICATION ROUTES
// ===============================================================================

class AppRoutes {
  static const String initial = '/';
  static const String splash = '/splash-screen';
  static const String shoppingCart = '/shopping-cart-page';
  static const String category = '/category-page';
  static const String productDetails = '/product-details-page';
  static const String home = '/home-screen';

  static Map<String, WidgetBuilder> routes = {
    initial: (context) => const SplashScreen(),
    splash: (context) => const SplashScreen(),
    shoppingCart: (context) => const ShoppingCartPage(),
    category: (context) => const CategoryPage(),
    productDetails: (context) => const ProductDetailsPage(),
    home: (context) => const HomeScreen(),
  };
}

// ===============================================================================
// THEME CONFIGURATION
// ===============================================================================

class AppTheme {
  AppTheme._();

  // Fashion e-commerce color palette - Warm Neutral Foundation
  static const Color primaryBackgroundLight =
      Color(0xFFF5F1E8); // Warm cream base
  static const Color primaryTextLight = Color(0xFF1A1A1A); // Rich black
  static const Color secondaryTextLight = Color(0xFF6B6B6B); // Medium gray
  static const Color accentActionLight = Color(0xFF2C2C2C); // Deep charcoal
  static const Color surfaceWhiteLight = Color(0xFFFFFFFF); // Pure white
  static const Color borderSubtleLight =
      Color(0xFFE8E3D8); // Barely-there border
  static const Color successGreenLight =
      Color(0xFF4A7C59); // Muted forest green
  static const Color warningAmberLight =
      Color(0xFFB8860B); // Sophisticated gold
  static const Color errorRedLight = Color(0xFFA0522D); // Warm sienna
  static const Color inactiveGrayLight = Color(0xFFC4C4C4); // Light gray

  // Dark theme adaptations maintaining fashion aesthetic
  static const Color primaryBackgroundDark = Color(0xFF1A1A1A);
  static const Color primaryTextDark = Color(0xFFF5F1E8);
  static const Color secondaryTextDark = Color(0xFFB8B8B8);
  static const Color accentActionDark = Color(0xFFE8E3D8);
  static const Color surfaceWhiteDark = Color(0xFF2C2C2C);
  static const Color borderSubtleDark = Color(0xFF3A3A3A);
  static const Color successGreenDark = Color(0xFF6B9C78);
  static const Color warningAmberDark = Color(0xFFD4A017);
  static const Color errorRedDark = Color(0xFFCD853F);
  static const Color inactiveGrayDark = Color(0xFF666666);

  // Shadow colors with warm aesthetic
  static const Color shadowLight =
      Color(0x14F5F1E8); // 8% opacity of background
  static const Color shadowDark = Color(0x1F000000);

  /// Light theme optimized for fashion e-commerce
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: accentActionLight,
      onPrimary: surfaceWhiteLight,
      primaryContainer: primaryBackgroundLight,
      onPrimaryContainer: primaryTextLight,
      secondary: successGreenLight,
      onSecondary: surfaceWhiteLight,
      secondaryContainer: borderSubtleLight,
      onSecondaryContainer: primaryTextLight,
      tertiary: warningAmberLight,
      onTertiary: surfaceWhiteLight,
      tertiaryContainer: primaryBackgroundLight,
      onTertiaryContainer: primaryTextLight,
      error: errorRedLight,
      onError: surfaceWhiteLight,
      surface: surfaceWhiteLight,
      onSurface: primaryTextLight,
      onSurfaceVariant: secondaryTextLight,
      outline: borderSubtleLight,
      outlineVariant: inactiveGrayLight,
      shadow: shadowLight,
      scrim: shadowLight,
      inverseSurface: accentActionLight,
      onInverseSurface: surfaceWhiteLight,
      inversePrimary: primaryBackgroundLight,
    ),
    scaffoldBackgroundColor: primaryBackgroundLight,
    cardColor: surfaceWhiteLight,
    dividerColor: borderSubtleLight,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryBackgroundLight,
      foregroundColor: primaryTextLight,
      elevation: 0,
      shadowColor: shadowLight,
      surfaceTintColor: Colors.transparent,
      titleTextStyle: GoogleFonts.inter(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: primaryTextLight,
        letterSpacing: 0.15,
      ),
      iconTheme: const IconThemeData(
        color: primaryTextLight,
        size: 24,
      ),
    ),
    textTheme: _buildTextTheme(isLight: true),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: surfaceWhiteLight,
        backgroundColor: accentActionLight,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        textStyle: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.1,
        ),
      ),
    ),
    cardTheme: CardTheme(
      color: surfaceWhiteLight,
      elevation: 1,
      shadowColor: shadowLight,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      margin: const EdgeInsets.all(4.0),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: surfaceWhiteLight,
      selectedItemColor: accentActionLight,
      unselectedItemColor: secondaryTextLight,
      elevation: 2,
      type: BottomNavigationBarType.fixed,
    ),
  );

  /// Dark theme maintaining fashion aesthetic
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: accentActionDark,
      onPrimary: primaryBackgroundDark,
      primaryContainer: surfaceWhiteDark,
      onPrimaryContainer: primaryTextDark,
      secondary: successGreenDark,
      onSecondary: primaryBackgroundDark,
      secondaryContainer: borderSubtleDark,
      onSecondaryContainer: primaryTextDark,
      tertiary: warningAmberDark,
      onTertiary: primaryBackgroundDark,
      tertiaryContainer: surfaceWhiteDark,
      onTertiaryContainer: primaryTextDark,
      error: errorRedDark,
      onError: primaryBackgroundDark,
      surface: surfaceWhiteDark,
      onSurface: primaryTextDark,
      onSurfaceVariant: secondaryTextDark,
      outline: borderSubtleDark,
      outlineVariant: inactiveGrayDark,
      shadow: shadowDark,
      scrim: shadowDark,
      inverseSurface: accentActionDark,
      onInverseSurface: primaryBackgroundDark,
      inversePrimary: surfaceWhiteDark,
    ),
    scaffoldBackgroundColor: primaryBackgroundDark,
    cardColor: surfaceWhiteDark,
    dividerColor: borderSubtleDark,
    textTheme: _buildTextTheme(isLight: false),
  );

  /// Helper method to build text theme based on brightness using Inter font
  static TextTheme _buildTextTheme({required bool isLight}) {
    final Color textHighEmphasis = isLight ? primaryTextLight : primaryTextDark;
    final Color textMediumEmphasis =
        isLight ? secondaryTextLight : secondaryTextDark;
    final Color textDisabled = isLight ? inactiveGrayLight : inactiveGrayDark;

    return TextTheme(
      displayLarge: GoogleFonts.inter(
        fontSize: 57,
        fontWeight: FontWeight.w700,
        color: textHighEmphasis,
        letterSpacing: -0.25,
      ),
      displayMedium: GoogleFonts.inter(
        fontSize: 45,
        fontWeight: FontWeight.w700,
        color: textHighEmphasis,
      ),
      displaySmall: GoogleFonts.inter(
        fontSize: 36,
        fontWeight: FontWeight.w600,
        color: textHighEmphasis,
      ),
      headlineLarge: GoogleFonts.inter(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: textHighEmphasis,
      ),
      headlineMedium: GoogleFonts.inter(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: textHighEmphasis,
      ),
      headlineSmall: GoogleFonts.inter(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: textHighEmphasis,
      ),
      titleLarge: GoogleFonts.inter(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: textHighEmphasis,
        letterSpacing: 0.15,
      ),
      titleMedium: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: textHighEmphasis,
        letterSpacing: 0.15,
      ),
      titleSmall: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: textHighEmphasis,
        letterSpacing: 0.1,
      ),
      bodyLarge: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: textHighEmphasis,
        letterSpacing: 0.5,
      ),
      bodyMedium: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: textHighEmphasis,
        letterSpacing: 0.25,
      ),
      bodySmall: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w300,
        color: textMediumEmphasis,
        letterSpacing: 0.4,
      ),
      labelLarge: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: textHighEmphasis,
        letterSpacing: 0.1,
      ),
      labelMedium: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: textMediumEmphasis,
        letterSpacing: 0.5,
      ),
      labelSmall: GoogleFonts.inter(
        fontSize: 11,
        fontWeight: FontWeight.w400,
        color: textDisabled,
        letterSpacing: 0.5,
      ),
    );
  }
}

// ===============================================================================
// CUSTOM WIDGETS
// ===============================================================================

class CustomImageWidget extends StatelessWidget {
  final String? imageUrl;
  final double width;
  final double height;
  final BoxFit fit;
  final Widget? errorWidget;

  const CustomImageWidget({
    Key? key,
    required this.imageUrl,
    this.width = 60,
    this.height = 60,
    this.fit = BoxFit.cover,
    this.errorWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl ??
          'https://images.unsplash.com/photo-1584824486509-112e4181ff6b?q=80&w=2940&auto=format&fit=crop',
      width: width,
      height: height,
      fit: fit,
      errorWidget: (context, url, error) =>
          errorWidget ??
          Container(
            width: width,
            height: height,
            color: AppTheme.borderSubtleLight,
            child: const Icon(Icons.broken_image),
          ),
      placeholder: (context, url) => Container(
        width: width,
        height: height,
        color: Colors.grey[200],
        child: const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

class CustomIconWidget extends StatelessWidget {
  final String iconName;
  final Color? color;
  final double? size;

  const CustomIconWidget({
    Key? key,
    required this.iconName,
    this.color,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IconData iconData;

    switch (iconName) {
      case 'error_outline':
        iconData = Icons.error_outline;
        break;
      case 'shopping_cart':
        iconData = Icons.shopping_cart;
        break;
      case 'home':
        iconData = Icons.home;
        break;
      case 'search':
        iconData = Icons.search;
        break;
      case 'favorite':
        iconData = Icons.favorite;
        break;
      case 'person':
        iconData = Icons.person;
        break;
      case 'menu':
        iconData = Icons.menu;
        break;
      case 'notifications':
        iconData = Icons.notifications;
        break;
      case 'category':
        iconData = Icons.category;
        break;
      case 'filter_list':
        iconData = Icons.filter_list;
        break;
      case 'sort':
        iconData = Icons.sort;
        break;
      case 'add':
        iconData = Icons.add;
        break;
      case 'remove':
        iconData = Icons.remove;
        break;
      case 'delete':
        iconData = Icons.delete;
        break;
      case 'arrow_back':
        iconData = Icons.arrow_back;
        break;
      case 'arrow_forward':
        iconData = Icons.arrow_forward;
        break;
      case 'star':
        iconData = Icons.star;
        break;
      case 'star_border':
        iconData = Icons.star_border;
        break;
      case 'share':
        iconData = Icons.share;
        break;
      case 'more_vert':
        iconData = Icons.more_vert;
        break;
      default:
        iconData = Icons.help_outline;
    }

    return Icon(
      iconData,
      color: color,
      size: size,
    );
  }
}

class CustomErrorWidget extends StatelessWidget {
  final FlutterErrorDetails errorDetails;

  const CustomErrorWidget({
    Key? key,
    required this.errorDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryBackgroundLight,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomIconWidget(
                iconName: 'error_outline',
                color: AppTheme.errorRedLight,
                size: 64,
              ),
              const SizedBox(height: 16),
              Text(
                'Oops! Something went wrong',
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                'We\'re working to fix this issue',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ===============================================================================
// SPLASH SCREEN
// ===============================================================================

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  bool _isLoading = true;
  bool _showRetry = false;

  @override
  void initState() {
    super.initState();
    _initializeAnimations();
    _initializeApp();
  }

  void _initializeAnimations() {
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    _animationController.forward();
  }

  Future<void> _initializeApp() async {
    try {
      await Future.wait([
        _loadProductCategories(),
        _initializeCartState(),
        _fetchPromotionalBanners(),
        _prepareCachedFashionData(),
      ]);

      await Future.delayed(const Duration(milliseconds: 2500));

      if (mounted) {
        _navigateToHome();
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = false;
          _showRetry = true;
        });
      }
    }
  }

  Future<void> _loadProductCategories() async {
    await Future.delayed(const Duration(milliseconds: 800));
  }

  Future<void> _initializeCartState() async {
    await Future.delayed(const Duration(milliseconds: 600));
  }

  Future<void> _fetchPromotionalBanners() async {
    await Future.delayed(const Duration(milliseconds: 700));
  }

  Future<void> _prepareCachedFashionData() async {
    await Future.delayed(const Duration(milliseconds: 900));
  }

  void _navigateToHome() {
    Navigator.pushReplacementNamed(context, AppRoutes.home);
  }

  void _retryInitialization() {
    setState(() {
      _isLoading = true;
      _showRetry = false;
    });
    _initializeApp();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryBackgroundLight,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: AppTheme.primaryBackgroundLight,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 2),
              _buildLogo(),
              SizedBox(height: 8.h),
              _buildLoadingSection(),
              const Spacer(flex: 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: Column(
        children: [
          Container(
            width: 20.w,
            height: 20.w,
            decoration: BoxDecoration(
              color: AppTheme.accentActionLight,
              borderRadius: BorderRadius.circular(4.w),
            ),
            child: Center(
              child: Text(
                'FH',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  color: AppTheme.surfaceWhiteLight,
                  letterSpacing: -0.5,
                ),
              ),
            ),
          ),
          SizedBox(height: 3.h),
          Text(
            'Fashion Hub',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppTheme.primaryTextLight,
              letterSpacing: 0.15,
            ),
          ),
          SizedBox(height: 1.h),
          Text(
            'Discover Your Style',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppTheme.secondaryTextLight,
              letterSpacing: 0.25,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoadingSection() {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: _showRetry ? _buildRetrySection() : _buildLoadingIndicator(),
    );
  }

  Widget _buildLoadingIndicator() {
    return _isLoading
        ? Column(
            key: const ValueKey('loading'),
            children: [
              SizedBox(
                width: 6.w,
                height: 6.w,
                child: CircularProgressIndicator(
                  strokeWidth: 2.0,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    AppTheme.accentActionLight,
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                'Loading your fashion experience...',
                style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                  color: AppTheme.secondaryTextLight,
                  letterSpacing: 0.4,
                ),
              ),
            ],
          )
        : const SizedBox.shrink();
  }

  Widget _buildRetrySection() {
    return Column(
      key: const ValueKey('retry'),
      children: [
        CustomIconWidget(
          iconName: 'error_outline',
          color: AppTheme.errorRedLight,
          size: 8.w,
        ),
        SizedBox(height: 2.h),
        Text(
          'Connection timeout',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppTheme.primaryTextLight,
            letterSpacing: 0.1,
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          'Please check your internet connection',
          style: TextStyle(
            fontSize: 11.sp,
            fontWeight: FontWeight.w400,
            color: AppTheme.secondaryTextLight,
            letterSpacing: 0.25,
          ),
        ),
        SizedBox(height: 3.h),
        ElevatedButton(
          onPressed: _retryInitialization,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppTheme.accentActionLight,
            foregroundColor: AppTheme.surfaceWhiteLight,
            elevation: 0,
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2.w),
            ),
          ),
          child: Text(
            'Retry',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.1,
            ),
          ),
        ),
      ],
    );
  }
}

// ===============================================================================
// HOME SCREEN
// ===============================================================================

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryBackgroundLight,
      body: SafeArea(
        child: Column(
          children: [
            _buildAppBar(),
            _buildSearchBar(),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) => setState(() => _currentIndex = index),
                children: [
                  _buildHomeContent(),
                  _buildExploreContent(),
                  _buildFavoritesContent(),
                  _buildProfileContent(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildAppBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Fashion Hub',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: AppTheme.primaryTextLight,
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () =>
                    Navigator.pushNamed(context, AppRoutes.shoppingCart),
                icon: const CustomIconWidget(
                  iconName: 'shopping_cart',
                  color: AppTheme.primaryTextLight,
                  size: 24,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const CustomIconWidget(
                  iconName: 'notifications',
                  color: AppTheme.primaryTextLight,
                  size: 24,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
      decoration: BoxDecoration(
        color: AppTheme.surfaceWhiteLight,
        borderRadius: BorderRadius.circular(2.w),
        border: Border.all(color: AppTheme.borderSubtleLight),
      ),
      child: Row(
        children: [
          const CustomIconWidget(
            iconName: 'search',
            color: AppTheme.secondaryTextLight,
            size: 20,
          ),
          SizedBox(width: 2.w),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for fashion items...',
                border: InputBorder.none,
                hintStyle: TextStyle(
                  color: AppTheme.secondaryTextLight,
                  fontSize: 14.sp,
                ),
              ),
              onTap: () => Navigator.pushNamed(context, AppRoutes.category),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHomeContent() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPromotionalBanner(),
          _buildCategoryGrid(),
          _buildFeaturedProducts(),
        ],
      ),
    );
  }

  Widget _buildPromotionalBanner() {
    return Container(
      margin: EdgeInsets.all(4.w),
      height: 20.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.w),
        gradient: const LinearGradient(
          colors: [AppTheme.accentActionLight, AppTheme.secondaryTextLight],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 6.w,
            top: 4.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Summer Sale',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: AppTheme.surfaceWhiteLight,
                  ),
                ),
                SizedBox(height: 1.h),
                Text(
                  'Up to 50% off',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: AppTheme.surfaceWhiteLight,
                  ),
                ),
                SizedBox(height: 2.h),
                ElevatedButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, AppRoutes.category),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.surfaceWhiteLight,
                    foregroundColor: AppTheme.accentActionLight,
                  ),
                  child: Text('Shop Now'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryGrid() {
    final categories = [
      {'name': 'Dresses', 'icon': 'category'},
      {'name': 'Shoes', 'icon': 'category'},
      {'name': 'Accessories', 'icon': 'category'},
      {'name': 'Bags', 'icon': 'category'},
    ];

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Categories',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppTheme.primaryTextLight,
            ),
          ),
          SizedBox(height: 2.h),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2.5,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final category = categories[index];
              return GestureDetector(
                onTap: () => Navigator.pushNamed(context, AppRoutes.category),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppTheme.surfaceWhiteLight,
                    borderRadius: BorderRadius.circular(2.w),
                    border: Border.all(color: AppTheme.borderSubtleLight),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconWidget(
                        iconName: category['icon']!,
                        color: AppTheme.accentActionLight,
                        size: 24,
                      ),
                      SizedBox(width: 2.w),
                      Text(
                        category['name']!,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppTheme.primaryTextLight,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturedProducts() {
    return Container(
      padding: EdgeInsets.all(4.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Featured Products',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.primaryTextLight,
                ),
              ),
              TextButton(
                onPressed: () =>
                    Navigator.pushNamed(context, AppRoutes.category),
                child: Text('View All'),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          SizedBox(
            height: 35.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) => _buildProductCard(index),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard(int index) {
    final products = [
      {
        'name': 'Summer Dress',
        'price': '\$89.99',
        'image':
            'https://images.unsplash.com/photo-1515372039744-b8f02a3ae446?q=80&w=1988&auto=format&fit=crop',
      },
      {
        'name': 'Classic Jeans',
        'price': '\$59.99',
        'image':
            'https://images.unsplash.com/photo-1541099649105-f69ad21f3246?q=80&w=1587&auto=format&fit=crop',
      },
      {
        'name': 'Designer Bag',
        'price': '\$149.99',
        'image':
            'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?q=80&w=1587&auto=format&fit=crop',
      },
      {
        'name': 'Sneakers',
        'price': '\$79.99',
        'image':
            'https://images.unsplash.com/photo-1549298916-b41d501d3772?q=80&w=2012&auto=format&fit=crop',
      },
      {
        'name': 'Blouse',
        'price': '\$49.99',
        'image':
            'https://images.unsplash.com/photo-1564257577-9f4c0d4d8f4d?q=80&w=1587&auto=format&fit=crop',
      },
    ];

    final product = products[index % products.length];

    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, AppRoutes.productDetails),
      child: Container(
        width: 40.w,
        margin: EdgeInsets.only(right: 4.w),
        decoration: BoxDecoration(
          color: AppTheme.surfaceWhiteLight,
          borderRadius: BorderRadius.circular(3.w),
          boxShadow: [
            BoxShadow(
              color: AppTheme.shadowLight,
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(3.w)),
                child: CustomImageWidget(
                  imageUrl: product['image']!,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(3.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product['name']!,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.primaryTextLight,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product['price']!,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: AppTheme.accentActionLight,
                          ),
                        ),
                        const CustomIconWidget(
                          iconName: 'favorite',
                          color: AppTheme.secondaryTextLight,
                          size: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExploreContent() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomIconWidget(
            iconName: 'search',
            color: AppTheme.secondaryTextLight,
            size: 64,
          ),
          SizedBox(height: 2.h),
          Text(
            'Explore Fashion',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppTheme.primaryTextLight,
            ),
          ),
          SizedBox(height: 1.h),
          Text(
            'Discover new trends and styles',
            style: TextStyle(
              fontSize: 14.sp,
              color: AppTheme.secondaryTextLight,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFavoritesContent() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomIconWidget(
            iconName: 'favorite',
            color: AppTheme.secondaryTextLight,
            size: 64,
          ),
          SizedBox(height: 2.h),
          Text(
            'Your Favorites',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppTheme.primaryTextLight,
            ),
          ),
          SizedBox(height: 1.h),
          Text(
            'Save items you love',
            style: TextStyle(
              fontSize: 14.sp,
              color: AppTheme.secondaryTextLight,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileContent() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomIconWidget(
            iconName: 'person',
            color: AppTheme.secondaryTextLight,
            size: 64,
          ),
          SizedBox(height: 2.h),
          Text(
            'Profile',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppTheme.primaryTextLight,
            ),
          ),
          SizedBox(height: 1.h),
          Text(
            'Manage your account',
            style: TextStyle(
              fontSize: 14.sp,
              color: AppTheme.secondaryTextLight,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() => _currentIndex = index);
        _pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      },
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppTheme.surfaceWhiteLight,
      selectedItemColor: AppTheme.accentActionLight,
      unselectedItemColor: AppTheme.secondaryTextLight,
      items: const [
        BottomNavigationBarItem(
          icon: CustomIconWidget(iconName: 'home'),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: CustomIconWidget(iconName: 'search'),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: CustomIconWidget(iconName: 'favorite'),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: CustomIconWidget(iconName: 'person'),
          label: 'Profile',
        ),
      ],
    );
  }
}

// ===============================================================================
// CATEGORY PAGE
// ===============================================================================

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  String _selectedCategory = 'All';
  String _sortBy = 'Popular';
  List<Map<String, String>> _products = [];

  @override
  void initState() {
    super.initState();
    _loadProducts();
  }

  void _loadProducts() {
    _products = List.generate(20, (index) {
      final productNames = [
        'Summer Dress',
        'Classic Jeans',
        'Designer Bag',
        'Sneakers',
        'Blouse'
      ];
      final images = [
        'https://images.unsplash.com/photo-1515372039744-b8f02a3ae446?q=80&w=1988&auto=format&fit=crop',
        'https://images.unsplash.com/photo-1541099649105-f69ad21f3246?q=80&w=1587&auto=format&fit=crop',
        'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?q=80&w=1587&auto=format&fit=crop',
        'https://images.unsplash.com/photo-1549298916-b41d501d3772?q=80&w=2012&auto=format&fit=crop',
        'https://images.unsplash.com/photo-1564257577-9f4c0d4d8f4d?q=80&w=1587&auto=format&fit=crop',
      ];

      return {
        'name': '${productNames[index % productNames.length]} ${index + 1}',
        'price': '\$${(30 + (index * 10)).toString()}.99',
        'image': images[index % images.length],
        'category': [
          'All',
          'Dresses',
          'Shoes',
          'Bags',
          'Accessories'
        ][index % 5],
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryBackgroundLight,
      appBar: AppBar(
        title: const Text('Categories'),
        backgroundColor: AppTheme.primaryBackgroundLight,
        foregroundColor: AppTheme.primaryTextLight,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () =>
                Navigator.pushNamed(context, AppRoutes.shoppingCart),
            icon: const CustomIconWidget(
              iconName: 'shopping_cart',
              color: AppTheme.primaryTextLight,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          _buildFilterBar(),
          Expanded(child: _buildProductGrid()),
        ],
      ),
    );
  }

  Widget _buildFilterBar() {
    final categories = ['All', 'Dresses', 'Shoes', 'Bags', 'Accessories'];

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: categories.map((category) {
                final isSelected = _selectedCategory == category;
                return GestureDetector(
                  onTap: () => setState(() => _selectedCategory = category),
                  child: Container(
                    margin: EdgeInsets.only(right: 2.w),
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? AppTheme.accentActionLight
                          : AppTheme.surfaceWhiteLight,
                      borderRadius: BorderRadius.circular(6.w),
                      border: Border.all(
                        color: isSelected
                            ? AppTheme.accentActionLight
                            : AppTheme.borderSubtleLight,
                      ),
                    ),
                    child: Text(
                      category,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: isSelected
                            ? AppTheme.surfaceWhiteLight
                            : AppTheme.primaryTextLight,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 2.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${_getFilteredProducts().length} items',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppTheme.secondaryTextLight,
                ),
              ),
              GestureDetector(
                onTap: _showSortBottomSheet,
                child: Row(
                  children: [
                    const CustomIconWidget(
                      iconName: 'sort',
                      color: AppTheme.accentActionLight,
                      size: 20,
                    ),
                    SizedBox(width: 1.w),
                    Text(
                      _sortBy,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: AppTheme.accentActionLight,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProductGrid() {
    final filteredProducts = _getFilteredProducts();

    if (filteredProducts.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomIconWidget(
              iconName: 'search',
              color: AppTheme.secondaryTextLight,
              size: 64,
            ),
            SizedBox(height: 2.h),
            Text(
              'No products found',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppTheme.primaryTextLight,
              ),
            ),
            SizedBox(height: 1.h),
            Text(
              'Try a different category',
              style: TextStyle(
                fontSize: 14.sp,
                color: AppTheme.secondaryTextLight,
              ),
            ),
          ],
        ),
      );
    }

    return GridView.builder(
      padding: EdgeInsets.all(4.w),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: filteredProducts.length,
      itemBuilder: (context, index) =>
          _buildProductCard(filteredProducts[index]),
    );
  }

  Widget _buildProductCard(Map<String, String> product) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, AppRoutes.productDetails),
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.surfaceWhiteLight,
          borderRadius: BorderRadius.circular(3.w),
          boxShadow: [
            BoxShadow(
              color: AppTheme.shadowLight,
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(3.w)),
                child: CustomImageWidget(
                  imageUrl: product['image']!,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(3.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product['name']!,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.primaryTextLight,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product['price']!,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: AppTheme.accentActionLight,
                          ),
                        ),
                        const CustomIconWidget(
                          iconName: 'favorite',
                          color: AppTheme.secondaryTextLight,
                          size: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Map<String, String>> _getFilteredProducts() {
    if (_selectedCategory == 'All') {
      return _products;
    }
    return _products
        .where((product) => product['category'] == _selectedCategory)
        .toList();
  }

  void _showSortBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppTheme.surfaceWhiteLight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(5.w)),
      ),
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(6.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sort by',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.primaryTextLight,
                ),
              ),
              SizedBox(height: 3.h),
              ...[
                'Popular',
                'Price: Low to High',
                'Price: High to Low',
                'Newest'
              ].map(
                (option) => ListTile(
                  title: Text(
                    option,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: AppTheme.primaryTextLight,
                    ),
                  ),
                  leading: Radio<String>(
                    value: option,
                    groupValue: _sortBy,
                    onChanged: (value) {
                      setState(() => _sortBy = value!);
                      Navigator.pop(context);
                    },
                    activeColor: AppTheme.accentActionLight,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

// ===============================================================================
// PRODUCT DETAILS PAGE
// ===============================================================================

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int _currentImageIndex = 0;
  String _selectedSize = 'M';
  String _selectedColor = 'Black';
  int _quantity = 1;

  final List<String> _productImages = [
    'https://images.unsplash.com/photo-1515372039744-b8f02a3ae446?q=80&w=1988&auto=format&fit=crop',
    'https://images.unsplash.com/photo-1564257577-9f4c0d4d8f4d?q=80&w=1587&auto=format&fit=crop',
    'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?q=80&w=1587&auto=format&fit=crop',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryBackgroundLight,
      body: SafeArea(
        child: Column(
          children: [
            _buildAppBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildImageGallery(),
                    _buildProductInfo(),
                    _buildSizeSelector(),
                    _buildColorSelector(),
                    _buildDescription(),
                  ],
                ),
              ),
            ),
            _buildAddToCartSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const CustomIconWidget(
              iconName: 'arrow_back',
              color: AppTheme.primaryTextLight,
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const CustomIconWidget(
                  iconName: 'share',
                  color: AppTheme.primaryTextLight,
                ),
              ),
              IconButton(
                onPressed: () =>
                    Navigator.pushNamed(context, AppRoutes.shoppingCart),
                icon: const CustomIconWidget(
                  iconName: 'shopping_cart',
                  color: AppTheme.primaryTextLight,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildImageGallery() {
    return Container(
      height: 50.h,
      child: PageView.builder(
        itemCount: _productImages.length,
        onPageChanged: (index) => setState(() => _currentImageIndex = index),
        itemBuilder: (context, index) {
          return CustomImageWidget(
            imageUrl: _productImages[index],
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }

  Widget _buildProductInfo() {
    return Container(
      padding: EdgeInsets.all(4.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  'Summer Elegant Dress',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: AppTheme.primaryTextLight,
                  ),
                ),
              ),
              const CustomIconWidget(
                iconName: 'favorite',
                color: AppTheme.secondaryTextLight,
                size: 24,
              ),
            ],
          ),
          SizedBox(height: 1.h),
          Row(
            children: [
              ...List.generate(5, (index) {
                return CustomIconWidget(
                  iconName: index < 4 ? 'star' : 'star_border',
                  color: AppTheme.warningAmberLight,
                  size: 18,
                );
              }),
              SizedBox(width: 2.w),
              Text(
                '4.5 (123 reviews)',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: AppTheme.secondaryTextLight,
                ),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          Text(
            '\$89.99',
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
              color: AppTheme.accentActionLight,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSizeSelector() {
    final sizes = ['XS', 'S', 'M', 'L', 'XL'];

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Size',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: AppTheme.primaryTextLight,
            ),
          ),
          SizedBox(height: 1.h),
          Row(
            children: sizes.map((size) {
              final isSelected = _selectedSize == size;
              return GestureDetector(
                onTap: () => setState(() => _selectedSize = size),
                child: Container(
                  margin: EdgeInsets.only(right: 2.w),
                  padding:
                      EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.5.h),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppTheme.accentActionLight
                        : AppTheme.surfaceWhiteLight,
                    borderRadius: BorderRadius.circular(2.w),
                    border: Border.all(
                      color: isSelected
                          ? AppTheme.accentActionLight
                          : AppTheme.borderSubtleLight,
                    ),
                  ),
                  child: Text(
                    size,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: isSelected
                          ? AppTheme.surfaceWhiteLight
                          : AppTheme.primaryTextLight,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildColorSelector() {
    final colors = [
      {'name': 'Black', 'color': Colors.black},
      {'name': 'White', 'color': Colors.white},
      {'name': 'Blue', 'color': Colors.blue},
      {'name': 'Red', 'color': Colors.red},
    ];

    return Container(
      padding: EdgeInsets.all(4.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Color',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: AppTheme.primaryTextLight,
            ),
          ),
          SizedBox(height: 1.h),
          Row(
            children: colors.map((colorData) {
              final isSelected = _selectedColor == colorData['name'];
              return GestureDetector(
                onTap: () => setState(
                    () => _selectedColor = colorData['name'] as String),
                child: Container(
                  margin: EdgeInsets.only(right: 3.w),
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: isSelected
                          ? AppTheme.accentActionLight
                          : AppTheme.borderSubtleLight,
                      width: isSelected ? 2 : 1,
                    ),
                  ),
                  child: Container(
                    width: 8.w,
                    height: 8.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: colorData['color'] as Color,
                      border: colorData['name'] == 'White'
                          ? Border.all(color: AppTheme.borderSubtleLight)
                          : null,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildDescription() {
    return Container(
      padding: EdgeInsets.all(4.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: AppTheme.primaryTextLight,
            ),
          ),
          SizedBox(height: 1.h),
          Text(
            'This elegant summer dress is perfect for any occasion. Made from high-quality materials, it offers comfort and style. The classic design with modern touches makes it a versatile piece for your wardrobe.',
            style: TextStyle(
              fontSize: 14.sp,
              color: AppTheme.secondaryTextLight,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddToCartSection() {
    return Container(
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        color: AppTheme.surfaceWhiteLight,
        borderRadius: BorderRadius.vertical(top: Radius.circular(5.w)),
        boxShadow: [
          BoxShadow(
            color: AppTheme.shadowLight,
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: AppTheme.borderSubtleLight),
              borderRadius: BorderRadius.circular(2.w),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    if (_quantity > 1) {
                      setState(() => _quantity--);
                    }
                  },
                  icon: const CustomIconWidget(
                    iconName: 'remove',
                    color: AppTheme.primaryTextLight,
                  ),
                ),
                Text(
                  _quantity.toString(),
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.primaryTextLight,
                  ),
                ),
                IconButton(
                  onPressed: () => setState(() => _quantity++),
                  icon: const CustomIconWidget(
                    iconName: 'add',
                    color: AppTheme.primaryTextLight,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 4.w),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Added to cart!'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.accentActionLight,
                foregroundColor: AppTheme.surfaceWhiteLight,
                padding: EdgeInsets.symmetric(vertical: 2.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.w),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomIconWidget(
                    iconName: 'shopping_cart',
                    color: AppTheme.surfaceWhiteLight,
                    size: 20,
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    'Add to Cart',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ===============================================================================
// SHOPPING CART PAGE
// ===============================================================================

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({super.key});

  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  List<Map<String, dynamic>> _cartItems = [
    {
      'name': 'Summer Dress',
      'price': 89.99,
      'quantity': 1,
      'size': 'M',
      'color': 'Black',
      'image':
          'https://images.unsplash.com/photo-1515372039744-b8f02a3ae446?q=80&w=1988&auto=format&fit=crop',
    },
    {
      'name': 'Classic Jeans',
      'price': 59.99,
      'quantity': 2,
      'size': 'L',
      'color': 'Blue',
      'image':
          'https://images.unsplash.com/photo-1541099649105-f69ad21f3246?q=80&w=1587&auto=format&fit=crop',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryBackgroundLight,
      appBar: AppBar(
        title: Text('Shopping Cart (${_cartItems.length})'),
        backgroundColor: AppTheme.primaryBackgroundLight,
        foregroundColor: AppTheme.primaryTextLight,
        elevation: 0,
      ),
      body: _cartItems.isEmpty ? _buildEmptyCart() : _buildCartContent(),
      bottomNavigationBar: _cartItems.isEmpty ? null : _buildCheckoutSection(),
    );
  }

  Widget _buildEmptyCart() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomIconWidget(
            iconName: 'shopping_cart',
            color: AppTheme.secondaryTextLight,
            size: 64,
          ),
          SizedBox(height: 2.h),
          Text(
            'Your cart is empty',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppTheme.primaryTextLight,
            ),
          ),
          SizedBox(height: 1.h),
          Text(
            'Add some items to get started',
            style: TextStyle(
              fontSize: 14.sp,
              color: AppTheme.secondaryTextLight,
            ),
          ),
          SizedBox(height: 4.h),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, AppRoutes.category),
            child: const Text('Start Shopping'),
          ),
        ],
      ),
    );
  }

  Widget _buildCartContent() {
    return ListView.builder(
      padding: EdgeInsets.all(4.w),
      itemCount: _cartItems.length,
      itemBuilder: (context, index) => _buildCartItem(_cartItems[index], index),
    );
  }

  Widget _buildCartItem(Map<String, dynamic> item, int index) {
    return Container(
      margin: EdgeInsets.only(bottom: 3.h),
      padding: EdgeInsets.all(3.w),
      decoration: BoxDecoration(
        color: AppTheme.surfaceWhiteLight,
        borderRadius: BorderRadius.circular(3.w),
        boxShadow: [
          BoxShadow(
            color: AppTheme.shadowLight,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(2.w),
            child: CustomImageWidget(
              imageUrl: item['image'],
              width: 20.w,
              height: 20.w,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 3.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['name'],
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.primaryTextLight,
                  ),
                ),
                SizedBox(height: 0.5.h),
                Text(
                  'Size: ${item['size']}, Color: ${item['color']}',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: AppTheme.secondaryTextLight,
                  ),
                ),
                SizedBox(height: 1.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${item['price'].toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: AppTheme.accentActionLight,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: AppTheme.borderSubtleLight),
                            borderRadius: BorderRadius.circular(1.w),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () => _updateQuantity(
                                    index, item['quantity'] - 1),
                                icon: const CustomIconWidget(
                                  iconName: 'remove',
                                  color: AppTheme.primaryTextLight,
                                  size: 16,
                                ),
                                constraints: const BoxConstraints(),
                                padding: EdgeInsets.all(1.w),
                              ),
                              Text(
                                item['quantity'].toString(),
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppTheme.primaryTextLight,
                                ),
                              ),
                              IconButton(
                                onPressed: () => _updateQuantity(
                                    index, item['quantity'] + 1),
                                icon: const CustomIconWidget(
                                  iconName: 'add',
                                  color: AppTheme.primaryTextLight,
                                  size: 16,
                                ),
                                constraints: const BoxConstraints(),
                                padding: EdgeInsets.all(1.w),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 2.w),
                        IconButton(
                          onPressed: () => _removeItem(index),
                          icon: const CustomIconWidget(
                            iconName: 'delete',
                            color: AppTheme.errorRedLight,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCheckoutSection() {
    final subtotal = _cartItems.fold<double>(
        0, (sum, item) => sum + (item['price'] * item['quantity']));
    const shipping = 5.99;
    final total = subtotal + shipping;

    return Container(
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        color: AppTheme.surfaceWhiteLight,
        borderRadius: BorderRadius.vertical(top: Radius.circular(5.w)),
        boxShadow: [
          BoxShadow(
            color: AppTheme.shadowLight,
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppTheme.secondaryTextLight,
                ),
              ),
              Text(
                '\$${subtotal.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppTheme.primaryTextLight,
                ),
              ),
            ],
          ),
          SizedBox(height: 1.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Shipping',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppTheme.secondaryTextLight,
                ),
              ),
              Text(
                '\$${shipping.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppTheme.primaryTextLight,
                ),
              ),
            ],
          ),
          Divider(height: 3.h, color: AppTheme.borderSubtleLight),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: AppTheme.primaryTextLight,
                ),
              ),
              Text(
                '\$${total.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: AppTheme.accentActionLight,
                ),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Proceeding to checkout...'),
                  duration: Duration(seconds: 2),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppTheme.accentActionLight,
              foregroundColor: AppTheme.surfaceWhiteLight,
              padding: EdgeInsets.symmetric(vertical: 2.h),
              minimumSize: Size(double.infinity, 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2.w),
              ),
            ),
            child: Text(
              'Checkout',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _updateQuantity(int index, int newQuantity) {
    if (newQuantity < 1) {
      _removeItem(index);
    } else {
      setState(() {
        _cartItems[index]['quantity'] = newQuantity;
      });
    }
  }

  void _removeItem(int index) {
    setState(() {
      _cartItems.removeAt(index);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Item removed from cart'),
        duration: Duration(seconds: 2),
      ),
    );
  }
}

// ===============================================================================
// END OF FASHION HUB COMPLETE APPLICATION
// ===============================================================================
