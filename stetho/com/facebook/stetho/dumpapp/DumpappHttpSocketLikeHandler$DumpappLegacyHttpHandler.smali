.class Lcom/facebook/stetho/dumpapp/DumpappHttpSocketLikeHandler$DumpappLegacyHttpHandler;
.super Ljava/lang/Object;
.source "DumpappHttpSocketLikeHandler.java"

# interfaces
.implements Lcom/facebook/stetho/server/http/HttpHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/dumpapp/DumpappHttpSocketLikeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DumpappLegacyHttpHandler"
.end annotation


# static fields
.field private static final CONTENT_TYPE:Ljava/lang/String; = "application/octet-stream"

.field private static final QUERY_PARAM_ARGV:Ljava/lang/String; = "argv"

.field private static final RESPONSE_HEADER_ALLOW_ORIGIN:Ljava/lang/String; = "Access-Control-Allow-Origin"


# instance fields
.field private final mDumper:Lcom/facebook/stetho/dumpapp/Dumper;


# direct methods
.method public constructor <init>(Lcom/facebook/stetho/dumpapp/Dumper;)V
    .locals 0
    .param p1, "dumper"    # Lcom/facebook/stetho/dumpapp/Dumper;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/facebook/stetho/dumpapp/DumpappHttpSocketLikeHandler$DumpappLegacyHttpHandler;->mDumper:Lcom/facebook/stetho/dumpapp/Dumper;

    .line 65
    return-void
.end method


# virtual methods
.method public handleRequest(Lcom/facebook/stetho/server/SocketLike;Lcom/facebook/stetho/server/http/LightHttpRequest;Lcom/facebook/stetho/server/http/LightHttpResponse;)Z
    .locals 10
    .param p1, "socket"    # Lcom/facebook/stetho/server/SocketLike;
    .param p2, "request"    # Lcom/facebook/stetho/server/http/LightHttpRequest;
    .param p3, "response"    # Lcom/facebook/stetho/server/http/LightHttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 72
    const-string/jumbo v8, "POST"

    iget-object v9, p2, Lcom/facebook/stetho/server/http/LightHttpRequest;->method:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 73
    .local v4, "postMethod":Z
    if-nez v4, :cond_1

    const-string/jumbo v8, "GET"

    iget-object v9, p2, Lcom/facebook/stetho/server/http/LightHttpRequest;->method:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v2, v7

    .line 75
    .local v2, "getMethod":Z
    :goto_0
    if-nez v2, :cond_0

    if-eqz v4, :cond_4

    .line 76
    :cond_0
    iget-object v8, p2, Lcom/facebook/stetho/server/http/LightHttpRequest;->uri:Landroid/net/Uri;

    const-string/jumbo v9, "argv"

    invoke-virtual {v8, v9}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 78
    .local v0, "argv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 79
    .local v3, "outputBuffer":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lcom/facebook/stetho/dumpapp/Framer;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    new-array v6, v6, [B

    invoke-direct {v8, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v8, v3}, Lcom/facebook/stetho/dumpapp/Framer;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 83
    .local v1, "framer":Lcom/facebook/stetho/dumpapp/Framer;
    if-eqz v4, :cond_2

    const-string/jumbo v5, "ERROR"

    .line 85
    .local v5, "warningPrefix":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Lcom/facebook/stetho/dumpapp/Framer;->getStderr()Ljava/io/PrintStream;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "*** "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": Using legacy HTTP protocol; update dumpapp script! ***"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    if-eqz v2, :cond_3

    .line 89
    iget-object v8, p0, Lcom/facebook/stetho/dumpapp/DumpappHttpSocketLikeHandler$DumpappLegacyHttpHandler;->mDumper:Lcom/facebook/stetho/dumpapp/Dumper;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-static {v8, v1, v6}, Lcom/facebook/stetho/dumpapp/DumpappSocketLikeHandler;->dump(Lcom/facebook/stetho/dumpapp/Dumper;Lcom/facebook/stetho/dumpapp/Framer;[Ljava/lang/String;)V

    .line 96
    :goto_2
    const/16 v6, 0xc8

    iput v6, p3, Lcom/facebook/stetho/server/http/LightHttpResponse;->code:I

    .line 97
    const-string/jumbo v6, "OK"

    iput-object v6, p3, Lcom/facebook/stetho/server/http/LightHttpResponse;->reasonPhrase:Ljava/lang/String;

    .line 98
    const-string/jumbo v6, "Access-Control-Allow-Origin"

    const-string/jumbo v8, "*"

    invoke-virtual {p3, v6, v8}, Lcom/facebook/stetho/server/http/LightHttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const-string/jumbo v8, "application/octet-stream"

    invoke-static {v6, v8}, Lcom/facebook/stetho/server/http/LightHttpBody;->create([BLjava/lang/String;)Lcom/facebook/stetho/server/http/LightHttpBody;

    move-result-object v6

    iput-object v6, p3, Lcom/facebook/stetho/server/http/LightHttpResponse;->body:Lcom/facebook/stetho/server/http/LightHttpBody;

    .line 106
    .end local v0    # "argv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "framer":Lcom/facebook/stetho/dumpapp/Framer;
    .end local v3    # "outputBuffer":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "warningPrefix":Ljava/lang/String;
    :goto_3
    return v7

    .end local v2    # "getMethod":Z
    :cond_1
    move v2, v6

    .line 73
    goto :goto_0

    .line 83
    .restart local v0    # "argv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "framer":Lcom/facebook/stetho/dumpapp/Framer;
    .restart local v2    # "getMethod":Z
    .restart local v3    # "outputBuffer":Ljava/io/ByteArrayOutputStream;
    :cond_2
    const-string/jumbo v5, "WARNING"

    goto :goto_1

    .line 93
    .restart local v5    # "warningPrefix":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, v7}, Lcom/facebook/stetho/dumpapp/Framer;->writeExitCode(I)V

    goto :goto_2

    .line 101
    .end local v0    # "argv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "framer":Lcom/facebook/stetho/dumpapp/Framer;
    .end local v3    # "outputBuffer":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "warningPrefix":Ljava/lang/String;
    :cond_4
    const/16 v6, 0x1f5

    iput v6, p3, Lcom/facebook/stetho/server/http/LightHttpResponse;->code:I

    .line 102
    const-string/jumbo v6, "Not implemented"

    iput-object v6, p3, Lcom/facebook/stetho/server/http/LightHttpResponse;->reasonPhrase:Ljava/lang/String;

    .line 103
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p2, Lcom/facebook/stetho/server/http/LightHttpRequest;->method:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " not implemented"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "text/plain"

    invoke-static {v6, v8}, Lcom/facebook/stetho/server/http/LightHttpBody;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/stetho/server/http/LightHttpBody;

    move-result-object v6

    iput-object v6, p3, Lcom/facebook/stetho/server/http/LightHttpResponse;->body:Lcom/facebook/stetho/server/http/LightHttpBody;

    goto :goto_3
.end method
