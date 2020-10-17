.class public abstract Lcom/facebook/stetho/inspector/helper/ThreadBoundProxy;
.super Ljava/lang/Object;
.source "ThreadBoundProxy.java"

# interfaces
.implements Lcom/facebook/stetho/common/ThreadBound;


# instance fields
.field private final mEnforcer:Lcom/facebook/stetho/common/ThreadBound;


# direct methods
.method public constructor <init>(Lcom/facebook/stetho/common/ThreadBound;)V
    .locals 1
    .param p1, "enforcer"    # Lcom/facebook/stetho/common/ThreadBound;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/facebook/stetho/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/stetho/common/ThreadBound;

    iput-object v0, p0, Lcom/facebook/stetho/inspector/helper/ThreadBoundProxy;->mEnforcer:Lcom/facebook/stetho/common/ThreadBound;

    .line 27
    return-void
.end method


# virtual methods
.method public final checkThreadAccess()Z
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/stetho/inspector/helper/ThreadBoundProxy;->mEnforcer:Lcom/facebook/stetho/common/ThreadBound;

    invoke-interface {v0}, Lcom/facebook/stetho/common/ThreadBound;->checkThreadAccess()Z

    move-result v0

    return v0
.end method

.method public final postAndWait(Lcom/facebook/stetho/common/UncheckedCallable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/stetho/common/UncheckedCallable",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "c":Lcom/facebook/stetho/common/UncheckedCallable;, "Lcom/facebook/stetho/common/UncheckedCallable<TV;>;"
    iget-object v0, p0, Lcom/facebook/stetho/inspector/helper/ThreadBoundProxy;->mEnforcer:Lcom/facebook/stetho/common/ThreadBound;

    invoke-interface {v0, p1}, Lcom/facebook/stetho/common/ThreadBound;->postAndWait(Lcom/facebook/stetho/common/UncheckedCallable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final postAndWait(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/stetho/inspector/helper/ThreadBoundProxy;->mEnforcer:Lcom/facebook/stetho/common/ThreadBound;

    invoke-interface {v0, p1}, Lcom/facebook/stetho/common/ThreadBound;->postAndWait(Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/stetho/inspector/helper/ThreadBoundProxy;->mEnforcer:Lcom/facebook/stetho/common/ThreadBound;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/stetho/common/ThreadBound;->postDelayed(Ljava/lang/Runnable;J)V

    .line 52
    return-void
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/stetho/inspector/helper/ThreadBoundProxy;->mEnforcer:Lcom/facebook/stetho/common/ThreadBound;

    invoke-interface {v0, p1}, Lcom/facebook/stetho/common/ThreadBound;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method public final verifyThreadAccess()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/stetho/inspector/helper/ThreadBoundProxy;->mEnforcer:Lcom/facebook/stetho/common/ThreadBound;

    invoke-interface {v0}, Lcom/facebook/stetho/common/ThreadBound;->verifyThreadAccess()V

    .line 37
    return-void
.end method
