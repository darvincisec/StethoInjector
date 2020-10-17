.class Lcom/facebook/stetho/inspector/protocol/module/DOM$5;
.super Ljava/lang/Object;
.source "DOM.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/stetho/inspector/protocol/module/DOM;->setAttributesAsText(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

.field final synthetic val$request:Lcom/facebook/stetho/inspector/protocol/module/DOM$SetAttributesAsTextRequest;


# direct methods
.method constructor <init>(Lcom/facebook/stetho/inspector/protocol/module/DOM;Lcom/facebook/stetho/inspector/protocol/module/DOM$SetAttributesAsTextRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/stetho/inspector/protocol/module/DOM;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$5;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    iput-object p2, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$5;->val$request:Lcom/facebook/stetho/inspector/protocol/module/DOM$SetAttributesAsTextRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 171
    iget-object v1, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$5;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/facebook/stetho/inspector/protocol/module/DOM;->access$300(Lcom/facebook/stetho/inspector/protocol/module/DOM;)Lcom/facebook/stetho/inspector/elements/Document;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$5;->val$request:Lcom/facebook/stetho/inspector/protocol/module/DOM$SetAttributesAsTextRequest;

    iget v2, v2, Lcom/facebook/stetho/inspector/protocol/module/DOM$SetAttributesAsTextRequest;->nodeId:I

    invoke-virtual {v1, v2}, Lcom/facebook/stetho/inspector/elements/Document;->getElementForNodeId(I)Ljava/lang/Object;

    move-result-object v0

    .line 172
    .local v0, "element":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 173
    iget-object v1, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$5;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/facebook/stetho/inspector/protocol/module/DOM;->access$300(Lcom/facebook/stetho/inspector/protocol/module/DOM;)Lcom/facebook/stetho/inspector/elements/Document;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$5;->val$request:Lcom/facebook/stetho/inspector/protocol/module/DOM$SetAttributesAsTextRequest;

    iget-object v2, v2, Lcom/facebook/stetho/inspector/protocol/module/DOM$SetAttributesAsTextRequest;->text:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/stetho/inspector/elements/Document;->setAttributesAsText(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    :cond_0
    return-void
.end method
