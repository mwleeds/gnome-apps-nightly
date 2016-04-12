#!/bin/sh

FILE=$1

APPID=`basename $FILE .json`

echo ========== Building $APPID ================
rm -rf app
xdg-app-builder --ccache --require-changes --repo=repo --subject="Stable build of ${APPID}, `date`" ${EXPORT_ARGS-} app $FILE
