.class final Lcom/facebook/stetho/common/android/HandlerUtil$2;
.super Lcom/facebook/stetho/common/android/HandlerUtil$WaitableRunnable;
.source "HandlerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/stetho/common/android/HandlerUtil;->postAndWait(Landroid/os/Handler;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/stetho/common/android/HandlerUtil$WaitableRunnable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/facebook/stetho/common/android/HandlerUtil$2;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/facebook/stetho/common/android/HandlerUtil$WaitableRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onRun()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/facebook/stetho/common/android/HandlerUtil$2;->onRun()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected onRun()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/stetho/common/android/HandlerUtil$2;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 91
    const/4 v0, 0x0

    return-object v0
.end method
