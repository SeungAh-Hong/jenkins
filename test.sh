if [ $(docker ps | grep 'test' | wc -l) -eq 1 ]; then
  echo "test"
fi
