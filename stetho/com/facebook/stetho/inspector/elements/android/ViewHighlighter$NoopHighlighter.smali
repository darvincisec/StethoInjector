.class final Lcom/facebook/stetho/inspector/elements/android/ViewHighlighter$NoopHighlighter;
.super Lcom/facebook/stetho/inspector/elements/android/ViewHighlighter;
.source "ViewHighlighter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/inspector/elements/android/ViewHighlighter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoopHighlighter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/facebook/stetho/inspector/elements/android/ViewHighlighter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/stetho/inspector/elements/android/ViewHighlighter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/stetho/inspector/elements/android/ViewHighlighter$1;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/facebook/stetho/inspector/elements/android/ViewHighlighter$NoopHighlighter;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHighlight()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public setHighlightedView(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bounds"    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "color"    # I

    .prologue
    .line 51
    return-void
.end method
