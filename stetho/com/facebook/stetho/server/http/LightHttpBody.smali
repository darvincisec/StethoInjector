.class public abstract Lcom/facebook/stetho/server/http/LightHttpBody;
.super Ljava/lang/Object;
.source "LightHttpBody.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/stetho/server/http/LightHttpBody;
    .locals 2
    .param p0, "body"    # Ljava/lang/String;
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 19
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, p1}, Lcom/facebook/stetho/server/http/LightHttpBody;->create([BLjava/lang/String;)Lcom/facebook/stetho/server/http/LightHttpBody;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static create([BLjava/lang/String;)Lcom/facebook/stetho/server/http/LightHttpBody;
    .locals 1
    .param p0, "body"    # [B
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 26
    new-instance v0, Lcom/facebook/stetho/server/http/LightHttpBody$1;

    invoke-direct {v0, p1, p0}, Lcom/facebook/stetho/server/http/LightHttpBody$1;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method


# virtual methods
.method public abstract contentLength()I
.end method

.method public abstract contentType()Ljava/lang/String;
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
