.class Lcom/facebook/stetho/inspector/protocol/module/DOM$6;
.super Ljava/lang/Object;
.source "DOM.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/stetho/inspector/protocol/module/DOM;->setInspectModeEnabled(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

.field final synthetic val$request:Lcom/facebook/stetho/inspector/protocol/module/DOM$SetInspectModeEnabledRequest;


# direct methods
.method constructor <init>(Lcom/facebook/stetho/inspector/protocol/module/DOM;Lcom/facebook/stetho/inspector/protocol/module/DOM$SetInspectModeEnabledRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/stetho/inspector/protocol/module/DOM;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$6;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    iput-object p2, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$6;->val$request:Lcom/facebook/stetho/inspector/protocol/module/DOM$SetInspectModeEnabledRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$6;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-static {v0}, Lcom/facebook/stetho/inspector/protocol/module/DOM;->access$300(Lcom/facebook/stetho/inspector/protocol/module/DOM;)Lcom/facebook/stetho/inspector/elements/Document;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$6;->val$request:Lcom/facebook/stetho/inspector/protocol/module/DOM$SetInspectModeEnabledRequest;

    iget-boolean v1, v1, Lcom/facebook/stetho/inspector/protocol/module/DOM$SetInspectModeEnabledRequest;->enabled:Z

    invoke-virtual {v0, v1}, Lcom/facebook/stetho/inspector/elements/Document;->setInspectModeEnabled(Z)V

    .line 189
    return-void
.end method
