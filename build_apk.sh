#!/bin/sh
export QTDIR=~/Qt/5.9.1/android_armv7
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_141.jdk/Contents/Home
export ANDROID_HOME=~/Library/Android/sdk
export ANDROID_SDK_ROOT=~/Library/Android/sdk
export ANDROID_NDK_ROOT=~/Library/Android/sdk/ndk-bundle
export PATH=$JAVA_HOME/bin:$QTDIR/bin:$PATH

qmake
make -j8
make install INSTALL_ROOT=android
androiddeployqt --output android --verbose --input android-libBubbleRun.so-deployment-settings.json --gradle --release
