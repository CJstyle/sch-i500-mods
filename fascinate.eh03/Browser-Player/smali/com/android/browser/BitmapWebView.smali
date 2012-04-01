.class public Lcom/android/browser/BitmapWebView;
.super Landroid/widget/FrameLayout;
.source "BitmapWebView.java"

# interfaces
.implements Landroid/webkit/OnPinchZoomListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BitmapWebView$DrawInfo;,
        Lcom/android/browser/BitmapWebView$PrivateHandler;,
        Lcom/android/browser/BitmapWebView$Tile;,
        Lcom/android/browser/BitmapWebView$Surface;
    }
.end annotation


# static fields
.field static final TEXTURE_FORMAT:Landroid/graphics/Bitmap$Config;


# instance fields
.field mAM:Landroid/app/ActivityManager;

.field mAfterLoadFinishedCount:I

.field mBeginScale:F

.field mBitmapWebViewContainer:Landroid/view/View;

.field mCanvas:Landroid/graphics/Canvas;

.field mCheckBoardTileSize:I

.field mContentView:Landroid/view/View;

.field mContentsHeight:I

.field mContentsRect:Landroid/graphics/Rect;

.field mContentsWidth:I

.field mContext:Landroid/content/Context;

.field mDTCount:F

.field mDTEndScale:F

.field mDTEndScrollX:F

.field mDTEndScrollY:F

.field mDTInvEndZoomScale:F

.field mDTScale:F

.field mDTScaleDelta:F

.field mDTScrollXDelta:F

.field mDTScrollYDelta:F

.field mDTStartScale:F

.field mDTStartScrollX:F

.field mDTStartScrollY:F

.field mDTStartTick:J

.field mDTZoomCX:F

.field mDTZoomCY:F

.field mDebugTiles:[[Landroid/graphics/Bitmap;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mDoubleTapping:Z

.field mDragConfirmed:Z

.field mDrawFrameFlag:Z

.field mExtraTexNum:I

.field mFlinging:Z

.field mIsDrawingWebView:Z

.field mLastTouchX:F

.field mLastTouchY:F

.field mMatrix:Landroid/graphics/Matrix;

.field mMaxExtraTexNum:I

.field mMaxScale:F

.field mMaxScaleRangeByPinch:F

.field mMaxScaleRangeByPinchForExtraTexture:F

.field mMaxTensionDistX:I

.field mMaxTensionDistY:I

.field mMaximumFling:I

.field mMinScale:F

.field mMoveFirst:Z

.field mOldViewLeft:I

.field mOldViewTop:I

.field mOnRecalExtraTexture:Z

.field mPaused:Z

.field mPrevPreventDefault:I

.field mPrivateHandler:Landroid/os/Handler;

.field mQueueFullTick:J

.field mScaling:Z

.field mScrollBarPadding:F

.field mScrollBarThickness:F

.field mScrollDX:F

.field mScrollDY:F

.field mScrollFilter:Landroid/graphics/DrawFilter;

.field mScroller:Landroid/widget/Scroller;

.field mSnapScrollMode:I

.field private mState:I

.field mSurface:Lcom/android/browser/BitmapWebView$Surface;

.field mTensionAni:Z

.field mTensionAniDx:I

.field mTensionAniDy:I

.field mTensionAniEndDx:I

.field mTensionAniEndDy:I

.field mTensionAniInterpolatorX:Landroid/view/animation/DecelerateInterpolator;

.field mTensionAniInterpolatorY:Landroid/view/animation/DecelerateInterpolator;

.field mTensionX:I

.field mTensionY:I

.field mTextureBitmapDirtyRegion:Landroid/graphics/Region;

.field mTextureHeight:I

.field mTextureRegion:Landroid/graphics/Rect;

.field mTextureWidth:I

.field mTileNumX:I

.field mTileNumY:I

.field mTiltebarBitmapUpdated:Z

.field mTitleBar:Landroid/view/View;

.field mTitleBarBitmap:Landroid/graphics/Bitmap;

.field mTitleBarHeight:I

.field mTitleBarVisibility:Z

.field mTotalTexNum:I

.field mTouchEventProcessing:Z

.field mTouchSlopSquare:I

.field mUpdateTexIgnoreTick:J

.field mValidTextureRegion:Landroid/graphics/Region;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field mViewHeight:I

.field mViewLeft:I

.field mViewRect:Landroid/graphics/Rect;

.field mViewTop:I

.field mViewWidth:I

.field mVisible:Z

.field mWebView:Landroid/webkit/WebView;

.field mWebViewContainer:Landroid/view/View;

.field mWebViewZoomScale:F

.field mZoomCenterX:F

.field mZoomCenterY:F

.field mZoomScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/android/browser/BitmapWebView;->TEXTURE_FORMAT:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x4080

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 341
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 261
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    iput v1, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    .line 264
    iput-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mOnRecalExtraTexture:Z

    .line 265
    const/16 v0, 0x60

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTotalTexNum:I

    .line 271
    iput v3, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinch:F

    .line 272
    iput v3, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinchForExtraTexture:F

    .line 273
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mState:I

    .line 280
    iput-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mTiltebarBitmapUpdated:Z

    .line 293
    iput-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mIsDrawingWebView:Z

    .line 294
    iput-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mDrawFrameFlag:Z

    .line 306
    iput-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mScaling:Z

    .line 307
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    .line 308
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    .line 309
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDx:I

    .line 310
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDy:I

    .line 311
    iput-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mTensionAni:Z

    .line 312
    iput-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mFlinging:Z

    .line 313
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mSnapScrollMode:I

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mTitleBarVisibility:Z

    .line 316
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mTensionX:I

    .line 317
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mTensionY:I

    .line 319
    iput v2, p0, Lcom/android/browser/BitmapWebView;->mScrollDX:F

    iput v2, p0, Lcom/android/browser/BitmapWebView;->mScrollDY:F

    .line 320
    iput-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mDoubleTapping:Z

    .line 324
    iput-object v4, p0, Lcom/android/browser/BitmapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 326
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mPrevPreventDefault:I

    .line 328
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTitleBarHeight:I

    .line 331
    iput-object v4, p0, Lcom/android/browser/BitmapWebView;->mTitleBar:Landroid/view/View;

    .line 333
    iput-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mPaused:Z

    .line 342
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/browser/BitmapWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 347
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 351
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 261
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    .line 264
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mOnRecalExtraTexture:Z

    .line 265
    const/16 v9, 0x60

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mTotalTexNum:I

    .line 271
    const/high16 v9, 0x4080

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinch:F

    .line 272
    const/high16 v9, 0x4080

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinchForExtraTexture:F

    .line 273
    const/4 v9, 0x3

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mState:I

    .line 280
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mTiltebarBitmapUpdated:Z

    .line 293
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mIsDrawingWebView:Z

    .line 294
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mDrawFrameFlag:Z

    .line 306
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mScaling:Z

    .line 307
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    .line 308
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    .line 309
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDx:I

    .line 310
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDy:I

    .line 311
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mTensionAni:Z

    .line 312
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mFlinging:Z

    .line 313
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mSnapScrollMode:I

    .line 315
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mTitleBarVisibility:Z

    .line 316
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mTensionX:I

    .line 317
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mTensionY:I

    .line 319
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mScrollDX:F

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mScrollDY:F

    .line 320
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mDoubleTapping:Z

    .line 324
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 326
    const/4 v9, 0x4

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mPrevPreventDefault:I

    .line 328
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mTitleBarHeight:I

    .line 331
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mTitleBar:Landroid/view/View;

    .line 333
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mPaused:Z

    .line 355
    :try_start_0
    iput-object p1, p0, Lcom/android/browser/BitmapWebView;->mContext:Landroid/content/Context;

    .line 357
    new-instance v9, Lcom/android/browser/BitmapWebView$PrivateHandler;

    invoke-direct {v9, p0}, Lcom/android/browser/BitmapWebView$PrivateHandler;-><init>(Lcom/android/browser/BitmapWebView;)V

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    .line 358
    new-instance v9, Landroid/graphics/Region;

    invoke-direct {v9}, Landroid/graphics/Region;-><init>()V

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    .line 359
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    .line 360
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    .line 361
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mContentsRect:Landroid/graphics/Rect;

    .line 364
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    .line 365
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/browser/BitmapWebView;->mQueueFullTick:J

    .line 366
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/browser/BitmapWebView;->mUpdateTexIgnoreTick:J

    .line 370
    new-instance v9, Landroid/graphics/Region;

    invoke-direct {v9}, Landroid/graphics/Region;-><init>()V

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mValidTextureRegion:Landroid/graphics/Region;

    .line 372
    new-instance v9, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mScrollFilter:Landroid/graphics/DrawFilter;

    .line 373
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9}, Landroid/graphics/Canvas;-><init>()V

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    .line 374
    iget-object v9, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/android/browser/BitmapWebView;->mScrollFilter:Landroid/graphics/DrawFilter;

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 375
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    .line 376
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 377
    iget-object v9, p0, Lcom/android/browser/BitmapWebView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v9, Landroid/util/DisplayMetrics;->density:F

    .line 378
    .local v1, density:F
    iget v9, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinch:F

    mul-float/2addr v9, v1

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinch:F

    .line 379
    iget v9, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinchForExtraTexture:F

    mul-float/2addr v9, v1

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinchForExtraTexture:F

    .line 380
    iget-object v9, p0, Lcom/android/browser/BitmapWebView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 381
    .local v2, displayMetrics:Landroid/util/DisplayMetrics;
    iget v9, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinchForExtraTexture:F

    mul-float v7, v9, v10

    .line 382
    .local v7, width:F
    iget v9, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinchForExtraTexture:F

    mul-float v4, v9, v10

    .line 383
    .local v4, height:F
    const/high16 v9, 0x4380

    div-float v9, v7, v9

    float-to-int v8, v9

    .line 384
    .local v8, widthtile:I
    const/high16 v9, 0x4380

    div-float v9, v4, v9

    float-to-int v5, v9

    .line 385
    .local v5, heighttile:I
    mul-int v9, v8, v5

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mMaxExtraTexNum:I

    .line 386
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mExtraTexNum:I

    .line 387
    const-string v9, "activity"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/app/ActivityManager;

    iput-object p2, p0, Lcom/android/browser/BitmapWebView;->mAM:Landroid/app/ActivityManager;

    .line 388
    new-instance v9, Landroid/widget/Scroller;

    invoke-direct {v9, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mScroller:Landroid/widget/Scroller;

    .line 390
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 391
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v9

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mMaximumFling:I

    .line 392
    const/high16 v9, 0x40a0

    mul-float/2addr v9, v1

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mScrollBarThickness:F

    .line 393
    const/high16 v9, 0x4000

    mul-float/2addr v9, v1

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mScrollBarPadding:F

    .line 394
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    const v10, 0x3fa66666

    invoke-direct {v9, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mTensionAniInterpolatorX:Landroid/view/animation/DecelerateInterpolator;

    .line 395
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    const v10, 0x3fa66666

    invoke-direct {v9, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mTensionAniInterpolatorY:Landroid/view/animation/DecelerateInterpolator;

    .line 397
    const/high16 v9, 0x3fc0

    cmpl-float v9, v1, v9

    if-ltz v9, :cond_0

    .line 399
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mTouchSlopSquare:I

    .line 400
    const/16 v9, 0x8

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mCheckBoardTileSize:I

    .line 406
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    .line 407
    .local v6, slop:I
    mul-int v9, v6, v6

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mTouchSlopSquare:I

    .line 408
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 409
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->createSurface()Lcom/android/browser/BitmapWebView$Surface;

    move-result-object v9

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v0           #configuration:Landroid/view/ViewConfiguration;
    .end local v1           #density:F
    .end local v2           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v4           #height:F
    .end local v5           #heighttile:I
    .end local v6           #slop:I
    .end local v7           #width:F
    .end local v8           #widthtile:I
    :goto_1
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/android/browser/BitmapWebView;->initWebViewVariables(ZZ)Z

    .line 421
    return-void

    .line 404
    .restart local v0       #configuration:Landroid/view/ViewConfiguration;
    .restart local v1       #density:F
    .restart local v2       #displayMetrics:Landroid/util/DisplayMetrics;
    .restart local v4       #height:F
    .restart local v5       #heighttile:I
    .restart local v7       #width:F
    .restart local v8       #widthtile:I
    :cond_0
    const/4 v9, 0x4

    :try_start_1
    iput v9, p0, Lcom/android/browser/BitmapWebView;->mCheckBoardTileSize:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 411
    .end local v0           #configuration:Landroid/view/ViewConfiguration;
    .end local v1           #density:F
    .end local v2           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v4           #height:F
    .end local v5           #heighttile:I
    .end local v7           #width:F
    .end local v8           #widthtile:I
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 413
    .local v3, e:Ljava/lang/Exception;
    const-string v9, "BitmapWebView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BitmapWebView: constructor fail"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/16 v9, 0x9

    invoke-virtual {p0, v9}, Lcom/android/browser/BitmapWebView;->setState(I)V

    goto :goto_1
.end method


# virtual methods
.method calcTextureRegion(II)Landroid/graphics/Rect;
    .locals 8
    .parameter "viewLeft"
    .parameter "viewTop"

    .prologue
    const/high16 v7, 0x4380

    .line 1682
    iget v5, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p1

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int v0, v5, v6

    .line 1683
    .local v0, left:I
    iget v5, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p2

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    div-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    .line 1686
    .local v4, top:I
    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/browser/BitmapWebView;->pinLoc(III)I

    move-result v0

    .line 1687
    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/browser/BitmapWebView;->pinLoc(III)I

    move-result v4

    .line 1691
    int-to-float v5, v0

    div-float/2addr v5, v7

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    .line 1692
    .local v2, tilex:I
    int-to-float v5, v4

    div-float/2addr v5, v7

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 1696
    .local v3, tiley:I
    mul-int/lit16 v0, v2, 0x100

    .line 1697
    mul-int/lit16 v4, v3, 0x100

    .line 1699
    new-instance v1, Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    add-int/2addr v6, v4

    invoke-direct {v1, v0, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1702
    .local v1, region:Landroid/graphics/Rect;
    return-object v1
.end method

.method canHandleTouchEvent()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1199
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mBitmapWebViewContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mWebViewContainer:Landroid/view/View;

    if-nez v3, :cond_1

    :cond_0
    move v3, v4

    .line 1210
    :goto_0
    return v3

    .line 1203
    :cond_1
    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mBitmapWebViewContainer:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    .line 1204
    .local v2, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1205
    .local v0, childCount:I
    sub-int v3, v0, v5

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1207
    .local v1, topChild:Landroid/view/View;
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mWebViewContainer:Landroid/view/View;

    if-eq v1, v3, :cond_2

    if-ne v1, p0, :cond_3

    :cond_2
    move v3, v5

    .line 1208
    goto :goto_0

    :cond_3
    move v3, v4

    .line 1210
    goto :goto_0
.end method

.method checkTension()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2275
    invoke-virtual {p0, v3}, Lcom/android/browser/BitmapWebView;->checkTensionAni(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2277
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2278
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v3}, Landroid/webkit/WebView;->transformPlugins(Landroid/graphics/Matrix;Z)V

    .line 2280
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 2281
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeWebViewPriority()V

    .line 2282
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->hide()V

    .line 2284
    :cond_0
    iput v3, p0, Lcom/android/browser/BitmapWebView;->mTensionX:I

    .line 2285
    iput v3, p0, Lcom/android/browser/BitmapWebView;->mTensionY:I

    .line 2286
    return-void
.end method

.method checkTensionAni(Z)Z
    .locals 6
    .parameter "checkonly"

    .prologue
    .line 2131
    const/4 v2, 0x0

    .line 2132
    .local v2, needtensionani:Z
    const/4 v0, 0x0

    .local v0, dx:I
    const/4 v1, 0x0

    .line 2133
    .local v1, dy:I
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    if-gez v3, :cond_3

    .line 2135
    const/4 v2, 0x1

    .line 2136
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    neg-int v0, v3

    .line 2144
    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    if-gez v3, :cond_4

    .line 2146
    const/4 v2, 0x1

    .line 2147
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    neg-int v1, v3

    .line 2155
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    .line 2156
    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BitmapWebView;->startTensionAni(II)V

    .line 2158
    :cond_2
    return v2

    .line 2138
    :cond_3
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    if-le v3, v4, :cond_0

    .line 2140
    const/4 v2, 0x1

    .line 2141
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    add-int/2addr v4, v5

    sub-int v0, v3, v4

    goto :goto_0

    .line 2149
    :cond_4
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    if-le v3, v4, :cond_1

    .line 2151
    const/4 v2, 0x1

    .line 2152
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    add-int/2addr v4, v5

    sub-int v1, v3, v4

    goto :goto_1
.end method

.method checkTensionX(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4000

    const/high16 v2, 0x4020

    .line 2477
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    if-gt v0, v1, :cond_1

    .line 2478
    const/4 v0, 0x0

    .line 2508
    :cond_0
    :goto_0
    return v0

    .line 2480
    :cond_1
    add-int v0, p1, p2

    .line 2483
    if-gez v0, :cond_3

    .line 2485
    if-gez p2, :cond_2

    .line 2490
    int-to-float v0, p2

    div-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 2492
    :cond_2
    if-lez p2, :cond_5

    .line 2493
    int-to-float v0, p2

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_0

    .line 2496
    :cond_3
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    if-le v0, v1, :cond_5

    .line 2498
    if-lez p2, :cond_4

    .line 2502
    int-to-float v0, p2

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 2504
    :goto_1
    if-gez p2, :cond_0

    .line 2505
    int-to-float v0, p2

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_0

    :cond_4
    move v0, p2

    goto :goto_1

    :cond_5
    move v0, p2

    goto :goto_0
.end method

.method checkTensionY(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4000

    const/high16 v2, 0x4020

    .line 2514
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    if-gt v0, v1, :cond_1

    .line 2515
    const/4 v0, 0x0

    .line 2543
    :cond_0
    :goto_0
    return v0

    .line 2517
    :cond_1
    add-int v0, p1, p2

    .line 2520
    if-gez v0, :cond_3

    .line 2522
    if-gez p2, :cond_2

    .line 2526
    int-to-float v0, p2

    div-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 2528
    :cond_2
    if-lez p2, :cond_5

    .line 2529
    int-to-float v0, p2

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_0

    .line 2532
    :cond_3
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    if-le v0, v1, :cond_5

    .line 2534
    if-lez p2, :cond_4

    .line 2538
    int-to-float v0, p2

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 2540
    :goto_1
    if-gez p2, :cond_0

    .line 2541
    int-to-float v0, p2

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_0

    :cond_4
    move v0, p2

    goto :goto_1

    :cond_5
    move v0, p2

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2315
    iget-boolean v6, p0, Lcom/android/browser/BitmapWebView;->mFlinging:Z

    if-nez v6, :cond_0

    .line 2356
    :goto_0
    return-void

    .line 2318
    :cond_0
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2319
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 2320
    .local v4, left:I
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    .line 2322
    .local v5, top:I
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    .line 2323
    .local v2, finalX:I
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getFinalY()I

    move-result v3

    .line 2327
    .local v3, finalY:I
    if-ne v4, v2, :cond_1

    if-ne v5, v3, :cond_1

    .line 2329
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2330
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->stopFling()V

    .line 2331
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->checkTension()V

    goto :goto_0

    .line 2336
    :cond_1
    iget v6, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    sub-int v0, v4, v6

    .line 2337
    .local v0, dx:I
    iget v6, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    sub-int v1, v5, v6

    .line 2339
    .local v1, dy:I
    iget v6, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    invoke-virtual {p0, v6, v0}, Lcom/android/browser/BitmapWebView;->checkTensionX(II)I

    move-result v0

    .line 2340
    iget v6, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    invoke-virtual {p0, v6, v1}, Lcom/android/browser/BitmapWebView;->checkTensionY(II)I

    move-result v1

    .line 2342
    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BitmapWebView;->scrollPlugins(II)V

    .line 2343
    iget v6, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    add-int/2addr v6, v0

    iget v7, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v6, v7}, Lcom/android/browser/BitmapWebView;->scroll(II)V

    .line 2345
    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    invoke-virtual {p0, v8, v8, v6, v7}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    .line 2347
    const-wide/16 v6, 0x10

    invoke-virtual {p0, v6, v7}, Lcom/android/browser/BitmapWebView;->requestFlingIng(J)V

    goto :goto_0

    .line 2352
    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v2           #finalX:I
    .end local v3           #finalY:I
    .end local v4           #left:I
    .end local v5           #top:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->stopFling()V

    .line 2353
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->checkTension()V

    goto :goto_0
.end method

.method createSurface()Lcom/android/browser/BitmapWebView$Surface;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 442
    new-instance v0, Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/browser/BitmapWebViewSurface3D;-><init>(Landroid/content/Context;Lcom/android/browser/BitmapWebView;)V

    .line 450
    .local v0, surfaceView:Landroid/view/SurfaceView;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BitmapWebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    check-cast v0, Lcom/android/browser/BitmapWebView$Surface;

    .end local v0           #surfaceView:Landroid/view/SurfaceView;
    return-object v0
.end method

.method public debug()V
    .locals 0

    .prologue
    .line 3178
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->saveTextureBitmap()V

    .line 3179
    return-void
.end method

.method public doDoubleTap(FLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    .locals 12
    .parameter "oldScale"
    .parameter "zoomInfo"

    .prologue
    const/high16 v11, 0x3f80

    const/high16 v10, 0x4120

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 691
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scale:F

    div-float v4, v5, p1

    .line 692
    .local v4, ratio:F
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterX:F

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    int-to-float v6, v6

    add-float v0, v5, v6

    .line 693
    .local v0, cx:F
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterY:F

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    int-to-float v6, v6

    add-float v1, v5, v6

    .line 695
    .local v1, cy:F
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scale:F

    cmpl-float v5, p1, v5

    if-nez v5, :cond_0

    .line 767
    :goto_0
    return-void

    .line 698
    :cond_0
    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 701
    const/4 v5, 0x2

    new-array v2, v5, [F

    .line 702
    .local v2, p:[F
    aput v0, v2, v7

    .line 703
    aput v1, v2, v8

    .line 705
    const/4 v5, 0x2

    new-array v3, v5, [F

    .line 706
    .local v3, pz:[F
    aput v9, v3, v7

    .line 707
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v8

    .line 709
    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 710
    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 714
    aget v5, v2, v7

    aget v6, v3, v7

    sub-float/2addr v5, v6

    iget v6, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterX:F

    sub-float/2addr v5, v6

    aput v5, v2, v7

    .line 715
    aget v5, v2, v8

    aget v6, v3, v8

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget v6, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterY:F

    sub-float/2addr v5, v6

    aput v5, v2, v8

    .line 718
    aget v5, v2, v7

    iget v6, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scrollX:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mDTEndScrollX:F

    .line 719
    aget v5, v2, v8

    iget v6, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scrollY:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mDTEndScrollY:F

    .line 720
    iput v9, p0, Lcom/android/browser/BitmapWebView;->mDTStartScrollX:F

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mScrollDX:F

    .line 721
    iput v9, p0, Lcom/android/browser/BitmapWebView;->mDTStartScrollY:F

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mScrollDY:F

    .line 727
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->show()V

    .line 730
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scale:F

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mDTScale:F

    .line 731
    iput v4, p0, Lcom/android/browser/BitmapWebView;->mDTEndScale:F

    .line 732
    div-float v5, v11, v4

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mDTInvEndZoomScale:F

    .line 733
    iput v11, p0, Lcom/android/browser/BitmapWebView;->mDTStartScale:F

    .line 734
    iput v9, p0, Lcom/android/browser/BitmapWebView;->mDTCount:F

    .line 735
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterX:F

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCX:F

    .line 736
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterY:F

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCY:F

    .line 738
    iget v5, p0, Lcom/android/browser/BitmapWebView;->mDTEndScale:F

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mDTStartScale:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v10

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mDTScaleDelta:F

    .line 739
    iget v5, p0, Lcom/android/browser/BitmapWebView;->mDTEndScrollX:F

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mDTStartScrollX:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v10

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mDTScrollXDelta:F

    .line 740
    iget v5, p0, Lcom/android/browser/BitmapWebView;->mDTEndScrollY:F

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mDTStartScrollY:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v10

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mDTScrollYDelta:F

    .line 744
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterX:F

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterX:F

    .line 745
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterY:F

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterY:F

    .line 750
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/browser/BitmapWebView;->mDTStartTick:J

    .line 751
    iput-boolean v8, p0, Lcom/android/browser/BitmapWebView;->mDoubleTapping:Z

    .line 752
    iget v5, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCX:F

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCY:F

    iget v7, p0, Lcom/android/browser/BitmapWebView;->mDTStartScale:F

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    .line 756
    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 757
    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method public doDrag(II)Z
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 792
    const/4 v0, 0x0

    return v0
.end method

.method public doFling(II)Z
    .locals 1
    .parameter "vx"
    .parameter "vy"

    .prologue
    .line 811
    const/4 v0, 0x0

    return v0
.end method

.method doTensionAni()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    .line 2222
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDx:I

    if-nez v4, :cond_0

    .line 2224
    const/high16 v2, 0x3f80

    .line 2231
    .local v2, scalex:F
    :goto_0
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDy:I

    if-nez v4, :cond_1

    .line 2233
    const/high16 v3, 0x3f80

    .line 2242
    .local v3, scaley:F
    :goto_1
    cmpl-float v4, v2, v7

    if-ltz v4, :cond_2

    cmpl-float v4, v3, v7

    if-ltz v4, :cond_2

    .line 2244
    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mTensionAni:Z

    .line 2245
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 2246
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5, v9}, Landroid/webkit/WebView;->transformPlugins(Landroid/graphics/Matrix;Z)V

    .line 2247
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    invoke-virtual {v4, v5, v6}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 2248
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->resumeWebViewPriority()V

    .line 2249
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->hide()V

    .line 2271
    :goto_2
    return-void

    .line 2228
    .end local v2           #scalex:F
    .end local v3           #scaley:F
    :cond_0
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniInterpolatorX:Landroid/view/animation/DecelerateInterpolator;

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDx:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    .restart local v2       #scalex:F
    goto :goto_0

    .line 2237
    :cond_1
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniInterpolatorY:Landroid/view/animation/DecelerateInterpolator;

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDy:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v3

    .restart local v3       #scaley:F
    goto :goto_1

    .line 2254
    :cond_2
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDx:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2255
    .local v0, dx:I
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDy:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 2258
    .local v1, dy:I
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    sub-int v4, v0, v4

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    sub-int v5, v1, v5

    invoke-virtual {p0, v4, v5}, Lcom/android/browser/BitmapWebView;->scrollPlugins(II)V

    .line 2259
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/browser/BitmapWebView;->scroll(II)V

    .line 2261
    const/4 v4, 0x1

    invoke-virtual {p0, v8, v8, v7, v4}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    .line 2263
    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    .line 2264
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    .line 2266
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->requestTensionAni()V

    goto :goto_2
.end method

.method doubleTapAni()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    const/high16 v7, 0x3f80

    const/4 v9, 0x1

    .line 617
    iget-boolean v3, p0, Lcom/android/browser/BitmapWebView;->mDoubleTapping:Z

    if-nez v3, :cond_0

    .line 682
    :goto_0
    return-void

    .line 625
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/browser/BitmapWebView;->mDTStartTick:J

    sub-long/2addr v3, v5

    long-to-int v0, v3

    .line 626
    .local v0, interval:I
    const/16 v3, 0x3e8

    if-ge v0, v3, :cond_2

    .line 628
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getDrawFrameFlag()Z

    move-result v3

    if-ne v3, v9, :cond_1

    .line 631
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->requestDoubleTapAni()V

    goto :goto_0

    .line 635
    :cond_1
    int-to-float v3, v0

    const/high16 v4, 0x447a

    div-float v2, v3, v4

    .line 636
    .local v2, ratio:F
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mDTInvEndZoomScale:F

    sub-float/2addr v3, v7

    mul-float/2addr v3, v2

    add-float/2addr v3, v7

    div-float v1, v7, v3

    .line 640
    .local v1, newScale:F
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mDTStartScrollX:F

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mDTEndScrollX:F

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mDTStartScrollX:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/browser/BitmapWebView;->mScrollDX:F

    .line 641
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mDTStartScrollY:F

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mDTEndScrollY:F

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mDTStartScrollY:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/browser/BitmapWebView;->mScrollDY:F

    .line 644
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCX:F

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCY:F

    invoke-virtual {p0, v3, v4, v1, v10}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    .line 647
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCX:F

    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCY:F

    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 652
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mScrollDX:F

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mScrollDY:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 653
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4, v9}, Landroid/webkit/WebView;->transformPlugins(Landroid/graphics/Matrix;Z)V

    .line 655
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->requestDoubleTapAni()V

    goto :goto_0

    .line 659
    .end local v1           #newScale:F
    .end local v2           #ratio:F
    :cond_2
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mDTEndScrollX:F

    iput v3, p0, Lcom/android/browser/BitmapWebView;->mScrollDX:F

    .line 660
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mDTEndScrollY:F

    iput v3, p0, Lcom/android/browser/BitmapWebView;->mScrollDY:F

    .line 662
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCX:F

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCY:F

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mDTEndScale:F

    invoke-virtual {p0, v3, v4, v5, v9}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    .line 668
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mDTEndScale:F

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mDTEndScale:F

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCX:F

    iget-object v7, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCY:F

    iget-object v8, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getScrollY()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 673
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mScrollDX:F

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mScrollDY:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 674
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4, v9}, Landroid/webkit/WebView;->transformPlugins(Landroid/graphics/Matrix;Z)V

    .line 676
    iput-boolean v10, p0, Lcom/android/browser/BitmapWebView;->mDoubleTapping:Z

    .line 677
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v3, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 679
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v11, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method drawTile(IIIILandroid/graphics/Picture;)Lcom/android/browser/BitmapWebView$Tile;
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "shiftx"
    .parameter "shifty"
    .parameter "pic"

    .prologue
    const-wide/16 v8, 0x0

    .line 1246
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    mul-int/lit16 v7, p1, 0x100

    add-int v0, v6, v7

    .line 1247
    .local v0, left:I
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    mul-int/lit16 v7, p2, 0x100

    add-int v4, v6, v7

    .line 1249
    .local v4, top:I
    add-int v6, p1, p3

    iget v7, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    rem-int v1, v6, v7

    .line 1250
    .local v1, targetx:I
    add-int v6, p2, p4

    iget v7, p0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    rem-int v2, v6, v7

    .line 1252
    .local v2, targety:I
    new-instance v5, Landroid/graphics/Rect;

    add-int/lit16 v6, v0, 0x100

    add-int/lit16 v7, v4, 0x100

    invoke-direct {v5, v0, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1254
    .local v5, updateRegion:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v6, v1, v2, v5}, Lcom/android/browser/BitmapWebView$Surface;->getTile(IILandroid/graphics/Rect;)Lcom/android/browser/BitmapWebView$Tile;

    move-result-object v3

    .line 1255
    .local v3, tile:Lcom/android/browser/BitmapWebView$Tile;
    if-nez v3, :cond_1

    .line 1257
    iget-wide v6, p0, Lcom/android/browser/BitmapWebView;->mQueueFullTick:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 1258
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/browser/BitmapWebView;->mQueueFullTick:J

    .line 1262
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->updateWebViewTexture()V

    .line 1264
    const/4 v6, 0x0

    .line 1304
    :goto_0
    return-object v6

    .line 1268
    :cond_1
    iput-wide v8, p0, Lcom/android/browser/BitmapWebView;->mQueueFullTick:J

    .line 1273
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v7, v3, Lcom/android/browser/BitmapWebView$Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1275
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 1277
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    neg-int v7, v0

    int-to-float v7, v7

    neg-int v8, v4

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1290
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/browser/BitmapWebView;->mIsDrawingWebView:Z

    .line 1291
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    .line 1292
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/browser/BitmapWebView;->mIsDrawingWebView:Z

    .line 1302
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    move-object v6, v3

    .line 1304
    goto :goto_0
.end method

.method fling(Landroid/view/VelocityTracker;II)V
    .locals 11
    .parameter "tracker"
    .parameter "vx"
    .parameter "vy"

    .prologue
    .line 2073
    if-eqz p1, :cond_0

    .line 2075
    const/16 v0, 0x3e8

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mMaximumFling:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2076
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int p2, v0

    .line 2077
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int p3, v0

    .line 2089
    :cond_0
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    float-to-int v10, v0

    .line 2090
    .local v10, flingMaxW:I
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    float-to-int v9, v0

    .line 2093
    .local v9, flingMaxH:I
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    sub-int v5, v0, v10

    .line 2094
    .local v5, minX:I
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistX:I

    neg-int v0, v0

    if-ge v5, v0, :cond_1

    .line 2095
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistX:I

    neg-int v5, v0

    .line 2097
    :cond_1
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    add-int v6, v0, v10

    .line 2098
    .local v6, maxX:I
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistX:I

    add-int/2addr v0, v1

    if-le v6, v0, :cond_2

    .line 2099
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistX:I

    add-int v6, v0, v1

    .line 2101
    :cond_2
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    sub-int v7, v0, v9

    .line 2102
    .local v7, minY:I
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistY:I

    neg-int v0, v0

    if-ge v7, v0, :cond_3

    .line 2103
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistY:I

    neg-int v7, v0

    .line 2105
    :cond_3
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    add-int v8, v0, v9

    .line 2106
    .local v8, maxY:I
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistY:I

    add-int/2addr v0, v1

    if-le v8, v0, :cond_4

    .line 2107
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistY:I

    add-int v8, v0, v1

    .line 2110
    :cond_4
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mSnapScrollMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 2111
    const/4 p3, 0x0

    .line 2112
    :cond_5
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mSnapScrollMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 2113
    const/4 p2, 0x0

    .line 2117
    :cond_6
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    neg-int v3, p2

    neg-int v4, p3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 2120
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->show()V

    .line 2122
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    .line 2124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mFlinging:Z

    .line 2125
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BitmapWebView;->requestFlingIng(J)V

    .line 2126
    return-void
.end method

.method getBGBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 3103
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3104
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 3105
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020005

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCenterX()F
    .locals 1

    .prologue
    .line 832
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterX:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    .prologue
    .line 836
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterY:F

    return v0
.end method

.method getCheckerBoardBitmap()Landroid/graphics/Bitmap;
    .locals 15

    .prologue
    .line 2875
    const/4 v0, 0x0

    .line 2877
    if-nez v0, :cond_0

    .line 2878
    const/16 v0, 0x40

    const/16 v1, 0x40

    sget-object v2, Lcom/android/browser/BitmapWebView;->TEXTURE_FORMAT:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2880
    :cond_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2881
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 2882
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2883
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2885
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 2886
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2887
    const v4, -0x333334

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2891
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2893
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2894
    const/4 v7, 0x0

    move v14, v7

    move v7, v5

    move v5, v14

    :goto_0
    const/16 v8, 0x40

    iget v9, p0, Lcom/android/browser/BitmapWebView;->mCheckBoardTileSize:I

    div-int/2addr v8, v9

    if-ge v5, v8, :cond_5

    .line 2895
    const/4 v8, 0x0

    move v14, v8

    move v8, v6

    move v6, v14

    :goto_1
    const/16 v9, 0x40

    iget v10, p0, Lcom/android/browser/BitmapWebView;->mCheckBoardTileSize:I

    div-int/2addr v9, v10

    if-ge v6, v9, :cond_4

    .line 2898
    iget v9, p0, Lcom/android/browser/BitmapWebView;->mCheckBoardTileSize:I

    mul-int/2addr v9, v5

    iget v10, p0, Lcom/android/browser/BitmapWebView;->mCheckBoardTileSize:I

    mul-int/2addr v10, v6

    iget v11, p0, Lcom/android/browser/BitmapWebView;->mCheckBoardTileSize:I

    mul-int/2addr v11, v5

    iget v12, p0, Lcom/android/browser/BitmapWebView;->mCheckBoardTileSize:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/android/browser/BitmapWebView;->mCheckBoardTileSize:I

    mul-int/2addr v12, v6

    iget v13, p0, Lcom/android/browser/BitmapWebView;->mCheckBoardTileSize:I

    add-int/2addr v12, v13

    invoke-virtual {v4, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 2901
    rem-int/lit8 v9, v7, 0x2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 2903
    rem-int/lit8 v9, v8, 0x2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    move-object v9, v2

    .line 2918
    :goto_2
    invoke-virtual {v1, v4, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2895
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    move-object v9, v3

    .line 2906
    goto :goto_2

    .line 2911
    :cond_2
    rem-int/lit8 v9, v8, 0x2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    move-object v9, v3

    .line 2912
    goto :goto_2

    :cond_3
    move-object v9, v2

    .line 2914
    goto :goto_2

    .line 2894
    :cond_4
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v8

    goto :goto_0

    .line 2922
    :cond_5
    return-object v0
.end method

.method declared-synchronized getDrawFrameFlag()Z
    .locals 1

    .prologue
    .line 2932
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mDrawFrameFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDrawInfo(Lcom/android/browser/BitmapWebView$DrawInfo;)Z
    .locals 12
    .parameter "info"

    .prologue
    .line 2994
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getState()I

    move-result v4

    .line 2995
    .local v4, state:I
    const/4 v8, 0x1

    if-eq v4, v8, :cond_0

    .line 2999
    const/4 v8, 0x0

    .line 3098
    :goto_0
    return v8

    .line 3002
    :cond_0
    iget v8, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    if-nez v8, :cond_2

    .line 3003
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 3005
    :cond_2
    iget-object v8, p0, Lcom/android/browser/BitmapWebView;->mValidTextureRegion:Landroid/graphics/Region;

    monitor-enter v8

    .line 3007
    :try_start_0
    iget-object v9, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->validRegion:Landroid/graphics/Region;

    iget-object v10, p0, Lcom/android/browser/BitmapWebView;->mValidTextureRegion:Landroid/graphics/Region;

    invoke-virtual {v9, v10}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 3008
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3010
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 3011
    .local v6, texRect:Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 3012
    .local v7, visibleRect:Landroid/graphics/Rect;
    iget v8, p0, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    float-to-double v8, v8

    const-wide/high16 v10, 0x3ff0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_5

    .line 3014
    iget v8, p0, Lcom/android/browser/BitmapWebView;->mScrollDX:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_3

    iget v8, p0, Lcom/android/browser/BitmapWebView;->mScrollDY:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_4

    .line 3016
    :cond_3
    iget-object v8, p0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3033
    :goto_1
    iget-object v8, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->validRegion:Landroid/graphics/Region;

    sget-object v9, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v8, v7, v9}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 3035
    new-instance v1, Landroid/graphics/RegionIterator;

    iget-object v8, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->validRegion:Landroid/graphics/Region;

    invoke-direct {v1, v8}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 3036
    .local v1, iter:Landroid/graphics/RegionIterator;
    iget-object v8, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->validRegion:Landroid/graphics/Region;

    invoke-virtual {v8}, Landroid/graphics/Region;->isComplex()Z

    move-result v8

    if-nez v8, :cond_6

    .line 3038
    iget-object v8, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->validRegion:Landroid/graphics/Region;

    invoke-virtual {v8}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3055
    :goto_2
    iget-object v8, p0, Lcom/android/browser/BitmapWebView;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 3056
    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    .line 3058
    const/4 v8, 0x0

    iput-boolean v8, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawBG:Z

    .line 3059
    const/4 v8, 0x0

    iput-boolean v8, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawCB:Z

    .line 3098
    :goto_3
    const/4 v8, 0x1

    goto :goto_0

    .line 3008
    .end local v1           #iter:Landroid/graphics/RegionIterator;
    .end local v6           #texRect:Landroid/graphics/Rect;
    .end local v7           #visibleRect:Landroid/graphics/Rect;
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 3021
    .restart local v6       #texRect:Landroid/graphics/Rect;
    .restart local v7       #visibleRect:Landroid/graphics/Rect;
    :cond_4
    const/high16 v8, 0x3f80

    iget v9, p0, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    div-float v0, v8, v9

    .line 3022
    .local v0, inverseScale:F
    iget-object v8, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    iget v9, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterX:F

    iget v10, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget v10, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterY:F

    iget v11, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-virtual {v8, v0, v0, v9, v10}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 3023
    new-instance v3, Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    invoke-direct {v3, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 3024
    .local v3, rectf:Landroid/graphics/RectF;
    iget-object v8, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 3025
    iget v8, v3, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    iget v9, v3, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    iget v10, v3, Landroid/graphics/RectF;->right:F

    float-to-int v10, v10

    iget v11, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v11, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 3031
    .end local v0           #inverseScale:F
    .end local v3           #rectf:Landroid/graphics/RectF;
    :cond_5
    iget-object v8, p0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 3044
    .restart local v1       #iter:Landroid/graphics/RegionIterator;
    :cond_6
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 3046
    .local v2, largestRect:Landroid/graphics/Rect;
    :cond_7
    :goto_4
    invoke-virtual {v1, v6}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3048
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    mul-int/2addr v8, v9

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v10

    mul-int/2addr v9, v10

    if-ge v8, v9, :cond_7

    .line 3049
    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4

    .line 3052
    :cond_8
    invoke-virtual {v6, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 3063
    .end local v2           #largestRect:Landroid/graphics/Rect;
    :cond_9
    iget-object v8, p0, Lcom/android/browser/BitmapWebView;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    .line 3065
    new-instance v5, Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/browser/BitmapWebView;->mContentsRect:Landroid/graphics/Rect;

    invoke-direct {v5, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3066
    .local v5, tempR:Landroid/graphics/Rect;
    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 3067
    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 3069
    const/4 v8, 0x0

    iput-boolean v8, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawBG:Z

    .line 3070
    const/4 v8, 0x0

    iput-boolean v8, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawCB:Z

    goto/16 :goto_3

    .line 3074
    :cond_a
    const/4 v8, 0x0

    iput-boolean v8, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawBG:Z

    .line 3075
    const/4 v8, 0x1

    iput-boolean v8, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawCB:Z

    goto/16 :goto_3

    .line 3080
    .end local v5           #tempR:Landroid/graphics/Rect;
    :cond_b
    new-instance v5, Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/browser/BitmapWebView;->mContentsRect:Landroid/graphics/Rect;

    invoke-direct {v5, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3081
    .restart local v5       #tempR:Landroid/graphics/Rect;
    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 3083
    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    .line 3085
    const/4 v8, 0x1

    iput-boolean v8, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawBG:Z

    .line 3086
    const/4 v8, 0x0

    iput-boolean v8, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawCB:Z

    goto/16 :goto_3

    .line 3090
    :cond_c
    const/4 v8, 0x1

    iput-boolean v8, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawBG:Z

    .line 3091
    const/4 v8, 0x1

    iput-boolean v8, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawCB:Z

    goto/16 :goto_3
.end method

.method public getFlingFactor()F
    .locals 1

    .prologue
    .line 827
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getPluginMode()I
    .locals 1

    .prologue
    .line 845
    const/4 v0, 0x2

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 840
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    return v0
.end method

.method getState()I
    .locals 3

    .prologue
    .line 463
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 476
    .local v1, tick:J
    const/4 v0, 0x0

    .line 486
    .local v0, status:I
    return v0
.end method

.method getTitleBarHeight()I
    .locals 1

    .prologue
    .line 3113
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTitleBarHeight:I

    if-gez v0, :cond_0

    .line 3114
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTitleBarHeight:I

    .line 3116
    :cond_0
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTitleBarHeight:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 2386
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mVisible:Z

    if-nez v0, :cond_0

    .line 2396
    :goto_0
    return-void

    .line 2389
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mVisible:Z

    .line 2391
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 2392
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 2393
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method initWebViewVariables(ZZ)Z
    .locals 19
    .parameter "force"
    .parameter "forceRearrange"

    .prologue
    .line 1709
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BitmapWebView;->getState()I

    move-result v9

    .line 1718
    .local v9, state:I
    const/4 v13, 0x1

    if-eq v9, v13, :cond_0

    const/4 v13, 0x4

    if-eq v9, v13, :cond_0

    .line 1721
    const/4 v13, 0x0

    .line 1805
    :goto_0
    return v13

    .line 1724
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    move-object v13, v0

    if-nez v13, :cond_1

    const/4 v13, 0x0

    goto :goto_0

    .line 1726
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v4

    .line 1727
    .local v4, contWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v3

    .line 1729
    .local v3, contHeight:I
    if-eqz v4, :cond_2

    if-nez v3, :cond_3

    .line 1730
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 1732
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/webkit/WebView;->getWidth()I

    move-result v11

    .line 1733
    .local v11, viewWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/webkit/WebView;->getHeight()I

    move-result v10

    .line 1735
    .local v10, viewHeight:I
    if-eqz v11, :cond_4

    if-nez v10, :cond_5

    .line 1736
    :cond_4
    const/4 v13, 0x0

    goto :goto_0

    .line 1738
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/webkit/WebView;->getScale()F

    move-result v13

    int-to-float v14, v4

    mul-float/2addr v13, v14

    float-to-int v12, v13

    .line 1739
    .local v12, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/webkit/WebView;->getScale()F

    move-result v13

    int-to-float v14, v3

    mul-float/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    float-to-int v5, v13

    .line 1741
    .local v5, height:I
    if-ge v12, v11, :cond_6

    .line 1742
    move v12, v11

    .line 1743
    :cond_6
    if-ge v5, v10, :cond_7

    .line 1744
    move v5, v10

    .line 1747
    :cond_7
    if-nez p1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    move v13, v0

    if-ne v12, v13, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    move v13, v0

    if-ne v5, v13, :cond_8

    .line 1750
    const/4 v13, 0x0

    goto :goto_0

    .line 1755
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    move v7, v0

    .line 1756
    .local v7, oldContentsWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    move v6, v0

    .line 1760
    .local v6, oldContentsHeight:I
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    .line 1761
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    .line 1762
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    .line 1763
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    .line 1764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/webkit/WebView;->getScrollX()I

    move-result v13

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    .line 1765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/webkit/WebView;->getScrollY()I

    move-result v13

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BitmapWebView;->mViewTop:I

    .line 1769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/webkit/WebView;->getProgress()I

    move-result v13

    const/16 v14, 0x64

    if-ge v13, v14, :cond_c

    .line 1770
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BitmapWebView;->mAfterLoadFinishedCount:I

    .line 1774
    :goto_1
    const/4 v8, 0x0

    .line 1775
    .local v8, rearranged:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mAfterLoadFinishedCount:I

    move v13, v0

    const/4 v14, 0x1

    if-le v13, v14, :cond_9

    const/4 v13, 0x1

    move/from16 v0, p2

    move v1, v13

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    move v13, v0

    sub-int v13, v7, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    const/16 v14, 0xa

    if-gt v13, v14, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    move v13, v0

    sub-int v13, v6, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    const/16 v14, 0xa

    if-le v13, v14, :cond_a

    .line 1780
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BitmapWebView;->reArrangeTextures()Z

    move-result v8

    .line 1784
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    move v15, v0

    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebView;->calcTextureRegion(II)Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    move-object v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    move/from16 v18, v0

    add-int v17, v17, v18

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Rect;->set(IIII)V

    .line 1800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mContentsRect:Landroid/graphics/Rect;

    move-object v13, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Rect;->set(IIII)V

    .line 1802
    const/4 v13, 0x1

    if-ne v8, v13, :cond_b

    .line 1803
    new-instance v13, Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/browser/BitmapWebView;->requestUpdateContents(Landroid/graphics/Region;)V

    .line 1805
    :cond_b
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1772
    .end local v8           #rearranged:Z
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mAfterLoadFinishedCount:I

    move v13, v0

    add-int/lit8 v13, v13, 0x1

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BitmapWebView;->mAfterLoadFinishedCount:I

    goto/16 :goto_1
.end method

.method public isDrawingWebView()Z
    .locals 1

    .prologue
    .line 942
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mIsDrawingWebView:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 852
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mVisible:Z

    return v0
.end method

.method onDestroy()V
    .locals 1

    .prologue
    .line 2966
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0}, Lcom/android/browser/BitmapWebView$Surface;->destroy()V

    .line 2967
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2968
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2971
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 2973
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2975
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BitmapWebView;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    .line 2978
    :cond_1
    return-void

    .line 2973
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method onDrawFinished()V
    .locals 0

    .prologue
    .line 1168
    return-void
.end method

.method public onNewScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8
    .parameter "detector"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 857
    iget-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mScaling:Z

    if-nez v1, :cond_0

    move v1, v7

    .line 913
    :goto_0
    return v1

    .line 860
    :cond_0
    const/4 v0, 0x0

    .line 871
    .local v0, scale:F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4059

    div-double/2addr v1, v3

    double-to-float v0, v1

    .line 875
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3c23d70a

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    .line 878
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 880
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    const/high16 v2, 0x3fa0

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 889
    :goto_1
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mMinScale:F

    const v2, 0x3f28f5c3

    mul-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mMaxScale:F

    const/high16 v2, 0x3fc0

    mul-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    :cond_1
    move v1, v7

    .line 890
    goto :goto_0

    .line 884
    :cond_2
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1

    .line 892
    :cond_3
    iput v0, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    .line 895
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mBeginScale:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    .line 898
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterX:F

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterY:F

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    invoke-virtual {p0, v1, v2, v3, v5}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    .line 901
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScale()F

    move-result v4

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterX:F

    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterY:F

    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 906
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v7}, Landroid/webkit/WebView;->transformPlugins(Landroid/graphics/Matrix;Z)V

    move v1, v7

    .line 910
    goto/16 :goto_0

    :cond_4
    move v1, v5

    .line 913
    goto/16 :goto_0
.end method

.method public onPageFinished(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 947
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BitmapWebView;->initWebViewVariables(ZZ)Z

    .line 949
    return-void
.end method

.method public onPageStarted(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 955
    return-void
.end method

.method onPaused()V
    .locals 1

    .prologue
    .line 2946
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0}, Lcom/android/browser/BitmapWebView$Surface;->onPaused()V

    .line 2947
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebView;->setState(I)V

    .line 2948
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->hide()V

    .line 2949
    return-void
.end method

.method onResumed()V
    .locals 1

    .prologue
    .line 2960
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebView;->setState(I)V

    .line 2961
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0}, Lcom/android/browser/BitmapWebView$Surface;->onResumed()V

    .line 2962
    return-void
.end method

.method public onScale(Landroid/webkit/OnPinchZoomListener$ZoomInfo;)Z
    .locals 1
    .parameter "zoomInfo"

    .prologue
    .line 959
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;FF)Z
    .locals 4
    .parameter "detector"
    .parameter "maxScale"
    .parameter "minScale"

    .prologue
    const/4 v3, 0x1

    .line 967
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->canHandleTouchEvent()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    .line 1010
    :goto_0
    return v0

    .line 970
    :cond_0
    iput p3, p0, Lcom/android/browser/BitmapWebView;->mMinScale:F

    .line 971
    iput p2, p0, Lcom/android/browser/BitmapWebView;->mMaxScale:F

    .line 973
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mMinScale:F

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mMaxScale:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    move v0, v3

    .line 974
    goto :goto_0

    .line 976
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    move v0, v3

    .line 977
    goto :goto_0

    .line 980
    :cond_3
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 981
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->transformPlugins(Landroid/graphics/Matrix;Z)V

    .line 983
    iput-boolean v3, p0, Lcom/android/browser/BitmapWebView;->mScaling:Z

    .line 985
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterX:F

    .line 986
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterY:F

    .line 990
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    .line 991
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScale()F

    move-result v0

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mBeginScale:F

    .line 1000
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->show()V

    .line 1003
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScale()F

    move-result v0

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    .line 1007
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterX:F

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterY:F

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    move v0, v3

    .line 1010
    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4
    .parameter "detector"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1017
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mScaling:Z

    if-nez v0, :cond_1

    .line 1046
    :cond_0
    :goto_0
    return-void

    .line 1019
    :cond_1
    iput-boolean v3, p0, Lcom/android/browser/BitmapWebView;->mScaling:Z

    .line 1021
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0}, Lcom/android/browser/BitmapWebView$Surface;->stopDraw()V

    .line 1023
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->hide()V

    .line 1031
    invoke-virtual {p0, v2, v2}, Lcom/android/browser/BitmapWebView;->initWebViewVariables(ZZ)Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1033
    new-instance v0, Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0, v3}, Lcom/android/browser/BitmapWebView;->updateWebViewTextureBitmap(Landroid/graphics/Region;Z)Z

    .line 1043
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onScrollChanged(IIII)V
    .locals 2
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    const/4 v1, 0x1

    .line 919
    if-ne p1, p3, :cond_1

    if-ne p2, p4, :cond_1

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mScaling:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mDoubleTapping:Z

    if-eq v0, v1, :cond_0

    .line 930
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/BitmapWebView;->scroll(II)V

    goto :goto_0
.end method

.method public onUpdateContents(Landroid/graphics/Region;)V
    .locals 10
    .parameter "dirtyRegion"

    .prologue
    const/4 v9, 0x1

    .line 1051
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1052
    .local v3, updateRect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/RegionIterator;

    invoke-direct {v0, p1}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 1053
    .local v0, iter:Landroid/graphics/RegionIterator;
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    .line 1054
    .local v1, scaleX:F
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScale()F

    move-result v2

    .line 1056
    .local v2, scaleY:F
    :goto_0
    invoke-virtual {v0, v3}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1058
    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    mul-float/2addr v7, v2

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1063
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_0

    .line 1066
    :cond_0
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1067
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1069
    return-void
.end method

.method public onWebViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1080
    invoke-virtual {p0, p1}, Lcom/android/browser/BitmapWebView;->onWebViewTouchEventDirectScrollMode(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWebViewTouchEventDirectScrollMode(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/high16 v4, -0x4080

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2649
    .line 2651
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2652
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 2653
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 2657
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v3, v10, :cond_0

    .line 2659
    iput v4, p0, Lcom/android/browser/BitmapWebView;->mLastTouchX:F

    .line 2660
    iput v4, p0, Lcom/android/browser/BitmapWebView;->mLastTouchY:F

    move v0, v9

    .line 2868
    :goto_0
    return v0

    .line 2664
    :cond_0
    packed-switch v0, :pswitch_data_0

    move v0, v9

    goto :goto_0

    .line 2667
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mTouchEventProcessing:Z

    if-nez v0, :cond_1

    move v0, v9

    .line 2670
    goto :goto_0

    .line 2673
    :cond_1
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mLastTouchX:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/browser/BitmapWebView;->mLastTouchY:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    .line 2678
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mLastTouchX:F

    .line 2679
    iput v2, p0, Lcom/android/browser/BitmapWebView;->mLastTouchY:F

    move v0, v10

    .line 2680
    goto :goto_0

    .line 2683
    :cond_2
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mLastTouchX:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 2684
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mLastTouchY:F

    sub-float/2addr v3, v2

    float-to-int v3, v3

    .line 2689
    iget-boolean v4, p0, Lcom/android/browser/BitmapWebView;->mMoveFirst:Z

    if-nez v4, :cond_3

    mul-int v4, v0, v0

    mul-int v5, v3, v3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTouchSlopSquare:I

    if-ge v4, v5, :cond_3

    move v0, v10

    .line 2692
    goto :goto_0

    .line 2695
    :cond_3
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-boolean v4, v4, Landroid/webkit/WebView;->mStopSelection:Z

    if-nez v4, :cond_4

    move v0, v9

    .line 2698
    goto :goto_0

    .line 2703
    :cond_4
    iget-boolean v4, p0, Lcom/android/browser/BitmapWebView;->mDragConfirmed:Z

    if-nez v4, :cond_7

    .line 2706
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mPrevPreventDefault:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 2708
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget v4, v4, Landroid/webkit/WebView;->mPreventDefault:I

    if-eq v4, v10, :cond_5

    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget v4, v4, Landroid/webkit/WebView;->mPreventDefault:I

    if-ne v4, v11, :cond_6

    :cond_5
    move v0, v9

    .line 2712
    goto :goto_0

    .line 2716
    :cond_6
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget v4, v4, Landroid/webkit/WebView;->mPreventDefault:I

    if-eq v4, v10, :cond_7

    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget v4, v4, Landroid/webkit/WebView;->mPreventDefault:I

    if-eq v4, v11, :cond_7

    .line 2721
    iput-boolean v10, p0, Lcom/android/browser/BitmapWebView;->mDragConfirmed:Z

    .line 2722
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget v4, v4, Landroid/webkit/WebView;->mPreventDefault:I

    iput v4, p0, Lcom/android/browser/BitmapWebView;->mPrevPreventDefault:I

    .line 2724
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->cancelTouch()V

    .line 2725
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->reduceWebViewPriority()V

    .line 2730
    :cond_7
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget v4, v4, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_9

    .line 2732
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mVisible:Z

    if-eqz v0, :cond_8

    .line 2734
    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mMoveFirst:Z

    .line 2735
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2736
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v9}, Landroid/webkit/WebView;->transformPlugins(Landroid/graphics/Matrix;Z)V

    .line 2737
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->hide()V

    .line 2739
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BitmapWebView;->scroll(II)V

    .line 2742
    :cond_8
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeWebViewPriority()V

    move v0, v9

    .line 2743
    goto/16 :goto_0

    .line 2747
    :cond_9
    iget-boolean v4, p0, Lcom/android/browser/BitmapWebView;->mMoveFirst:Z

    if-nez v4, :cond_b

    .line 2749
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 2750
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 2751
    int-to-float v6, v4

    const/high16 v7, 0x4000

    int-to-float v8, v5

    mul-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_c

    .line 2752
    iput v11, p0, Lcom/android/browser/BitmapWebView;->mSnapScrollMode:I

    .line 2757
    :cond_a
    :goto_1
    iput-boolean v10, p0, Lcom/android/browser/BitmapWebView;->mMoveFirst:Z

    .line 2758
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->show()V

    .line 2763
    :cond_b
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iput-boolean v10, v4, Landroid/webkit/WebView;->mUserScroll:Z

    .line 2768
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mSnapScrollMode:I

    if-ne v4, v11, :cond_d

    move v3, v9

    .line 2774
    :goto_2
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mSnapScrollMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_e

    move v0, v9

    .line 2780
    :goto_3
    invoke-virtual {p0, v0, v3}, Lcom/android/browser/BitmapWebView;->scrollPlugins(II)V

    .line 2781
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    add-int/2addr v0, v4

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v3}, Lcom/android/browser/BitmapWebView;->scroll(II)V

    .line 2783
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v12, v12, v0, v10}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    .line 2789
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mLastTouchX:F

    .line 2790
    iput v2, p0, Lcom/android/browser/BitmapWebView;->mLastTouchY:F

    .line 2791
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2793
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mDragConfirmed:Z

    if-eqz v0, :cond_f

    move v0, v10

    .line 2794
    goto/16 :goto_0

    .line 2753
    :cond_c
    int-to-float v5, v5

    const/high16 v6, 0x4000

    int-to-float v4, v4

    mul-float/2addr v4, v6

    cmpl-float v4, v5, v4

    if-lez v4, :cond_a

    .line 2754
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/browser/BitmapWebView;->mSnapScrollMode:I

    goto :goto_1

    .line 2771
    :cond_d
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    invoke-virtual {p0, v4, v3}, Lcom/android/browser/BitmapWebView;->checkTensionY(II)I

    move-result v3

    goto :goto_2

    .line 2777
    :cond_e
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    invoke-virtual {p0, v4, v0}, Lcom/android/browser/BitmapWebView;->checkTensionX(II)I

    move-result v0

    goto :goto_3

    :cond_f
    move v0, v9

    .line 2798
    goto/16 :goto_0

    .line 2801
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->canHandleTouchEvent()Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v9

    .line 2804
    goto/16 :goto_0

    .line 2807
    :cond_10
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->stopFling()V

    .line 2808
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->stopTension()V

    .line 2809
    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mMoveFirst:Z

    .line 2810
    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mDragConfirmed:Z

    .line 2811
    iput v9, p0, Lcom/android/browser/BitmapWebView;->mSnapScrollMode:I

    .line 2812
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2813
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mLastTouchX:F

    .line 2814
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mLastTouchY:F

    .line 2815
    iput-boolean v10, p0, Lcom/android/browser/BitmapWebView;->mTouchEventProcessing:Z

    move v0, v9

    .line 2818
    goto/16 :goto_0

    .line 2821
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mTouchEventProcessing:Z

    if-nez v0, :cond_11

    move v0, v9

    .line 2824
    goto/16 :goto_0

    .line 2827
    :cond_11
    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mTouchEventProcessing:Z

    .line 2829
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mMoveFirst:Z

    if-ne v0, v10, :cond_12

    .line 2833
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2834
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v0, v9, v9}, Lcom/android/browser/BitmapWebView;->fling(Landroid/view/VelocityTracker;II)V

    .line 2836
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->cancelTouch()V

    .line 2839
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->sendTextSelectionMoveEvent()V

    move v0, v9

    goto/16 :goto_0

    :cond_12
    move v0, v9

    .line 2862
    goto/16 :goto_0

    .line 2664
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public overrideDoubleTap()Z
    .locals 1

    .prologue
    .line 1102
    const/4 v0, 0x0

    return v0
.end method

.method pause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2937
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0}, Lcom/android/browser/BitmapWebView$Surface;->pause()V

    .line 2938
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2939
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2940
    iput-boolean v2, p0, Lcom/android/browser/BitmapWebView;->mPaused:Z

    .line 2941
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebView;->setState(I)V

    .line 2942
    return-void
.end method

.method pinLoc(III)I
    .locals 1
    .parameter "x"
    .parameter "textureMax"
    .parameter "contentsMax"

    .prologue
    .line 1666
    if-ge p3, p2, :cond_1

    .line 1668
    const/4 p1, 0x0

    .line 1676
    :cond_0
    :goto_0
    return p1

    .line 1669
    :cond_1
    if-gez p1, :cond_2

    .line 1671
    const/4 p1, 0x0

    goto :goto_0

    .line 1672
    :cond_2
    add-int v0, p1, p2

    if-le v0, p3, :cond_0

    .line 1674
    sub-int p1, p3, p2

    goto :goto_0
.end method

.method declared-synchronized reArrangeTextures()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1820
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    .line 1821
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    .line 1828
    const/high16 v0, 0x4020

    .line 1829
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    if-le v1, v2, :cond_0

    .line 1830
    const/high16 v0, 0x3fc0

    .line 1832
    :cond_0
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1833
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    if-le v0, v1, :cond_1

    .line 1834
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    .line 1835
    :cond_1
    div-int/lit16 v1, v0, 0x100

    .line 1836
    rem-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    .line 1837
    add-int/lit8 v0, v1, 0x1

    .line 1839
    :goto_0
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    div-int/lit16 v1, v1, 0x100

    .line 1840
    iget v2, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    rem-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_2

    .line 1841
    add-int/lit8 v1, v1, 0x1

    .line 1843
    :cond_2
    iget v2, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    mul-int/lit8 v2, v2, 0x6

    div-int/lit16 v2, v2, 0x100

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1844
    if-nez v1, :cond_3

    move v1, v5

    .line 1848
    :cond_3
    iget v2, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    div-int/lit16 v2, v2, 0x100

    .line 1849
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    rem-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_4

    .line 1850
    add-int/lit8 v2, v2, 0x1

    .line 1853
    :cond_4
    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    .line 1854
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTotalTexNum:I

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    div-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    .line 1855
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    if-le v0, v1, :cond_5

    .line 1856
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    .line 1858
    :cond_5
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTotalTexNum:I

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    mul-int/2addr v1, v3

    sub-int/2addr v0, v1

    .line 1859
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    div-int/2addr v0, v3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    .line 1861
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    if-ge v2, v0, :cond_6

    .line 1862
    iput v2, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    .line 1869
    :cond_6
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    mul-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    .line 1870
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    mul-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    .line 1878
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/browser/BitmapWebView$Surface;->reArrangeTextures(IIII)V

    .line 1896
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mValidTextureRegion:Landroid/graphics/Region;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1899
    :try_start_1
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mValidTextureRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    .line 1900
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1903
    :try_start_2
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->removeRequestUpdateWebViewTexture()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1908
    monitor-exit p0

    return v5

    .line 1900
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1820
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method removeFlingIng()V
    .locals 2

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1151
    return-void
.end method

.method removeRequestUpdateWebViewTexture()V
    .locals 2

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1116
    return-void
.end method

.method removeTensionAni()V
    .locals 2

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1136
    return-void
.end method

.method requestDoubleTapAni()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 1157
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1158
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1160
    return-void
.end method

.method requestDraw(FFFZ)V
    .locals 1
    .parameter "zoomcx"
    .parameter "zoomcy"
    .parameter "scale"
    .parameter "setflag"

    .prologue
    const/4 v0, 0x1

    .line 1173
    iput p3, p0, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    .line 1174
    iput p1, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterX:F

    .line 1175
    iput p2, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterY:F

    .line 1177
    if-ne p4, v0, :cond_0

    .line 1178
    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebView;->setDrawFrameFlag(Z)V

    .line 1180
    :cond_0
    if-nez p4, :cond_2

    .line 1182
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getDrawFrameFlag()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1183
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/browser/BitmapWebView$Surface;->draw(FFF)V

    .line 1188
    :cond_1
    :goto_0
    return-void

    .line 1186
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/browser/BitmapWebView$Surface;->draw(FFF)V

    goto :goto_0
.end method

.method requestFlingIng(J)V
    .locals 3
    .parameter "interval"

    .prologue
    const/4 v2, 0x6

    .line 1140
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1141
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1146
    :goto_0
    return-void

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method requestSurfaceChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 1192
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1193
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1194
    return-void
.end method

.method requestTensionAni()V
    .locals 4

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1132
    return-void
.end method

.method requestUpdateContents(Landroid/graphics/Region;)V
    .locals 3
    .parameter "region"

    .prologue
    const/4 v2, 0x1

    .line 1108
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    sget-object v1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1109
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1110
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1111
    return-void
.end method

.method requestUpdateWebViewTexture()V
    .locals 2

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1124
    return-void
.end method

.method resume()V
    .locals 1

    .prologue
    .line 2953
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebView;->setState(I)V

    .line 2954
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mPaused:Z

    .line 2955
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0}, Lcom/android/browser/BitmapWebView$Surface;->resume()V

    .line 2956
    return-void
.end method

.method saveTextureBitmap()V
    .locals 0

    .prologue
    .line 3224
    return-void
.end method

.method scroll(II)V
    .locals 18
    .parameter "newx"
    .parameter "newy"

    .prologue
    .line 1964
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    move v12, v0

    move/from16 v0, p1

    move v1, v12

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    move v12, v0

    move/from16 v0, p2

    move v1, v12

    if-ne v0, v1, :cond_1

    .line 2042
    :cond_0
    :goto_0
    return-void

    .line 1969
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    move v12, v0

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BitmapWebView;->mOldViewLeft:I

    .line 1970
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    move v12, v0

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BitmapWebView;->mOldViewTop:I

    .line 1972
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    .line 1973
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BitmapWebView;->mViewTop:I

    .line 1979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    move/from16 v17, v0

    add-int v16, v16, v17

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Rect;->set(IIII)V

    .line 1981
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    move v12, v0

    div-int/lit8 v3, v12, 0x2

    .line 1982
    .local v3, dx:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    move v12, v0

    div-int/lit8 v4, v12, 0x2

    .line 1983
    .local v4, dy:I
    new-instance v10, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v12, v0

    iget v12, v12, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v13, v0

    iget v13, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v14, v0

    iget v14, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v15, v0

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v15, v4

    invoke-direct {v10, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1989
    .local v10, textureRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    move-object v12, v0

    invoke-virtual {v10, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1993
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    move v13, v0

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebView;->calcTextureRegion(II)Landroid/graphics/Rect;

    move-result-object v5

    .line 2000
    .local v5, newTextureRegion:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v12, v0

    iget v12, v12, Landroid/graphics/Rect;->left:I

    div-int/lit16 v8, v12, 0x100

    .line 2001
    .local v8, oldtilex:I
    iget v12, v5, Landroid/graphics/Rect;->left:I

    div-int/lit16 v6, v12, 0x100

    .line 2002
    .local v6, newtilex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v12, v0

    iget v12, v12, Landroid/graphics/Rect;->top:I

    div-int/lit16 v9, v12, 0x100

    .line 2003
    .local v9, oldtiley:I
    iget v12, v5, Landroid/graphics/Rect;->top:I

    div-int/lit16 v7, v12, 0x100

    .line 2006
    .local v7, newtiley:I
    if-ne v8, v6, :cond_2

    if-eq v9, v7, :cond_0

    .line 2010
    :cond_2
    new-instance v11, Landroid/graphics/Region;

    invoke-direct {v11, v5}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    .line 2011
    .local v11, updateRegion:Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v12, v0

    sget-object v13, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2013
    invoke-virtual {v11}, Landroid/graphics/Region;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 2015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v12, v0

    invoke-virtual {v12, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2017
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/browser/BitmapWebView;->requestUpdateContents(Landroid/graphics/Region;)V

    .line 2020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mValidTextureRegion:Landroid/graphics/Region;

    move-object v12, v0

    monitor-enter v12

    .line 2023
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mValidTextureRegion:Landroid/graphics/Region;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v14, v0

    sget-object v15, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mValidTextureRegion:Landroid/graphics/Region;

    move-object v13, v0

    sget-object v14, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v13, v11, v14}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 2028
    monitor-exit v12

    goto/16 :goto_0

    :catchall_0
    move-exception v13

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13
.end method

.method scrollPlugins(II)V
    .locals 9
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 2445
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 2473
    :cond_0
    return-void

    .line 2448
    :cond_1
    iget-object v7, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v4

    .line 2449
    .local v4, manager:Landroid/webkit/ViewManager;
    invoke-virtual {v4}, Landroid/webkit/ViewManager;->getChildren()Ljava/util/ArrayList;

    move-result-object v5

    .line 2451
    .local v5, plugins:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/ViewManager$ChildView;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/webkit/ViewManager$ChildView;

    .line 2452
    .local v6, v:Landroid/webkit/ViewManager$ChildView;
    iget-object v7, v6, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2455
    iget-object v7, v6, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2457
    .local v2, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    instance-of v7, v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v7, :cond_2

    .line 2458
    move-object v0, v2

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    move-object v3, v0

    .line 2460
    .local v3, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iget v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    sub-int/2addr v7, p1

    iput v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 2461
    iget v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    sub-int/2addr v7, p2

    iput v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 2464
    iget-object v7, v6, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method declared-synchronized setDrawFrameFlag(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 2927
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/browser/BitmapWebView;->mDrawFrameFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2928
    monitor-exit p0

    return-void

    .line 2927
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setState(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 491
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getState()I

    move-result v0

    .line 493
    .local v0, currState:I
    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 495
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    if-ne p1, v2, :cond_0

    .line 496
    iput v2, p0, Lcom/android/browser/BitmapWebView;->mState:I

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    iput p1, p0, Lcom/android/browser/BitmapWebView;->mState:I

    goto :goto_0
.end method

.method setTitleBar(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 3121
    iput-object p1, p0, Lcom/android/browser/BitmapWebView;->mTitleBar:Landroid/view/View;

    .line 3122
    return-void
.end method

.method public setTitleBarVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 937
    return-void
.end method

.method setVisible(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 3126
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    check-cast v0, Landroid/view/View;

    .line 3127
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3128
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3129
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/browser/BitmapWebView;->setVisibility(I)V

    .line 3130
    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .parameter "webview"
    .parameter "webViewContainer"
    .parameter "bitmapWebviewContainer"
    .parameter "contentView"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1220
    iput-object p1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    .line 1221
    iput-object p2, p0, Lcom/android/browser/BitmapWebView;->mWebViewContainer:Landroid/view/View;

    .line 1222
    iput-object p3, p0, Lcom/android/browser/BitmapWebView;->mBitmapWebViewContainer:Landroid/view/View;

    .line 1223
    iput-object p4, p0, Lcom/android/browser/BitmapWebView;->mContentView:Landroid/view/View;

    .line 1226
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-interface {v1, v2}, Lcom/android/browser/BitmapWebView$Surface;->setWebView(Landroid/webkit/WebView;)V

    .line 1227
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 1228
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 1230
    invoke-virtual {p0, v4, v4}, Lcom/android/browser/BitmapWebView;->initWebViewVariables(ZZ)Z

    .line 1232
    new-instance v0, Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    .line 1233
    .local v0, region:Landroid/graphics/Region;
    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebView;->requestUpdateContents(Landroid/graphics/Region;)V

    .line 1235
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x3fc0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1237
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setTouchInterval(I)V

    .line 1238
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setPreventDefaultTimeout(I)V

    .line 1241
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2362
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getState()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 2381
    :cond_0
    :goto_0
    return-void

    .line 2369
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mVisible:Z

    if-eq v0, v1, :cond_0

    .line 2374
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->bringToFront()V

    .line 2378
    iput-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mVisible:Z

    .line 2379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mTiltebarBitmapUpdated:Z

    goto :goto_0
.end method

.method public startDrag()V
    .locals 0

    .prologue
    .line 1090
    return-void
.end method

.method startTensionAni(II)V
    .locals 10
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    .line 2170
    iput p1, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDx:I

    .line 2171
    iput p2, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDy:I

    .line 2172
    iput v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    .line 2173
    iput v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    .line 2177
    move v0, p1

    .line 2178
    .local v0, dx:I
    move v1, p2

    .line 2184
    .local v1, dy:I
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDx:I

    if-nez v4, :cond_0

    .line 2186
    const/4 v0, 0x0

    .line 2187
    const/high16 v2, 0x3f80

    .line 2195
    .local v2, scalex:F
    :goto_0
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDy:I

    if-nez v4, :cond_1

    .line 2197
    const/4 v1, 0x0

    .line 2198
    const/high16 v3, 0x3f80

    .line 2207
    .local v3, scaley:F
    :goto_1
    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mTensionAni:Z

    .line 2208
    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    .line 2209
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    .line 2211
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    invoke-virtual {p0, v4, v5}, Lcom/android/browser/BitmapWebView;->scrollPlugins(II)V

    .line 2212
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/browser/BitmapWebView;->scroll(II)V

    .line 2214
    invoke-virtual {p0, v8, v8, v7, v9}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    .line 2216
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->requestTensionAni()V

    .line 2217
    return-void

    .line 2191
    .end local v2           #scalex:F
    .end local v3           #scaley:F
    :cond_0
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniInterpolatorX:Landroid/view/animation/DecelerateInterpolator;

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v7

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDx:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    .line 2192
    .restart local v2       #scalex:F
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDx:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 2202
    :cond_1
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniInterpolatorY:Landroid/view/animation/DecelerateInterpolator;

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v7

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDy:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v3

    .line 2203
    .restart local v3       #scaley:F
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDy:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_1
.end method

.method public status()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1094
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getState()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 1097
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method stopFling()V
    .locals 1

    .prologue
    .line 2291
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mFlinging:Z

    if-nez v0, :cond_0

    .line 2303
    :goto_0
    return-void

    .line 2294
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2295
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->removeFlingIng()V

    .line 2302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mFlinging:Z

    goto :goto_0
.end method

.method stopTension()V
    .locals 1

    .prologue
    .line 2307
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mTensionAni:Z

    if-nez v0, :cond_0

    .line 2312
    :goto_0
    return-void

    .line 2310
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->removeTensionAni()V

    .line 2311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mTensionAni:Z

    goto :goto_0
.end method

.method surfaceChanged()V
    .locals 5

    .prologue
    const/high16 v4, 0x40a0

    const/4 v3, 0x1

    .line 2050
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v1}, Lcom/android/browser/BitmapWebView$Surface;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v1}, Lcom/android/browser/BitmapWebView$Surface;->height()I

    move-result v1

    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 2052
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->requestSurfaceChanged()V

    .line 2067
    :goto_0
    return-void

    .line 2056
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/browser/BitmapWebView;->setState(I)V

    .line 2058
    invoke-virtual {p0, v3, v3}, Lcom/android/browser/BitmapWebView;->initWebViewVariables(ZZ)Z

    .line 2059
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v1}, Lcom/android/browser/BitmapWebView$Surface;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistX:I

    .line 2060
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v1}, Lcom/android/browser/BitmapWebView$Surface;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistY:I

    .line 2062
    new-instance v0, Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    .line 2064
    .local v0, region:Landroid/graphics/Region;
    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebView;->requestUpdateContents(Landroid/graphics/Region;)V

    .line 2066
    invoke-virtual {p0, v3}, Lcom/android/browser/BitmapWebView;->setState(I)V

    goto :goto_0
.end method

.method updateTitleBarTextureBitmap()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2400
    iget-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mTitleBarVisibility:Z

    if-nez v1, :cond_1

    .line 2415
    :cond_0
    :goto_0
    return-void

    .line 2403
    :cond_1
    iget-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mTiltebarBitmapUpdated:Z

    if-eq v1, v2, :cond_0

    .line 2407
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2412
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2414
    iput-boolean v2, p0, Lcom/android/browser/BitmapWebView;->mTiltebarBitmapUpdated:Z

    goto :goto_0
.end method

.method updateWebViewTexture()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1313
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getDrawFrameFlag()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/browser/BitmapWebView;->mScaling:Z

    if-nez v2, :cond_2

    .line 1315
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1317
    .local v0, tick:J
    iget-wide v2, p0, Lcom/android/browser/BitmapWebView;->mUpdateTexIgnoreTick:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1318
    iput-wide v0, p0, Lcom/android/browser/BitmapWebView;->mUpdateTexIgnoreTick:J

    .line 1322
    :cond_0
    iget-wide v2, p0, Lcom/android/browser/BitmapWebView;->mUpdateTexIgnoreTick:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/android/browser/BitmapWebView;->mUpdateTexIgnoreTick:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x9c4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1338
    .end local v0           #tick:J
    :goto_0
    return-void

    .line 1328
    .restart local v0       #tick:J
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->requestUpdateWebViewTexture()V

    goto :goto_0

    .line 1333
    .end local v0           #tick:J
    :cond_2
    iput-wide v4, p0, Lcom/android/browser/BitmapWebView;->mUpdateTexIgnoreTick:J

    .line 1335
    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v2}, Lcom/android/browser/BitmapWebView$Surface;->updateTilesInQueue()V

    goto :goto_0
.end method

.method updateWebViewTextureBitmap(Landroid/graphics/Region;Z)Z
    .locals 40
    .parameter "regionToUpdate"
    .parameter "timelimit"

    .prologue
    .line 1343
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BitmapWebView;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 1344
    const/4 v5, 0x1

    .line 1660
    :goto_0
    return v5

    .line 1347
    :cond_0
    new-instance v30, Landroid/graphics/Rect;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/Rect;-><init>()V

    .line 1348
    .local v30, updateRegion:Landroid/graphics/Rect;
    new-instance v20, Landroid/graphics/Region;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    .line 1357
    .local v20, region:Landroid/graphics/Region;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebView;->initWebViewVariables(ZZ)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    move-object v6, v0

    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1365
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    move v6, v0

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [[Z

    .line 1371
    .local v27, tiles:[[Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1372
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Region;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 1375
    const/4 v5, 0x1

    goto :goto_0

    .line 1379
    :cond_2
    new-instance v18, Landroid/graphics/RegionIterator;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 1383
    .local v18, iter:Landroid/graphics/RegionIterator;
    const/16 v28, 0x0

    .line 1384
    .local v28, tooklongtime:Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    .line 1386
    .local v22, startTick:J
    const/4 v10, 0x0

    .line 1398
    .local v10, pic:Landroid/graphics/Picture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    move v6, v0

    rem-int/2addr v5, v6

    div-int/lit16 v8, v5, 0x100

    .line 1399
    .local v8, shiftx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    move v6, v0

    rem-int/2addr v5, v6

    div-int/lit16 v9, v5, 0x100

    .line 1406
    .local v9, shifty:I
    :cond_3
    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    move-object/from16 v0, v30

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1412
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    move v0, v5

    div-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    .line 1414
    .local v19, lx:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    div-int/lit16 v0, v0, 0x100

    move/from16 v21, v0

    .line 1415
    .local v21, rx:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    move v0, v5

    div-int/lit16 v0, v0, 0x100

    move/from16 v29, v0

    .line 1416
    .local v29, ty:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    div-int/lit16 v12, v5, 0x100

    .line 1424
    .local v12, by:I
    move/from16 v6, v19

    .local v6, x:I
    :goto_1
    move v0, v6

    move/from16 v1, v21

    if-gt v0, v1, :cond_3

    .line 1425
    move/from16 v7, v29

    .local v7, y:I
    :goto_2
    if-gt v7, v12, :cond_4

    .line 1427
    aget-object v5, v27, v7

    const/4 v11, 0x1

    aput-boolean v11, v5, v6

    .line 1425
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1424
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1441
    .end local v6           #x:I
    .end local v7           #y:I
    .end local v12           #by:I
    .end local v19           #lx:I
    .end local v21           #rx:I
    .end local v29           #ty:I
    :cond_5
    new-instance v33, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v11, v0

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    move v11, v0

    add-int/2addr v7, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    move-object v11, v0

    iget v11, v11, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v12, v0

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    move v12, v0

    add-int/2addr v11, v12

    move-object/from16 v0, v33

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1449
    .local v33, viewRect:Landroid/graphics/Rect;
    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    move v0, v5

    div-int/lit16 v0, v0, 0x100

    move/from16 v32, v0

    .line 1451
    .local v32, viewLeft:I
    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    div-int/lit16 v0, v0, 0x100

    move/from16 v34, v0

    .line 1452
    .local v34, viewRight:I
    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    move v0, v5

    div-int/lit16 v0, v0, 0x100

    move/from16 v35, v0

    .line 1453
    .local v35, viewTop:I
    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    div-int/lit16 v0, v0, 0x100

    move/from16 v31, v0

    .line 1455
    .local v31, viewBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    move v5, v0

    move/from16 v0, v31

    move v1, v5

    if-lt v0, v1, :cond_6

    .line 1458
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v31, v5, v6

    .line 1461
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    move v5, v0

    move/from16 v0, v34

    move v1, v5

    if-lt v0, v1, :cond_7

    .line 1464
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v34, v5, v6

    .line 1471
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mOldViewLeft:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    move v6, v0

    if-le v5, v6, :cond_a

    .line 1474
    move/from16 v24, v34

    .line 1475
    .local v24, sx:I
    move/from16 v16, v32

    .line 1484
    .local v16, ex:I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mOldViewTop:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    move v6, v0

    if-ge v5, v6, :cond_b

    .line 1486
    move/from16 v25, v35

    .line 1487
    .local v25, sy:I
    move/from16 v17, v31

    .line 1496
    .local v17, ey:I
    :goto_4
    move/from16 v7, v25

    .line 1499
    .restart local v7       #y:I
    :goto_5
    const/4 v5, 0x1

    move/from16 v0, v28

    move v1, v5

    if-ne v0, v1, :cond_c

    .line 1572
    :cond_8
    if-nez v28, :cond_9

    .line 1575
    const/4 v15, 0x0

    .local v15, count:I
    const/4 v11, 0x0

    .line 1579
    .local v11, bitmapcount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    move v6, v0

    div-int/lit8 v6, v6, 0x2

    add-int v13, v5, v6

    .line 1580
    .local v13, centerx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    move v6, v0

    div-int/lit8 v6, v6, 0x2

    add-int v14, v5, v6

    .line 1587
    .local v14, centery:I
    div-int/lit16 v13, v13, 0x100

    .line 1588
    div-int/lit16 v14, v14, 0x100

    .line 1591
    .end local v11           #bitmapcount:I
    :goto_6
    const/4 v5, 0x1

    move/from16 v0, v28

    move v1, v5

    if-ne v0, v1, :cond_13

    .line 1657
    .end local v13           #centerx:I
    .end local v14           #centery:I
    .end local v15           #count:I
    :cond_9
    const/4 v5, 0x1

    move/from16 v0, v28

    move v1, v5

    if-ne v0, v1, :cond_1e

    .line 1658
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1479
    .end local v7           #y:I
    .end local v16           #ex:I
    .end local v17           #ey:I
    .end local v24           #sx:I
    .end local v25           #sy:I
    :cond_a
    move/from16 v24, v32

    .line 1480
    .restart local v24       #sx:I
    move/from16 v16, v34

    .restart local v16       #ex:I
    goto :goto_3

    .line 1491
    :cond_b
    move/from16 v25, v31

    .line 1492
    .restart local v25       #sy:I
    move/from16 v17, v35

    .restart local v17       #ey:I
    goto :goto_4

    .line 1505
    .restart local v7       #y:I
    :cond_c
    move/from16 v6, v24

    .line 1508
    .restart local v6       #x:I
    :goto_7
    const/4 v5, 0x1

    move/from16 v0, v28

    move v1, v5

    if-ne v0, v1, :cond_e

    .line 1556
    :cond_d
    :goto_8
    move/from16 v0, v25

    move/from16 v1, v17

    if-le v0, v1, :cond_12

    .line 1558
    move v0, v7

    move/from16 v1, v17

    if-le v0, v1, :cond_8

    if-lez v7, :cond_8

    .line 1559
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 1514
    :cond_e
    if-ltz v6, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    move v5, v0

    if-ge v6, v5, :cond_d

    if-ltz v7, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    move v5, v0

    if-ge v7, v5, :cond_d

    .line 1517
    aget-object v5, v27, v7

    aget-boolean v5, v5, v6

    const/4 v11, 0x1

    if-ne v5, v11, :cond_10

    move-object/from16 v5, p0

    .line 1520
    invoke-virtual/range {v5 .. v10}, Lcom/android/browser/BitmapWebView;->drawTile(IIIILandroid/graphics/Picture;)Lcom/android/browser/BitmapWebView$Tile;

    move-result-object v26

    .line 1521
    .local v26, tile:Lcom/android/browser/BitmapWebView$Tile;
    if-nez v26, :cond_f

    .line 1523
    const/16 v28, 0x1

    .line 1524
    goto :goto_8

    .line 1529
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/android/browser/BitmapWebView$Surface;->updateTile(Lcom/android/browser/BitmapWebView$Tile;)V

    .line 1530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    move-object v5, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/browser/BitmapWebView$Tile;->mBoundary:Landroid/graphics/Rect;

    move-object v11, v0

    sget-object v12, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1531
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BitmapWebView;->updateWebViewTexture()V

    .line 1532
    aget-object v5, v27, v7

    const/4 v11, 0x0

    aput-boolean v11, v5, v6

    .line 1534
    const/4 v5, 0x1

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v36

    sub-long v36, v36, v22

    const-wide/16 v38, 0x1

    cmp-long v5, v36, v38

    if-lez v5, :cond_10

    .line 1536
    const/16 v28, 0x1

    .line 1537
    goto :goto_8

    .line 1543
    .end local v26           #tile:Lcom/android/browser/BitmapWebView$Tile;
    :cond_10
    move/from16 v0, v24

    move/from16 v1, v16

    if-le v0, v1, :cond_11

    .line 1545
    move v0, v6

    move/from16 v1, v16

    if-le v0, v1, :cond_d

    if-lez v6, :cond_d

    .line 1546
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    .line 1550
    :cond_11
    move v0, v6

    move/from16 v1, v16

    if-ge v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    move v5, v0

    const/4 v11, 0x1

    sub-int/2addr v5, v11

    if-ge v6, v5, :cond_d

    .line 1551
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_7

    .line 1563
    :cond_12
    move v0, v7

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v7, v5, :cond_8

    .line 1564
    .end local v6           #x:I
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    .line 1594
    .restart local v13       #centerx:I
    .restart local v14       #centery:I
    .restart local v15       #count:I
    :cond_13
    sub-int v24, v13, v15

    .line 1595
    add-int v16, v13, v15

    .line 1596
    sub-int v25, v14, v15

    .line 1597
    add-int v17, v14, v15

    .line 1600
    if-gez v24, :cond_14

    if-gez v25, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    move v5, v0

    move/from16 v0, v16

    move v1, v5

    if-lt v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    move v5, v0

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_9

    .line 1604
    :cond_14
    if-gez v24, :cond_15

    .line 1605
    const/16 v24, 0x0

    .line 1606
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    move v5, v0

    move/from16 v0, v16

    move v1, v5

    if-lt v0, v1, :cond_16

    .line 1607
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v16, v5, v6

    .line 1608
    :cond_16
    if-gez v25, :cond_17

    .line 1609
    const/16 v25, 0x0

    .line 1610
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    move v5, v0

    move/from16 v0, v17

    move v1, v5

    if-lt v0, v1, :cond_18

    .line 1611
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v17, v5, v6

    .line 1614
    :cond_18
    move/from16 v6, v24

    .restart local v6       #x:I
    :goto_9
    move v0, v6

    move/from16 v1, v16

    if-gt v0, v1, :cond_1d

    .line 1615
    move/from16 v7, v25

    :goto_a
    move v0, v7

    move/from16 v1, v17

    if-gt v0, v1, :cond_1b

    .line 1617
    aget-object v5, v27, v7

    aget-boolean v5, v5, v6

    if-nez v5, :cond_1a

    .line 1615
    :cond_19
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_1a
    move-object/from16 v5, p0

    .line 1620
    invoke-virtual/range {v5 .. v10}, Lcom/android/browser/BitmapWebView;->drawTile(IIIILandroid/graphics/Picture;)Lcom/android/browser/BitmapWebView$Tile;

    move-result-object v26

    .line 1622
    .restart local v26       #tile:Lcom/android/browser/BitmapWebView$Tile;
    if-nez v26, :cond_1c

    .line 1624
    const/16 v28, 0x1

    .line 1625
    add-int/lit8 v6, v16, 0x1

    .line 1626
    add-int/lit8 v7, v17, 0x1

    .line 1614
    .end local v26           #tile:Lcom/android/browser/BitmapWebView$Tile;
    :cond_1b
    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 1630
    .restart local v26       #tile:Lcom/android/browser/BitmapWebView$Tile;
    :cond_1c
    aget-object v5, v27, v7

    const/4 v11, 0x0

    aput-boolean v11, v5, v6

    .line 1633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/android/browser/BitmapWebView$Surface;->updateTile(Lcom/android/browser/BitmapWebView$Tile;)V

    .line 1634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    move-object v5, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/browser/BitmapWebView$Tile;->mBoundary:Landroid/graphics/Rect;

    move-object v11, v0

    sget-object v12, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1635
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BitmapWebView;->updateWebViewTexture()V

    .line 1637
    const/4 v5, 0x1

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_19

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v36

    sub-long v36, v36, v22

    const-wide/16 v38, 0x1

    cmp-long v5, v36, v38

    if-lez v5, :cond_19

    .line 1639
    const/16 v28, 0x1

    .line 1640
    add-int/lit8 v6, v16, 0x1

    .line 1641
    add-int/lit8 v7, v17, 0x1

    .line 1642
    goto :goto_b

    .line 1647
    .end local v26           #tile:Lcom/android/browser/BitmapWebView$Tile;
    :cond_1d
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    .line 1660
    .end local v6           #x:I
    .end local v13           #centerx:I
    .end local v14           #centery:I
    .end local v15           #count:I
    :cond_1e
    const/4 v5, 0x1

    goto/16 :goto_0
.end method
