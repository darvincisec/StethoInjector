.class Lcom/facebook/stetho/inspector/protocol/module/Page$GetResourceTreeParams;
.super Ljava/lang/Object;
.source "Page.java"

# interfaces
.implements Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/inspector/protocol/module/Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetResourceTreeParams"
.end annotation


# instance fields
.field public frameTree:Lcom/facebook/stetho/inspector/protocol/module/Page$FrameResourceTree;
    .annotation runtime Lcom/facebook/stetho/json/annotation/JsonProperty;
        required = true
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/stetho/inspector/protocol/module/Page$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/stetho/inspector/protocol/module/Page$1;

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/facebook/stetho/inspector/protocol/module/Page$GetResourceTreeParams;-><init>()V

    return-void
.end method
