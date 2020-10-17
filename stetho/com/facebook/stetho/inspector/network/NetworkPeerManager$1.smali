.class Lcom/facebook/stetho/inspector/network/NetworkPeerManager$1;
.super Lcom/facebook/stetho/inspector/helper/PeersRegisteredListener;
.source "NetworkPeerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/inspector/network/NetworkPeerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/stetho/inspector/network/NetworkPeerManager;


# direct methods
.method constructor <init>(Lcom/facebook/stetho/inspector/network/NetworkPeerManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/stetho/inspector/network/NetworkPeerManager;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/facebook/stetho/inspector/network/NetworkPeerManager$1;->this$0:Lcom/facebook/stetho/inspector/network/NetworkPeerManager;

    invoke-direct {p0}, Lcom/facebook/stetho/inspector/helper/PeersRegisteredListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFirstPeerRegistered()V
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/facebook/stetho/inspector/network/AsyncPrettyPrinterExecutorHolder;->ensureInitialized()V

    .line 64
    iget-object v0, p0, Lcom/facebook/stetho/inspector/network/NetworkPeerManager$1;->this$0:Lcom/facebook/stetho/inspector/network/NetworkPeerManager;

    invoke-static {v0}, Lcom/facebook/stetho/inspector/network/NetworkPeerManager;->access$000(Lcom/facebook/stetho/inspector/network/NetworkPeerManager;)Lcom/facebook/stetho/inspector/network/AsyncPrettyPrinterRegistry;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/stetho/inspector/network/NetworkPeerManager$1;->this$0:Lcom/facebook/stetho/inspector/network/NetworkPeerManager;

    invoke-static {v0}, Lcom/facebook/stetho/inspector/network/NetworkPeerManager;->access$100(Lcom/facebook/stetho/inspector/network/NetworkPeerManager;)Lcom/facebook/stetho/inspector/network/AsyncPrettyPrinterInitializer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/facebook/stetho/inspector/network/NetworkPeerManager$1;->this$0:Lcom/facebook/stetho/inspector/network/NetworkPeerManager;

    new-instance v1, Lcom/facebook/stetho/inspector/network/AsyncPrettyPrinterRegistry;

    invoke-direct {v1}, Lcom/facebook/stetho/inspector/network/AsyncPrettyPrinterRegistry;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/stetho/inspector/network/NetworkPeerManager;->access$002(Lcom/facebook/stetho/inspector/network/NetworkPeerManager;Lcom/facebook/stetho/inspector/network/AsyncPrettyPrinterRegistry;)Lcom/facebook/stetho/inspector/network/AsyncPrettyPrinterRegistry;

    .line 66
    iget-object v0, p0, Lcom/facebook/stetho/inspector/network/NetworkPeerManager$1;->this$0:Lcom/facebook/stetho/inspector/network/NetworkPeerManager;

    invoke-static {v0}, Lcom/facebook/stetho/inspector/network/NetworkPeerManager;->access$100(Lcom/facebook/stetho/inspector/network/NetworkPeerManager;)Lcom/facebook/stetho/inspector/network/AsyncPrettyPrinterInitializer;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/stetho/inspector/network/NetworkPeerManager$1;->this$0:Lcom/facebook/stetho/inspector/network/NetworkPeerManager;

    invoke-static {v1}, Lcom/facebook/stetho/inspector/network/NetworkPeerManager;->access$000(Lcom/facebook/stetho/inspector/network/NetworkPeerManager;)Lcom/facebook/stetho/inspector/network/AsyncPrettyPrinterRegistry;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/stetho/inspector/network/AsyncPrettyPrinterInitializer;->populatePrettyPrinters(Lcom/facebook/stetho/inspector/network/AsyncPrettyPrinterRegistry;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/facebook/stetho/inspector/network/NetworkPeerManager$1;->this$0:Lcom/facebook/stetho/inspector/network/NetworkPeerManager;

    invoke-static {v0}, Lcom/facebook/stetho/inspector/network/NetworkPeerManager;->access$200(Lcom/facebook/stetho/inspector/network/NetworkPeerManager;)Lcom/facebook/stetho/inspector/network/ResponseBodyFileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/stetho/inspector/network/ResponseBodyFileManager;->cleanupFiles()V

    .line 69
    return-void
.end method

.method protected onLastPeerUnregistered()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/stetho/inspector/network/NetworkPeerManager$1;->this$0:Lcom/facebook/stetho/inspector/network/NetworkPeerManager;

    invoke-static {v0}, Lcom/facebook/stetho/inspector/network/NetworkPeerManager;->access$200(Lcom/facebook/stetho/inspector/network/NetworkPeerManager;)Lcom/facebook/stetho/inspector/network/ResponseBodyFileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/stetho/inspector/network/ResponseBodyFileManager;->cleanupFiles()V

    .line 74
    invoke-static {}, Lcom/facebook/stetho/inspector/network/AsyncPrettyPrinterExecutorHolder;->shutdown()V

    .line 75
    return-void
.end method
