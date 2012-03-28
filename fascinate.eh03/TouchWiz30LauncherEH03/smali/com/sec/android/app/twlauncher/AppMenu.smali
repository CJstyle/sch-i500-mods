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
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/AppMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "orientation"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mOrientation:I

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTmpRect:Landroid/graphics/Rect;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditIndex:I

    .line 71
    iput p2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mOrientation:I

    .line 76
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mItemNumOfPage:I

    new-array v0, v0, [Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    .line 78
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->init()V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/AppMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mOrientation:I

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTmpRect:Landroid/graphics/Rect;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditIndex:I

    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->init()V

    .line 89
    return-void
.end method

.method private init()V
    .locals 8

    .prologue
    .line 92
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/AppMenu;->setClickable(Z)V

    .line 93
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mPaint:Landroid/graphics/Paint;

    .line 95
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 96
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 97
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 99
    .local v1, context:Landroid/content/Context;
    const/4 v4, -0x1

    .line 101
    .local v4, oldOrientation:I
    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mOrientation:I

    if-eq v6, v7, :cond_0

    .line 102
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    .line 103
    iget v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mOrientation:I

    iput v6, v0, Landroid/content/res/Configuration;->orientation:I

    .line 104
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 105
    .local v3, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v5, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 108
    .end local v3           #metrics:Landroid/util/DisplayMetrics;
    :cond_0
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getColumnNo(Landroid/content/Context;)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    .line 109
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getItemNoOfPage(Landroid/content/Context;)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mItemNumOfPage:I

    .line 111
    iget v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mItemNumOfPage:I

    new-array v6, v6, [Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    .line 113
    const v6, 0x7f080007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppHeight:I

    .line 114
    const v6, 0x7f080008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mVerticalSpace:I

    .line 115
    const v6, 0x7f080012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditLeftOffset:I

    .line 116
    const v6, 0x7f080013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditTopOffset:I

    .line 117
    const v6, 0x7f080009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f080017

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mDeleteIconTopOffset:I

    .line 118
    const v6, 0x7f080018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mDeleteIconRightOffset:I

    .line 119
    const v6, 0x7f080014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mIconWidth:I

    .line 120
    const v6, 0x7f08000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTopOffset:I

    .line 121
    const v6, 0x7f080019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    .line 122
    const v6, 0x7f08001a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mRightOffset:I

    .line 126
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 127
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 128
    .restart local v3       #metrics:Landroid/util/DisplayMetrics;
    iput v4, v0, Landroid/content/res/Configuration;->orientation:I

    .line 129
    invoke-virtual {v5, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 132
    .end local v3           #metrics:Landroid/util/DisplayMetrics;
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mItemNumOfPage:I

    if-ge v2, v6, :cond_2

    .line 133
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    new-instance v7, Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    invoke-direct {v7, p0}, Lcom/sec/android/app/twlauncher/AppMenu$Animate;-><init>(Lcom/sec/android/app/twlauncher/AppMenu;)V

    aput-object v7, v6, v2

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/AppMenu;->setAnimationCacheEnabled(Z)V

    .line 137
    return-void
.end method


# virtual methods
.method cellToPoint(I[I)V
    .locals 6
    .parameter "cell"
    .parameter "point"

    .prologue
    .line 267
    iget v2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    div-int v0, p1, v2

    .line 268
    .local v0, line:I
    iget v2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    rem-int v1, p1, v2

    .line 270
    .local v1, num:I
    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppWidth:I

    mul-int/2addr v4, v1

    add-int/2addr v3, v4

    aput v3, p2, v2

    .line 271
    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTopOffset:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppHeight:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mVerticalSpace:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    aput v3, p2, v2

    .line 272
    return-void
.end method

.method cellToPoint(Landroid/view/View;[I)V
    .locals 4
    .parameter "v"
    .parameter "point"

    .prologue
    .line 275
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 276
    .local v1, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 277
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 279
    .local v0, cell:I
    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/twlauncher/AppMenu;->cellToPoint(I[I)V

    .line 284
    .end local v0           #cell:I
    :goto_0
    return-void

    .line 281
    :cond_0
    const/4 v2, 0x0

    iget v3, v1, Landroid/graphics/Rect;->left:I

    aput v3, p2, v2

    .line 282
    const/4 v2, 0x1

    iget v3, v1, Landroid/graphics/Rect;->top:I

    aput v3, p2, v2

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 298
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 300
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditBg:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 301
    iget v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditIndex:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 302
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 305
    .end local v0           #child:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 303
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
    .line 210
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditBg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 212
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

    .line 216
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
    .line 223
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mImage:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 225
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 226
    .local v3, tag:Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 227
    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v1, v0

    .line 228
    .local v1, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-boolean v4, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->systemApp:Z

    if-nez v4, :cond_0

    .line 229
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mImage:Landroid/graphics/Bitmap;

    .line 230
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

    .line 236
    .end local v1           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #tag:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public getChildHeight()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppHeight:I

    return v0
.end method

.method public getChildWidth()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppWidth:I

    return v0
.end method

.method public getLRPadding()I
    .locals 1

    .prologue
    .line 263
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
    .line 162
    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    .line 163
    .local v3, childLeft:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTopOffset:I

    .line 165
    .local v4, childTop:I
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTmpRect:Landroid/graphics/Rect;

    .line 166
    .local v8, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v6

    .line 167
    .local v6, count:I
    iget v9, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mVerticalSpace:I

    .line 168
    .local v9, verticalSpace:I
    const/4 v0, 0x0

    .line 169
    .local v0, cellCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 170
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 171
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    .line 172
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 173
    .local v5, childWidth:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 174
    .local v2, childHeight:I
    invoke-virtual {v1, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 175
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEnabledChildAnimation:Z

    if-eqz v10, :cond_1

    .line 176
    add-int v10, v3, v5

    add-int v11, v4, v2

    invoke-virtual {v8, v3, v4, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 177
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    aget-object v10, v10, v7

    const/16 v11, 0x12c

    invoke-virtual {v10, v1, v8, v11}, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 181
    :goto_1
    add-int/2addr v3, v5

    .line 182
    add-int/lit8 v0, v0, 0x1

    .line 184
    iget v10, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    rem-int v10, v0, v10

    if-nez v10, :cond_0

    .line 185
    add-int v10, v4, v2

    add-int v4, v10, v9

    .line 186
    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    .line 169
    .end local v2           #childHeight:I
    .end local v5           #childWidth:I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 179
    .restart local v2       #childHeight:I
    .restart local v5       #childWidth:I
    :cond_1
    add-int v10, v3, v5

    add-int v11, v4, v2

    invoke-virtual {v1, v3, v4, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 190
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

    .line 141
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 143
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 144
    .local v3, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 146
    .local v1, height:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mRightOffset:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    div-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppWidth:I

    .line 148
    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppWidth:I

    .line 149
    iget v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppHeight:I

    .line 151
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 152
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 154
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v0

    .line 155
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 156
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 288
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 289
    if-eqz p1, :cond_0

    .line 290
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 291
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 292
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 294
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "img"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mImage:Landroid/graphics/Bitmap;

    .line 248
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v0

    .line 195
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 196
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 197
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 199
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v2           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 206
    return-void
.end method

.method public setEditBg(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bmp"

    .prologue
    .line 251
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditBg:Landroid/graphics/Bitmap;

    .line 252
    return-void
.end method

.method public setEditIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 239
    iput p1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditIndex:I

    .line 240
    return-void
.end method

.method public setEnabledChildAnimation(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEnabledChildAnimation:Z

    .line 244
    return-void
.end method
