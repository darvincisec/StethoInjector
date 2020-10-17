.class public Lcom/facebook/stetho/server/SocketLike;
.super Ljava/lang/Object;
.source "SocketLike.java"


# instance fields
.field private final mLeakyInput:Lcom/facebook/stetho/server/LeakyBufferedInputStream;

.field private final mSocket:Landroid/net/LocalSocket;


# direct methods
.method public constructor <init>(Landroid/net/LocalSocket;Lcom/facebook/stetho/server/LeakyBufferedInputStream;)V
    .locals 0
    .param p1, "socket"    # Landroid/net/LocalSocket;
    .param p2, "leakyInput"    # Lcom/facebook/stetho/server/LeakyBufferedInputStream;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/facebook/stetho/server/SocketLike;->mSocket:Landroid/net/LocalSocket;

    .line 37
    iput-object p2, p0, Lcom/facebook/stetho/server/SocketLike;->mLeakyInput:Lcom/facebook/stetho/server/LeakyBufferedInputStream;

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/facebook/stetho/server/SocketLike;Lcom/facebook/stetho/server/LeakyBufferedInputStream;)V
    .locals 1
    .param p1, "socketLike"    # Lcom/facebook/stetho/server/SocketLike;
    .param p2, "leakyInput"    # Lcom/facebook/stetho/server/LeakyBufferedInputStream;

    .prologue
    .line 32
    iget-object v0, p1, Lcom/facebook/stetho/server/SocketLike;->mSocket:Landroid/net/LocalSocket;

    invoke-direct {p0, v0, p2}, Lcom/facebook/stetho/server/SocketLike;-><init>(Landroid/net/LocalSocket;Lcom/facebook/stetho/server/LeakyBufferedInputStream;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getInput()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/stetho/server/SocketLike;->mLeakyInput:Lcom/facebook/stetho/server/LeakyBufferedInputStream;

    invoke-virtual {v0}, Lcom/facebook/stetho/server/LeakyBufferedInputStream;->leakBufferAndStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutput()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/stetho/server/SocketLike;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
