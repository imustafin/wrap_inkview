set -e

# in c_compile_options: literal $SDK_SYSROOT will be in Makefile.SH
../WrapC/bin/wrap_c \
    --c_compile_options="-I\$SDK_SYSROOT/usr/include/freetype2/" \
    --full-header=$SDK_SYSROOT/usr/local/include/inkview.h \
    --config=config.xml
