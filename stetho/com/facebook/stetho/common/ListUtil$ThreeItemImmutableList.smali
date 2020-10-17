.class final Lcom/facebook/stetho/common/ListUtil$ThreeItemImmutableList;
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
    name = "ThreeItemImmutableList"
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
.field private final mItem0:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final mItem1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final mItem2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;TE;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lcom/facebook/stetho/common/ListUtil$ThreeItemImmutableList;, "Lcom/facebook/stetho/common/ListUtil$ThreeItemImmutableList<TE;>;"
    .local p1, "item0":Ljava/lang/Object;, "TE;"
    .local p2, "item1":Ljava/lang/Object;, "TE;"
    .local p3, "item2":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/facebook/stetho/common/ListUtil$ThreeItemImmutableList;->mItem0:Ljava/lang/Object;

    .line 158
    iput-object p2, p0, Lcom/facebook/stetho/common/ListUtil$ThreeItemImmutableList;->mItem1:Ljava/lang/Object;

    .line 159
    iput-object p3, p0, Lcom/facebook/stetho/common/ListUtil$ThreeItemImmutableList;->mItem2:Ljava/lang/Object;

    .line 160
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
    .line 164
    .local p0, "this":Lcom/facebook/stetho/common/ListUtil$ThreeItemImmutableList;, "Lcom/facebook/stetho/common/ListUtil$ThreeItemImmutableList<TE;>;"
    packed-switch p1, :pswitch_data_0

    .line 172
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 166
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/stetho/common/ListUtil$ThreeItemImmutableList;->mItem0:Ljava/lang/Object;

    .line 170
    :goto_0
    return-object v0

    .line 168
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/stetho/common/ListUtil$ThreeItemImmutableList;->mItem1:Ljava/lang/Object;

    goto :goto_0

    .line 170
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/stetho/common/ListUtil$ThreeItemImmutableList;->mItem2:Ljava/lang/Object;

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public size()I
    .locals 1

    .prologue
    .line 178
    .local p0, "this":Lcom/facebook/stetho/common/ListUtil$ThreeItemImmutableList;, "Lcom/facebook/stetho/common/ListUtil$ThreeItemImmutableList<TE;>;"
    const/4 v0, 0x3

    return v0
.end method
