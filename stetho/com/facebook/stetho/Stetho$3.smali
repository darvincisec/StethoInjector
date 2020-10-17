.class final Lcom/facebook/stetho/Stetho$3;
.super Ljava/lang/Object;
.source "Stetho.java"

# interfaces
.implements Lcom/facebook/stetho/InspectorModulesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/stetho/Stetho;->defaultInspectorModulesProvider(Landroid/content/Context;)Lcom/facebook/stetho/InspectorModulesProvider;
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
    .line 147
    iput-object p1, p0, Lcom/facebook/stetho/Stetho$3;->val$context:Landroid/content/Context;

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
            "Lcom/facebook/stetho/inspector/protocol/ChromeDevtoolsDomain;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Lcom/facebook/stetho/Stetho$DefaultInspectorModulesBuilder;

    iget-object v1, p0, Lcom/facebook/stetho/Stetho$3;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/stetho/Stetho$DefaultInspectorModulesBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/facebook/stetho/Stetho$DefaultInspectorModulesBuilder;->finish()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
