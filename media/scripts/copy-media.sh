# CHROMIUM MEDIA LIB - contains org.chromium.media source code

# Make sure you setup and run ../../env.sh first

export PROJ=$ACV_HOME/media

# cleanup
rm -rf $PROJ/src/org/chromium/media/*

scp -r $BUILD/media/base/android/java/src/* $PROJ/src/
scp $BUILD/out/Release/gen/templates/org/chromium/media/ImageFormat.java $PROJ/src/org/chromium/media/

rm $PROJ/src/org/chromium/media/ImageFormat.template
