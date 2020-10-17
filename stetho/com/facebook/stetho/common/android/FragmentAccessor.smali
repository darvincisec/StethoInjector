.class public interface abstract Lcom/facebook/stetho/common/android/FragmentAccessor;
.super Ljava/lang/Object;
.source "FragmentAccessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FRAGMENT:",
        "Ljava/lang/Object;",
        "FRAGMENT_MANAGER:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final NO_ID:I


# virtual methods
.method public abstract getChildFragmentManager(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFRAGMENT;)TFRAGMENT_MANAGER;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getFragmentManager(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFRAGMENT;)TFRAGMENT_MANAGER;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getId(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFRAGMENT;)I"
        }
    .end annotation
.end method

.method public abstract getResources(Ljava/lang/Object;)Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFRAGMENT;)",
            "Landroid/content/res/Resources;"
        }
    .end annotation
.end method

.method public abstract getTag(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFRAGMENT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getView(Ljava/lang/Object;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFRAGMENT;)",
            "Landroid/view/View;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
