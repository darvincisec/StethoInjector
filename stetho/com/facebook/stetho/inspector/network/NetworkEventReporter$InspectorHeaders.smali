.class public interface abstract Lcom/facebook/stetho/inspector/network/NetworkEventReporter$InspectorHeaders;
.super Ljava/lang/Object;
.source "NetworkEventReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/inspector/network/NetworkEventReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InspectorHeaders"
.end annotation


# virtual methods
.method public abstract firstHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract headerCount()I
.end method

.method public abstract headerName(I)Ljava/lang/String;
.end method

.method public abstract headerValue(I)Ljava/lang/String;
.end method
