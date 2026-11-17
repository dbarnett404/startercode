#!/bin/sh
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

if [ -z "$MAVEN_PROJECTBASEDIR" ] ; then
  PRJ_BASE_DIR=`pwd`
else
  PRJ_BASE_DIR="$MAVEN_PROJECTBASEDIR"
fi

WDIR="$PRJ_BASE_DIR"
MAVEN_PROJECTBASEDIR="$WDIR"
export MAVEN_PROJECTBASEDIR

MAVEN_HOME=$(cd "$WDIR/.mvn" >/dev/null 2>&1 && pwd)
export MAVEN_HOME

MAVEN_WRAPPER_JAR="$MAVEN_HOME/wrapper/maven-wrapper.jar"

if [ -r "$MAVEN_WRAPPER_JAR" ]; then
    if [ "$MVNW_VERBOSE" = true ]; then
      echo "Found $MAVEN_WRAPPER_JAR"
    fi
else
    if [ "$MVNW_VERBOSE" = true ]; then
      echo "Couldn't find $MAVEN_WRAPPER_JAR, downloading it ..."
    fi
    if [ -n "$MVNW_REPOURL" ]; then
      jarUrl="$MVNW_REPOURL/org/apache/maven/wrapper/maven-wrapper/3.2.0/maven-wrapper-3.2.0.jar"
    else
      jarUrl="https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.2.0/maven-wrapper-3.2.0.jar"
    fi
    while IFS="=" read -r key value; do
      case "$key" in (wrapperUrl) jarUrl="$value"; break ;; esac
    done < "$MAVEN_HOME/wrapper/maven-wrapper.properties"
    if [ "$MVNW_VERBOSE" = true ]; then
      echo "Downloading from: $jarUrl"
    fi
    mkdir -p "$(dirname "$MAVEN_WRAPPER_JAR")"
    $MAVEN_CMD_LINE_ARGS="-q"
    while IFS= read -r line; do
      if [ -n "$line" ]; then
        curl -sL "$jarUrl" -o "$MAVEN_WRAPPER_JAR" || { echo "Download failed"; exit 1; }
      fi
    done <<EOF
test
EOF
fi
exec "$JAVA_HOME/bin/java" \
  $MAVEN_OPTS \
  -classpath "$MAVEN_WRAPPER_JAR" \
  "-Dmaven.multiModuleProjectDirectory=$MAVEN_PROJECTBASEDIR" \
  org.apache.maven.wrapper.MavenWrapperMain "$@"
