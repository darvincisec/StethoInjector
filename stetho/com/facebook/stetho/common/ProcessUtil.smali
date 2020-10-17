.class public Lcom/facebook/stetho/common/ProcessUtil;
.super Ljava/lang/Object;
.source "ProcessUtil.java"


# static fields
.field private static final CMDLINE_BUFFER_SIZE:I = 0x40

.field private static sProcessName:Ljava/lang/String;

.field private static sProcessNameRead:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getProcessName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 35
    const-class v1, Lcom/facebook/stetho/common/ProcessUtil;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/facebook/stetho/common/ProcessUtil;->sProcessNameRead:Z

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/stetho/common/ProcessUtil;->sProcessNameRead:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :try_start_1
    invoke-static {}, Lcom/facebook/stetho/common/ProcessUtil;->readProcessName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/stetho/common/ProcessUtil;->sProcessName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/facebook/stetho/common/ProcessUtil;->sProcessName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 39
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static indexOf([BIIB)I
    .locals 2
    .param p0, "haystack"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "needle"    # B

    .prologue
    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 63
    aget-byte v1, p0, v0

    if-ne v1, p3, :cond_0

    .line 67
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 62
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static readProcessName()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 46
    const/16 v7, 0x40

    new-array v0, v7, [B

    .line 49
    .local v0, "cmdlineBuffer":[B
    new-instance v3, Ljava/io/FileInputStream;

    const-string/jumbo v7, "/proc/self/cmdline"

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 50
    .local v3, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 52
    .local v4, "success":Z
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .line 53
    .local v2, "n":I
    const/4 v4, 0x1

    .line 54
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v7, v2, v8}, Lcom/facebook/stetho/common/ProcessUtil;->indexOf([BIIB)I

    move-result v1

    .line 55
    .local v1, "endIndex":I
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    if-lez v1, :cond_0

    .end local v1    # "endIndex":I
    :goto_0
    invoke-direct {v7, v0, v8, v1}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    if-nez v4, :cond_1

    :goto_1
    invoke-static {v3, v5}, Lcom/facebook/stetho/common/Util;->close(Ljava/io/Closeable;Z)V

    .line 55
    return-object v7

    .restart local v1    # "endIndex":I
    :cond_0
    move v1, v2

    goto :goto_0

    .end local v1    # "endIndex":I
    :cond_1
    move v5, v6

    .line 57
    goto :goto_1

    .end local v2    # "n":I
    :catchall_0
    move-exception v7

    if-nez v4, :cond_2

    :goto_2
    invoke-static {v3, v5}, Lcom/facebook/stetho/common/Util;->close(Ljava/io/Closeable;Z)V

    .line 58
    throw v7

    :cond_2
    move v5, v6

    .line 57
    goto :goto_2
.end method
