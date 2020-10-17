.class public Lcom/facebook/stetho/inspector/network/DecompressionHelper;
.super Ljava/lang/Object;
.source "DecompressionHelper.java"


# static fields
.field static final DEFLATE_ENCODING:Ljava/lang/String; = "deflate"

.field static final GZIP_ENCODING:Ljava/lang/String; = "gzip"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static teeInputWithDecompression(Lcom/facebook/stetho/inspector/network/NetworkPeerManager;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Lcom/facebook/stetho/inspector/network/ResponseHandler;)Ljava/io/InputStream;
    .locals 9
    .param p0, "peerManager"    # Lcom/facebook/stetho/inspector/network/NetworkPeerManager;
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "availableInputStream"    # Ljava/io/InputStream;
    .param p3, "decompressedOutput"    # Ljava/io/OutputStream;
    .param p4, "contentEncoding"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "responseHandler"    # Lcom/facebook/stetho/inspector/network/ResponseHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    move-object v3, p3

    .line 34
    .local v3, "output":Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 36
    .local v4, "decompressedCounter":Lcom/facebook/stetho/inspector/network/CountingOutputStream;
    if-eqz p4, :cond_1

    .line 37
    const-string/jumbo v0, "gzip"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 38
    .local v8, "gzipEncoding":Z
    const-string/jumbo v0, "deflate"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 40
    .local v7, "deflateEncoding":Z
    if-nez v8, :cond_0

    if-eqz v7, :cond_3

    .line 41
    :cond_0
    new-instance v4, Lcom/facebook/stetho/inspector/network/CountingOutputStream;

    .end local v4    # "decompressedCounter":Lcom/facebook/stetho/inspector/network/CountingOutputStream;
    invoke-direct {v4, p3}, Lcom/facebook/stetho/inspector/network/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 42
    .restart local v4    # "decompressedCounter":Lcom/facebook/stetho/inspector/network/CountingOutputStream;
    if-eqz v8, :cond_2

    .line 43
    invoke-static {v4}, Lcom/facebook/stetho/inspector/network/GunzippingOutputStream;->create(Ljava/io/OutputStream;)Lcom/facebook/stetho/inspector/network/GunzippingOutputStream;

    move-result-object v3

    .line 57
    .end local v7    # "deflateEncoding":Z
    .end local v8    # "gzipEncoding":Z
    :cond_1
    :goto_0
    new-instance v0, Lcom/facebook/stetho/inspector/network/ResponseHandlingInputStream;

    move-object v1, p2

    move-object v2, p1

    move-object v5, p0

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/stetho/inspector/network/ResponseHandlingInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/OutputStream;Lcom/facebook/stetho/inspector/network/CountingOutputStream;Lcom/facebook/stetho/inspector/helper/ChromePeerManager;Lcom/facebook/stetho/inspector/network/ResponseHandler;)V

    return-object v0

    .line 44
    .restart local v7    # "deflateEncoding":Z
    .restart local v8    # "gzipEncoding":Z
    :cond_2
    if-eqz v7, :cond_1

    .line 45
    new-instance v3, Ljava/util/zip/InflaterOutputStream;

    .end local v3    # "output":Ljava/io/OutputStream;
    invoke-direct {v3, v4}, Ljava/util/zip/InflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .restart local v3    # "output":Ljava/io/OutputStream;
    goto :goto_0

    .line 48
    :cond_3
    sget-object v0, Lcom/facebook/stetho/inspector/protocol/module/Console$MessageLevel;->WARNING:Lcom/facebook/stetho/inspector/protocol/module/Console$MessageLevel;

    sget-object v1, Lcom/facebook/stetho/inspector/protocol/module/Console$MessageSource;->NETWORK:Lcom/facebook/stetho/inspector/protocol/module/Console$MessageSource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unsupported Content-Encoding in response for request #"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/facebook/stetho/inspector/console/CLog;->writeToConsole(Lcom/facebook/stetho/inspector/helper/ChromePeerManager;Lcom/facebook/stetho/inspector/protocol/module/Console$MessageLevel;Lcom/facebook/stetho/inspector/protocol/module/Console$MessageSource;Ljava/lang/String;)V

    goto :goto_0
.end method
