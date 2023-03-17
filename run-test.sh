#!/bin/bash

# if number of arguments is not equal to 1, display a suitable error message
if [[ $# -ne 1 ]]; then
  echo "Usage: $0 [setup|teardown]"
  exit 1
fi

# if the argument entered is not valid, display a suitable error message
if [[ $1 != "setup" && $1 != "teardown" ]]; then
  echo "Invalid argument: $1"
  echo "Usage: $0 [setup|teardown]"
  exit 1
fi

if [[ $1 == "setup" ]]; then
  # create directory structure and files
  rm -rf test
  mkdir -p test/edu/bvu/cs
  touch test/edu/bvu/cs/DevOps.java
  touch test/edu/bvu/cs/DevOpsMain.java

  # add java code to files
  echo "public class DevOps {
            public DevOps() {
            }
        }" > test/edu/bvu/cs/DevOps.java

  echo "public class DevOpsMain {
            public static void main(String[] args) {
                DevOps dev = new DevOps();
            }
        }" > test/edu/bvu/cs/DevOpsMain.java

  echo "Directory structure and files created successfully."

elif [[ $1 == "teardown" ]]; then
  # remove directory structure and files
  if [[ -d "test" ]]; then
    rm -rf test
    echo "Directory structure and files removed successfully."
  else
    echo "Directory 'test' does not exist."
  fi
fi
