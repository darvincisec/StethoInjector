.class Lcom/facebook/stetho/inspector/protocol/module/DOM$2;
.super Ljava/lang/Object;
.source "DOM.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/stetho/inspector/protocol/module/DOM;->highlightNode(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

.field final synthetic val$contentColor:Lcom/facebook/stetho/inspector/protocol/module/DOM$RGBAColor;

.field final synthetic val$request:Lcom/facebook/stetho/inspector/protocol/module/DOM$HighlightNodeRequest;


# direct methods
.method constructor <init>(Lcom/facebook/stetho/inspector/protocol/module/DOM;Lcom/facebook/stetho/inspector/protocol/module/DOM$HighlightNodeRequest;Lcom/facebook/stetho/inspector/protocol/module/DOM$RGBAColor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/stetho/inspector/protocol/module/DOM;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$2;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    iput-object p2, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$2;->val$request:Lcom/facebook/stetho/inspector/protocol/module/DOM$HighlightNodeRequest;

    iput-object p3, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$2;->val$contentColor:Lcom/facebook/stetho/inspector/protocol/module/DOM$RGBAColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 109
    iget-object v1, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$2;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/facebook/stetho/inspector/protocol/module/DOM;->access$300(Lcom/facebook/stetho/inspector/protocol/module/DOM;)Lcom/facebook/stetho/inspector/elements/Document;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$2;->val$request:Lcom/facebook/stetho/inspector/protocol/module/DOM$HighlightNodeRequest;

    iget-object v2, v2, Lcom/facebook/stetho/inspector/protocol/module/DOM$HighlightNodeRequest;->nodeId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/facebook/stetho/inspector/elements/Document;->getElementForNodeId(I)Ljava/lang/Object;

    move-result-object v0

    .line 110
    .local v0, "element":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$2;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/facebook/stetho/inspector/protocol/module/DOM;->access$300(Lcom/facebook/stetho/inspector/protocol/module/DOM;)Lcom/facebook/stetho/inspector/elements/Document;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$2;->val$contentColor:Lcom/facebook/stetho/inspector/protocol/module/DOM$RGBAColor;

    invoke-virtual {v2}, Lcom/facebook/stetho/inspector/protocol/module/DOM$RGBAColor;->getColor()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/facebook/stetho/inspector/elements/Document;->highlightElement(Ljava/lang/Object;I)V

    .line 113
    :cond_0
    return-void
.end method
