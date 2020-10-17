.class Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder$1;
.super Ljava/lang/Object;
.source "JsRuntimeReplFactoryBuilder.java"

# interfaces
.implements Lcom/facebook/stetho/inspector/console/RuntimeReplFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;->build()Lcom/facebook/stetho/inspector/console/RuntimeReplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;


# direct methods
.method constructor <init>(Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder$1;->this$0:Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance()Lcom/facebook/stetho/inspector/console/RuntimeRepl;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lcom/facebook/stetho/rhino/JsRuntimeRepl;

    iget-object v1, p0, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder$1;->this$0:Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;

    invoke-static {v1}, Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;->access$000(Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/stetho/rhino/JsRuntimeRepl;-><init>(Lorg/mozilla/javascript/ScriptableObject;)V

    return-object v0
.end method
