.class public final Lcom/facebook/stetho/common/android/FragmentCompatUtil;
.super Ljava/lang/Object;
.source "FragmentCompatUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static findFragmentForView(Landroid/view/View;)Ljava/lang/Object;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 41
    invoke-static {p0}, Lcom/facebook/stetho/common/android/ViewUtil;->tryGetActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 42
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 43
    const/4 v1, 0x0

    .line 46
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0, p0}, Lcom/facebook/stetho/common/android/FragmentCompatUtil;->findFragmentForViewInActivity(Landroid/app/Activity;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method private static findFragmentForViewInActivity(Landroid/app/Activity;Landroid/view/View;)Ljava/lang/Object;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 51
    invoke-static {}, Lcom/facebook/stetho/common/android/FragmentCompat;->getSupportLibInstance()Lcom/facebook/stetho/common/android/FragmentCompat;

    move-result-object v2

    .line 54
    .local v2, "supportLib":Lcom/facebook/stetho/common/android/FragmentCompat;
    if-eqz v2, :cond_1

    .line 55
    invoke-virtual {v2}, Lcom/facebook/stetho/common/android/FragmentCompat;->getFragmentActivityClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    invoke-static {v2, p0, p1}, Lcom/facebook/stetho/common/android/FragmentCompatUtil;->findFragmentForViewInActivity(Lcom/facebook/stetho/common/android/FragmentCompat;Landroid/app/Activity;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    .local v0, "fragment":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 74
    .end local v0    # "fragment":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 66
    :cond_1
    invoke-static {}, Lcom/facebook/stetho/common/android/FragmentCompat;->getFrameworkInstance()Lcom/facebook/stetho/common/android/FragmentCompat;

    move-result-object v1

    .line 67
    .local v1, "framework":Lcom/facebook/stetho/common/android/FragmentCompat;
    if-eqz v1, :cond_2

    .line 68
    invoke-static {v1, p0, p1}, Lcom/facebook/stetho/common/android/FragmentCompatUtil;->findFragmentForViewInActivity(Lcom/facebook/stetho/common/android/FragmentCompat;Landroid/app/Activity;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    .restart local v0    # "fragment":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 74
    .end local v0    # "fragment":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static findFragmentForViewInActivity(Lcom/facebook/stetho/common/android/FragmentCompat;Landroid/app/Activity;Landroid/view/View;)Ljava/lang/Object;
    .locals 2
    .param p0, "compat"    # Lcom/facebook/stetho/common/android/FragmentCompat;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/facebook/stetho/common/android/FragmentCompat;->forFragmentActivity()Lcom/facebook/stetho/common/android/FragmentActivityAccessor;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/facebook/stetho/common/android/FragmentActivityAccessor;->getFragmentManager(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, "fragmentManager":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 83
    invoke-static {p0, v0, p2}, Lcom/facebook/stetho/common/android/FragmentCompatUtil;->findFragmentForViewInFragmentManager(Lcom/facebook/stetho/common/android/FragmentCompat;Ljava/lang/Object;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    .line 85
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static findFragmentForViewInFragment(Lcom/facebook/stetho/common/android/FragmentCompat;Ljava/lang/Object;Landroid/view/View;)Ljava/lang/Object;
    .locals 3
    .param p0, "compat"    # Lcom/facebook/stetho/common/android/FragmentCompat;
    .param p1, "fragment"    # Ljava/lang/Object;
    .param p2, "view"    # Landroid/view/View;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/facebook/stetho/common/android/FragmentCompat;->forFragment()Lcom/facebook/stetho/common/android/FragmentAccessor;

    move-result-object v0

    .line 116
    .local v0, "accessor":Lcom/facebook/stetho/common/android/FragmentAccessor;
    invoke-interface {v0, p1}, Lcom/facebook/stetho/common/android/FragmentAccessor;->getView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 125
    .end local p1    # "fragment":Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 120
    .restart local p1    # "fragment":Ljava/lang/Object;
    :cond_0
    invoke-interface {v0, p1}, Lcom/facebook/stetho/common/android/FragmentAccessor;->getChildFragmentManager(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 121
    .local v1, "childFragmentManager":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 122
    invoke-static {p0, v1, p2}, Lcom/facebook/stetho/common/android/FragmentCompatUtil;->findFragmentForViewInFragmentManager(Lcom/facebook/stetho/common/android/FragmentCompat;Ljava/lang/Object;Landroid/view/View;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 125
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private static findFragmentForViewInFragmentManager(Lcom/facebook/stetho/common/android/FragmentCompat;Ljava/lang/Object;Landroid/view/View;)Ljava/lang/Object;
    .locals 6
    .param p0, "compat"    # Lcom/facebook/stetho/common/android/FragmentCompat;
    .param p1, "fragmentManager"    # Ljava/lang/Object;
    .param p2, "view"    # Landroid/view/View;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/facebook/stetho/common/android/FragmentCompat;->forFragmentManager()Lcom/facebook/stetho/common/android/FragmentManagerAccessor;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/facebook/stetho/common/android/FragmentManagerAccessor;->getAddedFragments(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 96
    .local v2, "fragments":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v2, :cond_1

    .line 97
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 98
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 99
    .local v1, "fragment":Ljava/lang/Object;
    invoke-static {p0, v1, p2}, Lcom/facebook/stetho/common/android/FragmentCompatUtil;->findFragmentForViewInFragment(Lcom/facebook/stetho/common/android/FragmentCompat;Ljava/lang/Object;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v4

    .line 100
    .local v4, "result":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 106
    .end local v0    # "N":I
    .end local v1    # "fragment":Ljava/lang/Object;
    .end local v3    # "i":I
    .end local v4    # "result":Ljava/lang/Object;
    :goto_1
    return-object v4

    .line 97
    .restart local v0    # "N":I
    .restart local v1    # "fragment":Ljava/lang/Object;
    .restart local v3    # "i":I
    .restart local v4    # "result":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "N":I
    .end local v1    # "fragment":Ljava/lang/Object;
    .end local v3    # "i":I
    .end local v4    # "result":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isDialogFragment(Ljava/lang/Object;)Z
    .locals 4
    .param p0, "fragment"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 24
    invoke-static {}, Lcom/facebook/stetho/common/android/FragmentCompat;->getSupportLibInstance()Lcom/facebook/stetho/common/android/FragmentCompat;

    move-result-object v1

    .line 25
    .local v1, "supportLib":Lcom/facebook/stetho/common/android/FragmentCompat;
    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {v1}, Lcom/facebook/stetho/common/android/FragmentCompat;->getDialogFragmentClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v2

    .line 30
    :cond_1
    invoke-static {}, Lcom/facebook/stetho/common/android/FragmentCompat;->getFrameworkInstance()Lcom/facebook/stetho/common/android/FragmentCompat;

    move-result-object v0

    .line 31
    .local v0, "framework":Lcom/facebook/stetho/common/android/FragmentCompat;
    if-eqz v0, :cond_2

    .line 32
    invoke-virtual {v0}, Lcom/facebook/stetho/common/android/FragmentCompat;->getDialogFragmentClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 36
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
