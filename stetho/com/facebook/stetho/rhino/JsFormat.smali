.class Lcom/facebook/stetho/rhino/JsFormat;
.super Ljava/lang/Object;
.source "JsFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;
    }
.end annotation


# static fields
.field private static final FORMAT_SPECIFIER_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-string/jumbo v0, "^%([0-9]+ [$])?([0-9]+)?([.] [0-9]+)?([difs])"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/stetho/rhino/JsFormat;->FORMAT_SPECIFIER_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static varargs parse([Ljava/lang/Object;)Ljava/lang/String;
    .locals 33
    .param p0, "args"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 93
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    new-array v5, v0, [Z

    .line 95
    .local v5, "argsUsed":[Z
    const/16 v29, 0x0

    aget-object v14, p0, v29

    check-cast v14, Ljava/lang/String;

    .line 96
    .local v14, "format":Ljava/lang/String;
    const/16 v29, 0x0

    const/16 v30, 0x1

    aput-boolean v30, v5, v29

    .line 97
    const/16 v23, 0x1

    .line 100
    .local v23, "nextArgIndex":I
    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 101
    .local v8, "chars":[C
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v6, "buffer":Ljava/lang/StringBuilder;
    new-instance v26, Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;

    const/16 v29, 0x0

    array-length v0, v8

    move/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v8, v1, v2, v3}, Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;-><init>([CIILcom/facebook/stetho/rhino/JsFormat$1;)V

    .line 103
    .local v26, "sequence":Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    array-length v0, v8

    move/from16 v29, v0

    move/from16 v0, v18

    move/from16 v1, v29

    if-ge v0, v1, :cond_13

    .line 104
    aget-char v7, v8, v18

    .line 105
    .local v7, "c":C
    const/16 v29, 0x25

    move/from16 v0, v29

    if-eq v7, v0, :cond_0

    .line 107
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 112
    :cond_0
    sget-object v29, Lcom/facebook/stetho/rhino/JsFormat;->FORMAT_SPECIFIER_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;->access$100(Lcom/facebook/stetho/rhino/JsFormat$ArrayCharSequence;I)Ljava/lang/CharSequence;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v22

    .line 113
    .local v22, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v22 .. v22}, Ljava/util/regex/Matcher;->find()Z

    move-result v29

    if-nez v29, :cond_2

    .line 115
    add-int/lit8 v29, v18, 0x1

    array-length v0, v8

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_1

    .line 116
    add-int/lit8 v29, v18, 0x1

    aget-char v24, v8, v29

    .line 117
    .local v24, "peek":C
    const/16 v29, 0x25

    move/from16 v0, v24

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    .line 119
    add-int/lit8 v18, v18, 0x1

    .line 124
    .end local v24    # "peek":C
    :cond_1
    const/16 v29, 0x25

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 137
    :cond_2
    invoke-virtual/range {v22 .. v22}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v16

    .line 138
    .local v16, "groupCount":I
    const/16 v19, -0x1

    .line 139
    .local v19, "index":I
    const/16 v28, -0x1

    .line 140
    .local v28, "width":I
    const/16 v25, -0x1

    .line 141
    .local v25, "precision":I
    const/4 v9, 0x0

    .line 142
    .local v9, "conversion":C
    const/16 v17, 0x1

    .local v17, "groupIdx":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v16

    if-gt v0, v1, :cond_8

    .line 143
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v27

    .line 144
    .local v27, "value":Ljava/lang/String;
    if-eqz v27, :cond_3

    const-string/jumbo v29, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 142
    :cond_3
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 149
    :cond_4
    const-string/jumbo v29, "$"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 151
    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v30

    add-int/lit8 v30, v30, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 152
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 153
    goto :goto_3

    .line 156
    :cond_5
    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 157
    .local v13, "first":C
    const/16 v29, 0x2e

    move/from16 v0, v29

    if-ne v13, v0, :cond_6

    .line 159
    const/16 v29, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    .line 160
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    goto :goto_3

    .line 161
    :cond_6
    const/16 v29, 0x30

    move/from16 v0, v29

    if-lt v13, v0, :cond_7

    const/16 v29, 0x39

    move/from16 v0, v29

    if-gt v13, v0, :cond_7

    .line 163
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    goto :goto_3

    .line 166
    :cond_7
    move v9, v13

    goto :goto_3

    .line 171
    .end local v13    # "first":C
    .end local v27    # "value":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {v22 .. v22}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v10

    .line 174
    .local v10, "currentFormat":Ljava/lang/String;
    array-length v0, v5

    move/from16 v29, v0

    move/from16 v0, v19

    move/from16 v1, v29

    if-gt v0, v1, :cond_9

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_a

    const/16 v29, -0x1

    move/from16 v0, v19

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 176
    :cond_9
    const/16 v27, 0x0

    .line 177
    .local v27, "value":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 198
    .end local v27    # "value":Ljava/lang/Object;
    .local v15, "found":Z
    :goto_4
    if-nez v15, :cond_d

    .line 200
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    add-int v18, v18, v29

    .line 202
    goto/16 :goto_1

    .line 178
    .end local v15    # "found":Z
    :cond_a
    array-length v0, v5

    move/from16 v29, v0

    move/from16 v0, v19

    move/from16 v1, v29

    if-gt v0, v1, :cond_b

    if-lez v19, :cond_b

    .line 180
    aget-object v27, p0, v19

    .line 181
    .restart local v27    # "value":Ljava/lang/Object;
    const/16 v29, 0x1

    aput-boolean v29, v5, v19

    .line 182
    add-int/lit8 v23, v19, 0x1

    .line 183
    const/4 v15, 0x1

    .restart local v15    # "found":Z
    goto :goto_4

    .line 186
    .end local v15    # "found":Z
    .end local v27    # "value":Ljava/lang/Object;
    :cond_b
    array-length v0, v5

    move/from16 v29, v0

    move/from16 v0, v23

    move/from16 v1, v29

    if-ge v0, v1, :cond_c

    .line 187
    aget-object v27, p0, v23

    .line 188
    .restart local v27    # "value":Ljava/lang/Object;
    const/16 v29, 0x1

    aput-boolean v29, v5, v23

    .line 189
    add-int/lit8 v23, v23, 0x1

    .line 190
    const/4 v15, 0x1

    .restart local v15    # "found":Z
    goto :goto_4

    .line 193
    .end local v15    # "found":Z
    .end local v27    # "value":Ljava/lang/Object;
    :cond_c
    const/16 v27, 0x0

    .line 194
    .restart local v27    # "value":Ljava/lang/Object;
    const/4 v15, 0x0

    .restart local v15    # "found":Z
    goto :goto_4

    .line 206
    .end local v27    # "value":Ljava/lang/Object;
    :cond_d
    packed-switch v9, :pswitch_data_0

    .line 246
    :pswitch_0
    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    :goto_5
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    add-int v18, v18, v29

    goto/16 :goto_1

    .line 210
    :pswitch_1
    move-object/from16 v0, v27

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v29, v0

    if-eqz v29, :cond_e

    .line 212
    :try_start_0
    check-cast v27, Ljava/lang/String;

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 221
    :goto_6
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 213
    :catch_0
    move-exception v12

    .line 214
    .local v12, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v21, "NaN"

    .line 215
    .local v21, "l":Ljava/lang/String;
    goto :goto_6

    .line 216
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .end local v21    # "l":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v27

    instance-of v0, v0, Ljava/lang/Number;

    move/from16 v29, v0

    if-eqz v29, :cond_f

    .line 217
    check-cast v27, Ljava/lang/Number;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Number;->intValue()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .local v21, "l":Ljava/lang/Integer;
    goto :goto_6

    .line 219
    .end local v21    # "l":Ljava/lang/Integer;
    :cond_f
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .restart local v21    # "l":Ljava/lang/Integer;
    goto :goto_6

    .line 226
    .end local v21    # "l":Ljava/lang/Integer;
    :pswitch_2
    move-object/from16 v0, v27

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v29, v0

    if-eqz v29, :cond_11

    .line 228
    :try_start_1
    check-cast v27, Ljava/lang/String;

    invoke-static/range {v27 .. v27}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 238
    :goto_7
    const/16 v29, -0x1

    move/from16 v0, v25

    move/from16 v1, v29

    if-le v0, v1, :cond_10

    instance-of v0, v11, Ljava/lang/Number;

    move/from16 v29, v0

    if-eqz v29, :cond_10

    .line 239
    sget-object v29, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "%."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "f"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v11, v31, v32

    invoke-static/range {v29 .. v31}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 241
    :cond_10
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 229
    :catch_1
    move-exception v12

    .line 230
    .restart local v12    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v11, "NaN"

    .line 231
    .local v11, "d":Ljava/lang/String;
    goto :goto_7

    .line 232
    .end local v11    # "d":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    :cond_11
    move-object/from16 v0, v27

    instance-of v0, v0, Ljava/lang/Number;

    move/from16 v29, v0

    if-eqz v29, :cond_12

    .line 233
    check-cast v27, Ljava/lang/Number;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    .local v11, "d":Ljava/lang/Double;
    goto :goto_7

    .line 235
    .end local v11    # "d":Ljava/lang/Double;
    :cond_12
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .local v11, "d":Ljava/lang/Integer;
    goto :goto_7

    .line 254
    .end local v7    # "c":C
    .end local v9    # "conversion":C
    .end local v10    # "currentFormat":Ljava/lang/String;
    .end local v11    # "d":Ljava/lang/Integer;
    .end local v15    # "found":Z
    .end local v16    # "groupCount":I
    .end local v17    # "groupIdx":I
    .end local v19    # "index":I
    .end local v22    # "matcher":Ljava/util/regex/Matcher;
    .end local v25    # "precision":I
    .end local v28    # "width":I
    :cond_13
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_8
    array-length v0, v5

    move/from16 v29, v0

    move/from16 v0, v20

    move/from16 v1, v29

    if-ge v0, v1, :cond_15

    .line 255
    aget-boolean v4, v5, v20

    .line 256
    .local v4, "argUsed":Z
    if-nez v4, :cond_14

    .line 257
    const-string/jumbo v29, " "

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    aget-object v29, p0, v20

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 254
    :cond_14
    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .line 262
    .end local v4    # "argUsed":Z
    :cond_15
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    return-object v29

    .line 206
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
