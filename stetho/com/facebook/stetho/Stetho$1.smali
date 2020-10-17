.class final Lcom/facebook/stetho/Stetho$1;
.super Lcom/facebook/stetho/Stetho$Initializer;
.source "Stetho.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/stetho/Stetho;->initializeWithDefaults(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    iput-object p2, p0, Lcom/facebook/stetho/Stetho$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/facebook/stetho/Stetho$Initializer;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getDumperPlugins()Ljava/lang/Iterable;
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
    .line 108
    new-instance v0, Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;

    iget-object v1, p0, Lcom/facebook/stetho/Stetho$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;->finish()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method protected getInspectorModules()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/facebook/stetho/inspector/protocol/ChromeDevtoolsDomain;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lcom/facebook/stetho/Stetho$DefaultInspectorModulesBuilder;

    iget-object v1, p0, Lcom/facebook/stetho/Stetho$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/stetho/Stetho$DefaultInspectorModulesBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/facebook/stetho/Stetho$DefaultInspectorModulesBuilder;->finish()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
