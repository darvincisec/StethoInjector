.class public Lcom/facebook/stetho/inspector/DevtoolsSocketHandler;
.super Ljava/lang/Object;
.source "DevtoolsSocketHandler.java"

# interfaces
.implements Lcom/facebook/stetho/server/SocketLikeHandler;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mModules:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lcom/facebook/stetho/inspector/protocol/ChromeDevtoolsDomain;",
            ">;"
        }
    .end annotation
.end field

.field private final mServer:Lcom/facebook/stetho/server/http/LightHttpServer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Iterable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/facebook/stetho/inspector/protocol/ChromeDevtoolsDomain;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "modules":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/facebook/stetho/inspector/protocol/ChromeDevtoolsDomain;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/facebook/stetho/inspector/DevtoolsSocketHandler;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/facebook/stetho/inspector/DevtoolsSocketHandler;->mModules:Ljava/lang/Iterable;

    .line 33
    invoke-direct {p0}, Lcom/facebook/stetho/inspector/DevtoolsSocketHandler;->createServer()Lcom/facebook/stetho/server/http/LightHttpServer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/stetho/inspector/DevtoolsSocketHandler;->mServer:Lcom/facebook/stetho/server/http/LightHttpServer;

    .line 34
    return-void
.end method

.method private createServer()Lcom/facebook/stetho/server/http/LightHttpServer;
    .locals 6

    .prologue
    .line 37
    new-instance v1, Lcom/facebook/stetho/server/http/HandlerRegistry;

    invoke-direct {v1}, Lcom/facebook/stetho/server/http/HandlerRegistry;-><init>()V

    .line 38
    .local v1, "registry":Lcom/facebook/stetho/server/http/HandlerRegistry;
    new-instance v0, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;

    iget-object v2, p0, Lcom/facebook/stetho/inspector/DevtoolsSocketHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "/inspector"

    invoke-direct {v0, v2, v3}, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    .local v0, "discoveryHandler":Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;
    invoke-virtual {v0, v1}, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->register(Lcom/facebook/stetho/server/http/HandlerRegistry;)V

    .line 43
    new-instance v2, Lcom/facebook/stetho/server/http/ExactPathMatcher;

    const-string/jumbo v3, "/inspector"

    invoke-direct {v2, v3}, Lcom/facebook/stetho/server/http/ExactPathMatcher;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/facebook/stetho/websocket/WebSocketHandler;

    new-instance v4, Lcom/facebook/stetho/inspector/ChromeDevtoolsServer;

    iget-object v5, p0, Lcom/facebook/stetho/inspector/DevtoolsSocketHandler;->mModules:Ljava/lang/Iterable;

    invoke-direct {v4, v5}, Lcom/facebook/stetho/inspector/ChromeDevtoolsServer;-><init>(Ljava/lang/Iterable;)V

    invoke-direct {v3, v4}, Lcom/facebook/stetho/websocket/WebSocketHandler;-><init>(Lcom/facebook/stetho/websocket/SimpleEndpoint;)V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/stetho/server/http/HandlerRegistry;->register(Lcom/facebook/stetho/server/http/PathMatcher;Lcom/facebook/stetho/server/http/HttpHandler;)V

    .line 47
    new-instance v2, Lcom/facebook/stetho/server/http/LightHttpServer;

    invoke-direct {v2, v1}, Lcom/facebook/stetho/server/http/LightHttpServer;-><init>(Lcom/facebook/stetho/server/http/HandlerRegistry;)V

    return-object v2
.end method


# virtual methods
.method public onAccepted(Lcom/facebook/stetho/server/SocketLike;)V
    .locals 1
    .param p1, "socket"    # Lcom/facebook/stetho/server/SocketLike;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/stetho/inspector/DevtoolsSocketHandler;->mServer:Lcom/facebook/stetho/server/http/LightHttpServer;

    invoke-virtual {v0, p1}, Lcom/facebook/stetho/server/http/LightHttpServer;->serve(Lcom/facebook/stetho/server/SocketLike;)V

    .line 53
    return-void
.end method
