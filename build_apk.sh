#!/bin/sh
export QTDIR=~/Qt/5.9.1/android_armv7
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_141.jdk/Contents/Home
export ANDROID_HOME=~/Library/Android/sdk
export ANDROID_SDK_ROOT=~/Library/Android/sdk
export ANDROID_NDK_ROOT=~/Library/Android/sdk/ndk-bundle
export PATH=$JAVA_HOME/bin:$QTDIR/bin:$ANDROID_HOME/tools:$PATH

qmake
make -j8
make install INSTALL_ROOT=android
android update project --path android --target android-18 --name BubbleRun
androiddeployqt --output android --verbose --input android-libBubbleRun.so-deployment-settings.json --gradle
mkdir apk
cp android/build/outputs/apk/android-debug.apk apk/BubbleRun.apk
git add apk/BubbleRun.apk

file="1.txt"
while read line
do
ve=$line
echo "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAASSS $line"
done < $file

git commit -a -m "Обновление apk"
git tag ve
git push

ve=$ve+1
$ve > file
