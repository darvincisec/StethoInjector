.class public abstract Lcom/facebook/stetho/inspector/protocol/module/BaseDatabaseDriver;
.super Ljava/lang/Object;
.source "BaseDatabaseDriver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/stetho/inspector/protocol/module/BaseDatabaseDriver$ExecuteResultHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DESC:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    .local p0, "this":Lcom/facebook/stetho/inspector/protocol/module/BaseDatabaseDriver;, "Lcom/facebook/stetho/inspector/protocol/module/BaseDatabaseDriver<TDESC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/stetho/inspector/protocol/module/BaseDatabaseDriver;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public abstract executeSQL(Ljava/lang/Object;Ljava/lang/String;Lcom/facebook/stetho/inspector/protocol/module/BaseDatabaseDriver$ExecuteResultHandler;)Lcom/facebook/stetho/inspector/protocol/module/Database$ExecuteSQLResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDESC;",
            "Ljava/lang/String;",
            "Lcom/facebook/stetho/inspector/protocol/module/BaseDatabaseDriver$ExecuteResultHandler",
            "<",
            "Lcom/facebook/stetho/inspector/protocol/module/Database$ExecuteSQLResponse;",
            ">;)",
            "Lcom/facebook/stetho/inspector/protocol/module/Database$ExecuteSQLResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/facebook/stetho/inspector/protocol/module/BaseDatabaseDriver;, "Lcom/facebook/stetho/inspector/protocol/module/BaseDatabaseDriver<TDESC;>;"
    iget-object v0, p0, Lcom/facebook/stetho/inspector/protocol/module/BaseDatabaseDriver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getDatabaseNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TDESC;>;"
        }
    .end annotation
.end method

.method public abstract getTableNames(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDESC;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
