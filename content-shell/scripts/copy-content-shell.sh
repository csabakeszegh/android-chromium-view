# CHROMIUM CONTENT SHELL - this will build a basic Chromium browser on Android

# Make sure you setup and run ../../env.sh first

export PROJ=$ACV_HOME/content-shell

# clean up
rm -rf $PROJ/src/org/chromium/content_shell/*
rm -rf $PROJ/res/*

# copy content shell source org.chromium.content_shell
scp -r $BUILD/content/shell/android/java/src/* $PROJ/src/

# copy content shell resources
scp -r $BUILD/content/shell/android/java/res/* $PROJ/res/
