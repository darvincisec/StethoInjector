.class Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler$HandlerInfo;
.super Ljava/lang/Object;
.source "ProtocolDetectingSocketHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerInfo"
.end annotation


# instance fields
.field public final handler:Lcom/facebook/stetho/server/SocketLikeHandler;

.field public final magicMatcher:Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler$MagicMatcher;


# direct methods
.method private constructor <init>(Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler$MagicMatcher;Lcom/facebook/stetho/server/SocketLikeHandler;)V
    .locals 0
    .param p1, "magicMatcher"    # Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler$MagicMatcher;
    .param p2, "handler"    # Lcom/facebook/stetho/server/SocketLikeHandler;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler$HandlerInfo;->magicMatcher:Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler$MagicMatcher;

    .line 103
    iput-object p2, p0, Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler$HandlerInfo;->handler:Lcom/facebook/stetho/server/SocketLikeHandler;

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler$MagicMatcher;Lcom/facebook/stetho/server/SocketLikeHandler;Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler$MagicMatcher;
    .param p2, "x1"    # Lcom/facebook/stetho/server/SocketLikeHandler;
    .param p3, "x2"    # Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler$1;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler$HandlerInfo;-><init>(Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler$MagicMatcher;Lcom/facebook/stetho/server/SocketLikeHandler;)V

    return-void
.end method
