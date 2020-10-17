.class Lcom/facebook/stetho/dumpapp/plugins/CrashDumperPlugin$ThrowRunnable;
.super Ljava/lang/Object;
.source "CrashDumperPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/dumpapp/plugins/CrashDumperPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThrowRunnable"
.end annotation


# instance fields
.field private final mThrowable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/facebook/stetho/dumpapp/plugins/CrashDumperPlugin$ThrowRunnable;->mThrowable:Ljava/lang/Throwable;

    .line 165
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/facebook/stetho/dumpapp/plugins/CrashDumperPlugin$ThrowRunnable;->mThrowable:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/facebook/stetho/common/ExceptionUtil;->sneakyThrow(Ljava/lang/Throwable;)V

    .line 170
    return-void
.end method
