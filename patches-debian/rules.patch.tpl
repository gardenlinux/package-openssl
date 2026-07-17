--- a/debian/rules
+++ b/debian/rules
@@ -30,7 +30,7 @@ ifneq (,$(filter parallel=%,$(DEB_BUILD_OPTIONS)))
 endif
 
 CONFARGS  = --prefix=/usr --openssldir=/usr/lib/ssl --libdir=lib/$(DEB_HOST_MULTIARCH) no-idea no-mdc2 no-rc5 no-ssl3 enable-unit-test no-ssl3-method enable-rfc3779 enable-cms no-capieng no-rdrand \
-	    enable-tfo enable-zstd enable-zlib enable-fips
+	    enable-tfo enable-zstd enable-zlib enable-fips -DOPENSSL_PEDANTIC_ZEROIZATION  '-DGL_FIPS_VERSION="\"$(VERSION)-SED_MARKER_FOR_FIPS_VERSION\""'
 #OPT_alpha = ev4 ev5
 ARCHOPTS  = OPT_$(DEB_HOST_ARCH)
 OPTS      = $($(ARCHOPTS))
