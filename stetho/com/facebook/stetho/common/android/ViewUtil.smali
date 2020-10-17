.class final Lcom/facebook/stetho/common/android/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private static tryGetActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 48
    :goto_0
    if-eqz p0, :cond_2

    .line 49
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 50
    check-cast p0, Landroid/app/Activity;

    .line 58
    .end local p0    # "context":Landroid/content/Context;
    :goto_1
    return-object p0

    .line 51
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 52
    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .restart local p0    # "context":Landroid/content/Context;
    goto :goto_0

    :cond_1
    move-object p0, v0

    .line 54
    goto :goto_1

    :cond_2
    move-object p0, v0

    .line 58
    goto :goto_1
.end method

.method static tryGetActivity(Landroid/view/View;)Landroid/app/Activity;
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 26
    if-nez p0, :cond_1

    move-object v0, v4

    .line 43
    :cond_0
    :goto_0
    return-object v0

    .line 30
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 32
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/facebook/stetho/common/android/ViewUtil;->tryGetActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 33
    .local v0, "activityFromContext":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 38
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v5, v2, Landroid/view/View;

    if-eqz v5, :cond_2

    move-object v3, v2

    .line 39
    check-cast v3, Landroid/view/View;

    .line 40
    .local v3, "parentView":Landroid/view/View;
    invoke-static {v3}, Lcom/facebook/stetho/common/android/ViewUtil;->tryGetActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    .end local v3    # "parentView":Landroid/view/View;
    :cond_2
    move-object v0, v4

    .line 43
    goto :goto_0
.end method
