.class public interface abstract Lcom/facebook/stetho/inspector/database/DatabaseConnectionProvider;
.super Ljava/lang/Object;
.source "DatabaseConnectionProvider.java"


# virtual methods
.method public abstract openDatabase(Ljava/io/File;)Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation
.end method
