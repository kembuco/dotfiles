function cdls() {
  cd $1 && ls -la
}

function filepilot() {
    ssh -t filepilot "ssh $1"
}

function screencap() {
  FILENAME="/sdcard/screen_$(date +%s).png"
  
  adb shell screencap $FILENAME && adb pull $FILENAME
}

alias mciskip="mvn clean install -Dmaven.test.skip=true -DskipTests"
