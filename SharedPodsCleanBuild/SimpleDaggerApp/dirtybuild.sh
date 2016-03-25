./gradlew lib:build
mv 'lib/build/j2objcOutputs/src/main/objc/co/touchlab/simpledaggerapp/TheDbMessage$$Configuration.h' 'lib/build/j2objcOutputs/src/main/objc/co/touchlab/simpledaggerapp/TheDbMessageConfiguration.h';mv 'lib/build/j2objcOutputs/src/main/objc/co/touchlab/simpledaggerapp/TheDbMessage$$Configuration.m' 'lib/build/j2objcOutputs/src/main/objc/co/touchlab/simpledaggerapp/TheDbMessageConfiguration.m'
cd ios
pod install
cd ..
