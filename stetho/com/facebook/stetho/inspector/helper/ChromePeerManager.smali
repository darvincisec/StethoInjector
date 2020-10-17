.class public Lcom/facebook/stetho/inspector/helper/ChromePeerManager;
.super Ljava/lang/Object;
.source "ChromePeerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/stetho/inspector/helper/ChromePeerManager$UnregisterOnDisconnect;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChromePeerManager"


# instance fields
.field private mListener:Lcom/facebook/stetho/inspector/helper/PeerRegistrationListener;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mReceivingPeers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;",
            "Lcom/facebook/stetho/inspector/jsonrpc/DisconnectReceiver;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mReceivingPeersSnapshot:[Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/stetho/inspector/helper/ChromePeerManager;->mReceivingPeers:Ljava/util/Map;

    .line 54
    return-void
.end method

.method private declared-synchronized getReceivingPeersSnapshot()[Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;
    .locals 2

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/stetho/inspector/helper/ChromePeerManager;->mReceivingPeersSnapshot:[Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/facebook/stetho/inspector/helper/ChromePeerManager;->mReceivingPeers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/stetho/inspector/helper/ChromePeerManager;->mReceivingPeers:Ljava/util/Map;

    .line 108
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;

    .line 107
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;

    iput-object v0, p0, Lcom/facebook/stetho/inspector/helper/ChromePeerManager;->mReceivingPeersSnapshot:[Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/facebook/stetho/inspector/helper/ChromePeerManager;->mReceivingPeersSnapshot:[Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendMessageToPeers(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/stetho/inspector/jsonrpc/PendingRequestCallback;)V
    .locals 7
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/Object;
    .param p3, "callback"    # Lcom/facebook/stetho/inspector/jsonrpc/PendingRequestCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/facebook/stetho/inspector/helper/ChromePeerManager;->getReceivingPeersSnapshot()[Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;

    move-result-object v2

    .line 129
    .local v2, "peers":[Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 131
    .local v1, "peer":Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/stetho/inspector/jsonrpc/PendingRequestCallback;)V
    :try_end_0
    .catch Ljava/nio/channels/NotYetConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/nio/channels/NotYetConnectedException;
    const-string/jumbo v5, "ChromePeerManager"

    const-string/jumbo v6, "Error delivering data to Chrome"

    invoke-static {v5, v6, v0}, Lcom/facebook/stetho/common/LogRedirector;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 136
    .end local v0    # "e":Ljava/nio/channels/NotYetConnectedException;
    .end local v1    # "peer":Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addPeer(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;)Z
    .locals 2
    .param p1, "peer"    # Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/stetho/inspector/helper/ChromePeerManager;->mReceivingPeers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    const/4 v1, 0x0

    .line 84
    :goto_0
    monitor-exit p0

    return v1

    .line 77
    :cond_0
    :try_start_1
    new-instance v0, Lcom/facebook/stetho/inspector/helper/ChromePeerManager$UnregisterOnDisconnect;

    invoke-direct {v0, p0, p1}, Lcom/facebook/stetho/inspector/helper/ChromePeerManager$UnregisterOnDisconnect;-><init>(Lcom/facebook/stetho/inspector/helper/ChromePeerManager;Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;)V

    .line 78
    .local v0, "disconnectReceiver":Lcom/facebook/stetho/inspector/jsonrpc/DisconnectReceiver;
    invoke-virtual {p1, v0}, Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;->registerDisconnectReceiver(Lcom/facebook/stetho/inspector/jsonrpc/DisconnectReceiver;)V

    .line 79
    iget-object v1, p0, Lcom/facebook/stetho/inspector/helper/ChromePeerManager;->mReceivingPeers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/stetho/inspector/helper/ChromePeerManager;->mReceivingPeersSnapshot:[Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;

    .line 81
    iget-object v1, p0, Lcom/facebook/stetho/inspector/helper/ChromePeerManager;->mListener:Lcom/facebook/stetho/inspector/helper/PeerRegistrationListener;

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/facebook/stetho/inspector/helper/ChromePeerManager;->mListener:Lcom/facebook/stetho/inspector/helper/PeerRegistrationListener;

    invoke-interface {v1, p1}, Lcom/facebook/stetho/inspector/helper/PeerRegistrationListener;->onPeerRegistered(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "disconnectReceiver":Lcom/facebook/stetho/inspector/jsonrpc/DisconnectReceiver;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized hasRegisteredPeers()Z
    .locals 1

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/stetho/inspector/helper/ChromePeerManager;->mReceivingPeers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invokeMethodOnPeers(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/stetho/inspector/jsonrpc/PendingRequestCallback;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/Object;
    .param p3, "callback"    # Lcom/facebook/stetho/inspector/jsonrpc/PendingRequestCallback;

    .prologue
    .line 121
    invoke-static {p3}, Lcom/facebook/stetho/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/stetho/inspector/helper/ChromePeerManager;->sendMessageToPeers(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/stetho/inspector/jsonrpc/PendingRequestCallback;)V

    .line 123
    return-void
.end method

.method public declared-synchronized removePeer(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;)V
    .locals 1
    .param p1, "peer"    # Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/stetho/inspector/helper/ChromePeerManager;->mReceivingPeers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/stetho/inspector/helper/ChromePeerManager;->mReceivingPeersSnapshot:[Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;

    .line 95
    iget-object v0, p0, Lcom/facebook/stetho/inspector/helper/ChromePeerManager;->mListener:Lcom/facebook/stetho/inspector/helper/PeerRegistrationListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/facebook/stetho/inspector/helper/ChromePeerManager;->mListener:Lcom/facebook/stetho/inspector/helper/PeerRegistrationListener;

    invoke-interface {v0, p1}, Lcom/facebook/stetho/inspector/helper/PeerRegistrationListener;->onPeerUnregistered(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_0
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendNotificationToPeers(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/Object;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/stetho/inspector/helper/ChromePeerManager;->sendMessageToPeers(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/stetho/inspector/jsonrpc/PendingRequestCallback;)V

    .line 116
    return-void
.end method

.method public declared-synchronized setListener(Lcom/facebook/stetho/inspector/helper/PeerRegistrationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/stetho/inspector/helper/PeerRegistrationListener;

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/facebook/stetho/inspector/helper/ChromePeerManager;->mListener:Lcom/facebook/stetho/inspector/helper/PeerRegistrationListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
