.class Lcom/facebook/stetho/inspector/elements/android/ApplicationDescriptor$ElementContext$1;
.super Ljava/lang/Object;
.source "ApplicationDescriptor.java"

# interfaces
.implements Lcom/facebook/stetho/inspector/elements/android/ActivityTracker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/inspector/elements/android/ApplicationDescriptor$ElementContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/stetho/inspector/elements/android/ApplicationDescriptor$ElementContext;


# direct methods
.method constructor <init>(Lcom/facebook/stetho/inspector/elements/android/ApplicationDescriptor$ElementContext;)V
    .locals 0
    .param p1, "this$1"    # Lcom/facebook/stetho/inspector/elements/android/ApplicationDescriptor$ElementContext;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/facebook/stetho/inspector/elements/android/ApplicationDescriptor$ElementContext$1;->this$1:Lcom/facebook/stetho/inspector/elements/android/ApplicationDescriptor$ElementContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityAdded(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 117
    return-void
.end method

.method public onActivityRemoved(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 122
    return-void
.end method
