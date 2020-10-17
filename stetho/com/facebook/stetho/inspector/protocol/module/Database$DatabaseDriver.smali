.class public abstract Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseDriver;
.super Lcom/facebook/stetho/inspector/protocol/module/BaseDatabaseDriver;
.source "Database.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/inspector/protocol/module/Database;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DatabaseDriver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/stetho/inspector/protocol/module/BaseDatabaseDriver",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/facebook/stetho/inspector/protocol/module/BaseDatabaseDriver;-><init>(Landroid/content/Context;)V

    .line 381
    return-void
.end method
