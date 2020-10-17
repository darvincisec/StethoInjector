.class Lcom/facebook/stetho/websocket/ReadHandler;
.super Ljava/lang/Object;
.source "ReadHandler.java"


# instance fields
.field private final mBufferedInput:Ljava/io/BufferedInputStream;

.field private final mCurrentPayload:Ljava/io/ByteArrayOutputStream;

.field private final mEndpoint:Lcom/facebook/stetho/websocket/SimpleEndpoint;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/facebook/stetho/websocket/SimpleEndpoint;)V
    .locals 2
    .param p1, "bufferedInput"    # Ljava/io/InputStream;
    .param p2, "endpoint"    # Lcom/facebook/stetho/websocket/SimpleEndpoint;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/facebook/stetho/websocket/ReadHandler;->mCurrentPayload:Ljava/io/ByteArrayOutputStream;

    .line 27
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x400

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/facebook/stetho/websocket/ReadHandler;->mBufferedInput:Ljava/io/BufferedInputStream;

    .line 28
    iput-object p2, p0, Lcom/facebook/stetho/websocket/ReadHandler;->mEndpoint:Lcom/facebook/stetho/websocket/SimpleEndpoint;

    .line 29
    return-void
.end method


# virtual methods
.method public readLoop(Lcom/facebook/stetho/websocket/ReadCallback;)V
    .locals 8
    .param p1, "readCallback"    # Lcom/facebook/stetho/websocket/ReadCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v1, Lcom/facebook/stetho/websocket/Frame;

    invoke-direct {v1}, Lcom/facebook/stetho/websocket/Frame;-><init>()V

    .line 40
    .local v1, "frame":Lcom/facebook/stetho/websocket/Frame;
    :cond_0
    iget-object v2, p0, Lcom/facebook/stetho/websocket/ReadHandler;->mBufferedInput:Ljava/io/BufferedInputStream;

    invoke-virtual {v1, v2}, Lcom/facebook/stetho/websocket/Frame;->readFrom(Ljava/io/BufferedInputStream;)V

    .line 41
    iget-object v2, p0, Lcom/facebook/stetho/websocket/ReadHandler;->mCurrentPayload:Ljava/io/ByteArrayOutputStream;

    iget-object v3, v1, Lcom/facebook/stetho/websocket/Frame;->payloadData:[B

    const/4 v4, 0x0

    iget-wide v6, v1, Lcom/facebook/stetho/websocket/Frame;->payloadLen:J

    long-to-int v5, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 42
    iget-boolean v2, v1, Lcom/facebook/stetho/websocket/Frame;->fin:Z

    if-eqz v2, :cond_1

    .line 43
    iget-object v2, p0, Lcom/facebook/stetho/websocket/ReadHandler;->mCurrentPayload:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 44
    .local v0, "completePayload":[B
    iget-byte v2, v1, Lcom/facebook/stetho/websocket/Frame;->opcode:B

    array-length v3, v0

    invoke-interface {p1, v2, v0, v3}, Lcom/facebook/stetho/websocket/ReadCallback;->onCompleteFrame(B[BI)V

    .line 45
    iget-object v2, p0, Lcom/facebook/stetho/websocket/ReadHandler;->mCurrentPayload:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 47
    .end local v0    # "completePayload":[B
    :cond_1
    iget-byte v2, v1, Lcom/facebook/stetho/websocket/Frame;->opcode:B

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 48
    return-void
.end method
