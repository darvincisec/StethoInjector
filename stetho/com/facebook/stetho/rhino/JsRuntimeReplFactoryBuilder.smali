.class public Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;
.super Ljava/lang/Object;
.source "JsRuntimeReplFactoryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder$StethoJsException;
    }
.end annotation


# static fields
.field private static final SOURCE_NAME:Ljava/lang/String; = "chrome"


# instance fields
.field private final mClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFunctions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/Function;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVariables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;->mClasses:Ljava/util/Set;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;->mPackages:Ljava/util/Set;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;->mVariables:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;->mFunctions:Ljava/util/Map;

    .line 84
    iput-object p1, p0, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;->mContext:Landroid/content/Context;

    .line 87
    iget-object v0, p0, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;->mPackages:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;->mVariables:Ljava/util/Map;

    const-string/jumbo v1, "$_"

    invoke-static {}, Lorg/mozilla/javascript/Context;->getUndefinedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;->initJsScope()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    return-object v0
.end method

.method public static defaultFactory(Landroid/content/Context;)Lcom/facebook/stetho/inspector/console/RuntimeReplFactory;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 80
    new-instance v0, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;

    invoke-direct {v0, p0}, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;->build()Lcom/facebook/stetho/inspector/console/RuntimeReplFactory;

    move-result-object v0

    return-object v0
.end method

.method private importClasses(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject;)V
    .locals 13
    .param p1, "jsContext"    # Lorg/mozilla/javascript/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "scope"    # Lorg/mozilla/javascript/ScriptableObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder$StethoJsException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 189
    iget-object v0, p0, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;->mClasses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 190
    .local v6, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 193
    .local v7, "className":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v0, "importClass(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "expression":Ljava/lang/String;
    const-string/jumbo v3, "chrome"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/Context;->evaluateString(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    .end local v2    # "expression":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 198
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "importClass(Packages.%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 199
    .restart local v2    # "expression":Ljava/lang/String;
    const-string/jumbo v3, "chrome"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/Context;->evaluateString(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 200
    .end local v2    # "expression":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 201
    .local v9, "e1":Ljava/lang/Exception;
    new-instance v0, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder$StethoJsException;

    const-string/jumbo v1, "Failed to import class: %s"

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v7, v3, v12

    invoke-direct {v0, v9, v1, v3}, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder$StethoJsException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 205
    .end local v6    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "className":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "e1":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private importConsole(Lorg/mozilla/javascript/ScriptableObject;)V
    .locals 5
    .param p1, "scope"    # Lorg/mozilla/javascript/ScriptableObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder$StethoJsException;
        }
    .end annotation

    .prologue
    .line 229
    :try_start_0
    const-class v2, Lcom/facebook/stetho/rhino/JsConsole;

    invoke-static {p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    .line 230
    new-instance v0, Lcom/facebook/stetho/rhino/JsConsole;

    invoke-direct {v0, p1}, Lcom/facebook/stetho/rhino/JsConsole;-><init>(Lorg/mozilla/javascript/ScriptableObject;)V

    .line 231
    .local v0, "console":Lcom/facebook/stetho/rhino/JsConsole;
    const-string/jumbo v2, "console"

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v0, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    return-void

    .line 232
    .end local v0    # "console":Lcom/facebook/stetho/rhino/JsConsole;
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder$StethoJsException;

    const-string/jumbo v3, "Failed to setup javascript console"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v1, v3, v4}, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder$StethoJsException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method private importFunctions(Lorg/mozilla/javascript/ScriptableObject;)V
    .locals 8
    .param p1, "scope"    # Lorg/mozilla/javascript/ScriptableObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder$StethoJsException;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v4, p0, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;->mFunctions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 259
    .local v1, "entrySet":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/mozilla/javascript/Function;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 260
    .local v3, "functionName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/Function;

    .line 262
    .local v2, "function":Lorg/mozilla/javascript/Function;
    :try_start_0
    invoke-static {p1, v3, v2}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder$StethoJsException;

    const-string/jumbo v5, "Failed to setup function: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-direct {v4, v0, v5, v6}, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder$StethoJsException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    .line 267
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "entrySet":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/mozilla/javascript/Function;>;"
    .end local v2    # "function":Lorg/mozilla/javascript/Function;
    .end local v3    # "functionName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private importPackages(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject;)V
    .locals 12
    .param p1, "jsContext"    # Lorg/mozilla/javascript/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "scope"    # Lorg/mozilla/javascript/ScriptableObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder$StethoJsException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 209
    iget-object v0, p0, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;->mPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 212
    .local v8, "packageName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v0, "importPackage(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "expression":Ljava/lang/String;
    const-string/jumbo v3, "chrome"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/Context;->evaluateString(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    .end local v2    # "expression":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 217
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "importPackage(Packages.%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 218
    .restart local v2    # "expression":Ljava/lang/String;
    const-string/jumbo v3, "chrome"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/Context;->evaluateString(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 219
    .end local v2    # "expression":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 220
    .local v7, "e1":Ljava/lang/Exception;
    new-instance v0, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder$StethoJsException;

    const-string/jumbo v1, "Failed to import package: %s"

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v8, v3, v11

    invoke-direct {v0, v6, v1, v3}, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder$StethoJsException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 224
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "e1":Ljava/lang/Exception;
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private importVariables(Lorg/mozilla/javascript/ScriptableObject;)V
    .locals 9
    .param p1, "scope"    # Lorg/mozilla/javascript/ScriptableObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder$StethoJsException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v5, p0, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;->mVariables:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 240
    .local v1, "entrySet":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 241
    .local v3, "varName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 244
    .local v4, "varValue":Ljava/lang/Object;
    :try_start_0
    instance-of v6, v4, Lorg/mozilla/javascript/Scriptable;

    if-nez v6, :cond_0

    instance-of v6, v4, Lorg/mozilla/javascript/Undefined;

    if-eqz v6, :cond_1

    .line 245
    :cond_0
    move-object v2, v4

    .line 249
    .local v2, "jsValue":Ljava/lang/Object;
    :goto_1
    invoke-static {p1, v3, v2}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    .end local v2    # "jsValue":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder$StethoJsException;

    const-string/jumbo v6, "Failed to setup variable: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-direct {v5, v0, v6, v7}, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder$StethoJsException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-static {v4, p1}, Lorg/mozilla/javascript/Context;->javaToJS(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .restart local v2    # "jsValue":Ljava/lang/Object;
    goto :goto_1

    .line 254
    .end local v1    # "entrySet":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "jsValue":Ljava/lang/Object;
    .end local v3    # "varName":Ljava/lang/String;
    .end local v4    # "varValue":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private initJsScope()Lorg/mozilla/javascript/ScriptableObject;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Lcom/facebook/stetho/rhino/JsRuntimeRepl;->enterJsContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 158
    .local v0, "jsContext":Lorg/mozilla/javascript/Context;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;->initJsScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/ScriptableObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 161
    .local v1, "scope":Lorg/mozilla/javascript/ScriptableObject;
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    .line 159
    return-object v1

    .line 161
    .end local v1    # "scope":Lorg/mozilla/javascript/ScriptableObject;
    :catchall_0
    move-exception v2

    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    .line 162
    throw v2
.end method

.method private initJsScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 8
    .param p1, "jsContext"    # Lorg/mozilla/javascript/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 167
    new-instance v1, Lorg/mozilla/javascript/ImporterTopLevel;

    invoke-direct {v1, p1}, Lorg/mozilla/javascript/ImporterTopLevel;-><init>(Lorg/mozilla/javascript/Context;)V

    .line 168
    .local v1, "importerTopLevel":Lorg/mozilla/javascript/ImporterTopLevel;
    invoke-virtual {p1, v1, v7}, Lorg/mozilla/javascript/Context;->initStandardObjects(Lorg/mozilla/javascript/ScriptableObject;Z)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v3

    .line 170
    .local v3, "scope":Lorg/mozilla/javascript/ScriptableObject;
    const-string/jumbo v4, "context"

    iget-object v5, p0, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lorg/mozilla/javascript/Context;->javaToJS(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    :try_start_0
    invoke-direct {p0, p1, v3}, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;->importClasses(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject;)V

    .line 174
    invoke-direct {p0, p1, v3}, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;->importPackages(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject;)V

    .line 175
    invoke-direct {p0, v3}, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;->importConsole(Lorg/mozilla/javascript/ScriptableObject;)V

    .line 176
    invoke-direct {p0, v3}, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;->importVariables(Lorg/mozilla/javascript/ScriptableObject;)V

    .line 177
    invoke-direct {p0, v3}, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;->importFunctions(Lorg/mozilla/javascript/ScriptableObject;)V
    :try_end_0
    .catch Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder$StethoJsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-object v3

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder$StethoJsException;
    const-string/jumbo v4, "%s\n%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder$StethoJsException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "message":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/facebook/stetho/common/LogUtil;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 181
    sget-object v4, Lcom/facebook/stetho/inspector/protocol/module/Console$MessageLevel;->ERROR:Lcom/facebook/stetho/inspector/protocol/module/Console$MessageLevel;

    sget-object v5, Lcom/facebook/stetho/inspector/protocol/module/Console$MessageSource;->JAVASCRIPT:Lcom/facebook/stetho/inspector/protocol/module/Console$MessageSource;

    invoke-static {v4, v5, v2}, Lcom/facebook/stetho/inspector/console/CLog;->writeToConsole(Lcom/facebook/stetho/inspector/protocol/module/Console$MessageLevel;Lcom/facebook/stetho/inspector/protocol/module/Console$MessageSource;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addFunction(Ljava/lang/String;Lorg/mozilla/javascript/Function;)Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "function"    # Lorg/mozilla/javascript/Function;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;->mFunctions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-object p0
.end method

.method public addVariable(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;->mVariables:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-object p0
.end method

.method public build()Lcom/facebook/stetho/inspector/console/RuntimeReplFactory;
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder$1;

    invoke-direct {v0, p0}, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder$1;-><init>(Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;)V

    return-object v0
.end method

.method public importClass(Ljava/lang/Class;)Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;->mClasses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    return-object p0
.end method

.method public importPackage(Ljava/lang/String;)Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;->mPackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    return-object p0
.end method
