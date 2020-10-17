.class Lcom/facebook/stetho/inspector/protocol/module/DOM$1;
.super Ljava/lang/Object;
.source "DOM.java"

# interfaces
.implements Lcom/facebook/stetho/common/UncheckedCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/stetho/inspector/protocol/module/DOM;->getDocument(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/stetho/common/UncheckedCallable",
        "<",
        "Lcom/facebook/stetho/inspector/protocol/module/DOM$Node;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;


# direct methods
.method constructor <init>(Lcom/facebook/stetho/inspector/protocol/module/DOM;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/stetho/inspector/protocol/module/DOM;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$1;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/facebook/stetho/inspector/protocol/module/DOM$Node;
    .locals 4

    .prologue
    .line 83
    iget-object v1, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$1;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/facebook/stetho/inspector/protocol/module/DOM;->access$300(Lcom/facebook/stetho/inspector/protocol/module/DOM;)Lcom/facebook/stetho/inspector/elements/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/stetho/inspector/elements/Document;->getRootElement()Ljava/lang/Object;

    move-result-object v0

    .line 84
    .local v0, "element":Ljava/lang/Object;
    iget-object v1, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$1;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    iget-object v2, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$1;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-static {v2}, Lcom/facebook/stetho/inspector/protocol/module/DOM;->access$300(Lcom/facebook/stetho/inspector/protocol/module/DOM;)Lcom/facebook/stetho/inspector/elements/Document;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/stetho/inspector/elements/Document;->getDocumentView()Lcom/facebook/stetho/inspector/elements/DocumentView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/stetho/inspector/protocol/module/DOM;->access$400(Lcom/facebook/stetho/inspector/protocol/module/DOM;Ljava/lang/Object;Lcom/facebook/stetho/inspector/elements/DocumentView;Lcom/facebook/stetho/common/Accumulator;)Lcom/facebook/stetho/inspector/protocol/module/DOM$Node;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/facebook/stetho/inspector/protocol/module/DOM$1;->call()Lcom/facebook/stetho/inspector/protocol/module/DOM$Node;

    move-result-object v0

    return-object v0
.end method
