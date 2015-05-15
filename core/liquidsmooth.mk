# STRICT ALIASING
STRICT_ALIASING_FLAGS := \
    -fstrict-aliasing \
    -Werror=strict-aliasing

STRICT_GCC_LEVEL := \
    -Wstrict-aliasing=3

STRICT_CLANG_LEVEL := \
    -Wstrict-aliasing=2

#       GRAPHITE       #
 DISABLE_GRAPHITE := \
    libunwind \
    libFFTEm \
    libicui18n \
    libskia \
    libvpx \
    libmedia_jni \
    libstagefright_mp3dec \
    libart \
    libstagefright_amrwbenc \
    libpdfium \
    libpdfiumcore \
    libwebviewchromium \
    libwebviewchromium_loader \
    libwebviewchromium_plat_support \
    libjni_filtershow_filters \
    fio \
    libwebrtc_spl \
    libpcap \
    libsigchain \
    libFraunhoferAAC

GRAPHITE_FLAGS := \
    -fgraphite \
    -fgraphite-identity \
    -floop-flatten \
    -floop-parallelize-all \
    -ftree-loop-linear \
    -floop-interchange \
    -floop-strip-mine \
    -floop-block

#        LTO        #
LTO_FLAGS := \
    -flto \
    -fuse-linker-plugin    
