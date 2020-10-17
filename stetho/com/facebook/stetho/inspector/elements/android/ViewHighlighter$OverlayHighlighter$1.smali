.class Lcom/facebook/stetho/inspector/elements/android/ViewHighlighter$OverlayHighlighter$1;
.super Ljava/lang/Object;
.source "ViewHighlighter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/inspector/elements/android/ViewHighlighter$OverlayHighlighter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/stetho/inspector/elements/android/ViewHighlighter$OverlayHighlighter;


# direct methods
.method constructor <init>(Lcom/facebook/stetho/inspector/elements/android/ViewHighlighter$OverlayHighlighter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/stetho/inspector/elements/android/ViewHighlighter$OverlayHighlighter;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/facebook/stetho/inspector/elements/android/ViewHighlighter$OverlayHighlighter$1;->this$0:Lcom/facebook/stetho/inspector/elements/android/ViewHighlighter$OverlayHighlighter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/stetho/inspector/elements/android/ViewHighlighter$OverlayHighlighter$1;->this$0:Lcom/facebook/stetho/inspector/elements/android/ViewHighlighter$OverlayHighlighter;

    invoke-static {v0}, Lcom/facebook/stetho/inspector/elements/android/ViewHighlighter$OverlayHighlighter;->access$100(Lcom/facebook/stetho/inspector/elements/android/ViewHighlighter$OverlayHighlighter;)V

    .line 75
    return-void
.end method
