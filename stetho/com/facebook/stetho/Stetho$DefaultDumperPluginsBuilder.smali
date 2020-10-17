.class public final Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;
.super Ljava/lang/Object;
.source "Stetho.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/Stetho;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultDumperPluginsBuilder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lcom/facebook/stetho/Stetho$PluginBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/stetho/Stetho$PluginBuilder",
            "<",
            "Lcom/facebook/stetho/dumpapp/DumperPlugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Lcom/facebook/stetho/Stetho$PluginBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/stetho/Stetho$PluginBuilder;-><init>(Lcom/facebook/stetho/Stetho$1;)V

    iput-object v0, p0, Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;->mDelegate:Lcom/facebook/stetho/Stetho$PluginBuilder;

    .line 205
    iput-object p1, p0, Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;->mContext:Landroid/content/Context;

    .line 206
    return-void
.end method

.method private provideIfDesired(Lcom/facebook/stetho/dumpapp/DumperPlugin;)Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;
    .locals 2
    .param p1, "plugin"    # Lcom/facebook/stetho/dumpapp/DumperPlugin;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;->mDelegate:Lcom/facebook/stetho/Stetho$PluginBuilder;

    invoke-interface {p1}, Lcom/facebook/stetho/dumpapp/DumperPlugin;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/facebook/stetho/Stetho$PluginBuilder;->provideIfDesired(Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    return-object p0
.end method


# virtual methods
.method public finish()Ljava/lang/Iterable;
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
    .line 224
    new-instance v0, Lcom/facebook/stetho/dumpapp/plugins/HprofDumperPlugin;

    iget-object v1, p0, Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/stetho/dumpapp/plugins/HprofDumperPlugin;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;->provideIfDesired(Lcom/facebook/stetho/dumpapp/DumperPlugin;)Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;

    .line 225
    new-instance v0, Lcom/facebook/stetho/dumpapp/plugins/SharedPreferencesDumperPlugin;

    iget-object v1, p0, Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/stetho/dumpapp/plugins/SharedPreferencesDumperPlugin;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;->provideIfDesired(Lcom/facebook/stetho/dumpapp/DumperPlugin;)Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;

    .line 226
    new-instance v0, Lcom/facebook/stetho/dumpapp/plugins/CrashDumperPlugin;

    invoke-direct {v0}, Lcom/facebook/stetho/dumpapp/plugins/CrashDumperPlugin;-><init>()V

    invoke-direct {p0, v0}, Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;->provideIfDesired(Lcom/facebook/stetho/dumpapp/DumperPlugin;)Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;

    .line 227
    new-instance v0, Lcom/facebook/stetho/dumpapp/plugins/FilesDumperPlugin;

    iget-object v1, p0, Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/stetho/dumpapp/plugins/FilesDumperPlugin;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;->provideIfDesired(Lcom/facebook/stetho/dumpapp/DumperPlugin;)Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;

    .line 228
    iget-object v0, p0, Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;->mDelegate:Lcom/facebook/stetho/Stetho$PluginBuilder;

    invoke-virtual {v0}, Lcom/facebook/stetho/Stetho$PluginBuilder;->finish()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public provide(Lcom/facebook/stetho/dumpapp/DumperPlugin;)Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;
    .locals 2
    .param p1, "plugin"    # Lcom/facebook/stetho/dumpapp/DumperPlugin;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;->mDelegate:Lcom/facebook/stetho/Stetho$PluginBuilder;

    invoke-interface {p1}, Lcom/facebook/stetho/dumpapp/DumperPlugin;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/facebook/stetho/Stetho$PluginBuilder;->provide(Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;
    .locals 1
    .param p1, "pluginName"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;->mDelegate:Lcom/facebook/stetho/Stetho$PluginBuilder;

    invoke-virtual {v0, p1}, Lcom/facebook/stetho/Stetho$PluginBuilder;->remove(Ljava/lang/String;)V

    .line 220
    return-object p0
.end method
