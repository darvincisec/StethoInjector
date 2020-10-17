.class Lcom/facebook/stetho/websocket/MaskingHelper;
.super Ljava/lang/Object;
.source "MaskingHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unmask([B[BII)V
    .locals 6
    .param p0, "key"    # [B
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 14
    const/4 v1, 0x0

    .local v1, "index":I
    move v2, v1

    .end local v1    # "index":I
    .local v2, "index":I
    move v0, p3

    .end local p3    # "count":I
    .local v0, "count":I
    move v3, p2

    .line 15
    .end local p2    # "offset":I
    .local v3, "offset":I
    :goto_0
    add-int/lit8 p3, v0, -0x1

    .end local v0    # "count":I
    .restart local p3    # "count":I
    if-lez v0, :cond_0

    .line 16
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v4, p1, v3

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    array-length v5, p0

    rem-int v5, v2, v5

    aget-byte v5, p0, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    move v0, p3

    .end local p3    # "count":I
    .restart local v0    # "count":I
    move v3, p2

    .end local p2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 18
    .end local v0    # "count":I
    .restart local p3    # "count":I
    :cond_0
    return-void
.end method
