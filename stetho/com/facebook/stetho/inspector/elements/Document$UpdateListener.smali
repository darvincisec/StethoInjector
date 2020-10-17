.class public interface abstract Lcom/facebook/stetho/inspector/elements/Document$UpdateListener;
.super Ljava/lang/Object;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/inspector/elements/Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpdateListener"
.end annotation


# virtual methods
.method public abstract onAttributeModified(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onAttributeRemoved(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract onChildNodeInserted(Lcom/facebook/stetho/inspector/elements/DocumentView;Ljava/lang/Object;IILcom/facebook/stetho/common/Accumulator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/stetho/inspector/elements/DocumentView;",
            "Ljava/lang/Object;",
            "II",
            "Lcom/facebook/stetho/common/Accumulator",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onChildNodeRemoved(II)V
.end method

.method public abstract onInspectRequested(Ljava/lang/Object;)V
.end method
