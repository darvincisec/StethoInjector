.class Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;
.super Ljava/lang/Object;
.source "JsFormat.java"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/rhino/JsFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayCharSequence"
.end annotation


# instance fields
.field private final array:[C
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final end:I

.field private final start:I


# direct methods
.method private constructor <init>([CII)V
    .locals 0
    .param p1, "array"    # [C
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;->array:[C

    .line 55
    iput p2, p0, Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;->start:I

    .line 56
    iput p3, p0, Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;->end:I

    .line 57
    return-void
.end method

.method synthetic constructor <init>([CIILcom/facebook/stetho/rhino/JsFormat$1;)V
    .locals 0
    .param p1, "x0"    # [C
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/facebook/stetho/rhino/JsFormat$1;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;-><init>([CII)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;->substring(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private substring(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "start"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;

    iget-object v1, p0, Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;->array:[C

    iget v2, p0, Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;->start:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;->start:I

    iget v4, p0, Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;->end:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;-><init>([CII)V

    return-object v0
.end method


# virtual methods
.method public charAt(I)C
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;->array:[C

    iget v1, p0, Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;->start:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 61
    iget v0, p0, Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;->end:I

    iget v1, p0, Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 71
    new-instance v0, Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;

    iget-object v1, p0, Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;->array:[C

    iget v2, p0, Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;->start:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;->start:I

    add-int/2addr v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;-><init>([CII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 80
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;->array:[C

    iget v2, p0, Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;->start:I

    iget v3, p0, Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;->end:I

    iget v4, p0, Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;->start:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
