.class Lcom/android/browser/ToolTip;
.super Landroid/view/View;
.source "ToolTip.java"


# static fields
.field static final DEBUG:Z = false

.field static final INVALID_ITEM:I = -0x1

.field static final ITEM_PADDING:I = 0xf

.field static final LOGTAG:Ljava/lang/String; = "ToolTip"

.field static final ROUND_DIAMETER:F = 10.0f

.field static final SEPARATOR_MARGIN:I = 0x3

.field static final STROKE_WIDTH:I = 0x1


# instance fields
.field mBgPath:Landroid/graphics/Path;

.field mBgShader:Landroid/graphics/LinearGradient;

.field mBodyHeight:I

.field mBodyWidth:I

.field final mContext:Landroid/content/Context;

.field mDownItem:I

.field mIsDown:Z

.field mItems:Ljava/util/Vector;

.field mSeparatorB:Landroid/graphics/Path;

.field mSeparatorW:Landroid/graphics/Path;

.field mSrcView:Landroid/view/View;

.field mTailHeight:I

.field mTailWidth:I

.field mTextPaint:Landroid/graphics/Paint;

.field mViewHeight:I

.field mViewWidth:I

.field mWindowManager:Landroid/view/WindowManager;

.field mbDrawUpsideDown:Z

.field mbShow:Z


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 3
    .parameter "srcView"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 102
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ToolTip;->mItems:Ljava/util/Vector;

    .line 104
    iput-boolean v1, p0, Lcom/android/browser/ToolTip;->mbShow:Z

    .line 109
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/browser/ToolTip;->mTailWidth:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/browser/ToolTip;->mTailHeight:I

    .line 112
    iput-boolean v1, p0, Lcom/android/browser/ToolTip;->mIsDown:Z

    .line 113
    iput v2, p0, Lcom/android/browser/ToolTip;->mDownItem:I

    .line 115
    iput-boolean v1, p0, Lcom/android/browser/ToolTip;->mbDrawUpsideDown:Z

    .line 125
    iput-object p1, p0, Lcom/android/browser/ToolTip;->mSrcView:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/android/browser/ToolTip;->mSrcView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/ToolTip;->mContext:Landroid/content/Context;

    .line 128
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/android/browser/ToolTip;->setPadding(IIII)V

    .line 131
    iget-object v0, p0, Lcom/android/browser/ToolTip;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/browser/ToolTip;->mWindowManager:Landroid/view/WindowManager;

    .line 134
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ToolTip;->mBgPath:Landroid/graphics/Path;

    .line 135
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ToolTip;->mSeparatorB:Landroid/graphics/Path;

    .line 136
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ToolTip;->mSeparatorW:Landroid/graphics/Path;

    .line 138
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ToolTip;->mTextPaint:Landroid/graphics/Paint;

    .line 139
    iget-object v0, p0, Lcom/android/browser/ToolTip;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41f0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 140
    iget-object v0, p0, Lcom/android/browser/ToolTip;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-object v0, p0, Lcom/android/browser/ToolTip;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    return-void
.end method


# virtual methods
.method addItem(Lcom/android/browser/ToolTipItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/browser/ToolTip;->mItems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method findItem(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    .line 422
    const/4 v3, 0x0

    .line 423
    .local v3, width:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 425
    .local v2, rect:Landroid/graphics/Rect;
    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 426
    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 427
    iget v4, p0, Lcom/android/browser/ToolTip;->mViewHeight:I

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 429
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/browser/ToolTip;->mItems:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 431
    iget-object v4, p0, Lcom/android/browser/ToolTip;->mItems:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/ToolTipItem;

    .line 434
    .local v1, item:Lcom/android/browser/ToolTipItem;
    iget-object v4, v1, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 436
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v0

    .line 442
    .end local v1           #item:Lcom/android/browser/ToolTipItem;
    :goto_1
    return v4

    .line 439
    .restart local v1       #item:Lcom/android/browser/ToolTipItem;
    :cond_0
    iget-object v4, v1, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    .end local v1           #item:Lcom/android/browser/ToolTipItem;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method getTooltipHeight()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, v0, v0}, Lcom/android/browser/ToolTip;->layout(II)V

    .line 158
    iget v0, p0, Lcom/android/browser/ToolTip;->mBodyHeight:I

    return v0
.end method

.method hide()V
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/android/browser/ToolTip;->mbShow:Z

    if-nez v0, :cond_0

    .line 418
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ToolTip;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/ToolTip;->mbShow:Z

    goto :goto_0
.end method

.method layout(II)V
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x3

    const/16 v6, -0xf

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 163
    const/4 v9, 0x0

    .line 164
    .local v9, i:I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 166
    .local v8, bounds:Landroid/graphics/Rect;
    iput v5, p0, Lcom/android/browser/ToolTip;->mBodyWidth:I

    .line 167
    iput v5, p0, Lcom/android/browser/ToolTip;->mBodyHeight:I

    .line 169
    const/4 v9, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/browser/ToolTip;->mItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/browser/ToolTip;->mItems:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/browser/ToolTipItem;

    .line 173
    .local v10, item:Lcom/android/browser/ToolTipItem;
    iget-object v0, p0, Lcom/android/browser/ToolTip;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, v10, Lcom/android/browser/ToolTipItem;->mstrText:Ljava/lang/String;

    iget-object v3, v10, Lcom/android/browser/ToolTipItem;->mstrText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, v10, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 176
    iget-object v0, v10, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 178
    iget v0, p0, Lcom/android/browser/ToolTip;->mBodyHeight:I

    iget-object v2, v10, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 179
    iget-object v0, v10, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/browser/ToolTip;->mBodyHeight:I

    .line 181
    :cond_0
    iget v0, p0, Lcom/android/browser/ToolTip;->mBodyWidth:I

    iget-object v2, v10, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/browser/ToolTip;->mBodyWidth:I

    .line 169
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 184
    .end local v10           #item:Lcom/android/browser/ToolTipItem;
    :cond_1
    iget v0, p0, Lcom/android/browser/ToolTip;->mBodyWidth:I

    iput v0, p0, Lcom/android/browser/ToolTip;->mViewWidth:I

    .line 185
    iget v0, p0, Lcom/android/browser/ToolTip;->mBodyHeight:I

    iget v2, p0, Lcom/android/browser/ToolTip;->mTailHeight:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/browser/ToolTip;->mViewHeight:I

    .line 187
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/android/browser/ToolTip;->mViewHeight:I

    int-to-float v4, v2

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    new-array v6, v7, [F

    fill-array-data v6, :array_1

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/browser/ToolTip;->mBgShader:Landroid/graphics/LinearGradient;

    .line 191
    return-void

    .line 187
    :array_0
    .array-data 0x4
        0x8ct 0x8ct 0x8ct 0xfft
        0x4ft 0x4ft 0x4ft 0xfft
        0x1ft 0x1ft 0x1ft 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method makeBgPath(II)V
    .locals 14
    .parameter "tailx"
    .parameter "viewx"

    .prologue
    .line 197
    iget-object v8, p0, Lcom/android/browser/ToolTip;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 200
    sub-int v6, p1, p2

    .line 203
    .local v6, tailxInView:I
    iget v8, p0, Lcom/android/browser/ToolTip;->mBodyWidth:I

    const/4 v9, 0x1

    sub-int v7, v8, v9

    .line 204
    .local v7, w:I
    iget v8, p0, Lcom/android/browser/ToolTip;->mBodyHeight:I

    const/4 v9, 0x1

    sub-int v0, v8, v9

    .line 207
    .local v0, h:I
    int-to-float v8, v6

    const/high16 v9, 0x4120

    iget v10, p0, Lcom/android/browser/ToolTip;->mTailWidth:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 208
    iget v8, p0, Lcom/android/browser/ToolTip;->mTailWidth:I

    div-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0xa

    add-int/2addr v6, v8

    .line 209
    :cond_0
    iget v8, p0, Lcom/android/browser/ToolTip;->mTailWidth:I

    div-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0xa

    sub-int v8, v7, v8

    if-le v6, v8, :cond_1

    .line 210
    iget v8, p0, Lcom/android/browser/ToolTip;->mTailWidth:I

    div-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0xa

    sub-int/2addr v6, v8

    .line 212
    :cond_1
    const/4 v2, 0x1

    .line 213
    .local v2, nBodyYPos:I
    const/4 v8, 0x1

    iget-boolean v9, p0, Lcom/android/browser/ToolTip;->mbDrawUpsideDown:Z

    if-ne v8, v9, :cond_2

    .line 214
    iget v8, p0, Lcom/android/browser/ToolTip;->mTailHeight:I

    add-int/lit8 v2, v8, 0x1

    .line 216
    :cond_2
    iget-object v8, p0, Lcom/android/browser/ToolTip;->mBgPath:Landroid/graphics/Path;

    new-instance v9, Landroid/graphics/RectF;

    const/high16 v10, 0x3f80

    int-to-float v11, v2

    int-to-float v12, v7

    add-int v13, v0, v2

    int-to-float v13, v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v10, 0x4120

    const/high16 v11, 0x4120

    sget-object v12, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 219
    iget-boolean v8, p0, Lcom/android/browser/ToolTip;->mbDrawUpsideDown:Z

    if-nez v8, :cond_3

    .line 221
    iget-object v8, p0, Lcom/android/browser/ToolTip;->mBgPath:Landroid/graphics/Path;

    iget v9, p0, Lcom/android/browser/ToolTip;->mTailWidth:I

    div-int/lit8 v9, v9, 0x2

    sub-int v9, v6, v9

    int-to-float v9, v9

    int-to-float v10, v0

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 222
    iget-object v8, p0, Lcom/android/browser/ToolTip;->mBgPath:Landroid/graphics/Path;

    int-to-float v9, v6

    iget v10, p0, Lcom/android/browser/ToolTip;->mTailHeight:I

    add-int/2addr v10, v0

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 223
    iget-object v8, p0, Lcom/android/browser/ToolTip;->mBgPath:Landroid/graphics/Path;

    iget v9, p0, Lcom/android/browser/ToolTip;->mTailWidth:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v6

    int-to-float v9, v9

    int-to-float v10, v0

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 233
    :goto_0
    iget-object v8, p0, Lcom/android/browser/ToolTip;->mSeparatorB:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 234
    iget-object v8, p0, Lcom/android/browser/ToolTip;->mSeparatorW:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 236
    new-instance v5, Landroid/graphics/Point;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 237
    .local v5, ptSepTop:Landroid/graphics/Point;
    new-instance v4, Landroid/graphics/Point;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v4, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 239
    .local v4, ptSepBottom:Landroid/graphics/Point;
    add-int/lit8 v8, v2, 0x3

    iput v8, v5, Landroid/graphics/Point;->y:I

    .line 241
    const/4 v3, 0x0

    .line 243
    .local v3, nLoop:I
    const/4 v3, 0x0

    :goto_1
    iget-object v8, p0, Lcom/android/browser/ToolTip;->mItems:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ge v3, v8, :cond_4

    .line 245
    iget-object v8, p0, Lcom/android/browser/ToolTip;->mItems:Ljava/util/Vector;

    invoke-virtual {v8, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/ToolTipItem;

    .line 247
    .local v1, item:Lcom/android/browser/ToolTipItem;
    iget v8, v5, Landroid/graphics/Point;->x:I

    iget-object v9, v1, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    const/4 v10, 0x2

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, v5, Landroid/graphics/Point;->x:I

    .line 248
    iget v8, v5, Landroid/graphics/Point;->x:I

    iput v8, v4, Landroid/graphics/Point;->x:I

    .line 249
    iget v8, v5, Landroid/graphics/Point;->y:I

    iget v9, p0, Lcom/android/browser/ToolTip;->mBodyHeight:I

    add-int/2addr v8, v9

    const/16 v9, 0x9

    sub-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Point;->y:I

    .line 251
    iget-object v8, p0, Lcom/android/browser/ToolTip;->mSeparatorB:Landroid/graphics/Path;

    iget v9, v5, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, v5, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 252
    iget-object v8, p0, Lcom/android/browser/ToolTip;->mSeparatorB:Landroid/graphics/Path;

    iget v9, v4, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, v4, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 254
    iget v8, v5, Landroid/graphics/Point;->x:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v5, Landroid/graphics/Point;->x:I

    .line 255
    iget v8, v4, Landroid/graphics/Point;->x:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v4, Landroid/graphics/Point;->x:I

    .line 257
    iget-object v8, p0, Lcom/android/browser/ToolTip;->mSeparatorW:Landroid/graphics/Path;

    iget v9, v5, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, v5, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 258
    iget-object v8, p0, Lcom/android/browser/ToolTip;->mSeparatorW:Landroid/graphics/Path;

    iget v9, v4, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, v4, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 243
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 227
    .end local v1           #item:Lcom/android/browser/ToolTipItem;
    .end local v3           #nLoop:I
    .end local v4           #ptSepBottom:Landroid/graphics/Point;
    .end local v5           #ptSepTop:Landroid/graphics/Point;
    :cond_3
    iget-object v8, p0, Lcom/android/browser/ToolTip;->mBgPath:Landroid/graphics/Path;

    iget v9, p0, Lcom/android/browser/ToolTip;->mTailWidth:I

    div-int/lit8 v9, v9, 0x2

    sub-int v9, v6, v9

    int-to-float v9, v9

    int-to-float v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 228
    iget-object v8, p0, Lcom/android/browser/ToolTip;->mBgPath:Landroid/graphics/Path;

    int-to-float v9, v6

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 229
    iget-object v8, p0, Lcom/android/browser/ToolTip;->mBgPath:Landroid/graphics/Path;

    iget v9, p0, Lcom/android/browser/ToolTip;->mTailWidth:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v6

    int-to-float v9, v9

    int-to-float v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 261
    .restart local v3       #nLoop:I
    .restart local v4       #ptSepBottom:Landroid/graphics/Point;
    .restart local v5       #ptSepTop:Landroid/graphics/Point;
    :cond_4
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v13, 0x1

    .line 285
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 287
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 289
    .local v7, saveCount:I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 290
    .local v3, p:Landroid/graphics/Paint;
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 291
    const/high16 v9, -0x100

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 292
    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 294
    iget-object v9, p0, Lcom/android/browser/ToolTip;->mBgShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 296
    iget-object v9, p0, Lcom/android/browser/ToolTip;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {p1, v9, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 299
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 300
    .local v4, paintBlack:Landroid/graphics/Paint;
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 301
    const v9, -0xddddde

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 302
    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 304
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 305
    .local v5, paintWhite:Landroid/graphics/Paint;
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 306
    const v9, -0x222223

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 307
    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 309
    iget-object v9, p0, Lcom/android/browser/ToolTip;->mSeparatorB:Landroid/graphics/Path;

    invoke-virtual {p1, v9, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 310
    iget-object v9, p0, Lcom/android/browser/ToolTip;->mSeparatorW:Landroid/graphics/Path;

    invoke-virtual {p1, v9, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 313
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 314
    .local v0, downRect:Landroid/graphics/Rect;
    const/4 v9, 0x0

    iput v9, v0, Landroid/graphics/Rect;->top:I

    .line 315
    iget v9, p0, Lcom/android/browser/ToolTip;->mViewHeight:I

    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    .line 317
    const/4 v8, 0x0

    .line 318
    .local v8, width:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v9, p0, Lcom/android/browser/ToolTip;->mItems:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v1, v9, :cond_2

    .line 320
    iget-object v9, p0, Lcom/android/browser/ToolTip;->mItems:Ljava/util/Vector;

    invoke-virtual {v9, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/ToolTipItem;

    .line 322
    .local v2, item:Lcom/android/browser/ToolTipItem;
    iget-boolean v9, p0, Lcom/android/browser/ToolTip;->mbDrawUpsideDown:Z

    if-nez v9, :cond_1

    .line 323
    iget-object v9, v2, Lcom/android/browser/ToolTipItem;->mstrText:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    add-int/2addr v10, v8

    int-to-float v10, v10

    iget-object v11, v2, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    neg-int v11, v11

    int-to-float v11, v11

    iget-object v12, p0, Lcom/android/browser/ToolTip;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 327
    :goto_1
    iget v9, p0, Lcom/android/browser/ToolTip;->mDownItem:I

    if-ne v1, v9, :cond_0

    .line 329
    iput v8, v0, Landroid/graphics/Rect;->left:I

    .line 330
    iget-object v9, v2, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int/2addr v9, v8

    iput v9, v0, Landroid/graphics/Rect;->right:I

    .line 333
    :cond_0
    iget-object v9, v2, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int/2addr v8, v9

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    :cond_1
    iget-object v9, v2, Lcom/android/browser/ToolTipItem;->mstrText:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    add-int/2addr v10, v8

    int-to-float v10, v10

    iget-object v11, v2, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    neg-int v11, v11

    iget v12, p0, Lcom/android/browser/ToolTip;->mTailHeight:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    iget-object v12, p0, Lcom/android/browser/ToolTip;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 336
    .end local v2           #item:Lcom/android/browser/ToolTipItem;
    :cond_2
    iget-boolean v9, p0, Lcom/android/browser/ToolTip;->mIsDown:Z

    if-ne v9, v13, :cond_3

    .line 338
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 339
    iget-object v9, p0, Lcom/android/browser/ToolTip;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 341
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 342
    .local v6, pp:Landroid/graphics/Paint;
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 343
    const v9, -0x37d04003

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 345
    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 347
    iget-object v9, p0, Lcom/android/browser/ToolTip;->mItems:Ljava/util/Vector;

    iget v10, p0, Lcom/android/browser/ToolTip;->mDownItem:I

    invoke-virtual {v9, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/ToolTipItem;

    .line 348
    .restart local v2       #item:Lcom/android/browser/ToolTipItem;
    iget-boolean v9, p0, Lcom/android/browser/ToolTip;->mbDrawUpsideDown:Z

    if-nez v9, :cond_4

    .line 349
    iget-object v9, v2, Lcom/android/browser/ToolTipItem;->mstrText:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    iget v11, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, v2, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    neg-int v11, v11

    int-to-float v11, v11

    iget-object v12, p0, Lcom/android/browser/ToolTip;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 353
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 356
    .end local v2           #item:Lcom/android/browser/ToolTipItem;
    .end local v6           #pp:Landroid/graphics/Paint;
    :cond_3
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 358
    return-void

    .line 351
    .restart local v2       #item:Lcom/android/browser/ToolTipItem;
    .restart local v6       #pp:Landroid/graphics/Paint;
    :cond_4
    iget-object v9, v2, Lcom/android/browser/ToolTipItem;->mstrText:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    iget v11, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, v2, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    neg-int v11, v11

    iget v12, p0, Lcom/android/browser/ToolTip;->mTailHeight:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    iget-object v12, p0, Lcom/android/browser/ToolTip;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 448
    .local v2, type:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 449
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 451
    .local v4, y:I
    if-nez v2, :cond_1

    .line 453
    iput-boolean v6, p0, Lcom/android/browser/ToolTip;->mIsDown:Z

    .line 454
    invoke-virtual {p0, v3, v4}, Lcom/android/browser/ToolTip;->findItem(II)I

    move-result v5

    iput v5, p0, Lcom/android/browser/ToolTip;->mDownItem:I

    .line 455
    invoke-virtual {p0}, Lcom/android/browser/ToolTip;->invalidate()V

    .line 480
    :cond_0
    :goto_0
    return v6

    .line 458
    :cond_1
    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    .line 462
    if-ne v2, v6, :cond_0

    .line 465
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/browser/ToolTip;->mIsDown:Z

    .line 466
    iput v7, p0, Lcom/android/browser/ToolTip;->mDownItem:I

    .line 467
    invoke-virtual {p0}, Lcom/android/browser/ToolTip;->invalidate()V

    .line 469
    invoke-virtual {p0, v3, v4}, Lcom/android/browser/ToolTip;->findItem(II)I

    move-result v1

    .line 470
    .local v1, nSelItem:I
    if-eq v7, v1, :cond_0

    .line 472
    iget-object v5, p0, Lcom/android/browser/ToolTip;->mItems:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/ToolTipItem;

    .line 473
    .local v0, item:Lcom/android/browser/ToolTipItem;
    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {v0}, Lcom/android/browser/ToolTipItem;->onItemSelected()V

    goto :goto_0
.end method

.method pinViewX(I)I
    .locals 5
    .parameter "tailx"

    .prologue
    .line 266
    iget-object v4, p0, Lcom/android/browser/ToolTip;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 267
    .local v0, screenWidth:I
    iget v4, p0, Lcom/android/browser/ToolTip;->mViewWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int v2, p1, v4

    .line 268
    .local v2, viewRight:I
    iget v4, p0, Lcom/android/browser/ToolTip;->mViewWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v1, p1, v4

    .line 269
    .local v1, viewLeft:I
    move v3, v1

    .line 271
    .local v3, viewx:I
    if-le v2, v0, :cond_1

    .line 272
    iget v4, p0, Lcom/android/browser/ToolTip;->mViewWidth:I

    sub-int v3, v0, v4

    .line 276
    :cond_0
    :goto_0
    return v3

    .line 273
    :cond_1
    if-gez v1, :cond_0

    .line 274
    const/4 v3, 0x0

    goto :goto_0
.end method

.method setFontSize(F)V
    .locals 1
    .parameter "size"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/browser/ToolTip;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 153
    return-void
.end method

.method show(II)V
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v9, 0x1

    .line 371
    const/4 v1, 0x2

    new-array v8, v1, [I

    .line 372
    .local v8, winloc:[I
    iget-object v1, p0, Lcom/android/browser/ToolTip;->mSrcView:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 373
    const/4 v1, 0x0

    aget v1, v8, v1

    add-int/2addr p1, v1

    .line 374
    aget v1, v8, v9

    add-int/2addr p2, v1

    .line 376
    const-string v1, "ToolTip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show : [x:y = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/ToolTip;->layout(II)V

    .line 380
    invoke-virtual {p0, p1}, Lcom/android/browser/ToolTip;->pinViewX(I)I

    move-result v3

    .line 381
    .local v3, viewx:I
    iget v1, p0, Lcom/android/browser/ToolTip;->mViewHeight:I

    sub-int v4, p2, v1

    .line 383
    .local v4, viewy:I
    invoke-virtual {p0, p1, v3}, Lcom/android/browser/ToolTip;->makeBgPath(II)V

    .line 385
    iget-boolean v1, p0, Lcom/android/browser/ToolTip;->mbDrawUpsideDown:Z

    if-ne v9, v1, :cond_0

    .line 386
    iget v1, p0, Lcom/android/browser/ToolTip;->mViewHeight:I

    add-int/2addr v4, v1

    .line 388
    :cond_0
    iget-boolean v1, p0, Lcom/android/browser/ToolTip;->mbShow:Z

    if-ne v1, v9, :cond_1

    .line 405
    :goto_0
    return-void

    .line 391
    :cond_1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/browser/ToolTip;->mViewWidth:I

    iget v2, p0, Lcom/android/browser/ToolTip;->mViewHeight:I

    const/16 v5, 0x3e8

    const/16 v6, 0x8

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 401
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 402
    iget-object v1, p0, Lcom/android/browser/ToolTip;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    iput-boolean v9, p0, Lcom/android/browser/ToolTip;->mbShow:Z

    goto :goto_0
.end method

.method show(IIZ)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "bUpsideDown"

    .prologue
    .line 363
    iput-boolean p3, p0, Lcom/android/browser/ToolTip;->mbDrawUpsideDown:Z

    .line 364
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/ToolTip;->show(II)V

    .line 365
    return-void
.end method
