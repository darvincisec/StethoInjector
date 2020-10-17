.class final Lcom/facebook/stetho/common/android/HandlerUtil$1;
.super Lcom/facebook/stetho/common/android/HandlerUtil$WaitableRunnable;
.source "HandlerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/stetho/common/android/HandlerUtil;->postAndWait(Landroid/os/Handler;Lcom/facebook/stetho/common/UncheckedCallable;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/stetho/common/android/HandlerUtil$WaitableRunnable",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$c:Lcom/facebook/stetho/common/UncheckedCallable;


# direct methods
.method constructor <init>(Lcom/facebook/stetho/common/UncheckedCallable;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/facebook/stetho/common/android/HandlerUtil$1;->val$c:Lcom/facebook/stetho/common/UncheckedCallable;

    invoke-direct {p0}, Lcom/facebook/stetho/common/android/HandlerUtil$WaitableRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRun()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/stetho/common/android/HandlerUtil$1;->val$c:Lcom/facebook/stetho/common/UncheckedCallable;

    invoke-interface {v0}, Lcom/facebook/stetho/common/UncheckedCallable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
