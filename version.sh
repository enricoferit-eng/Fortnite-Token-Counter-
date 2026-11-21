#!/bin/sh
# Neue Versionsnummer in index.html und version.json schreiben (vor jedem Hochladen ausführen)
cd "$(dirname "$0")" && V=$(date -u +%Y%m%d%H%M%S) && sed -i "s/var VERSION = \"[^\"]*\"/var VERSION = \"$V\"/" index.html && printf '{"v":"%s"}\n' "$V" > version.json && echo "$V"
