.class public Lcom/sec/android/app/cradle/EventGeometry;
.super Ljava/lang/Object;
.source "EventGeometry.java"


# static fields
.field static final MINUTES_PER_DAY:I = 0x5a0


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCellMargin:I

.field private mHourGap:F

.field private mMinEventHeight:F

.field private mMinuteHeight:F

.field private mMoreEventOffset:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "EventGeometry"

    iput-object v0, p0, Lcom/sec/android/app/cradle/EventGeometry;->TAG:Ljava/lang/String;

    .line 25
    iput v1, p0, Lcom/sec/android/app/cradle/EventGeometry;->mCellMargin:I

    .line 33
    iput v1, p0, Lcom/sec/android/app/cradle/EventGeometry;->mMoreEventOffset:I

    return-void
.end method


# virtual methods
.method computeBusyBits(II[[BLcom/sec/android/app/cradle/Event;I)V
    .locals 13
    .parameter "firstDate"
    .parameter "numDays"
    .parameter "busyBits"
    .parameter "event"
    .parameter "interval"

    .prologue
    .line 140
    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/sec/android/app/cradle/Event;->allDay:Z

    move v11, v0

    if-eqz v11, :cond_1

    .line 185
    :cond_0
    return-void

    .line 144
    :cond_1
    add-int v3, p1, p2

    .line 145
    .local v3, endDate:I
    move-object/from16 v0, p4

    iget v0, v0, Lcom/sec/android/app/cradle/Event;->startDay:I

    move v8, v0

    .line 146
    .local v8, startDay:I
    move-object/from16 v0, p4

    iget v0, v0, Lcom/sec/android/app/cradle/Event;->endDay:I

    move v4, v0

    .line 147
    .local v4, endDay:I
    if-ge v8, v3, :cond_0

    if-lt v4, p1, :cond_0

    .line 151
    move-object/from16 v0, p4

    iget v0, v0, Lcom/sec/android/app/cradle/Event;->startTime:I

    move v10, v0

    .line 153
    .local v10, startTime:I
    move v1, v8

    .line 157
    .local v1, day:I
    if-ge v1, p1, :cond_2

    .line 158
    move v1, p1

    .line 159
    const/4 v10, 0x0

    .line 162
    :cond_2
    if-lt v4, v3, :cond_3

    .line 163
    const/4 v11, 0x1

    sub-int v4, v3, v11

    .line 166
    :cond_3
    sub-int v2, v1, p1

    .line 167
    .local v2, dayIndex:I
    :goto_0
    if-gt v1, v4, :cond_0

    .line 168
    move-object/from16 v0, p4

    iget v0, v0, Lcom/sec/android/app/cradle/Event;->endTime:I

    move v6, v0

    .line 171
    .local v6, endTime:I
    if-le v4, v1, :cond_4

    .line 172
    const/16 v6, 0x5a0

    .line 175
    :cond_4
    div-int v9, v10, p5

    .line 176
    .local v9, startInterval:I
    add-int v11, v6, p5

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    div-int v5, v11, p5

    .line 178
    .local v5, endInterval:I
    move v7, v9

    .local v7, ii:I
    :goto_1
    if-ge v7, v5, :cond_5

    .line 179
    aget-object v11, p3, v2

    const/4 v12, 0x1

    aput-byte v12, v11, v7

    .line 178
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 181
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 182
    add-int/lit8 v2, v2, 0x1

    .line 183
    const/4 v10, 0x0

    .line 184
    goto :goto_0
.end method

.method computeEventRect(IIIILcom/sec/android/app/cradle/Event;I)Z
    .locals 15
    .parameter "date"
    .parameter "left"
    .parameter "top"
    .parameter "cellWidth"
    .parameter "event"
    .parameter "numDays"

    .prologue
    .line 58
    move-object/from16 v0, p5

    iget-boolean v0, v0, Lcom/sec/android/app/cradle/Event;->allDay:Z

    move v12, v0

    if-eqz v12, :cond_0

    .line 59
    const/4 v12, 0x0

    .line 129
    :goto_0
    return v12

    .line 62
    :cond_0
    iget v2, p0, Lcom/sec/android/app/cradle/EventGeometry;->mMinuteHeight:F

    .line 63
    .local v2, cellMinuteHeight:F
    move-object/from16 v0, p5

    iget v0, v0, Lcom/sec/android/app/cradle/Event;->startDay:I

    move v9, v0

    .line 64
    .local v9, startDay:I
    move-object/from16 v0, p5

    iget v0, v0, Lcom/sec/android/app/cradle/Event;->endDay:I

    move v5, v0

    .line 66
    .local v5, endDay:I
    move v0, v9

    move/from16 v1, p1

    if-gt v0, v1, :cond_1

    move v0, v5

    move/from16 v1, p1

    if-ge v0, v1, :cond_2

    .line 67
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 70
    :cond_2
    move-object/from16 v0, p5

    iget v0, v0, Lcom/sec/android/app/cradle/Event;->startTime:I

    move v11, v0

    .line 71
    .local v11, startTime:I
    move-object/from16 v0, p5

    iget v0, v0, Lcom/sec/android/app/cradle/Event;->endTime:I

    move v7, v0

    .line 75
    .local v7, endTime:I
    move v0, v9

    move/from16 v1, p1

    if-ge v0, v1, :cond_3

    .line 76
    const/4 v11, 0x0

    .line 81
    :cond_3
    move v0, v5

    move/from16 v1, p1

    if-le v0, v1, :cond_4

    .line 82
    const/16 v7, 0x5a0

    .line 85
    :cond_4
    invoke-virtual/range {p5 .. p5}, Lcom/sec/android/app/cradle/Event;->getColumn()I

    move-result v12

    const/4 v13, 0x4

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 86
    .local v3, col:I
    invoke-virtual/range {p5 .. p5}, Lcom/sec/android/app/cradle/Event;->getMaxColumns()I

    move-result v12

    const/4 v13, 0x4

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 87
    .local v8, maxCols:I
    div-int/lit8 v10, v11, 0x3c

    .line 88
    .local v10, startHour:I
    div-int/lit8 v6, v7, 0x3c

    .line 95
    .local v6, endHour:I
    mul-int/lit8 v12, v6, 0x3c

    if-ne v12, v7, :cond_5

    .line 96
    add-int/lit8 v6, v6, -0x1

    .line 98
    :cond_5
    move/from16 v0, p3

    int-to-float v0, v0

    move v12, v0

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/sec/android/app/cradle/Event;->top:F

    .line 99
    move-object/from16 v0, p5

    iget v0, v0, Lcom/sec/android/app/cradle/Event;->top:F

    move v12, v0

    int-to-float v13, v11

    mul-float/2addr v13, v2

    float-to-int v13, v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/sec/android/app/cradle/Event;->top:F

    .line 100
    move-object/from16 v0, p5

    iget v0, v0, Lcom/sec/android/app/cradle/Event;->top:F

    move v12, v0

    int-to-float v13, v10

    iget v14, p0, Lcom/sec/android/app/cradle/EventGeometry;->mHourGap:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/sec/android/app/cradle/Event;->top:F

    .line 102
    move/from16 v0, p3

    int-to-float v0, v0

    move v12, v0

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/sec/android/app/cradle/Event;->bottom:F

    .line 103
    move-object/from16 v0, p5

    iget v0, v0, Lcom/sec/android/app/cradle/Event;->bottom:F

    move v12, v0

    int-to-float v13, v7

    mul-float/2addr v13, v2

    float-to-int v13, v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/sec/android/app/cradle/Event;->bottom:F

    .line 104
    move-object/from16 v0, p5

    iget v0, v0, Lcom/sec/android/app/cradle/Event;->bottom:F

    move v12, v0

    int-to-float v13, v6

    iget v14, p0, Lcom/sec/android/app/cradle/EventGeometry;->mHourGap:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/sec/android/app/cradle/Event;->bottom:F

    .line 105
    move-object/from16 v0, p5

    iget v0, v0, Lcom/sec/android/app/cradle/Event;->bottom:F

    move v12, v0

    const/high16 v13, 0x4080

    sub-float/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/sec/android/app/cradle/Event;->bottom:F

    .line 108
    move-object/from16 v0, p5

    iget v0, v0, Lcom/sec/android/app/cradle/Event;->bottom:F

    move v12, v0

    move-object/from16 v0, p5

    iget v0, v0, Lcom/sec/android/app/cradle/Event;->top:F

    move v13, v0

    iget v14, p0, Lcom/sec/android/app/cradle/EventGeometry;->mMinEventHeight:F

    add-float/2addr v13, v14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_6

    .line 109
    move-object/from16 v0, p5

    iget v0, v0, Lcom/sec/android/app/cradle/Event;->top:F

    move v12, v0

    iget v13, p0, Lcom/sec/android/app/cradle/EventGeometry;->mMinEventHeight:F

    add-float/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/sec/android/app/cradle/Event;->bottom:F

    .line 113
    :cond_6
    move/from16 v0, p4

    int-to-float v0, v0

    move v12, v0

    int-to-float v13, v8

    div-float v4, v12, v13

    .line 114
    .local v4, colWidth:F
    const/4 v12, 0x7

    move/from16 v0, p6

    move v1, v12

    if-ne v0, v1, :cond_7

    .line 115
    iget v12, p0, Lcom/sec/android/app/cradle/EventGeometry;->mCellMargin:I

    add-int v12, v12, p2

    int-to-float v12, v12

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/sec/android/app/cradle/Event;->left:F

    .line 116
    move-object/from16 v0, p5

    iget v0, v0, Lcom/sec/android/app/cradle/Event;->left:F

    move v12, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move v13, v0

    add-float/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/sec/android/app/cradle/Event;->right:F

    .line 129
    :goto_1
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 118
    :cond_7
    invoke-virtual/range {p5 .. p5}, Lcom/sec/android/app/cradle/Event;->getMaxColumns()I

    move-result v12

    const/4 v13, 0x4

    if-le v12, v13, :cond_8

    .line 119
    iget v12, p0, Lcom/sec/android/app/cradle/EventGeometry;->mMoreEventOffset:I

    int-to-float v12, v12

    sub-float/2addr v4, v12

    .line 121
    :cond_8
    move/from16 v0, p2

    int-to-float v0, v0

    move v12, v0

    int-to-float v13, v3

    mul-float/2addr v13, v4

    add-float/2addr v12, v13

    const/high16 v13, 0x3f80

    add-float/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/sec/android/app/cradle/Event;->left:F

    .line 122
    const/4 v12, 0x1

    if-le v8, v12, :cond_9

    .line 123
    move-object/from16 v0, p5

    iget v0, v0, Lcom/sec/android/app/cradle/Event;->left:F

    move v12, v0

    const/high16 v13, 0x3f80

    sub-float/2addr v12, v13

    add-float/2addr v12, v4

    iget v13, p0, Lcom/sec/android/app/cradle/EventGeometry;->mCellMargin:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/sec/android/app/cradle/Event;->right:F

    goto :goto_1

    .line 125
    :cond_9
    move-object/from16 v0, p5

    iget v0, v0, Lcom/sec/android/app/cradle/Event;->left:F

    move v12, v0

    const/high16 v13, 0x3f80

    sub-float/2addr v12, v13

    add-float/2addr v12, v4

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/sec/android/app/cradle/Event;->right:F

    goto :goto_1
.end method

.method computeNewStartTime(Lcom/sec/android/app/cradle/Event;)I
    .locals 4
    .parameter "event"

    .prologue
    .line 133
    iget v0, p1, Lcom/sec/android/app/cradle/Event;->top:F

    iget v1, p0, Lcom/sec/android/app/cradle/EventGeometry;->mMinuteHeight:F

    iget v2, p0, Lcom/sec/android/app/cradle/EventGeometry;->mHourGap:F

    const/high16 v3, 0x4270

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method eventIntersectsSelection(Lcom/sec/android/app/cradle/Event;Landroid/graphics/Rect;)Z
    .locals 2
    .parameter "event"
    .parameter "selection"

    .prologue
    .line 191
    iget v0, p1, Lcom/sec/android/app/cradle/Event;->left:F

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lcom/sec/android/app/cradle/Event;->right:F

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/sec/android/app/cradle/Event;->top:F

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lcom/sec/android/app/cradle/Event;->bottom:F

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 193
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pointToEvent(FFLcom/sec/android/app/cradle/Event;)F
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "event"

    .prologue
    .line 202
    iget v3, p3, Lcom/sec/android/app/cradle/Event;->left:F

    .line 203
    .local v3, left:F
    iget v4, p3, Lcom/sec/android/app/cradle/Event;->right:F

    .line 204
    .local v4, right:F
    iget v5, p3, Lcom/sec/android/app/cradle/Event;->top:F

    .line 205
    .local v5, top:F
    iget v0, p3, Lcom/sec/android/app/cradle/Event;->bottom:F

    .line 207
    .local v0, bottom:F
    cmpl-float v6, p1, v3

    if-ltz v6, :cond_5

    .line 208
    cmpg-float v6, p1, v4

    if-gtz v6, :cond_2

    .line 209
    cmpl-float v6, p2, v5

    if-ltz v6, :cond_1

    .line 210
    cmpg-float v6, p2, v0

    if-gtz v6, :cond_0

    .line 212
    const/4 v6, 0x0

    .line 249
    :goto_0
    return v6

    .line 215
    :cond_0
    sub-float v6, p2, v0

    goto :goto_0

    .line 218
    :cond_1
    sub-float v6, v5, p2

    goto :goto_0

    .line 222
    :cond_2
    sub-float v1, p1, v4

    .line 223
    .local v1, dx:F
    cmpg-float v6, p2, v5

    if-gez v6, :cond_3

    .line 225
    sub-float v2, v5, p2

    .line 226
    .local v2, dy:F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    goto :goto_0

    .line 228
    .end local v2           #dy:F
    :cond_3
    cmpl-float v6, p2, v0

    if-lez v6, :cond_4

    .line 230
    sub-float v2, p2, v0

    .line 231
    .restart local v2       #dy:F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    goto :goto_0

    .end local v2           #dy:F
    :cond_4
    move v6, v1

    .line 234
    goto :goto_0

    .line 237
    .end local v1           #dx:F
    :cond_5
    sub-float v1, v3, p1

    .line 238
    .restart local v1       #dx:F
    cmpg-float v6, p2, v5

    if-gez v6, :cond_6

    .line 240
    sub-float v2, v5, p2

    .line 241
    .restart local v2       #dy:F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    goto :goto_0

    .line 243
    .end local v2           #dy:F
    :cond_6
    cmpl-float v6, p2, v0

    if-lez v6, :cond_7

    .line 245
    sub-float v2, p2, v0

    .line 246
    .restart local v2       #dy:F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    goto :goto_0

    .end local v2           #dy:F
    :cond_7
    move v6, v1

    .line 249
    goto :goto_0
.end method

.method setCellMargin(I)V
    .locals 0
    .parameter "cellMargin"

    .prologue
    .line 36
    iput p1, p0, Lcom/sec/android/app/cradle/EventGeometry;->mCellMargin:I

    .line 37
    return-void
.end method

.method setHourGap(F)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 40
    iput p1, p0, Lcom/sec/android/app/cradle/EventGeometry;->mHourGap:F

    .line 41
    return-void
.end method

.method setHourHeight(F)V
    .locals 1
    .parameter "height"

    .prologue
    .line 48
    const/high16 v0, 0x4270

    div-float v0, p1, v0

    iput v0, p0, Lcom/sec/android/app/cradle/EventGeometry;->mMinuteHeight:F

    .line 49
    return-void
.end method

.method setMinEventHeight(F)V
    .locals 0
    .parameter "height"

    .prologue
    .line 44
    iput p1, p0, Lcom/sec/android/app/cradle/EventGeometry;->mMinEventHeight:F

    .line 45
    return-void
.end method

.method setMoreEventOffset(I)V
    .locals 0
    .parameter "moreOffset"

    .prologue
    .line 52
    iput p1, p0, Lcom/sec/android/app/cradle/EventGeometry;->mMoreEventOffset:I

    .line 53
    return-void
.end method
