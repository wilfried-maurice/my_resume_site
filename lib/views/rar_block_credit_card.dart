import 'package:flutter/material.dart';
import 'package:open_url/open_url.dart';

class RareBlocksCreditCard extends StatelessWidget {
  const RareBlocksCreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isDesktop = constraints.maxWidth > 991;
            final isMobile = constraints.maxWidth <= 640;

            return SingleChildScrollView(
              child: Container(
                color: Colors.white,
                width: double.infinity,
                child: Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: isMobile ? 640 : (isDesktop ? 1600 : 991),
                    ),
                    child: Column(
                      children: [
                        _buildNavBar(isDesktop, isMobile),
                        _buildHeroSection(isDesktop, isMobile),
                        SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.only(left: 56.0),
                          child: Row(
                            children: [
                              Text(
                                '/',
                                style: TextStyle(
                                  fontFamily: 'Plus Jakarta Sans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: const Color(0xffF43F5E),
                                  letterSpacing: 3,
                                ),
                              ),
                              Text(
                                'Mes solutions',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 40),
                        _buildHeroSection2(isDesktop, isMobile),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildNavBar(bool isDesktop, bool isMobile) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 16 : 34,
        vertical: isMobile ? 16 : 17,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Logo
          Row(
            children: [
              Text(
                '/',
                style: TextStyle(
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: const Color(0xffF43F5E),
                  letterSpacing: 3,
                ),
              ),
              Text(
                'willmoCode',
                style: TextStyle(
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  // color:  Color.fromRGB(87,24, 24, 27),
                  letterSpacing: 3,
                ),
              ),
            ],
          ),

          // Navigation links - only visible on desktop
          if (isDesktop)
            Row(
              children: [
                _buildNavItem('Services', ''),
                SizedBox(width: 37),
                _buildNavItem('Github', 'https://github.com/wilfried-maurice'),
                SizedBox(width: 37),
                _buildNavItem('Projects', ''),
                SizedBox(width: 37),
                // _buildNavItem('Apropos', ''),
              ],
            ),

          // Sign in and Create account - hidden on mobile
          if (!isMobile)
            Row(
              children: [
                // _buildNavItem('Inscription', ''),
                SizedBox(width: 21),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    // color: const Color.fromRGB(24, 24, 27),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Créer un compte',
                    style: TextStyle(
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }

  Widget _buildNavItem(String text, String? url) {
    return InkWell(
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w400,
          fontSize: 16,
          // color: const Color.fromRGB(24, 24, 27),
        ),
      ),
      onTap: () => url != null ? openUrl(url) : null,
    );
  }

  Widget _buildHeroSection(bool isDesktop, bool isMobile) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : (isDesktop ? 152 : 40),
      ),
      margin: EdgeInsets.only(top: 60),
      child:
          isDesktop
              ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildHeroContent(isMobile),
                  _buildHeroImage(isDesktop),
                ],
              )
              : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeroContent(isMobile),
                  SizedBox(height: 40),
                  _buildHeroImage(isDesktop),
                ],
              ),
    );
  }

  Widget _buildHeroSection2(bool isDesktop, bool isMobile) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : (isDesktop ? 152 : 40),
      ),
      margin: EdgeInsets.only(top: 60),
      child:
          isDesktop
              ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildHeroContent2(isMobile),
                  _buildHeroImage2(isDesktop),
                ],
              )
              : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeroContent(isMobile),
                  SizedBox(height: 40),
                  _buildHeroImage(isDesktop),
                ],
              ),
    );
  }

  Widget _buildHeroContent(bool isMobile) {
    return Container(
      constraints: BoxConstraints(maxWidth: isMobile ? double.infinity : 481),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Développeur Flutter / Spring boot',
            style: TextStyle(
              fontFamily: 'Plus Jakarta Sans',
              fontWeight: FontWeight.w700,
              fontSize: isMobile ? 32 : 48,
              // color: const Color.fromRGB(24, 24, 27),
            ),
          ),
          SizedBox(height: 24),
          Text(
            ' Développeur Flutter et Spring boot, je suis passionné par la création d\'applications mobiles et web performantes et élégantes. Mon expertise en Flutter me permet de développer des applications multiplateformes de haute qualité, tandis que mes compétences en Spring boot garantissent une architecture backend robuste et évolutive.',
            style: TextStyle(
              fontFamily: 'Plus Jakarta Sans',
              fontSize: 16,
              // color: const Color.fromRGB(24, 24, 27),
            ),
          ),
          SizedBox(height: 32),
          _buildEmailInput(isMobile),
          SizedBox(height: 48),
          _buildStats(isMobile),
        ],
      ),
    );
  }

  Widget _buildHeroContent2(bool isMobile) {
    return Container(
      constraints: BoxConstraints(maxWidth: isMobile ? double.infinity : 481),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 0),
                  blurRadius: 2,
                  spreadRadius: 1,
                  color: Colors.grey,
                ),
              ],
            ),
            width: 600,
            height: 222,
            constraints: BoxConstraints(
              maxWidth: isMobile ? double.infinity : 481,
            ),

            child: Text(
              ' Spring boot',
              style: TextStyle(
                fontFamily: 'Plus Jakarta Sans',
                fontWeight: FontWeight.w700,
                fontSize: isMobile ? 32 : 48,
                // color: const Color.fromRGB(24, 24, 27),
              ),
            ),
          ),
          SizedBox(height: 24),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 0),
                  blurRadius: 2,
                  spreadRadius: 1,
                  color: Colors.grey.withOpacity(0.1),
                ),
              ],
            ),
            width: 600,
            height: 222,
            constraints: BoxConstraints(
              maxWidth: isMobile ? double.infinity : 481,
            ),
            child: Text(
              ' Flutter ',
              style: TextStyle(
                fontFamily: 'Plus Jakarta Sans',
                fontWeight: FontWeight.w700,
                fontSize: isMobile ? 32 : 48,

                // color: const Color.fromRGB(24, 24, 27),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmailInput(bool isMobile) {
    return isMobile
        ? Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Envoyer un message',
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    // color: const Color.fromRGB(229, 231, 235),
                    width: 1,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    // color: const Color.fromRGB(229, 231, 235),
                    width: 1,
                  ),
                ),
              ),
              style: TextStyle(fontFamily: 'Plus Jakarta Sans'),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                // primary: const Color.fromRGB(24, 24, 27),
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Envoyer',
                style: TextStyle(
                  fontFamily: 'Plus Jakarta Sans',
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )
        : Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Envoyer un message',
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      // color: const Color.fromRGB(229, 231, 235),
                      width: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      // color: const Color.fromRGB(229, 231, 235),
                      width: 1,
                    ),
                  ),
                ),
                style: TextStyle(fontFamily: 'Plus Jakarta Sans'),
              ),
            ),
            SizedBox(width: 8),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                // primary: const Color.fromRGB(24, 24, 27),
                backgroundColor: const Color.fromARGB(255, 148, 148, 151),
                padding: EdgeInsets.symmetric(vertical: 22, horizontal: 24),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Envoyer',
                style: TextStyle(
                  fontFamily: 'Plus Jakarta Sans',
                  color: Colors.white,
                ),
              ),
            ),
          ],
        );
  }

  Widget _buildStats(bool isMobile) {
    return isMobile
        ? Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildStatItem('23', 'projets', 'Delivré'),
            SizedBox(height: 24),
            _buildStatItem('+50', 'projets', 'participé'),
          ],
        )
        : Row(
          children: [
            _buildStatItem('23', 'projets', 'Delivré'),
            SizedBox(width: 48),
            _buildStatItem('+50', 'projets', 'participé'),
          ],
        );
  }

  Widget _buildStatItem(String number, String label1, String label2) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(
          number,
          style: TextStyle(
            fontFamily: 'Plus Jakarta Sans',
            fontWeight: FontWeight.w700,
            fontSize: 36,
            // color: const Color.fromRGB(24, 24, 27),
          ),
        ),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label1,
              style: TextStyle(
                fontFamily: 'Plus Jakarta Sans',
                fontSize: 14,
                // color: const Color.fromRGB(107, 114, 128),
              ),
            ),
            Text(
              label2,
              style: TextStyle(
                fontFamily: 'Plus Jakarta Sans',
                fontSize: 14,
                // color: const Color.fromRGB(107, 114, 128),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildHeroImage(bool isDesktop) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(36)),
      constraints: BoxConstraints(maxWidth: isDesktop ? 630 : double.infinity),
      // child: Image.asset("assets/heros.png", fit: BoxFit.cover),
      child: Image.network(
        'https://cdn.dribbble.com/userupload/43037785/file/original-25b0a6877f6601c6e151a6cc5dbbf91d.png?resize=1024x768&vertical=center',
      ),
    );
  }

  Widget _buildHeroImage2(bool isDesktop) {
    return Container(
      constraints: BoxConstraints(maxWidth: isDesktop ? double.infinity : 481),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 0),
                  blurRadius: 2,
                  spreadRadius: 1,
                  color: Colors.grey.withOpacity(0.1),
                ),
              ],
            ),
            width: 600,
            height: 222,
            constraints: BoxConstraints(
              maxWidth: isDesktop ? double.infinity : 481,
            ),

            child: Text(
              ' Spring boot',
              style: TextStyle(
                fontFamily: 'Plus Jakarta Sans',
                fontWeight: FontWeight.w700,
                fontSize: isDesktop ? 32 : 48,
                // color: const Color.fromRGB(24, 24, 27),
              ),
            ),
          ),
          SizedBox(height: 24),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 0),
                  blurRadius: 2,
                  spreadRadius: 1,
                  color: Colors.grey.withOpacity(0.1),
                ),
              ],
            ),

            width: 600,
            height: 222,
            constraints: BoxConstraints(
              maxWidth: isDesktop ? double.infinity : 481,
            ),
            child: Text(
              ' Flutter ',
              style: TextStyle(
                fontFamily: 'Plus Jakarta Sans',
                fontWeight: FontWeight.w700,
                fontSize: isDesktop ? 32 : 48,

                // color: const Color.fromRGB(24, 24, 27),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Extension method to create RGB colors easily
extension ColorExtension on Color {
  static Color fromRGB(int r, int g, int b) {
    return Color.fromRGBO(r, g, b, 1.0);
  }
}
