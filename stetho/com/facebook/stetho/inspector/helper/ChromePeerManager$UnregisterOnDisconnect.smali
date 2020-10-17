.class Lcom/facebook/stetho/inspector/helper/ChromePeerManager$UnregisterOnDisconnect;
.super Ljava/lang/Object;
.source "ChromePeerManager.java"

# interfaces
.implements Lcom/facebook/stetho/inspector/jsonrpc/DisconnectReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/inspector/helper/ChromePeerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnregisterOnDisconnect"
.end annotation


# instance fields
.field private final mPeer:Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;

.field final synthetic this$0:Lcom/facebook/stetho/inspector/helper/ChromePeerManager;


# direct methods
.method public constructor <init>(Lcom/facebook/stetho/inspector/helper/ChromePeerManager;Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;)V
    .locals 0
    .param p2, "peer"    # Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/facebook/stetho/inspector/helper/ChromePeerManager$UnregisterOnDisconnect;->this$0:Lcom/facebook/stetho/inspector/helper/ChromePeerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p2, p0, Lcom/facebook/stetho/inspector/helper/ChromePeerManager$UnregisterOnDisconnect;->mPeer:Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;

    .line 143
    return-void
.end method


# virtual methods
.method public onDisconnect()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/facebook/stetho/inspector/helper/ChromePeerManager$UnregisterOnDisconnect;->this$0:Lcom/facebook/stetho/inspector/helper/ChromePeerManager;

    iget-object v1, p0, Lcom/facebook/stetho/inspector/helper/ChromePeerManager$UnregisterOnDisconnect;->mPeer:Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;

    invoke-virtual {v0, v1}, Lcom/facebook/stetho/inspector/helper/ChromePeerManager;->removePeer(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;)V

    .line 148
    return-void
.end method
