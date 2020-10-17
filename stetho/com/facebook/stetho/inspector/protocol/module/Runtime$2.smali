.class final Lcom/facebook/stetho/inspector/protocol/module/Runtime$2;
.super Ljava/lang/Object;
.source "Runtime.java"

# interfaces
.implements Lcom/facebook/stetho/inspector/jsonrpc/DisconnectReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/stetho/inspector/protocol/module/Runtime;->getSession(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;)Lcom/facebook/stetho/inspector/protocol/module/Runtime$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$peer:Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;


# direct methods
.method constructor <init>(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/facebook/stetho/inspector/protocol/module/Runtime$2;->val$peer:Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnect()V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lcom/facebook/stetho/inspector/protocol/module/Runtime;->access$100()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/stetho/inspector/protocol/module/Runtime$2;->val$peer:Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method
