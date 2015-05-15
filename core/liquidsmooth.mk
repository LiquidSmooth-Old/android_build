# GRAPHITE

ifeq ($(GRAPHITE),true)
ifndef LOCAL_IS_HOST_MODULE
ifeq ($(LOCAL_CLANG),)
LOCAL_DISABLE_GRAPHITE := \
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
	libFraunhoferAAC

ifneq (1,$(words $(filter $(LOCAL_DISABLE_GRAPHITE), $(LOCAL_MODULE))))
ifdef LOCAL_CONLYFLAGS
LOCAL_CONLYFLAGS += \
	-fgraphite \
	-fgraphite-identity \
	-floop-flatten \
	-floop-parallelize-all \
	-ftree-loop-linear \
	-floop-interchange \
	-floop-strip-mine \
	-floop-block
+else
LOCAL_CONLYFLAGS := \
	-fgraphite \
	-fgraphite-identity \
	-floop-flatten \
	-floop-parallelize-all \
	-ftree-loop-linear \
	-floop-interchange \
	-floop-strip-mine \
	-floop-block
endif

ifdef LOCAL_CPPFLAGS
LOCAL_CPPFLAGS += \
	-fgraphite \
	-fgraphite-identity \
	-floop-flatten \
	-floop-parallelize-all \
	-ftree-loop-linear \
	-floop-interchange \
	-floop-strip-mine \
	-floop-block
else
LOCAL_CPPFLAGS := \
	-fgraphite \
	-fgraphite-identity \
	-floop-flatten \
	-floop-parallelize-all \
	-ftree-loop-linear \
	-floop-interchange \
	-floop-strip-mine \
	-floop-block
endif
endif
endif
endif
endif

# STRICT

ifeq ($(Strict),true)
ifdef LOCAL_CONLYFLAGS
LOCAL_CONLYFLAGS += \
	-fstrict-aliasing \
	-Werror=strict-aliasing \
	-Wstrict-aliasing=3
else
LOCAL_CONLYFLAGS := \
	-fstrict-aliasing \
	-Werror=strict-aliasing \
        -Wstrict-aliasing=3
endif

ifdef LOCAL_CPPFLAGS
LOCAL_CPPFLAGS += \
	-fstrict-aliasing \
	-Werror=strict-aliasing \
        -Wstrict-aliasing=3
else
LOCAL_CPPFLAGS := \
	-fstrict-aliasing \
	-Werror=strict-aliasing \
        -Wstrict-aliasing=3
endif
endif
