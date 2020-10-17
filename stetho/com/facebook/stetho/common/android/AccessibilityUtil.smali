.class public final Lcom/facebook/stetho/common/android/AccessibilityUtil;
.super Ljava/lang/Object;
.source "AccessibilityUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static hasFocusableAncestor(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/View;)Z
    .locals 6
    .param p0, "node"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 234
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v3, v4

    .line 260
    :goto_0
    return v3

    .line 238
    :cond_1
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v2

    .line 239
    .local v2, "parentView":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-nez v3, :cond_2

    move v3, v4

    .line 240
    goto :goto_0

    .line 243
    :cond_2
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 245
    .local v1, "parentNode":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_start_0
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    invoke-static {v3, v1}, Landroid/support/v4/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    if-nez v1, :cond_3

    .line 258
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    move v3, v4

    .line 247
    goto :goto_0

    .line 250
    :cond_3
    :try_start_1
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    invoke-static {v1, v3}, Lcom/facebook/stetho/common/android/AccessibilityUtil;->isAccessibilityFocusable(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/View;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_4

    .line 258
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    move v3, v5

    .line 251
    goto :goto_0

    .line 254
    :cond_4
    :try_start_2
    check-cast v2, Landroid/view/View;

    .end local v2    # "parentView":Landroid/view/ViewParent;
    invoke-static {v1, v2}, Lcom/facebook/stetho/common/android/AccessibilityUtil;->hasFocusableAncestor(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/View;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_5

    .line 258
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    move v3, v5

    .line 255
    goto :goto_0

    .line 258
    :cond_5
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    move v3, v4

    .line 260
    goto :goto_0

    .line 258
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 259
    throw v3
.end method

.method public static hasNonActionableSpeakingDescendants(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/View;)Z
    .locals 7
    .param p0, "node"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 96
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    instance-of v6, p1, Landroid/view/ViewGroup;

    if-nez v6, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v4, p1

    .line 100
    check-cast v4, Landroid/view/ViewGroup;

    .line 101
    .local v4, "viewGroup":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .local v2, "count":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 102
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 104
    .local v1, "childView":Landroid/view/View;
    if-nez v1, :cond_2

    .line 101
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 108
    :cond_2
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 110
    .local v0, "childNode":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_start_0
    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 112
    invoke-static {v0, v1}, Lcom/facebook/stetho/common/android/AccessibilityUtil;->isAccessibilityFocusable(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/View;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_3

    .line 120
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_2

    .line 116
    :cond_3
    :try_start_1
    invoke-static {v0, v1}, Lcom/facebook/stetho/common/android/AccessibilityUtil;->isSpeakingNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/View;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_4

    .line 117
    const/4 v5, 0x1

    .line 120
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 121
    throw v5
.end method

.method public static hasText(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 2
    .param p0, "node"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 43
    if-nez p0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAccessibilityFocusable(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/View;)Z
    .locals 3
    .param p0, "node"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 138
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v1

    .line 143
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isVisibleToUser()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    invoke-static {p0}, Lcom/facebook/stetho/common/android/AccessibilityUtil;->isActionableForAccessibility(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v0

    .line 149
    goto :goto_0

    .line 153
    :cond_2
    invoke-static {p0, p1}, Lcom/facebook/stetho/common/android/AccessibilityUtil;->isTopLevelScrollItem(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0, p1}, Lcom/facebook/stetho/common/android/AccessibilityUtil;->isSpeakingNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static isActionableForAccessibility(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 4
    .param p0, "node"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 208
    if-nez p0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v1

    .line 212
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isClickable()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isLongClickable()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    .line 213
    goto :goto_0

    .line 216
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getActionList()Ljava/util/List;

    move-result-object v0

    .line 217
    .local v0, "actionList":Ljava/util/List;
    const/16 v3, 0x10

    .line 218
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x20

    .line 219
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 220
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public static isSpeakingNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/View;)Z
    .locals 3
    .param p0, "node"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 62
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v1

    .line 66
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isVisibleToUser()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    .line 71
    .local v0, "important":I
    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 73
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 77
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isCheckable()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p0}, Lcom/facebook/stetho/common/android/AccessibilityUtil;->hasText(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p0, p1}, Lcom/facebook/stetho/common/android/AccessibilityUtil;->hasNonActionableSpeakingDescendants(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isTopLevelScrollItem(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/View;)Z
    .locals 5
    .param p0, "node"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 167
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v2

    .line 171
    :cond_1
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 172
    .local v1, "parent":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isScrollable()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 177
    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getActionList()Ljava/util/List;

    move-result-object v0

    .line 181
    .local v0, "actionList":Ljava/util/List;
    const/16 v4, 0x1000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x2000

    .line 182
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v2, v3

    .line 183
    goto :goto_0

    .line 188
    :cond_4
    instance-of v4, v1, Landroid/widget/Spinner;

    if-nez v4, :cond_0

    .line 192
    instance-of v4, v1, Landroid/widget/AdapterView;

    if-nez v4, :cond_5

    instance-of v4, v1, Landroid/widget/ScrollView;

    if-nez v4, :cond_5

    instance-of v4, v1, Landroid/widget/HorizontalScrollView;

    if-eqz v4, :cond_0

    :cond_5
    move v2, v3

    goto :goto_0
.end method
