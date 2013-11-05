# CHROMIUM CONTENT SHELL - this will build a basic Chromium browser on Android

# Make sure you setup and run ../../env.sh first

export PROJ=$ACV_HOME/content_shell_apk

# clean up
rm -rf $PROJ/src/org/chromium/content_shell_apk/*
rm -rf $PROJ/res/*

# copy content shell apk sources
scp -r $BUILD/content/shell/android/shell_apk/src/* $PROJ/src/

# copy content shell apk resources
scp -r $BUILD/content/shell/android/shell_apk/res/* $PROJ/res/

# copy the arm shared object
mkdir -p $PROJ/libs/armeabi-v7a/
scp $BUILD/out/Release/content_shell_apk/libs/armeabi-v7a/libcontent_shell_content_view.so $PROJ/libs/armeabi-v7a/

# copy the x86 shared object (if you built it)
mkdir -p $PROJ/libs/x86/
scp $BUILD/out/Release/content_shell_apk/libs/x86/libcontent_shell_content_view.so $PROJ/libs/x86/

# copy .pak file
scp $BUILD/out/Release/content_shell/assets/content_shell.pak $PROJ/assets/
