.class public Lcom/sec/android/app/twlauncher/PageIndicator;
.super Ljava/lang/Object;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/PageIndicator$Page;
    }
.end annotation


# static fields
.field private static final rate:[F


# instance fields
.field mCurrentPage:I

.field mEnableShowHide:Z

.field mEnableTouch:Z

.field mFirstTextIndex:I

.field mGap:I

.field mIsDraw:Z

.field mIsHiding:Z

.field mIsVisibleLeftMore:Z

.field mIsVisibleRightMore:Z

.field mLeft:I

.field mMoreDrawable:Landroid/graphics/drawable/Drawable;

.field mMoreGap:I

.field mPage:[Lcom/sec/android/app/twlauncher/PageIndicator$Page;

.field mPageDrawable:Landroid/graphics/drawable/Drawable;

.field mTextPaint:Landroid/graphics/Paint;

.field mTextSize:I

.field mTop:I

.field mTotalPageCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/twlauncher/PageIndicator;->rate:[F

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5ct 0x8ft 0xc2t 0x3et
        0x85t 0xebt 0x51t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTextPaint:Landroid/graphics/Paint;

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsDraw:Z

    .line 61
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mEnableTouch:Z

    .line 62
    return-void
.end method

.method static synthetic access$000()[F
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/sec/android/app/twlauncher/PageIndicator;->rate:[F

    return-object v0
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;)Z
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 103
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsDraw:Z

    if-nez v7, :cond_1

    :cond_0
    move v7, v10

    .line 135
    :goto_0
    return v7

    .line 105
    :cond_1
    const/4 v0, 0x0

    .line 106
    .local v0, animating:Z
    const/4 v6, 0x0

    .line 107
    .local v6, redraw:Z
    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPageCount:I

    .line 108
    .local v5, pageCount:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mGap:I

    .line 109
    .local v1, gap:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMoreGap:I

    .line 110
    .local v3, moreGap:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 111
    iget v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 112
    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsVisibleLeftMore:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2

    .line 113
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int v4, v7, v3

    .line 114
    .local v4, move:I
    neg-int v7, v4

    int-to-float v7, v7

    invoke-virtual {p1, v7, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 115
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 116
    int-to-float v7, v4

    invoke-virtual {p1, v7, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 119
    .end local v4           #move:I
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_4

    .line 120
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPage:[Lcom/sec/android/app/twlauncher/PageIndicator$Page;

    aget-object v7, v7, v2

    iget v8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFirstTextIndex:I

    add-int/2addr v8, v2

    invoke-virtual {v7, p1, v8}, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->draw(Landroid/graphics/Canvas;I)Z

    move-result v0

    .line 121
    if-eqz v0, :cond_3

    const/4 v6, 0x1

    .line 122
    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v7, v1

    int-to-float v7, v7

    invoke-virtual {p1, v7, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 125
    :cond_4
    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsVisibleRightMore:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_5

    .line 126
    sub-int v7, v3, v1

    int-to-float v7, v7

    invoke-virtual {p1, v7, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 127
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 129
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 131
    if-nez v6, :cond_6

    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    if-eqz v7, :cond_6

    .line 132
    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    .line 133
    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsDraw:Z

    :cond_6
    move v7, v6

    .line 135
    goto :goto_0
.end method

.method enableLeftMore(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsVisibleLeftMore:Z

    .line 140
    return-void
.end method

.method enableRightMore(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsVisibleRightMore:Z

    .line 144
    return-void
.end method

.method public enableShowHide(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mEnableShowHide:Z

    .line 74
    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsDraw:Z

    .line 75
    if-nez p1, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mEnableTouch:Z

    .line 76
    return-void

    :cond_0
    move v0, v1

    .line 74
    goto :goto_0

    :cond_1
    move v0, v1

    .line 75
    goto :goto_1
.end method

.method getPageTouchArea(II)I
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 213
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mEnableTouch:Z

    if-nez v9, :cond_1

    :cond_0
    move v9, v11

    .line 252
    :goto_0
    return v9

    .line 214
    :cond_1
    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPageCount:I

    .line 215
    .local v5, pageCount:I
    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mGap:I

    .line 216
    .local v0, gap:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMoreGap:I

    .line 217
    .local v4, moreGap:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    .line 218
    .local v3, left:I
    div-int/lit8 v7, v0, 0x2

    .line 220
    .local v7, touchArea:I
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 221
    .local v8, width:I
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 222
    .local v1, height:I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 224
    .local v6, rect:Landroid/graphics/Rect;
    iput v12, v6, Landroid/graphics/Rect;->top:I

    .line 225
    iget v9, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    add-int/2addr v9, v1

    add-int/lit8 v9, v9, 0x8

    iput v9, v6, Landroid/graphics/Rect;->bottom:I

    .line 227
    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsVisibleLeftMore:Z

    if-eqz v9, :cond_2

    .line 228
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    sub-int v9, v3, v9

    sub-int/2addr v9, v4

    sub-int/2addr v9, v7

    iput v9, v6, Landroid/graphics/Rect;->left:I

    .line 229
    iput v3, v6, Landroid/graphics/Rect;->right:I

    .line 231
    invoke-virtual {v6, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 232
    const/4 v9, -0x2

    goto :goto_0

    .line 236
    :cond_2
    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsVisibleRightMore:Z

    if-eqz v9, :cond_3

    .line 237
    mul-int/lit8 v9, v8, 0x9

    add-int/2addr v9, v3

    mul-int/lit8 v10, v0, 0x7

    add-int/2addr v9, v10

    iput v9, v6, Landroid/graphics/Rect;->left:I

    .line 238
    iget v9, v6, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v7

    iput v9, v6, Landroid/graphics/Rect;->right:I

    .line 239
    invoke-virtual {v6, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 240
    const/4 v9, -0x3

    goto :goto_0

    .line 244
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_6

    .line 245
    mul-int v9, v8, v2

    add-int/2addr v9, v3

    if-lez v2, :cond_4

    const/4 v10, 0x1

    sub-int v10, v2, v10

    :goto_2
    mul-int/2addr v10, v0

    add-int/2addr v9, v10

    sub-int/2addr v9, v7

    iput v9, v6, Landroid/graphics/Rect;->left:I

    .line 246
    iget v9, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v8

    mul-int/lit8 v10, v7, 0x2

    add-int/2addr v9, v10

    iput v9, v6, Landroid/graphics/Rect;->right:I

    .line 248
    invoke-virtual {v6, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 249
    iget v9, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFirstTextIndex:I

    add-int/2addr v9, v2

    goto :goto_0

    :cond_4
    move v10, v12

    .line 245
    goto :goto_2

    .line 244
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move v9, v11

    .line 252
    goto/16 :goto_0
.end method

.method public hide()V
    .locals 4

    .prologue
    .line 94
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mEnableShowHide:Z

    if-nez v2, :cond_0

    .line 100
    :goto_0
    return-void

    .line 95
    :cond_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPageCount:I

    .line 96
    .local v1, pageCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 97
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPage:[Lcom/sec/android/app/twlauncher/PageIndicator$Page;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->setDrawState(I)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    goto :goto_0
.end method

.method setCurrentPage(IZ)V
    .locals 6
    .parameter "current"
    .parameter "useLargeDrawablesOnly"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 176
    iput p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    .line 177
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    if-eqz v2, :cond_1

    .line 197
    :cond_0
    return-void

    .line 178
    :cond_1
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPageCount:I

    .line 179
    .local v1, pageCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 180
    if-ne v0, p1, :cond_4

    .line 181
    if-eqz p2, :cond_2

    .line 182
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPage:[Lcom/sec/android/app/twlauncher/PageIndicator$Page;

    aget-object v2, v2, v0

    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->setDrawState(I)V

    .line 179
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_2
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFirstTextIndex:I

    add-int/2addr v2, v0

    const/16 v3, 0x9

    if-ge v2, v3, :cond_3

    .line 185
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPage:[Lcom/sec/android/app/twlauncher/PageIndicator$Page;

    aget-object v2, v2, v0

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->setDrawState(I)V

    goto :goto_1

    .line 187
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPage:[Lcom/sec/android/app/twlauncher/PageIndicator$Page;

    aget-object v2, v2, v0

    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->setDrawState(I)V

    goto :goto_1

    .line 190
    :cond_4
    sub-int v2, p1, v4

    if-eq v0, v2, :cond_5

    add-int/lit8 v2, p1, 0x1

    if-ne v0, v2, :cond_6

    .line 192
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPage:[Lcom/sec/android/app/twlauncher/PageIndicator$Page;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->setDrawState(I)V

    goto :goto_1

    .line 194
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPage:[Lcom/sec/android/app/twlauncher/PageIndicator$Page;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->setDrawState(I)V

    goto :goto_1
.end method

.method setFirstTextNum(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 209
    iput p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFirstTextIndex:I

    .line 210
    return-void
.end method

.method setGap(I)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 147
    invoke-virtual {p0, p1, p1}, Lcom/sec/android/app/twlauncher/PageIndicator;->setGap(II)V

    .line 148
    return-void
.end method

.method setGap(II)V
    .locals 0
    .parameter "gap"
    .parameter "moregap"

    .prologue
    .line 151
    iput p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mGap:I

    .line 152
    iput p2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMoreGap:I

    .line 153
    return-void
.end method

.method public setMoreDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    .line 70
    return-void
.end method

.method setOffset(II)V
    .locals 0
    .parameter "left"
    .parameter "top"

    .prologue
    .line 156
    iput p2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    .line 157
    iput p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    .line 158
    return-void
.end method

.method setPageCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 161
    const/16 v1, 0x9

    if-le p1, v1, :cond_0

    .line 162
    const/16 p1, 0x9

    .line 165
    :cond_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPageCount:I

    if-eq v1, p1, :cond_1

    .line 166
    new-array v1, p1, [Lcom/sec/android/app/twlauncher/PageIndicator$Page;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPage:[Lcom/sec/android/app/twlauncher/PageIndicator$Page;

    .line 167
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPage:[Lcom/sec/android/app/twlauncher/PageIndicator$Page;

    new-instance v2, Lcom/sec/android/app/twlauncher/PageIndicator$Page;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/PageIndicator$Page;-><init>(Lcom/sec/android/app/twlauncher/PageIndicator;)V

    aput-object v2, v1, v0

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    .end local v0           #i:I
    :cond_1
    iput p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPageCount:I

    .line 173
    return-void
.end method

.method public setPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 66
    return-void
.end method

.method setTextSize(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 200
    iput p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTextSize:I

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 202
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 79
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mEnableShowHide:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsDraw:Z

    if-eqz v3, :cond_1

    .line 91
    :cond_0
    return-void

    .line 80
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsDraw:Z

    .line 81
    .local v0, draw:Z
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsDraw:Z

    .line 82
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    .line 83
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPageCount:I

    .line 84
    .local v2, pageCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 85
    if-nez v0, :cond_0

    .line 86
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPage:[Lcom/sec/android/app/twlauncher/PageIndicator$Page;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->initDrawState()V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
