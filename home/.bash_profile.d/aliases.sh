function cdls() {
  cd $1 && ls -la
}

alias mciskip="mvn clean install -Dmaven.test.skip=true"