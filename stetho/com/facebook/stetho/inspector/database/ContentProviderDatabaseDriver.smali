.class public Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver;
.super Lcom/facebook/stetho/inspector/protocol/module/DatabaseDriver2;
.source "ContentProviderDatabaseDriver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver$ContentProviderDatabaseDescriptor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/stetho/inspector/protocol/module/DatabaseDriver2",
        "<",
        "Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver$ContentProviderDatabaseDescriptor;",
        ">;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final sDatabaseName:Ljava/lang/String; = "content-providers"


# instance fields
.field private final mContentProviderSchemas:[Lcom/facebook/stetho/inspector/database/ContentProviderSchema;

.field private mTableNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;[Lcom/facebook/stetho/inspector/database/ContentProviderSchema;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentProviderSchemas"    # [Lcom/facebook/stetho/inspector/database/ContentProviderSchema;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/stetho/inspector/protocol/module/DatabaseDriver2;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver;->mContentProviderSchemas:[Lcom/facebook/stetho/inspector/database/ContentProviderSchema;

    .line 41
    return-void
.end method

.method private fetchTableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v1, p0, Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver;->mTableNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    .local v0, "tableName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    .end local v0    # "tableName":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method public executeSQL(Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver$ContentProviderDatabaseDescriptor;Ljava/lang/String;Lcom/facebook/stetho/inspector/protocol/module/BaseDatabaseDriver$ExecuteResultHandler;)Lcom/facebook/stetho/inspector/protocol/module/Database$ExecuteSQLResponse;
    .locals 10
    .param p1, "databaseDesc"    # Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver$ContentProviderDatabaseDescriptor;
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver$ContentProviderDatabaseDescriptor;",
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

    .prologue
    .local p3, "handler":Lcom/facebook/stetho/inspector/protocol/module/BaseDatabaseDriver$ExecuteResultHandler;, "Lcom/facebook/stetho/inspector/protocol/module/BaseDatabaseDriver$ExecuteResultHandler<Lcom/facebook/stetho/inspector/protocol/module/Database$ExecuteSQLResponse;>;"
    const/4 v3, 0x0

    .line 66
    invoke-direct {p0, p2}, Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver;->fetchTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 69
    .local v9, "tableName":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver;->mTableNames:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 70
    .local v8, "index":I
    iget-object v1, p0, Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver;->mContentProviderSchemas:[Lcom/facebook/stetho/inspector/database/ContentProviderSchema;

    aget-object v6, v1, v8

    .line 73
    .local v6, "contentProviderSchema":Lcom/facebook/stetho/inspector/database/ContentProviderSchema;
    iget-object v1, p0, Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 75
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {v6}, Lcom/facebook/stetho/inspector/database/ContentProviderSchema;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 76
    invoke-virtual {v6}, Lcom/facebook/stetho/inspector/database/ContentProviderSchema;->getProjection()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    .line 74
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 81
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {p3, v7}, Lcom/facebook/stetho/inspector/protocol/module/BaseDatabaseDriver$ExecuteResultHandler;->handleSelect(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/stetho/inspector/protocol/module/Database$ExecuteSQLResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 81
    return-object v1

    .line 83
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 84
    throw v1
.end method

.method public bridge synthetic executeSQL(Ljava/lang/Object;Ljava/lang/String;Lcom/facebook/stetho/inspector/protocol/module/BaseDatabaseDriver$ExecuteResultHandler;)Lcom/facebook/stetho/inspector/protocol/module/Database$ExecuteSQLResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 27
    check-cast p1, Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver$ContentProviderDatabaseDescriptor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver;->executeSQL(Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver$ContentProviderDatabaseDescriptor;Ljava/lang/String;Lcom/facebook/stetho/inspector/protocol/module/BaseDatabaseDriver$ExecuteResultHandler;)Lcom/facebook/stetho/inspector/protocol/module/Database$ExecuteSQLResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDatabaseNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver$ContentProviderDatabaseDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver$ContentProviderDatabaseDescriptor;

    invoke-direct {v0}, Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver$ContentProviderDatabaseDescriptor;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTableNames(Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver$ContentProviderDatabaseDescriptor;)Ljava/util/List;
    .locals 6
    .param p1, "databaseDesc"    # Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver$ContentProviderDatabaseDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver$ContentProviderDatabaseDescriptor;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v1, p0, Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver;->mTableNames:Ljava/util/List;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver;->mTableNames:Ljava/util/List;

    .line 52
    iget-object v2, p0, Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver;->mContentProviderSchemas:[Lcom/facebook/stetho/inspector/database/ContentProviderSchema;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 53
    .local v0, "schema":Lcom/facebook/stetho/inspector/database/ContentProviderSchema;
    iget-object v4, p0, Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver;->mTableNames:Ljava/util/List;

    invoke-virtual {v0}, Lcom/facebook/stetho/inspector/database/ContentProviderSchema;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "schema":Lcom/facebook/stetho/inspector/database/ContentProviderSchema;
    :cond_0
    iget-object v1, p0, Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver;->mTableNames:Ljava/util/List;

    return-object v1
.end method

.method public bridge synthetic getTableNames(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 27
    check-cast p1, Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver$ContentProviderDatabaseDescriptor;

    invoke-virtual {p0, p1}, Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver;->getTableNames(Lcom/facebook/stetho/inspector/database/ContentProviderDatabaseDriver$ContentProviderDatabaseDescriptor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
