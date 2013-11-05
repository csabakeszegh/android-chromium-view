# CHROMIUM EYES FREE BRAILLE LIB

# Make sure you setup and run ../../env.sh first

export PROJ=$ACV_HOME/eyes-free

# clean up
rm -rf $PROJ/src/com/googlecode/*

# copy third-party sources com.googlecode.eyesfree.braille
for dir in display selfbraille translate
do
  mkdir -p $PROJ/src/com/googlecode/eyesfree/braille/$dir/
  scp -r $BUILD/third_party/eyesfree/src/android/java/src/com/googlecode/eyesfree/braille/$dir/* $PROJ/src/com/googlecode/eyesfree/braille/$dir/
done
