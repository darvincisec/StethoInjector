.class public Lcom/facebook/stetho/inspector/protocol/module/SimpleBooleanResult;
.super Ljava/lang/Object;
.source "SimpleBooleanResult.java"

# interfaces
.implements Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcResult;


# instance fields
.field public result:Z
    .annotation runtime Lcom/facebook/stetho/json/annotation/JsonProperty;
        required = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "result"    # Z

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean p1, p0, Lcom/facebook/stetho/inspector/protocol/module/SimpleBooleanResult;->result:Z

    .line 24
    return-void
.end method
