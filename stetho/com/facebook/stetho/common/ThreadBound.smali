.class public interface abstract Lcom/facebook/stetho/common/ThreadBound;
.super Ljava/lang/Object;
.source "ThreadBound.java"


# virtual methods
.method public abstract checkThreadAccess()Z
.end method

.method public abstract postAndWait(Lcom/facebook/stetho/common/UncheckedCallable;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/stetho/common/UncheckedCallable",
            "<TV;>;)TV;"
        }
    .end annotation
.end method

.method public abstract postAndWait(Ljava/lang/Runnable;)V
.end method

.method public abstract postDelayed(Ljava/lang/Runnable;J)V
.end method

.method public abstract removeCallbacks(Ljava/lang/Runnable;)V
.end method

.method public abstract verifyThreadAccess()V
.end method
