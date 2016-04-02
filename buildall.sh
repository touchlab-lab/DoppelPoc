rm -rdf $1/SharedPodsCleanBuild/Okhttp/Okhttp/com
rm -rdf $1/SharedPodsCleanBuild/Okhttp/Okhttp/okio
rm -rdf $1/SharedPodsCleanBuild/Retrofit/Retrofit/retrofit
rm -rdf $1/SharedPodsCleanBuild/RxJava/RxJava/rx
rm -rdf $1/SharedPodsCleanBuild/Gson/Gson/com
rm -rdf $1/SharedPodsCleanBuild/Dagger2/Dagger2/dagger
rm -rdf $1/SharedPodsCleanBuild/AndroidBase/AndroidBase/android
rm -rdf $1/SharedPodsCleanBuild/EventBus/EventBus/de
rm -rdf $1/SharedPodsCleanBuild/MagicThreads/MagicThreads/co
rm -rdf $1/SharedPodsCleanBuild/SqueakyCore/SqueakyCore/co
cd $1/destjava/gsontrans/main
./trans.sh
mv $1/destjava/gsontrans/main/com $1/SharedPodsCleanBuild/Gson/Gson/
cd $1/destjava/daggertrans/main
./trans.sh
mv $1/destjava/daggertrans/main/dagger $1/SharedPodsCleanBuild/Dagger2/Dagger2/
cd $1/destjava/okhttp-trans/main
./trans.sh
mv $1/destjava/okhttp-trans/main/com $1/SharedPodsCleanBuild/Okhttp/Okhttp/
mv $1/destjava/okhttp-trans/main/okio $1/SharedPodsCleanBuild/Okhttp/Okhttp/
cd $1/destjava/retrofit-trans/main
./trans.sh
mv $1/destjava/retrofit-trans/main/retrofit $1/SharedPodsCleanBuild/Retrofit/Retrofit/
cd $1/destjava/RxJava-trans/main
./trans.sh
mv $1/destjava/RxJava-trans/main/rx $1/SharedPodsCleanBuild/RxJava/RxJava/
cd $1/destjava/androidbase-trans/main
./trans.sh
mv $1/destjava/androidbase-trans/main/android $1/SharedPodsCleanBuild/AndroidBase/AndroidBase/
cd $1/destjava/eventbus-trans/main
./trans.sh
mv $1/destjava/eventbus-trans/main/de $1/SharedPodsCleanBuild/EventBus/EventBus/
cd $1/destjava/magicthreads-trans/main
./trans.sh
mv $1/destjava/magicthreads-trans/main/co $1/SharedPodsCleanBuild/MagicThreads/MagicThreads/
cd $1/destjava/squeaky/main
./trans.sh
mv $1/destjava/squeaky/main/co $1/SharedPodsCleanBuild/SqueakyCore/SqueakyCore/



