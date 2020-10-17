.class public abstract Lcom/facebook/stetho/inspector/protocol/module/DatabaseDriver2;
.super Lcom/facebook/stetho/inspector/protocol/module/BaseDatabaseDriver;
.source "DatabaseDriver2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DESC::",
        "Lcom/facebook/stetho/inspector/protocol/module/DatabaseDescriptor;",
        ">",
        "Lcom/facebook/stetho/inspector/protocol/module/BaseDatabaseDriver",
        "<TDESC;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    .local p0, "this":Lcom/facebook/stetho/inspector/protocol/module/DatabaseDriver2;, "Lcom/facebook/stetho/inspector/protocol/module/DatabaseDriver2<TDESC;>;"
    invoke-direct {p0, p1}, Lcom/facebook/stetho/inspector/protocol/module/BaseDatabaseDriver;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method
