set -e

sdk=../SDK_6.3.0-5.19/SDK-A13
sysroot=$sdk/usr/arm-obreey-linux-gnueabi/sysroot
../WrapC/bin/wrap_c \
    --c_compile_options="-I{$sysroot,=}/usr/include/freetype2/" \
    --full-header=$sysroot/usr/local/include/inkview.h \
    --config=config.xml
