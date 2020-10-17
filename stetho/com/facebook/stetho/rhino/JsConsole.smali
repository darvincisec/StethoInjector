.class public Lcom/facebook/stetho/rhino/JsConsole;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "JsConsole.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/ScriptableObject;)V
    .locals 3
    .param p1, "scope"    # Lorg/mozilla/javascript/ScriptableObject;

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Lcom/facebook/stetho/rhino/JsConsole;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 41
    const-string/jumbo v2, "Console"

    invoke-static {p1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->getTopLevelProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    .local v0, "ctor":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 43
    check-cast v1, Lorg/mozilla/javascript/Scriptable;

    .line 44
    .local v1, "scriptable":Lorg/mozilla/javascript/Scriptable;
    const-string/jumbo v2, "prototype"

    invoke-interface {v1, v2, v1}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {p0, v2}, Lcom/facebook/stetho/rhino/JsConsole;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 46
    .end local v1    # "scriptable":Lorg/mozilla/javascript/Scriptable;
    :cond_0
    return-void
.end method

.method public static log(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Function;)V
    .locals 0
    .param p0, "cx"    # Lorg/mozilla/javascript/Context;
    .param p1, "thisObj"    # Lorg/mozilla/javascript/Scriptable;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "funObj"    # Lorg/mozilla/javascript/Function;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 55
    invoke-static {p2}, Lcom/facebook/stetho/rhino/JsConsole;->log([Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method private static log([Ljava/lang/Object;)V
    .locals 3
    .param p0, "rawArgs"    # [Ljava/lang/Object;

    .prologue
    .line 60
    invoke-static {p0}, Lcom/facebook/stetho/rhino/JsFormat;->parse([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "message":Ljava/lang/String;
    sget-object v1, Lcom/facebook/stetho/inspector/protocol/module/Console$MessageLevel;->LOG:Lcom/facebook/stetho/inspector/protocol/module/Console$MessageLevel;

    sget-object v2, Lcom/facebook/stetho/inspector/protocol/module/Console$MessageSource;->JAVASCRIPT:Lcom/facebook/stetho/inspector/protocol/module/Console$MessageSource;

    invoke-static {v1, v2, v0}, Lcom/facebook/stetho/inspector/console/CLog;->writeToConsole(Lcom/facebook/stetho/inspector/protocol/module/Console$MessageLevel;Lcom/facebook/stetho/inspector/protocol/module/Console$MessageSource;Ljava/lang/String;)V

    .line 62
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "Console"

    return-object v0
.end method
