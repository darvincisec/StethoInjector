.class public Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcException;
.super Ljava/lang/Exception;
.source "JsonRpcException.java"


# instance fields
.field private final mErrorMessage:Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError;


# direct methods
.method public constructor <init>(Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError;)V
    .locals 2
    .param p1, "errorMessage"    # Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError;

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError;->code:Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-static {p1}, Lcom/facebook/stetho/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError;

    iput-object v0, p0, Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcException;->mErrorMessage:Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError;

    .line 21
    return-void
.end method


# virtual methods
.method public getErrorMessage()Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcException;->mErrorMessage:Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError;

    return-object v0
.end method
