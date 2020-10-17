.class public Lcom/facebook/stetho/inspector/protocol/module/Network;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Lcom/facebook/stetho/inspector/protocol/ChromeDevtoolsDomain;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/stetho/inspector/protocol/module/Network$WebSocketFrameErrorParams;,
        Lcom/facebook/stetho/inspector/protocol/module/Network$WebSocketFrame;,
        Lcom/facebook/stetho/inspector/protocol/module/Network$WebSocketFrameSentParams;,
        Lcom/facebook/stetho/inspector/protocol/module/Network$WebSocketFrameReceivedParams;,
        Lcom/facebook/stetho/inspector/protocol/module/Network$WebSocketResponse;,
        Lcom/facebook/stetho/inspector/protocol/module/Network$WebSocketHandshakeResponseReceivedParams;,
        Lcom/facebook/stetho/inspector/protocol/module/Network$WebSocketRequest;,
        Lcom/facebook/stetho/inspector/protocol/module/Network$WebSocketWillSendHandshakeRequestParams;,
        Lcom/facebook/stetho/inspector/protocol/module/Network$WebSocketClosedParams;,
        Lcom/facebook/stetho/inspector/protocol/module/Network$WebSocketCreatedParams;,
        Lcom/facebook/stetho/inspector/protocol/module/Network$ResourceTiming;,
        Lcom/facebook/stetho/inspector/protocol/module/Network$Response;,
        Lcom/facebook/stetho/inspector/protocol/module/Network$InitiatorType;,
        Lcom/facebook/stetho/inspector/protocol/module/Network$Initiator;,
        Lcom/facebook/stetho/inspector/protocol/module/Network$Request;,
        Lcom/facebook/stetho/inspector/protocol/module/Network$DataReceivedParams;,
        Lcom/facebook/stetho/inspector/protocol/module/Network$LoadingFailedParams;,
        Lcom/facebook/stetho/inspector/protocol/module/Network$LoadingFinishedParams;,
        Lcom/facebook/stetho/inspector/protocol/module/Network$ResponseReceivedParams;,
        Lcom/facebook/stetho/inspector/protocol/module/Network$RequestWillBeSentParams;,
        Lcom/facebook/stetho/inspector/protocol/module/Network$GetResponseBodyResponse;
    }
.end annotation


# instance fields
.field private final mNetworkPeerManager:Lcom/facebook/stetho/inspector/network/NetworkPeerManager;

.field private final mResponseBodyFileManager:Lcom/facebook/stetho/inspector/network/ResponseBodyFileManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/facebook/stetho/inspector/network/NetworkPeerManager;->getOrCreateInstance(Landroid/content/Context;)Lcom/facebook/stetho/inspector/network/NetworkPeerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/stetho/inspector/protocol/module/Network;->mNetworkPeerManager:Lcom/facebook/stetho/inspector/network/NetworkPeerManager;

    .line 40
    iget-object v0, p0, Lcom/facebook/stetho/inspector/protocol/module/Network;->mNetworkPeerManager:Lcom/facebook/stetho/inspector/network/NetworkPeerManager;

    invoke-virtual {v0}, Lcom/facebook/stetho/inspector/network/NetworkPeerManager;->getResponseBodyFileManager()Lcom/facebook/stetho/inspector/network/ResponseBodyFileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/stetho/inspector/protocol/module/Network;->mResponseBodyFileManager:Lcom/facebook/stetho/inspector/network/ResponseBodyFileManager;

    .line 41
    return-void
.end method

.method private readResponseBody(Ljava/lang/String;)Lcom/facebook/stetho/inspector/protocol/module/Network$GetResponseBodyResponse;
    .locals 8
    .param p1, "requestId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 77
    new-instance v2, Lcom/facebook/stetho/inspector/protocol/module/Network$GetResponseBodyResponse;

    invoke-direct {v2, v7}, Lcom/facebook/stetho/inspector/protocol/module/Network$GetResponseBodyResponse;-><init>(Lcom/facebook/stetho/inspector/protocol/module/Network$1;)V

    .line 80
    .local v2, "response":Lcom/facebook/stetho/inspector/protocol/module/Network$GetResponseBodyResponse;
    :try_start_0
    iget-object v3, p0, Lcom/facebook/stetho/inspector/protocol/module/Network;->mResponseBodyFileManager:Lcom/facebook/stetho/inspector/network/ResponseBodyFileManager;

    invoke-virtual {v3, p1}, Lcom/facebook/stetho/inspector/network/ResponseBodyFileManager;->readFile(Ljava/lang/String;)Lcom/facebook/stetho/inspector/network/ResponseBodyData;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    .local v0, "bodyData":Lcom/facebook/stetho/inspector/network/ResponseBodyData;
    iget-object v3, v0, Lcom/facebook/stetho/inspector/network/ResponseBodyData;->data:Ljava/lang/String;

    iput-object v3, v2, Lcom/facebook/stetho/inspector/protocol/module/Network$GetResponseBodyResponse;->body:Ljava/lang/String;

    .line 87
    iget-boolean v3, v0, Lcom/facebook/stetho/inspector/network/ResponseBodyData;->base64Encoded:Z

    iput-boolean v3, v2, Lcom/facebook/stetho/inspector/protocol/module/Network$GetResponseBodyResponse;->base64Encoded:Z

    .line 88
    return-object v2

    .line 81
    .end local v0    # "bodyData":Lcom/facebook/stetho/inspector/network/ResponseBodyData;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    new-instance v3, Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcException;

    new-instance v4, Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError;

    sget-object v5, Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;->INTERNAL_ERROR:Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;

    .line 83
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v7}, Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError;-><init>(Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {v3, v4}, Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcException;-><init>(Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError;)V

    throw v3
.end method


# virtual methods
.method public disable(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "peer"    # Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/facebook/stetho/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/stetho/inspector/protocol/module/Network;->mNetworkPeerManager:Lcom/facebook/stetho/inspector/network/NetworkPeerManager;

    invoke-virtual {v0, p1}, Lcom/facebook/stetho/inspector/network/NetworkPeerManager;->removePeer(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;)V

    .line 51
    return-void
.end method

.method public enable(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "peer"    # Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/facebook/stetho/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/stetho/inspector/protocol/module/Network;->mNetworkPeerManager:Lcom/facebook/stetho/inspector/network/NetworkPeerManager;

    invoke-virtual {v0, p1}, Lcom/facebook/stetho/inspector/network/NetworkPeerManager;->addPeer(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;)Z

    .line 46
    return-void
.end method

.method public getResponseBody(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcResult;
    .locals 7
    .param p1, "peer"    # Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/facebook/stetho/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 62
    :try_start_0
    const-string/jumbo v2, "requestId"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "requestId":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/facebook/stetho/inspector/protocol/module/Network;->readResponseBody(Ljava/lang/String;)Lcom/facebook/stetho/inspector/protocol/module/Network$GetResponseBodyResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 64
    .end local v1    # "requestId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcException;

    new-instance v3, Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError;

    sget-object v4, Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;->INTERNAL_ERROR:Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;

    .line 66
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v6}, Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError;-><init>(Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {v2, v3}, Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcException;-><init>(Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError;)V

    throw v2

    .line 68
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 69
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcException;

    new-instance v3, Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError;

    sget-object v4, Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;->INTERNAL_ERROR:Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;

    .line 70
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v6}, Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError;-><init>(Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {v2, v3}, Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcException;-><init>(Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError;)V

    throw v2
.end method

.method public setPrettyPrinterInitializer(Lcom/facebook/stetho/inspector/network/AsyncPrettyPrinterInitializer;)V
    .locals 1
    .param p1, "initializer"    # Lcom/facebook/stetho/inspector/network/AsyncPrettyPrinterInitializer;

    .prologue
    .line 99
    invoke-static {p1}, Lcom/facebook/stetho/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/facebook/stetho/inspector/protocol/module/Network;->mNetworkPeerManager:Lcom/facebook/stetho/inspector/network/NetworkPeerManager;

    invoke-virtual {v0, p1}, Lcom/facebook/stetho/inspector/network/NetworkPeerManager;->setPrettyPrinterInitializer(Lcom/facebook/stetho/inspector/network/AsyncPrettyPrinterInitializer;)V

    .line 101
    return-void
.end method

.method public setUserAgentOverride(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "peer"    # Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/facebook/stetho/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 56
    return-void
.end method
