#!/bin/sh
APP_NAME="Gradle"
APP_BASE_NAME=$(basename "$0")
CLASSPATH=$(find ~/.gradle/wrapper/dists -name "gradle-*.jar" 2>/dev/null | head -1)

if [ ! -f "$CLASSPATH" ]; then
    echo "Gradle not found. Please install Android SDK."
    exit 1
fi

exec java -jar "$CLASSPATH" "$@"
