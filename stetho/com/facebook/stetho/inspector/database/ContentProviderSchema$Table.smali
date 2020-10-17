.class public Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table;
.super Ljava/lang/Object;
.source "ContentProviderSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/inspector/database/ContentProviderSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Table"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table$Builder;
    }
.end annotation


# instance fields
.field private mProjection:[Ljava/lang/String;

.field private mTableName:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table$Builder;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table$Builder;->access$500(Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table;->mUri:Landroid/net/Uri;

    .line 61
    invoke-static {p1}, Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table$Builder;->access$600(Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table;->mProjection:[Ljava/lang/String;

    .line 62
    invoke-static {p1}, Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table$Builder;->access$700(Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table;->mTableName:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table;->mTableName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table;->mTableName:Ljava/lang/String;

    .line 66
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table$Builder;Lcom/facebook/stetho/inspector/database/ContentProviderSchema$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table$Builder;
    .param p2, "x1"    # Lcom/facebook/stetho/inspector/database/ContentProviderSchema$1;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table;-><init>(Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table$Builder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/stetho/inspector/database/ContentProviderSchema$Table;->mProjection:[Ljava/lang/String;

    return-object v0
.end method
