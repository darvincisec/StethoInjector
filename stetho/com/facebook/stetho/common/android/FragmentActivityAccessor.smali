.class public interface abstract Lcom/facebook/stetho/common/android/FragmentActivityAccessor;
.super Ljava/lang/Object;
.source "FragmentActivityAccessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FRAGMENT_ACTIVITY:",
        "Landroid/app/Activity;",
        "FRAGMENT_MANAGER:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getFragmentManager(Landroid/app/Activity;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFRAGMENT_ACTIVITY;)TFRAGMENT_MANAGER;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
