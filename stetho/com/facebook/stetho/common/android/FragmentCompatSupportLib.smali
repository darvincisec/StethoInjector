.class final Lcom/facebook/stetho/common/android/FragmentCompatSupportLib;
.super Lcom/facebook/stetho/common/android/FragmentCompat;
.source "FragmentCompatSupportLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/stetho/common/android/FragmentCompatSupportLib$FragmentActivityAccessorSupportLib;,
        Lcom/facebook/stetho/common/android/FragmentCompatSupportLib$DialogFragmentAccessorSupportLib;,
        Lcom/facebook/stetho/common/android/FragmentCompatSupportLib$FragmentAccessorSupportLib;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/stetho/common/android/FragmentCompat",
        "<",
        "Landroid/support/v4/app/Fragment;",
        "Landroid/support/v4/app/DialogFragment;",
        "Landroid/support/v4/app/FragmentManager;",
        "Landroid/support/v4/app/FragmentActivity;",
        ">;"
    }
.end annotation


# static fields
.field private static final sDialogFragmentAccessor:Lcom/facebook/stetho/common/android/FragmentCompatSupportLib$DialogFragmentAccessorSupportLib;

.field private static final sFragmentAccessor:Lcom/facebook/stetho/common/android/FragmentCompatSupportLib$FragmentAccessorSupportLib;

.field private static final sFragmentActivityAccessor:Lcom/facebook/stetho/common/android/FragmentCompatSupportLib$FragmentActivityAccessorSupportLib;

.field private static final sFragmentManagerAccessor:Lcom/facebook/stetho/common/android/FragmentCompat$FragmentManagerAccessorViaReflection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/stetho/common/android/FragmentCompat$FragmentManagerAccessorViaReflection",
            "<",
            "Landroid/support/v4/app/FragmentManager;",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    new-instance v0, Lcom/facebook/stetho/common/android/FragmentCompatSupportLib$FragmentAccessorSupportLib;

    invoke-direct {v0, v1}, Lcom/facebook/stetho/common/android/FragmentCompatSupportLib$FragmentAccessorSupportLib;-><init>(Lcom/facebook/stetho/common/android/FragmentCompatSupportLib$1;)V

    sput-object v0, Lcom/facebook/stetho/common/android/FragmentCompatSupportLib;->sFragmentAccessor:Lcom/facebook/stetho/common/android/FragmentCompatSupportLib$FragmentAccessorSupportLib;

    .line 26
    new-instance v0, Lcom/facebook/stetho/common/android/FragmentCompatSupportLib$DialogFragmentAccessorSupportLib;

    invoke-direct {v0, v1}, Lcom/facebook/stetho/common/android/FragmentCompatSupportLib$DialogFragmentAccessorSupportLib;-><init>(Lcom/facebook/stetho/common/android/FragmentCompatSupportLib$1;)V

    sput-object v0, Lcom/facebook/stetho/common/android/FragmentCompatSupportLib;->sDialogFragmentAccessor:Lcom/facebook/stetho/common/android/FragmentCompatSupportLib$DialogFragmentAccessorSupportLib;

    .line 29
    new-instance v0, Lcom/facebook/stetho/common/android/FragmentCompat$FragmentManagerAccessorViaReflection;

    invoke-direct {v0}, Lcom/facebook/stetho/common/android/FragmentCompat$FragmentManagerAccessorViaReflection;-><init>()V

    sput-object v0, Lcom/facebook/stetho/common/android/FragmentCompatSupportLib;->sFragmentManagerAccessor:Lcom/facebook/stetho/common/android/FragmentCompat$FragmentManagerAccessorViaReflection;

    .line 30
    new-instance v0, Lcom/facebook/stetho/common/android/FragmentCompatSupportLib$FragmentActivityAccessorSupportLib;

    invoke-direct {v0, v1}, Lcom/facebook/stetho/common/android/FragmentCompatSupportLib$FragmentActivityAccessorSupportLib;-><init>(Lcom/facebook/stetho/common/android/FragmentCompatSupportLib$1;)V

    sput-object v0, Lcom/facebook/stetho/common/android/FragmentCompatSupportLib;->sFragmentActivityAccessor:Lcom/facebook/stetho/common/android/FragmentCompatSupportLib$FragmentActivityAccessorSupportLib;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/facebook/stetho/common/android/FragmentCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic forDialogFragment()Lcom/facebook/stetho/common/android/DialogFragmentAccessor;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/facebook/stetho/common/android/FragmentCompatSupportLib;->forDialogFragment()Lcom/facebook/stetho/common/android/FragmentCompatSupportLib$DialogFragmentAccessorSupportLib;

    move-result-object v0

    return-object v0
.end method

.method public forDialogFragment()Lcom/facebook/stetho/common/android/FragmentCompatSupportLib$DialogFragmentAccessorSupportLib;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/facebook/stetho/common/android/FragmentCompatSupportLib;->sDialogFragmentAccessor:Lcom/facebook/stetho/common/android/FragmentCompatSupportLib$DialogFragmentAccessorSupportLib;

    return-object v0
.end method

.method public bridge synthetic forFragment()Lcom/facebook/stetho/common/android/FragmentAccessor;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/facebook/stetho/common/android/FragmentCompatSupportLib;->forFragment()Lcom/facebook/stetho/common/android/FragmentCompatSupportLib$FragmentAccessorSupportLib;

    move-result-object v0

    return-object v0
.end method

.method public forFragment()Lcom/facebook/stetho/common/android/FragmentCompatSupportLib$FragmentAccessorSupportLib;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/facebook/stetho/common/android/FragmentCompatSupportLib;->sFragmentAccessor:Lcom/facebook/stetho/common/android/FragmentCompatSupportLib$FragmentAccessorSupportLib;

    return-object v0
.end method

.method public bridge synthetic forFragmentActivity()Lcom/facebook/stetho/common/android/FragmentActivityAccessor;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/facebook/stetho/common/android/FragmentCompatSupportLib;->forFragmentActivity()Lcom/facebook/stetho/common/android/FragmentCompatSupportLib$FragmentActivityAccessorSupportLib;

    move-result-object v0

    return-object v0
.end method

.method public forFragmentActivity()Lcom/facebook/stetho/common/android/FragmentCompatSupportLib$FragmentActivityAccessorSupportLib;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/facebook/stetho/common/android/FragmentCompatSupportLib;->sFragmentActivityAccessor:Lcom/facebook/stetho/common/android/FragmentCompatSupportLib$FragmentActivityAccessorSupportLib;

    return-object v0
.end method

.method public forFragmentManager()Lcom/facebook/stetho/common/android/FragmentManagerAccessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/stetho/common/android/FragmentManagerAccessor",
            "<",
            "Landroid/support/v4/app/FragmentManager;",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    sget-object v0, Lcom/facebook/stetho/common/android/FragmentCompatSupportLib;->sFragmentManagerAccessor:Lcom/facebook/stetho/common/android/FragmentCompat$FragmentManagerAccessorViaReflection;

    return-object v0
.end method

.method public getDialogFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/support/v4/app/DialogFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    const-class v0, Landroid/support/v4/app/DialogFragment;

    return-object v0
.end method

.method public getFragmentActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/support/v4/app/FragmentActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    const-class v0, Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method public getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    const-class v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method
