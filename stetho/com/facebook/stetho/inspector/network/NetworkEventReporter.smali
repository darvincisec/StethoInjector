.class public interface abstract Lcom/facebook/stetho/inspector/network/NetworkEventReporter;
.super Ljava/lang/Object;
.source "NetworkEventReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/stetho/inspector/network/NetworkEventReporter$InspectorHeaders;,
        Lcom/facebook/stetho/inspector/network/NetworkEventReporter$InspectorResponseCommon;,
        Lcom/facebook/stetho/inspector/network/NetworkEventReporter$InspectorRequestCommon;,
        Lcom/facebook/stetho/inspector/network/NetworkEventReporter$InspectorWebSocketFrame;,
        Lcom/facebook/stetho/inspector/network/NetworkEventReporter$InspectorWebSocketResponse;,
        Lcom/facebook/stetho/inspector/network/NetworkEventReporter$InspectorWebSocketRequest;,
        Lcom/facebook/stetho/inspector/network/NetworkEventReporter$InspectorResponse;,
        Lcom/facebook/stetho/inspector/network/NetworkEventReporter$InspectorRequest;
    }
.end annotation


# virtual methods
.method public abstract dataReceived(Ljava/lang/String;II)V
.end method

.method public abstract dataSent(Ljava/lang/String;II)V
.end method

.method public abstract httpExchangeFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract interpretResponseStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/facebook/stetho/inspector/network/ResponseHandler;)Ljava/io/InputStream;
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/io/InputStream;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract nextRequestId()Ljava/lang/String;
.end method

.method public abstract requestWillBeSent(Lcom/facebook/stetho/inspector/network/NetworkEventReporter$InspectorRequest;)V
.end method

.method public abstract responseHeadersReceived(Lcom/facebook/stetho/inspector/network/NetworkEventReporter$InspectorResponse;)V
.end method

.method public abstract responseReadFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract responseReadFinished(Ljava/lang/String;)V
.end method

.method public abstract webSocketClosed(Ljava/lang/String;)V
.end method

.method public abstract webSocketCreated(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract webSocketFrameError(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract webSocketFrameReceived(Lcom/facebook/stetho/inspector/network/NetworkEventReporter$InspectorWebSocketFrame;)V
.end method

.method public abstract webSocketFrameSent(Lcom/facebook/stetho/inspector/network/NetworkEventReporter$InspectorWebSocketFrame;)V
.end method

.method public abstract webSocketHandshakeResponseReceived(Lcom/facebook/stetho/inspector/network/NetworkEventReporter$InspectorWebSocketResponse;)V
.end method

.method public abstract webSocketWillSendHandshakeRequest(Lcom/facebook/stetho/inspector/network/NetworkEventReporter$InspectorWebSocketRequest;)V
.end method
