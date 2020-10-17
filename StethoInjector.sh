#!/bin/bash
#
# Script to inject invocation of stetho and the stetho library
#
if [[ ("$1" = "") || ("$2" = "") ]];then
    echo "Usage: $0 <.apk file to be tampered> <Name of the class which has to include the Stetho library initialization>" >&2
    exit 1
fi

if [ ! -x "$(command -v apktool)" ]; then
  echo 'Error: apktool is not configured' >&2
  exit 1
fi
if [ ! -x "$(command -v apksigner)" ]; then
  echo 'Error: apksigner is not configured.Configure $PATH to include this /Users/<username>/Library/Android/sdk/build-tools/<version>' >&2
  exit 1
fi

echo "Tampering $1"
HOME_DIR=$PWD

filename=$1
tamperedfile="${filename%.*}"
tamperedfile+="_patched.apk"

cp "$1" "$tamperedfile"

echo "==============Disassembling the apk=================="
apktool d -r $tamperedfile
if [ $? != 0 ]; then
    echo "apktool error"
    exit 1
fi
directory="${tamperedfile%.*}"

inputfile="$2.smali"

pushd "$directory"
filetopatch=$(find . -name $inputfile)
sed '/# direct methods/a \
.method static constructor <clinit>()V \
    .registers 7 \
    .prologue \
    :try_start_0 \
    const-string v5, "android.app.ActivityThread" \
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class; \
    move-result-object v0 \
    .local v0, "activityThreadCls":Ljava/lang/Class; \
    const-string v5, "currentApplication" \
    const/4 v6, 0x0 \
    new-array v6, v6, [Ljava/lang/Class; \
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method; \
    move-result-object v2 \
    .local v2, "method":Ljava/lang/reflect/Method; \
    const/4 v5, 0x0 \
    const/4 v6, 0x0 \
    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; \
    move-result-object v3 \
    check-cast v3, Landroid/app/Application; \
    .local v3, "stethoApp":Landroid/app/Application; \
    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context; \
    move-result-object v4 \
    .local v4, "stethocontext":Landroid/content/Context; \
    invoke-static {v4}, Lcom/facebook/stetho/Stetho;->newInitializerBuilder(Landroid/content/Context;)Lcom/facebook/stetho/Stetho$InitializerBuilder; \
    move-result-object v5 \
    invoke-static {v4}, Lcom/facebook/stetho/Stetho;->defaultDumperPluginsProvider(Landroid/content/Context;)Lcom/facebook/stetho/DumperPluginsProvider; \
    move-result-object v6 \
    invoke-virtual {v5, v6}, Lcom/facebook/stetho/Stetho$InitializerBuilder;->enableDumpapp(Lcom/facebook/stetho/DumperPluginsProvider;)Lcom/facebook/stetho/Stetho$InitializerBuilder; \
    move-result-object v5 \
    invoke-static {v4}, Lcom/facebook/stetho/Stetho;->defaultInspectorModulesProvider(Landroid/content/Context;)Lcom/facebook/stetho/InspectorModulesProvider; \
    move-result-object v6 \
    invoke-virtual {v5, v6}, Lcom/facebook/stetho/Stetho$InitializerBuilder;->enableWebKitInspector(Lcom/facebook/stetho/InspectorModulesProvider;)Lcom/facebook/stetho/Stetho$InitializerBuilder; \
    move-result-object v5 \
    invoke-virtual {v5}, Lcom/facebook/stetho/Stetho$InitializerBuilder;->build()Lcom/facebook/stetho/Stetho$Initializer; \
    move-result-object v5 \
    invoke-static {v5}, Lcom/facebook/stetho/Stetho;->initialize(Lcom/facebook/stetho/Stetho$Initializer;)V \
    :try_end_36 \
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37 \
    .end local v2    # "method":Ljava/lang/reflect/Method; \
    .end local v3    # "stethoApp":Landroid/app/Application; \
    .end local v4    # "stethocontext":Landroid/content/Context; \
    :goto_36 \
    return-void \
    :catch_37 \
    move-exception v1 \
    .local v1, "e":Ljava/lang/Exception; \
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V \
    goto :goto_36 \
.end method \
' $filetopatch > $filetopatch.tmp           
mv $filetopatch.tmp $filetopatch
popd

echo "$HOME_DIR/$directory/smali"

if [ -d "$HOME_DIR/$directory/smali_classes2" ]; then
    cp -r $HOME_DIR/stetho/* $HOME_DIR/$directory/smali_classes2/
else
    cp -r $HOME_DIR/stetho/* $HOME_DIR/$directory/smali/
fi
echo "=========Reassembling the apk==============="
apktool b "${tamperedfile%.*}"
directory="${tamperedfile%.*}"
directory+="/dist"

cp "$directory/$tamperedfile" .
echo "=========SIGNING THE APK========="
zipalign -p 4 $tamperedfile ${tamperedfile%.*}-aligned.apk
mv ${tamperedfile%.*}-aligned.apk $tamperedfile
apksigner sign --ks keystore.jks $tamperedfile
rm -rf ${tamperedfile%.*}
