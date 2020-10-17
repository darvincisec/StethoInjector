.class final Lcom/facebook/stetho/common/ListUtil$ImmutableArrayList;
.super Ljava/util/AbstractList;
.source "ListUtil.java"

# interfaces
.implements Lcom/facebook/stetho/common/ListUtil$ImmutableList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/common/ListUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImmutableArrayList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Lcom/facebook/stetho/common/ListUtil$ImmutableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final mArray:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .param p1, "array"    # [Ljava/lang/Object;

    .prologue
    .line 83
    .local p0, "this":Lcom/facebook/stetho/common/ListUtil$ImmutableArrayList;, "Lcom/facebook/stetho/common/ListUtil$ImmutableArrayList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/facebook/stetho/common/ListUtil$ImmutableArrayList;->mArray:[Ljava/lang/Object;

    .line 85
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/facebook/stetho/common/ListUtil$ImmutableArrayList;, "Lcom/facebook/stetho/common/ListUtil$ImmutableArrayList<TE;>;"
    iget-object v0, p0, Lcom/facebook/stetho/common/ListUtil$ImmutableArrayList;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 95
    .local p0, "this":Lcom/facebook/stetho/common/ListUtil$ImmutableArrayList;, "Lcom/facebook/stetho/common/ListUtil$ImmutableArrayList<TE;>;"
    iget-object v0, p0, Lcom/facebook/stetho/common/ListUtil$ImmutableArrayList;->mArray:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
