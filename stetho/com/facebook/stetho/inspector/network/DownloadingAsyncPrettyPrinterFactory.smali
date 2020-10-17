.class public abstract Lcom/facebook/stetho/inspector/network/DownloadingAsyncPrettyPrinterFactory;
.super Ljava/lang/Object;
.source "DownloadingAsyncPrettyPrinterFactory.java"

# interfaces
.implements Lcom/facebook/stetho/inspector/network/AsyncPrettyPrinterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/stetho/inspector/network/DownloadingAsyncPrettyPrinterFactory$Request;,
        Lcom/facebook/stetho/inspector/network/DownloadingAsyncPrettyPrinterFactory$MatchResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/io/PrintWriter;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/PrintWriter;
    .param p1, "x1"    # Ljava/io/InputStream;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {p0, p1, p2}, Lcom/facebook/stetho/inspector/network/DownloadingAsyncPrettyPrinterFactory;->doErrorPrint(Ljava/io/PrintWriter;Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method private static doErrorPrint(Ljava/io/PrintWriter;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p0, "output"    # Ljava/io/PrintWriter;
    .param p1, "payload"    # Ljava/io/InputStream;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/stetho/common/Util;->readAsUTF8(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method private static getErrorAsyncPrettyPrinter(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/stetho/inspector/network/AsyncPrettyPrinter;
    .locals 1
    .param p0, "headerName"    # Ljava/lang/String;
    .param p1, "headerValue"    # Ljava/lang/String;

    .prologue
    .line 118
    new-instance v0, Lcom/facebook/stetho/inspector/network/DownloadingAsyncPrettyPrinterFactory$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/stetho/inspector/network/DownloadingAsyncPrettyPrinterFactory$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static parseURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .param p0, "uri"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 104
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract doPrint(Ljava/io/PrintWriter;Ljava/io/InputStream;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/stetho/inspector/network/AsyncPrettyPrinter;
    .locals 6
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "headerValue"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/facebook/stetho/inspector/network/DownloadingAsyncPrettyPrinterFactory;->matchAndParseHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/stetho/inspector/network/DownloadingAsyncPrettyPrinterFactory$MatchResult;

    move-result-object v2

    .line 29
    .local v2, "result":Lcom/facebook/stetho/inspector/network/DownloadingAsyncPrettyPrinterFactory$MatchResult;
    if-nez v2, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-object v5

    .line 32
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/stetho/inspector/network/DownloadingAsyncPrettyPrinterFactory$MatchResult;->getSchemaUri()Ljava/lang/String;

    move-result-object v4

    .line 33
    .local v4, "uri":Ljava/lang/String;
    invoke-static {v4}, Lcom/facebook/stetho/inspector/network/DownloadingAsyncPrettyPrinterFactory;->parseURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 34
    .local v3, "schemaURL":Ljava/net/URL;
    if-nez v3, :cond_2

    .line 35
    invoke-static {p1, p2}, Lcom/facebook/stetho/inspector/network/DownloadingAsyncPrettyPrinterFactory;->getErrorAsyncPrettyPrinter(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/stetho/inspector/network/AsyncPrettyPrinter;

    move-result-object v5

    goto :goto_0

    .line 37
    :cond_2
    invoke-static {}, Lcom/facebook/stetho/inspector/network/AsyncPrettyPrinterExecutorHolder;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 38
    .local v0, "executorService":Ljava/util/concurrent/ExecutorService;
    if-eqz v0, :cond_0

    .line 42
    new-instance v5, Lcom/facebook/stetho/inspector/network/DownloadingAsyncPrettyPrinterFactory$Request;

    invoke-direct {v5, v3}, Lcom/facebook/stetho/inspector/network/DownloadingAsyncPrettyPrinterFactory$Request;-><init>(Ljava/net/URL;)V

    invoke-interface {v0, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 43
    .local v1, "response":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    new-instance v5, Lcom/facebook/stetho/inspector/network/DownloadingAsyncPrettyPrinterFactory$1;

    invoke-direct {v5, p0, v1, v2}, Lcom/facebook/stetho/inspector/network/DownloadingAsyncPrettyPrinterFactory$1;-><init>(Lcom/facebook/stetho/inspector/network/DownloadingAsyncPrettyPrinterFactory;Ljava/util/concurrent/Future;Lcom/facebook/stetho/inspector/network/DownloadingAsyncPrettyPrinterFactory$MatchResult;)V

    goto :goto_0
.end method

.method protected abstract matchAndParseHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/stetho/inspector/network/DownloadingAsyncPrettyPrinterFactory$MatchResult;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
