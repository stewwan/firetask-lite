# build and zipalign for android
cd ../lite && cordova plugin rm cordova-plugin-console && cordova build --release android && cordova plugin add cordova-plugin-console && cp platforms/android/build/outputs/apk/android-release-unsigned.apk android-release-unsigned.apk && jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore firetask-lite.keystore android-release-unsigned.apk firetask-lite && rm -rf firetask-lite.apk && zipalign -v 4 android-release-unsigned.apk firetask-lite.apk