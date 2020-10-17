.class final Lcom/facebook/stetho/common/ListUtil$TwoItemImmutableList;
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
    name = "TwoItemImmutableList"
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


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lcom/facebook/stetho/common/ListUtil$TwoItemImmutableList;, "Lcom/facebook/stetho/common/ListUtil$TwoItemImmutableList<TE;>;"
    .local p1, "item0":Ljava/lang/Object;, "TE;"
    .local p2, "item1":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/facebook/stetho/common/ListUtil$TwoItemImmutableList;->mItem0:Ljava/lang/Object;

    .line 129
    iput-object p2, p0, Lcom/facebook/stetho/common/ListUtil$TwoItemImmutableList;->mItem1:Ljava/lang/Object;

    .line 130
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
    .line 134
    .local p0, "this":Lcom/facebook/stetho/common/ListUtil$TwoItemImmutableList;, "Lcom/facebook/stetho/common/ListUtil$TwoItemImmutableList<TE;>;"
    packed-switch p1, :pswitch_data_0

    .line 140
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 136
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/stetho/common/ListUtil$TwoItemImmutableList;->mItem0:Ljava/lang/Object;

    .line 138
    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/facebook/stetho/common/ListUtil$TwoItemImmutableList;->mItem1:Ljava/lang/Object;

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public size()I
    .locals 1

    .prologue
    .line 146
    .local p0, "this":Lcom/facebook/stetho/common/ListUtil$TwoItemImmutableList;, "Lcom/facebook/stetho/common/ListUtil$TwoItemImmutableList<TE;>;"
    const/4 v0, 0x2

    return v0
.end method
