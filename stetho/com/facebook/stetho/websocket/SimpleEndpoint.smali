.class public interface abstract Lcom/facebook/stetho/websocket/SimpleEndpoint;
.super Ljava/lang/Object;
.source "SimpleEndpoint.java"


# virtual methods
.method public abstract onClose(Lcom/facebook/stetho/websocket/SimpleSession;ILjava/lang/String;)V
.end method

.method public abstract onError(Lcom/facebook/stetho/websocket/SimpleSession;Ljava/lang/Throwable;)V
.end method

.method public abstract onMessage(Lcom/facebook/stetho/websocket/SimpleSession;Ljava/lang/String;)V
.end method

.method public abstract onMessage(Lcom/facebook/stetho/websocket/SimpleSession;[BI)V
.end method

.method public abstract onOpen(Lcom/facebook/stetho/websocket/SimpleSession;)V
.end method
