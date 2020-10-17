.class Lcom/facebook/stetho/inspector/elements/android/AndroidDocumentProvider$2;
.super Ljava/lang/Object;
.source "AndroidDocumentProvider.java"

# interfaces
.implements Lcom/facebook/stetho/common/Accumulator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/stetho/inspector/elements/android/AndroidDocumentProvider;->getWindows(Lcom/facebook/stetho/common/Accumulator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/stetho/common/Accumulator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/stetho/inspector/elements/android/AndroidDocumentProvider;

.field final synthetic val$accumulator:Lcom/facebook/stetho/common/Accumulator;


# direct methods
.method constructor <init>(Lcom/facebook/stetho/inspector/elements/android/AndroidDocumentProvider;Lcom/facebook/stetho/common/Accumulator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/stetho/inspector/elements/android/AndroidDocumentProvider;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/facebook/stetho/inspector/elements/android/AndroidDocumentProvider$2;->this$0:Lcom/facebook/stetho/inspector/elements/android/AndroidDocumentProvider;

    iput-object p2, p0, Lcom/facebook/stetho/inspector/elements/android/AndroidDocumentProvider$2;->val$accumulator:Lcom/facebook/stetho/common/Accumulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public store(Ljava/lang/Object;)V
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 256
    instance-of v1, p1, Landroid/view/Window;

    if-eqz v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/facebook/stetho/inspector/elements/android/AndroidDocumentProvider$2;->val$accumulator:Lcom/facebook/stetho/common/Accumulator;

    check-cast p1, Landroid/view/Window;

    .end local p1    # "element":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/facebook/stetho/common/Accumulator;->store(Ljava/lang/Object;)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 261
    .restart local p1    # "element":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/facebook/stetho/inspector/elements/android/AndroidDocumentProvider$2;->this$0:Lcom/facebook/stetho/inspector/elements/android/AndroidDocumentProvider;

    invoke-virtual {v1, p1}, Lcom/facebook/stetho/inspector/elements/android/AndroidDocumentProvider;->getDescriptor(Ljava/lang/Object;)Lcom/facebook/stetho/inspector/elements/Descriptor;

    move-result-object v0

    .line 262
    .local v0, "elementDescriptor":Lcom/facebook/stetho/inspector/elements/Descriptor;
    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0, p1, p0}, Lcom/facebook/stetho/inspector/elements/Descriptor;->getChildren(Ljava/lang/Object;Lcom/facebook/stetho/common/Accumulator;)V

    goto :goto_0
.end method
