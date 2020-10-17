.class final Lcom/facebook/stetho/Stetho$2;
.super Ljava/lang/Object;
.source "Stetho.java"

# interfaces
.implements Lcom/facebook/stetho/DumperPluginsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/stetho/Stetho;->defaultDumperPluginsProvider(Landroid/content/Context;)Lcom/facebook/stetho/DumperPluginsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/facebook/stetho/Stetho$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/facebook/stetho/dumpapp/DumperPlugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;

    iget-object v1, p0, Lcom/facebook/stetho/Stetho$2;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;->finish()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
