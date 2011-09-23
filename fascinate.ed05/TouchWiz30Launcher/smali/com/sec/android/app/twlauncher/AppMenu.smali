.class public Lcom/sec/android/app/twlauncher/AppMenu;
.super Landroid/widget/FrameLayout;
.source "AppMenu.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/MenuItemView$UninstallableMarkerDrawParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/AppMenu$Animate;
    }
.end annotation


# instance fields
.field private mAppHeight:I

.field private mAppWidth:I

.field private mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

.field private mColumnNum:I

.field private mDeleteIconRightOffset:I

.field private mDeleteIconTopOffset:I

.field private mEditBg:Landroid/graphics/Bitmap;

.field private mEditIndex:I

.field private mEditLeftOffset:I

.field private mEditTopOffset:I

.field private mEnabledChildAnimation:Z

.field private mIconWidth:I

.field private mImage:Landroid/graphics/Bitmap;

.field private mItemNumOfPage:I

.field private mLRPadding:I

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRightOffset:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTopOffset:I

.field private mVerticalSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/AppMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "orientation"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mOrientation:I

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTmpRect:Landroid/graphics/Rect;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditIndex:I

    .line 55
    iput p2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mOrientation:I

    .line 60
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mItemNumOfPage:I

    new-array v0, v0, [Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    .line 62
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->init()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/AppMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mOrientation:I

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTmpRect:Landroid/graphics/Rect;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditIndex:I

    .line 72
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->init()V

    .line 73
    return-void
.end method

.method private init()V
    .locals 8

    .prologue
    .line 76
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/AppMenu;->setClickable(Z)V

    .line 77
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mPaint:Landroid/graphics/Paint;

    .line 79
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 80
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 81
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 83
    .local v1, context:Landroid/content/Context;
    const/4 v4, -0x1

    .line 85
    .local v4, oldOrientation:I
    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mOrientation:I

    if-eq v6, v7, :cond_0

    .line 86
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    .line 87
    iget v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mOrientation:I

    iput v6, v0, Landroid/content/res/Configuration;->orientation:I

    .line 88
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 89
    .local v3, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v5, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 92
    .end local v3           #metrics:Landroid/util/DisplayMetrics;
    :cond_0
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getColumnNo(Landroid/content/Context;)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    .line 93
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getItemNoOfPage(Landroid/content/Context;)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mItemNumOfPage:I

    .line 95
    iget v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mItemNumOfPage:I

    new-array v6, v6, [Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    .line 97
    const v6, 0x7f080007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppHeight:I

    .line 98
    const v6, 0x7f080008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mVerticalSpace:I

    .line 99
    const v6, 0x7f080012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditLeftOffset:I

    .line 100
    const v6, 0x7f080013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditTopOffset:I

    .line 101
    const v6, 0x7f080009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f080017

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mDeleteIconTopOffset:I

    .line 102
    const v6, 0x7f080018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mDeleteIconRightOffset:I

    .line 103
    const v6, 0x7f080014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mIconWidth:I

    .line 104
    const v6, 0x7f08000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTopOffset:I

    .line 105
    const v6, 0x7f080019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    .line 106
    const v6, 0x7f08001a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mRightOffset:I

    .line 110
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 111
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 112
    .restart local v3       #metrics:Landroid/util/DisplayMetrics;
    iput v4, v0, Landroid/content/res/Configuration;->orientation:I

    .line 113
    invoke-virtual {v5, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 116
    .end local v3           #metrics:Landroid/util/DisplayMetrics;
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mItemNumOfPage:I

    if-ge v2, v6, :cond_2

    .line 117
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    new-instance v7, Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    invoke-direct {v7, p0}, Lcom/sec/android/app/twlauncher/AppMenu$Animate;-><init>(Lcom/sec/android/app/twlauncher/AppMenu;)V

    aput-object v7, v6, v2

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/AppMenu;->setAnimationCacheEnabled(Z)V

    .line 121
    return-void
.end method


# virtual methods
.method cellToPoint(I[I)V
    .locals 6
    .parameter "cell"
    .parameter "point"

    .prologue
    .line 251
    iget v2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    div-int v0, p1, v2

    .line 252
    .local v0, line:I
    iget v2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    rem-int v1, p1, v2

    .line 254
    .local v1, num:I
    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppWidth:I

    mul-int/2addr v4, v1

    add-int/2addr v3, v4

    aput v3, p2, v2

    .line 255
    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTopOffset:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppHeight:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mVerticalSpace:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    aput v3, p2, v2

    .line 256
    return-void
.end method

.method cellToPoint(Landroid/view/View;[I)V
    .locals 4
    .parameter "v"
    .parameter "point"

    .prologue
    .line 259
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 260
    .local v1, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 261
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 263
    .local v0, cell:I
    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/twlauncher/AppMenu;->cellToPoint(I[I)V

    .line 268
    .end local v0           #cell:I
    :goto_0
    return-void

    .line 265
    :cond_0
    const/4 v2, 0x0

    iget v3, v1, Landroid/graphics/Rect;->left:I

    aput v3, p2, v2

    .line 266
    const/4 v2, 0x1

    iget v3, v1, Landroid/graphics/Rect;->top:I

    aput v3, p2, v2

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 282
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 284
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditBg:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 285
    iget v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditIndex:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 286
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 289
    .end local v0           #child:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 287
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditLeftOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditTopOffset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4
    .parameter "canvas"
    .parameter "view"
    .parameter "drawingTime"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditBg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditBg:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditLeftOffset:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditTopOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 200
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public drawChildUninstallableMarker(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 7
    .parameter "canvas"
    .parameter "child"

    .prologue
    .line 207
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mImage:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 209
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 210
    .local v3, tag:Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 211
    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v1, v0

    .line 212
    .local v1, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-boolean v4, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->systemApp:Z

    if-nez v4, :cond_0

    .line 213
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mImage:Landroid/graphics/Bitmap;

    .line 214
    .local v2, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mIconWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mDeleteIconRightOffset:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mDeleteIconTopOffset:I

    add-int/lit8 v5, v5, 0x0

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 220
    .end local v1           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #tag:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public getChildHeight()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppHeight:I

    return v0
.end method

.method public getChildWidth()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppWidth:I

    return v0
.end method

.method public getLRPadding()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 146
    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    .line 147
    .local v3, childLeft:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTopOffset:I

    .line 149
    .local v4, childTop:I
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTmpRect:Landroid/graphics/Rect;

    .line 150
    .local v8, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v6

    .line 151
    .local v6, count:I
    iget v9, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mVerticalSpace:I

    .line 152
    .local v9, verticalSpace:I
    const/4 v0, 0x0

    .line 153
    .local v0, cellCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 154
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 155
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    .line 156
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 157
    .local v5, childWidth:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 158
    .local v2, childHeight:I
    invoke-virtual {v1, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 159
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEnabledChildAnimation:Z

    if-eqz v10, :cond_1

    .line 160
    add-int v10, v3, v5

    add-int v11, v4, v2

    invoke-virtual {v8, v3, v4, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 161
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    aget-object v10, v10, v7

    const/16 v11, 0x12c

    invoke-virtual {v10, v1, v8, v11}, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 165
    :goto_1
    add-int/2addr v3, v5

    .line 166
    add-int/lit8 v0, v0, 0x1

    .line 168
    iget v10, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    rem-int v10, v0, v10

    if-nez v10, :cond_0

    .line 169
    add-int v10, v4, v2

    add-int v4, v10, v9

    .line 170
    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    .line 153
    .end local v2           #childHeight:I
    .end local v5           #childWidth:I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 163
    .restart local v2       #childHeight:I
    .restart local v5       #childWidth:I
    :cond_1
    add-int v10, v3, v5

    add-int v11, v4, v2

    invoke-virtual {v1, v3, v4, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 174
    .end local v1           #child:Landroid/view/View;
    .end local v2           #childHeight:I
    .end local v5           #childWidth:I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v6, 0x4000

    .line 125
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 127
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 128
    .local v3, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 130
    .local v1, height:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mRightOffset:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    div-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppWidth:I

    .line 132
    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppWidth:I

    .line 133
    iget v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppHeight:I

    .line 135
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 136
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 138
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v0

    .line 139
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 140
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 272
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 273
    if-eqz p1, :cond_0

    .line 274
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 275
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 276
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 278
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "img"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mImage:Landroid/graphics/Bitmap;

    .line 232
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v0

    .line 179
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 180
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 181
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 183
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .end local v2           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 190
    return-void
.end method

.method public setEditBg(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bmp"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditBg:Landroid/graphics/Bitmap;

    .line 236
    return-void
.end method

.method public setEditIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 223
    iput p1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditIndex:I

    .line 224
    return-void
.end method

.method public setEnabledChildAnimation(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEnabledChildAnimation:Z

    .line 228
    return-void
.end method
