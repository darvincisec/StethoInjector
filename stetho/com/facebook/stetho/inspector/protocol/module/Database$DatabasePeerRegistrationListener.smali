.class Lcom/facebook/stetho/inspector/protocol/module/Database$DatabasePeerRegistrationListener;
.super Lcom/facebook/stetho/inspector/helper/PeersRegisteredListener;
.source "Database.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/inspector/protocol/module/Database;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabasePeerRegistrationListener"
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mDatabaseDrivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/stetho/inspector/protocol/module/DatabaseDriver2;",
            ">;"
        }
    .end annotation
.end field

.field private final mDatabaseHolders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseDescriptorHolder;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mDatabaseIdMapper:Lcom/facebook/stetho/inspector/helper/ObjectIdMapper;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/stetho/inspector/protocol/module/DatabaseDriver2;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "databaseDrivers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/stetho/inspector/protocol/module/DatabaseDriver2;>;"
    invoke-direct {p0}, Lcom/facebook/stetho/inspector/helper/PeersRegisteredListener;-><init>()V

    .line 248
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabasePeerRegistrationListener;->mDatabaseHolders:Landroid/util/SparseArray;

    .line 251
    new-instance v0, Lcom/facebook/stetho/inspector/helper/ObjectIdMapper;

    invoke-direct {v0}, Lcom/facebook/stetho/inspector/helper/ObjectIdMapper;-><init>()V

    iput-object v0, p0, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabasePeerRegistrationListener;->mDatabaseIdMapper:Lcom/facebook/stetho/inspector/helper/ObjectIdMapper;

    .line 255
    iput-object p1, p0, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabasePeerRegistrationListener;->mDatabaseDrivers:Ljava/util/List;

    .line 256
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/facebook/stetho/inspector/protocol/module/Database$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Lcom/facebook/stetho/inspector/protocol/module/Database$1;

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabasePeerRegistrationListener;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getDatabaseDescriptorHolder(Ljava/lang/String;)Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseDescriptorHolder;
    .locals 2
    .param p1, "databaseId"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabasePeerRegistrationListener;->mDatabaseHolders:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseDescriptorHolder;

    return-object v0
.end method

.method protected declared-synchronized onFirstPeerRegistered()V
    .locals 8

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabasePeerRegistrationListener;->mDatabaseDrivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/stetho/inspector/protocol/module/DatabaseDriver2;

    .line 265
    .local v2, "driver":Lcom/facebook/stetho/inspector/protocol/module/DatabaseDriver2;, "Lcom/facebook/stetho/inspector/protocol/module/DatabaseDriver2<*>;"
    invoke-virtual {v2}, Lcom/facebook/stetho/inspector/protocol/module/DatabaseDriver2;->getDatabaseNames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/stetho/inspector/protocol/module/DatabaseDescriptor;

    .line 266
    .local v1, "desc":Lcom/facebook/stetho/inspector/protocol/module/DatabaseDescriptor;
    iget-object v5, p0, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabasePeerRegistrationListener;->mDatabaseIdMapper:Lcom/facebook/stetho/inspector/helper/ObjectIdMapper;

    invoke-virtual {v5, v1}, Lcom/facebook/stetho/inspector/helper/ObjectIdMapper;->getIdForObject(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 267
    .local v0, "databaseId":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 268
    iget-object v5, p0, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabasePeerRegistrationListener;->mDatabaseIdMapper:Lcom/facebook/stetho/inspector/helper/ObjectIdMapper;

    invoke-virtual {v5, v1}, Lcom/facebook/stetho/inspector/helper/ObjectIdMapper;->putObject(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 269
    iget-object v5, p0, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabasePeerRegistrationListener;->mDatabaseHolders:Landroid/util/SparseArray;

    .line 270
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-instance v7, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseDescriptorHolder;

    invoke-direct {v7, v2, v1}, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseDescriptorHolder;-><init>(Lcom/facebook/stetho/inspector/protocol/module/DatabaseDriver2;Lcom/facebook/stetho/inspector/protocol/module/DatabaseDescriptor;)V

    .line 269
    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 264
    .end local v0    # "databaseId":Ljava/lang/Integer;
    .end local v1    # "desc":Lcom/facebook/stetho/inspector/protocol/module/DatabaseDescriptor;
    .end local v2    # "driver":Lcom/facebook/stetho/inspector/protocol/module/DatabaseDriver2;, "Lcom/facebook/stetho/inspector/protocol/module/DatabaseDriver2<*>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 275
    :cond_2
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized onLastPeerUnregistered()V
    .locals 1

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabasePeerRegistrationListener;->mDatabaseIdMapper:Lcom/facebook/stetho/inspector/helper/ObjectIdMapper;

    invoke-virtual {v0}, Lcom/facebook/stetho/inspector/helper/ObjectIdMapper;->clear()V

    .line 280
    iget-object v0, p0, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabasePeerRegistrationListener;->mDatabaseHolders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    monitor-exit p0

    return-void

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onPeerAdded(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;)V
    .locals 8
    .param p1, "peer"    # Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;

    .prologue
    .line 285
    monitor-enter p0

    const/4 v4, 0x0

    .local v4, "i":I
    :try_start_0
    iget-object v6, p0, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabasePeerRegistrationListener;->mDatabaseHolders:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 286
    iget-object v6, p0, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabasePeerRegistrationListener;->mDatabaseHolders:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 287
    .local v5, "id":I
    iget-object v6, p0, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabasePeerRegistrationListener;->mDatabaseHolders:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseDescriptorHolder;

    .line 289
    .local v3, "holder":Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseDescriptorHolder;
    new-instance v1, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseObject;

    invoke-direct {v1}, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseObject;-><init>()V

    .line 290
    .local v1, "databaseParams":Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseObject;
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseObject;->id:Ljava/lang/String;

    .line 291
    iget-object v6, v3, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseDescriptorHolder;->descriptor:Lcom/facebook/stetho/inspector/protocol/module/DatabaseDescriptor;

    invoke-interface {v6}, Lcom/facebook/stetho/inspector/protocol/module/DatabaseDescriptor;->name()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseObject;->name:Ljava/lang/String;

    .line 292
    iget-object v6, v3, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseDescriptorHolder;->driver:Lcom/facebook/stetho/inspector/protocol/module/DatabaseDriver2;

    invoke-virtual {v6}, Lcom/facebook/stetho/inspector/protocol/module/DatabaseDriver2;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseObject;->domain:Ljava/lang/String;

    .line 293
    const-string/jumbo v6, "N/A"

    iput-object v6, v1, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseObject;->version:Ljava/lang/String;

    .line 294
    new-instance v2, Lcom/facebook/stetho/inspector/protocol/module/Database$AddDatabaseEvent;

    invoke-direct {v2}, Lcom/facebook/stetho/inspector/protocol/module/Database$AddDatabaseEvent;-><init>()V

    .line 295
    .local v2, "eventParams":Lcom/facebook/stetho/inspector/protocol/module/Database$AddDatabaseEvent;
    iput-object v1, v2, Lcom/facebook/stetho/inspector/protocol/module/Database$AddDatabaseEvent;->database:Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseObject;

    .line 296
    const-string/jumbo v6, "Database.addDatabase"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v2, v7}, Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/stetho/inspector/jsonrpc/PendingRequestCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 298
    .end local v1    # "databaseParams":Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseObject;
    .end local v2    # "eventParams":Lcom/facebook/stetho/inspector/protocol/module/Database$AddDatabaseEvent;
    .end local v3    # "holder":Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseDescriptorHolder;
    .end local v5    # "id":I
    :cond_0
    monitor-exit p0

    return-void

    .line 285
    .end local v0    # "N":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method protected declared-synchronized onPeerRemoved(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;)V
    .locals 0
    .param p1, "peer"    # Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;

    .prologue
    .line 303
    monitor-enter p0

    monitor-exit p0

    return-void
.end method
