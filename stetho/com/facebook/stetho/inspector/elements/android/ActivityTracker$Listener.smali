.class public interface abstract Lcom/facebook/stetho/inspector/elements/android/ActivityTracker$Listener;
.super Ljava/lang/Object;
.source "ActivityTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/inspector/elements/android/ActivityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onActivityAdded(Landroid/app/Activity;)V
.end method

.method public abstract onActivityRemoved(Landroid/app/Activity;)V
.end method
