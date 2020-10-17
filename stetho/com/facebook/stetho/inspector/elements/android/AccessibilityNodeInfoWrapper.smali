.class public final Lcom/facebook/stetho/inspector/elements/android/AccessibilityNodeInfoWrapper;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static createNodeInfoFromView(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 30
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 31
    .local v0, "nodeInfo":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 32
    return-object v0
.end method

.method public static getActions(Landroid/view/View;)Ljava/lang/String;
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 177
    invoke-static {p0}, Lcom/facebook/stetho/inspector/elements/android/AccessibilityNodeInfoWrapper;->createNodeInfoFromView(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v3

    .line 179
    .local v3, "node":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .local v1, "actionLabels":Ljava/lang/StringBuilder;
    const-string/jumbo v4, ", "

    .line 182
    .local v4, "separator":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getActionList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 183
    .local v0, "action":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 184
    const-string/jumbo v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 242
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    .line 243
    .local v2, "label":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 254
    .end local v0    # "action":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    .end local v1    # "actionLabels":Ljava/lang/StringBuilder;
    .end local v2    # "label":Ljava/lang/CharSequence;
    .end local v4    # "separator":Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 255
    throw v5

    .line 188
    .restart local v0    # "action":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    .restart local v1    # "actionLabels":Ljava/lang/StringBuilder;
    .restart local v4    # "separator":Ljava/lang/String;
    :sswitch_0
    :try_start_1
    const-string/jumbo v6, "focus"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 191
    :sswitch_1
    const-string/jumbo v6, "clear-focus"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 194
    :sswitch_2
    const-string/jumbo v6, "select"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 197
    :sswitch_3
    const-string/jumbo v6, "clear-selection"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 200
    :sswitch_4
    const-string/jumbo v6, "click"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 203
    :sswitch_5
    const-string/jumbo v6, "long-click"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 206
    :sswitch_6
    const-string/jumbo v6, "accessibility-focus"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 209
    :sswitch_7
    const-string/jumbo v6, "clear-accessibility-focus"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 212
    :sswitch_8
    const-string/jumbo v6, "next-at-movement-granularity"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 215
    :sswitch_9
    const-string/jumbo v6, "previous-at-movement-granularity"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 218
    :sswitch_a
    const-string/jumbo v6, "next-html-element"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 221
    :sswitch_b
    const-string/jumbo v6, "previous-html-element"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 224
    :sswitch_c
    const-string/jumbo v6, "scroll-forward"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 227
    :sswitch_d
    const-string/jumbo v6, "scroll-backward"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 230
    :sswitch_e
    const-string/jumbo v6, "cut"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 233
    :sswitch_f
    const-string/jumbo v6, "copy"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 236
    :sswitch_10
    const-string/jumbo v6, "paste"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 239
    :sswitch_11
    const-string/jumbo v6, "set-selection"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 246
    .restart local v2    # "label":Ljava/lang/CharSequence;
    :cond_1
    const-string/jumbo v6, "unknown"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 252
    .end local v0    # "action":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    .end local v2    # "label":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 254
    :goto_1
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 252
    return-object v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 186
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_f
        0x8000 -> :sswitch_10
        0x10000 -> :sswitch_e
        0x20000 -> :sswitch_11
    .end sparse-switch
.end method

.method public static getDescription(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 16
    .param p0, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v14, 0x0

    .line 260
    invoke-static/range {p0 .. p0}, Lcom/facebook/stetho/inspector/elements/android/AccessibilityNodeInfoWrapper;->createNodeInfoFromView(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v10

    .line 262
    .local v10, "node":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_start_0
    invoke-virtual {v10}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    .line 263
    .local v5, "contentDescription":Ljava/lang/CharSequence;
    invoke-virtual {v10}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    .line 265
    .local v11, "nodeText":Ljava/lang/CharSequence;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    const/4 v7, 0x1

    .line 266
    .local v7, "hasNodeText":Z
    :goto_0
    move-object/from16 v0, p0

    instance-of v9, v0, Landroid/widget/EditText;

    .line 269
    .local v9, "isEditText":Z
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    if-nez v15, :cond_2

    if-eqz v9, :cond_0

    if-nez v7, :cond_2

    .line 310
    :cond_0
    invoke-virtual {v10}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    move-object v14, v5

    .line 308
    :goto_1
    return-object v14

    .line 265
    .end local v7    # "hasNodeText":Z
    .end local v9    # "isEditText":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 273
    .restart local v7    # "hasNodeText":Z
    .restart local v9    # "isEditText":Z
    :cond_2
    if-eqz v7, :cond_3

    .line 310
    invoke-virtual {v10}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    move-object v14, v11

    .line 274
    goto :goto_1

    .line 279
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    instance-of v15, v0, Landroid/view/ViewGroup;

    if-eqz v15, :cond_9

    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .local v4, "concatChildDescription":Ljava/lang/StringBuilder;
    const-string/jumbo v12, ", "

    .line 282
    .local v12, "separator":Ljava/lang/String;
    move-object/from16 v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v13, v0

    .line 284
    .local v13, "viewGroup":Landroid/view/ViewGroup;
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .local v6, "count":I
    :goto_2
    if-ge v8, v6, :cond_7

    .line 285
    invoke-virtual {v13, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 287
    .local v1, "child":Landroid/view/View;
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v3

    .line 288
    .local v3, "childNodeInfo":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 290
    const/4 v2, 0x0

    .line 291
    .local v2, "childNodeDescription":Ljava/lang/CharSequence;
    invoke-static {v3, v1}, Lcom/facebook/stetho/common/android/AccessibilityUtil;->isSpeakingNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 292
    invoke-static {v3, v1}, Lcom/facebook/stetho/common/android/AccessibilityUtil;->isAccessibilityFocusable(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/View;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 293
    invoke-static {v1}, Lcom/facebook/stetho/inspector/elements/android/AccessibilityNodeInfoWrapper;->getDescription(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 296
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 297
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_5

    .line 298
    const-string/jumbo v15, ", "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 302
    :cond_6
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 284
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 305
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childNodeDescription":Ljava/lang/CharSequence;
    .end local v3    # "childNodeInfo":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_8

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v14

    .line 310
    :cond_8
    invoke-virtual {v10}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_1

    .end local v4    # "concatChildDescription":Ljava/lang/StringBuilder;
    .end local v6    # "count":I
    .end local v8    # "i":I
    .end local v12    # "separator":Ljava/lang/String;
    .end local v13    # "viewGroup":Landroid/view/ViewGroup;
    :cond_9
    invoke-virtual {v10}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_1

    .end local v5    # "contentDescription":Ljava/lang/CharSequence;
    .end local v7    # "hasNodeText":Z
    .end local v9    # "isEditText":Z
    .end local v11    # "nodeText":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v14

    invoke-virtual {v10}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 311
    throw v14
.end method

.method public static getFocusableReasons(Landroid/view/View;)Ljava/lang/String;
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 134
    invoke-static {p0}, Lcom/facebook/stetho/inspector/elements/android/AccessibilityNodeInfoWrapper;->createNodeInfoFromView(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v3

    .line 136
    .local v3, "node":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_start_0
    invoke-static {v3}, Lcom/facebook/stetho/common/android/AccessibilityUtil;->hasText(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v1

    .line 137
    .local v1, "hasText":Z
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isCheckable()Z

    move-result v2

    .line 139
    .local v2, "isCheckable":Z
    invoke-static {v3, p0}, Lcom/facebook/stetho/common/android/AccessibilityUtil;->hasNonActionableSpeakingDescendants(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/View;)Z

    move-result v0

    .line 141
    .local v0, "hasNonActionableSpeakingDescendants":Z
    invoke-static {v3}, Lcom/facebook/stetho/common/android/AccessibilityUtil;->isActionableForAccessibility(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 142
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    move-result v4

    if-gtz v4, :cond_0

    .line 143
    const-string/jumbo v4, "View is actionable and has no children."
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 169
    :goto_0
    return-object v4

    .line 144
    :cond_0
    if-eqz v1, :cond_1

    .line 145
    :try_start_1
    const-string/jumbo v4, "View is actionable and has a description."
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_0

    .line 146
    :cond_1
    if-eqz v2, :cond_2

    .line 147
    :try_start_2
    const-string/jumbo v4, "View is actionable and checkable."
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_0

    .line 148
    :cond_2
    if-eqz v0, :cond_3

    .line 149
    :try_start_3
    const-string/jumbo v4, "View is actionable and has non-actionable descendants with descriptions."
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_0

    .line 153
    :cond_3
    :try_start_4
    invoke-static {v3, p0}, Lcom/facebook/stetho/common/android/AccessibilityUtil;->isTopLevelScrollItem(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 154
    if-eqz v1, :cond_4

    .line 155
    const-string/jumbo v4, "View is a direct child of a scrollable container and has a description."
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 171
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_0

    .line 156
    :cond_4
    if-eqz v2, :cond_5

    .line 157
    :try_start_5
    const-string/jumbo v4, "View is a direct child of a scrollable container and is checkable."
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 171
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_0

    .line 158
    :cond_5
    if-eqz v0, :cond_6

    .line 159
    :try_start_6
    const-string/jumbo v4, "View is a direct child of a scrollable container and has non-actionable descendants with descriptions."
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 171
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_0

    .line 165
    :cond_6
    if-eqz v1, :cond_7

    .line 166
    :try_start_7
    const-string/jumbo v4, "View has a description and is not actionable, but has no actionable ancestor."
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 171
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_0

    .line 169
    :cond_7
    const/4 v4, 0x0

    .line 171
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_0

    .end local v0    # "hasNonActionableSpeakingDescendants":Z
    .end local v1    # "hasText":Z
    .end local v2    # "isCheckable":Z
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 172
    throw v4
.end method

.method public static getIgnored(Landroid/view/View;)Z
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 44
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    .line 45
    .local v0, "important":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-ne v0, v6, :cond_1

    :cond_0
    move v3, v4

    .line 86
    :goto_0
    return v3

    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 52
    .local v2, "parent":Landroid/view/ViewParent;
    :goto_1
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_3

    move-object v3, v2

    .line 53
    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v3

    if-ne v3, v6, :cond_2

    move v3, v4

    .line 55
    goto :goto_0

    .line 57
    :cond_2
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_1

    .line 60
    :cond_3
    invoke-static {p0}, Lcom/facebook/stetho/inspector/elements/android/AccessibilityNodeInfoWrapper;->createNodeInfoFromView(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 62
    .local v1, "node":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_start_0
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isVisibleToUser()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_4

    .line 88
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    move v3, v4

    .line 63
    goto :goto_0

    .line 66
    :cond_4
    :try_start_1
    invoke-static {v1, p0}, Lcom/facebook/stetho/common/android/AccessibilityUtil;->isAccessibilityFocusable(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 67
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-gtz v3, :cond_5

    .line 88
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    move v3, v5

    .line 70
    goto :goto_0

    .line 71
    :cond_5
    :try_start_2
    invoke-static {v1, p0}, Lcom/facebook/stetho/common/android/AccessibilityUtil;->isSpeakingNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/View;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_6

    .line 88
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    move v3, v5

    .line 73
    goto :goto_0

    .line 88
    :cond_6
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    move v3, v4

    .line 77
    goto :goto_0

    .line 82
    :cond_7
    :try_start_3
    invoke-static {v1, p0}, Lcom/facebook/stetho/common/android/AccessibilityUtil;->hasFocusableAncestor(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v1}, Lcom/facebook/stetho/common/android/AccessibilityUtil;->hasText(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-eqz v3, :cond_8

    .line 88
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    move v3, v5

    .line 83
    goto :goto_0

    .line 88
    :cond_8
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    move v3, v4

    .line 86
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 89
    throw v3
.end method

.method public static getIgnoredReasons(Landroid/view/View;)Ljava/lang/String;
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x4

    .line 93
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    .line 95
    .local v0, "important":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 96
    const-string/jumbo v3, "View has importantForAccessibility set to \'NO\'."

    .line 126
    :goto_0
    return-object v3

    .line 99
    :cond_0
    if-ne v0, v4, :cond_1

    .line 100
    const-string/jumbo v3, "View has importantForAccessibility set to \'NO_HIDE_DESCENDANTS\'."

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 104
    .local v2, "parent":Landroid/view/ViewParent;
    :goto_1
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_3

    move-object v3, v2

    .line 105
    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 107
    const-string/jumbo v3, "An ancestor View has importantForAccessibility set to \'NO_HIDE_DESCENDANTS\'."

    goto :goto_0

    .line 109
    :cond_2
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_1

    .line 112
    :cond_3
    invoke-static {p0}, Lcom/facebook/stetho/inspector/elements/android/AccessibilityNodeInfoWrapper;->createNodeInfoFromView(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 114
    .local v1, "node":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_start_0
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isVisibleToUser()Z

    move-result v3

    if-nez v3, :cond_4

    .line 115
    const-string/jumbo v3, "View is not visible."
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_0

    .line 118
    :cond_4
    :try_start_1
    invoke-static {v1, p0}, Lcom/facebook/stetho/common/android/AccessibilityUtil;->isAccessibilityFocusable(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 119
    const-string/jumbo v3, "View is actionable, but has no description."
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_0

    .line 122
    :cond_5
    :try_start_2
    invoke-static {v1}, Lcom/facebook/stetho/common/android/AccessibilityUtil;->hasText(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 123
    const-string/jumbo v3, "View is not actionable, and an ancestor View has co-opted its description."
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_0

    .line 126
    :cond_6
    :try_start_3
    const-string/jumbo v3, "View is not actionable and has no description."
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 129
    throw v3
.end method

.method public static getIsAccessibilityFocused(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/facebook/stetho/inspector/elements/android/AccessibilityNodeInfoWrapper;->createNodeInfoFromView(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 37
    .local v1, "node":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isAccessibilityFocused()Z

    move-result v0

    .line 38
    .local v0, "isAccessibilityFocused":Z
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 40
    return v0
.end method
