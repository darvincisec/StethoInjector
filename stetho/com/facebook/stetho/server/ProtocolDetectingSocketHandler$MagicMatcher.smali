.class public interface abstract Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler$MagicMatcher;
.super Ljava/lang/Object;
.source "ProtocolDetectingSocketHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MagicMatcher"
.end annotation


# virtual methods
.method public abstract matches(Ljava/io/InputStream;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
