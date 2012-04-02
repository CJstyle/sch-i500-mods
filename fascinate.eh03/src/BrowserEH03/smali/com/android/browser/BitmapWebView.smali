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
    .line 105
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

    .line 338
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 258
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    iput v1, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    .line 261
    iput-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mOnRecalExtraTexture:Z

    .line 262
    const/16 v0, 0x60

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTotalTexNum:I

    .line 268
    iput v3, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinch:F

    .line 269
    iput v3, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinchForExtraTexture:F

    .line 270
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mState:I

    .line 277
    iput-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mTiltebarBitmapUpdated:Z

    .line 290
    iput-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mIsDrawingWebView:Z

    .line 291
    iput-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mDrawFrameFlag:Z

    .line 303
    iput-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mScaling:Z

    .line 304
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    .line 305
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    .line 306
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDx:I

    .line 307
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDy:I

    .line 308
    iput-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mTensionAni:Z

    .line 309
    iput-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mFlinging:Z

    .line 310
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mSnapScrollMode:I

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mTitleBarVisibility:Z

    .line 313
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mTensionX:I

    .line 314
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mTensionY:I

    .line 316
    iput v2, p0, Lcom/android/browser/BitmapWebView;->mScrollDX:F

    iput v2, p0, Lcom/android/browser/BitmapWebView;->mScrollDY:F

    .line 317
    iput-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mDoubleTapping:Z

    .line 321
    iput-object v4, p0, Lcom/android/browser/BitmapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 323
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mPrevPreventDefault:I

    .line 325
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTitleBarHeight:I

    .line 328
    iput-object v4, p0, Lcom/android/browser/BitmapWebView;->mTitleBar:Landroid/view/View;

    .line 330
    iput-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mPaused:Z

    .line 339
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/browser/BitmapWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 344
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 348
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 258
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    .line 261
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mOnRecalExtraTexture:Z

    .line 262
    const/16 v9, 0x60

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mTotalTexNum:I

    .line 268
    const/high16 v9, 0x4080

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinch:F

    .line 269
    const/high16 v9, 0x4080

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinchForExtraTexture:F

    .line 270
    const/4 v9, 0x3

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mState:I

    .line 277
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mTiltebarBitmapUpdated:Z

    .line 290
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mIsDrawingWebView:Z

    .line 291
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mDrawFrameFlag:Z

    .line 303
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mScaling:Z

    .line 304
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    .line 305
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    .line 306
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDx:I

    .line 307
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDy:I

    .line 308
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mTensionAni:Z

    .line 309
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mFlinging:Z

    .line 310
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mSnapScrollMode:I

    .line 312
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mTitleBarVisibility:Z

    .line 313
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mTensionX:I

    .line 314
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mTensionY:I

    .line 316
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mScrollDX:F

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mScrollDY:F

    .line 317
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mDoubleTapping:Z

    .line 321
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 323
    const/4 v9, 0x4

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mPrevPreventDefault:I

    .line 325
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mTitleBarHeight:I

    .line 328
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mTitleBar:Landroid/view/View;

    .line 330
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mPaused:Z

    .line 352
    :try_start_0
    iput-object p1, p0, Lcom/android/browser/BitmapWebView;->mContext:Landroid/content/Context;

    .line 354
    new-instance v9, Lcom/android/browser/BitmapWebView$PrivateHandler;

    invoke-direct {v9, p0}, Lcom/android/browser/BitmapWebView$PrivateHandler;-><init>(Lcom/android/browser/BitmapWebView;)V

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    .line 355
    new-instance v9, Landroid/graphics/Region;

    invoke-direct {v9}, Landroid/graphics/Region;-><init>()V

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    .line 356
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    .line 357
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    .line 358
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mContentsRect:Landroid/graphics/Rect;

    .line 361
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    .line 362
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/browser/BitmapWebView;->mQueueFullTick:J

    .line 363
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/browser/BitmapWebView;->mUpdateTexIgnoreTick:J

    .line 367
    new-instance v9, Landroid/graphics/Region;

    invoke-direct {v9}, Landroid/graphics/Region;-><init>()V

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mValidTextureRegion:Landroid/graphics/Region;

    .line 369
    new-instance v9, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mScrollFilter:Landroid/graphics/DrawFilter;

    .line 370
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9}, Landroid/graphics/Canvas;-><init>()V

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    .line 371
    iget-object v9, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/android/browser/BitmapWebView;->mScrollFilter:Landroid/graphics/DrawFilter;

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 372
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    .line 373
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 374
    iget-object v9, p0, Lcom/android/browser/BitmapWebView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v9, Landroid/util/DisplayMetrics;->density:F

    .line 375
    .local v1, density:F
    iget v9, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinch:F

    mul-float/2addr v9, v1

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinch:F

    .line 376
    iget v9, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinchForExtraTexture:F

    mul-float/2addr v9, v1

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinchForExtraTexture:F

    .line 377
    iget-object v9, p0, Lcom/android/browser/BitmapWebView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 378
    .local v2, displayMetrics:Landroid/util/DisplayMetrics;
    iget v9, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinchForExtraTexture:F

    mul-float v7, v9, v10

    .line 379
    .local v7, width:F
    iget v9, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinchForExtraTexture:F

    mul-float v4, v9, v10

    .line 380
    .local v4, height:F
    const/high16 v9, 0x4380

    div-float v9, v7, v9

    float-to-int v8, v9

    .line 381
    .local v8, widthtile:I
    const/high16 v9, 0x4380

    div-float v9, v4, v9

    float-to-int v5, v9

    .line 382
    .local v5, heighttile:I
    mul-int v9, v8, v5

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mMaxExtraTexNum:I

    .line 383
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mExtraTexNum:I

    .line 384
    const-string v9, "activity"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/app/ActivityManager;

    iput-object p2, p0, Lcom/android/browser/BitmapWebView;->mAM:Landroid/app/ActivityManager;

    .line 385
    new-instance v9, Landroid/widget/Scroller;

    invoke-direct {v9, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mScroller:Landroid/widget/Scroller;

    .line 387
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 388
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v9

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mMaximumFling:I

    .line 389
    const/high16 v9, 0x40a0

    mul-float/2addr v9, v1

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mScrollBarThickness:F

    .line 390
    const/high16 v9, 0x4000

    mul-float/2addr v9, v1

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mScrollBarPadding:F

    .line 391
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    const v10, 0x3fa66666

    invoke-direct {v9, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mTensionAniInterpolatorX:Landroid/view/animation/DecelerateInterpolator;

    .line 392
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    const v10, 0x3fa66666

    invoke-direct {v9, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mTensionAniInterpolatorY:Landroid/view/animation/DecelerateInterpolator;

    .line 394
    const/high16 v9, 0x3fc0

    cmpl-float v9, v1, v9

    if-ltz v9, :cond_0

    .line 396
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mTouchSlopSquare:I

    .line 397
    const/16 v9, 0x8

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mCheckBoardTileSize:I

    .line 403
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    .line 404
    .local v6, slop:I
    mul-int v9, v6, v6

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mTouchSlopSquare:I

    .line 405
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 406
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->createSurface()Lcom/android/browser/BitmapWebView$Surface;

    move-result-object v9

    iput-object v9, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
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

    .line 418
    return-void

    .line 401
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

    .line 408
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

    .line 410
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

    .line 412
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

    .line 1674
    iget v5, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p1

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int v0, v5, v6

    .line 1675
    .local v0, left:I
    iget v5, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p2

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    div-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    .line 1678
    .local v4, top:I
    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/browser/BitmapWebView;->pinLoc(III)I

    move-result v0

    .line 1679
    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/browser/BitmapWebView;->pinLoc(III)I

    move-result v4

    .line 1683
    int-to-float v5, v0

    div-float/2addr v5, v7

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    .line 1684
    .local v2, tilex:I
    int-to-float v5, v4

    div-float/2addr v5, v7

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 1688
    .local v3, tiley:I
    mul-int/lit16 v0, v2, 0x100

    .line 1689
    mul-int/lit16 v4, v3, 0x100

    .line 1691
    new-instance v1, Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    add-int/2addr v6, v4

    invoke-direct {v1, v0, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1694
    .local v1, region:Landroid/graphics/Rect;
    return-object v1
.end method

.method canHandleTouchEvent()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1192
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mBitmapWebViewContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mWebViewContainer:Landroid/view/View;

    if-nez v3, :cond_1

    :cond_0
    move v3, v4

    .line 1203
    :goto_0
    return v3

    .line 1196
    :cond_1
    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mBitmapWebViewContainer:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    .line 1197
    .local v2, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1198
    .local v0, childCount:I
    sub-int v3, v0, v5

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1200
    .local v1, topChild:Landroid/view/View;
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mWebViewContainer:Landroid/view/View;

    if-eq v1, v3, :cond_2

    if-ne v1, p0, :cond_3

    :cond_2
    move v3, v5

    .line 1201
    goto :goto_0

    :cond_3
    move v3, v4

    .line 1203
    goto :goto_0
.end method

.method checkTension()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2265
    invoke-virtual {p0, v3}, Lcom/android/browser/BitmapWebView;->checkTensionAni(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2267
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2268
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v3}, Landroid/webkit/WebView;->transformPlugins(Landroid/graphics/Matrix;Z)V

    .line 2270
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 2271
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeWebViewPriority()V

    .line 2272
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->hide()V

    .line 2274
    :cond_0
    iput v3, p0, Lcom/android/browser/BitmapWebView;->mTensionX:I

    .line 2275
    iput v3, p0, Lcom/android/browser/BitmapWebView;->mTensionY:I

    .line 2276
    return-void
.end method

.method checkTensionAni(Z)Z
    .locals 6
    .parameter "checkonly"

    .prologue
    .line 2121
    const/4 v2, 0x0

    .line 2122
    .local v2, needtensionani:Z
    const/4 v0, 0x0

    .local v0, dx:I
    const/4 v1, 0x0

    .line 2123
    .local v1, dy:I
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    if-gez v3, :cond_3

    .line 2125
    const/4 v2, 0x1

    .line 2126
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    neg-int v0, v3

    .line 2134
    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    if-gez v3, :cond_4

    .line 2136
    const/4 v2, 0x1

    .line 2137
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    neg-int v1, v3

    .line 2145
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    .line 2146
    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BitmapWebView;->startTensionAni(II)V

    .line 2148
    :cond_2
    return v2

    .line 2128
    :cond_3
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    if-le v3, v4, :cond_0

    .line 2130
    const/4 v2, 0x1

    .line 2131
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    add-int/2addr v4, v5

    sub-int v0, v3, v4

    goto :goto_0

    .line 2139
    :cond_4
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    if-le v3, v4, :cond_1

    .line 2141
    const/4 v2, 0x1

    .line 2142
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

    .line 2465
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    if-gt v0, v1, :cond_1

    .line 2466
    const/4 v0, 0x0

    .line 2496
    :cond_0
    :goto_0
    return v0

    .line 2468
    :cond_1
    add-int v0, p1, p2

    .line 2471
    if-gez v0, :cond_3

    .line 2473
    if-gez p2, :cond_2

    .line 2478
    int-to-float v0, p2

    div-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 2480
    :cond_2
    if-lez p2, :cond_5

    .line 2481
    int-to-float v0, p2

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_0

    .line 2484
    :cond_3
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    if-le v0, v1, :cond_5

    .line 2486
    if-lez p2, :cond_4

    .line 2490
    int-to-float v0, p2

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 2492
    :goto_1
    if-gez p2, :cond_0

    .line 2493
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

    .line 2502
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    if-gt v0, v1, :cond_1

    .line 2503
    const/4 v0, 0x0

    .line 2531
    :cond_0
    :goto_0
    return v0

    .line 2505
    :cond_1
    add-int v0, p1, p2

    .line 2508
    if-gez v0, :cond_3

    .line 2510
    if-gez p2, :cond_2

    .line 2514
    int-to-float v0, p2

    div-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 2516
    :cond_2
    if-lez p2, :cond_5

    .line 2517
    int-to-float v0, p2

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_0

    .line 2520
    :cond_3
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    if-le v0, v1, :cond_5

    .line 2522
    if-lez p2, :cond_4

    .line 2526
    int-to-float v0, p2

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 2528
    :goto_1
    if-gez p2, :cond_0

    .line 2529
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

    .line 2305
    iget-boolean v6, p0, Lcom/android/browser/BitmapWebView;->mFlinging:Z

    if-nez v6, :cond_0

    .line 2346
    :goto_0
    return-void

    .line 2308
    :cond_0
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2309
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 2310
    .local v4, left:I
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    .line 2312
    .local v5, top:I
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    .line 2313
    .local v2, finalX:I
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getFinalY()I

    move-result v3

    .line 2317
    .local v3, finalY:I
    if-ne v4, v2, :cond_1

    if-ne v5, v3, :cond_1

    .line 2319
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2320
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->stopFling()V

    .line 2321
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->checkTension()V

    goto :goto_0

    .line 2326
    :cond_1
    iget v6, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    sub-int v0, v4, v6

    .line 2327
    .local v0, dx:I
    iget v6, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    sub-int v1, v5, v6

    .line 2329
    .local v1, dy:I
    iget v6, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    invoke-virtual {p0, v6, v0}, Lcom/android/browser/BitmapWebView;->checkTensionX(II)I

    move-result v0

    .line 2330
    iget v6, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    invoke-virtual {p0, v6, v1}, Lcom/android/browser/BitmapWebView;->checkTensionY(II)I

    move-result v1

    .line 2332
    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BitmapWebView;->scrollPlugins(II)V

    .line 2333
    iget v6, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    add-int/2addr v6, v0

    iget v7, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v6, v7}, Lcom/android/browser/BitmapWebView;->scroll(II)V

    .line 2335
    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    invoke-virtual {p0, v8, v8, v6, v7}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    .line 2337
    const-wide/16 v6, 0x10

    invoke-virtual {p0, v6, v7}, Lcom/android/browser/BitmapWebView;->requestFlingIng(J)V

    goto :goto_0

    .line 2342
    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v2           #finalX:I
    .end local v3           #finalY:I
    .end local v4           #left:I
    .end local v5           #top:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->stopFling()V

    .line 2343
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->checkTension()V

    goto :goto_0
.end method

.method createSurface()Lcom/android/browser/BitmapWebView$Surface;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 427
    const-string v1, "BitmapWebView"

    const-string v2, "createSurface"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-instance v0, Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/browser/BitmapWebViewSurface3D;-><init>(Landroid/content/Context;Lcom/android/browser/BitmapWebView;)V

    .line 446
    .local v0, surfaceView:Landroid/view/SurfaceView;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BitmapWebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    check-cast v0, Lcom/android/browser/BitmapWebView$Surface;

    .end local v0           #surfaceView:Landroid/view/SurfaceView;
    return-object v0
.end method

.method public debug()V
    .locals 0

    .prologue
    .line 3165
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->saveTextureBitmap()V

    .line 3166
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

    .line 684
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scale:F

    div-float v4, v5, p1

    .line 685
    .local v4, ratio:F
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterX:F

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    int-to-float v6, v6

    add-float v0, v5, v6

    .line 686
    .local v0, cx:F
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterY:F

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    int-to-float v6, v6

    add-float v1, v5, v6

    .line 688
    .local v1, cy:F
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scale:F

    cmpl-float v5, p1, v5

    if-nez v5, :cond_0

    .line 760
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 694
    const/4 v5, 0x2

    new-array v2, v5, [F

    .line 695
    .local v2, p:[F
    aput v0, v2, v7

    .line 696
    aput v1, v2, v8

    .line 698
    const/4 v5, 0x2

    new-array v3, v5, [F

    .line 699
    .local v3, pz:[F
    aput v9, v3, v7

    .line 700
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v8

    .line 702
    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 703
    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 707
    aget v5, v2, v7

    aget v6, v3, v7

    sub-float/2addr v5, v6

    iget v6, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterX:F

    sub-float/2addr v5, v6

    aput v5, v2, v7

    .line 708
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

    .line 711
    aget v5, v2, v7

    iget v6, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scrollX:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mDTEndScrollX:F

    .line 712
    aget v5, v2, v8

    iget v6, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scrollY:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mDTEndScrollY:F

    .line 713
    iput v9, p0, Lcom/android/browser/BitmapWebView;->mDTStartScrollX:F

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mScrollDX:F

    .line 714
    iput v9, p0, Lcom/android/browser/BitmapWebView;->mDTStartScrollY:F

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mScrollDY:F

    .line 720
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->show()V

    .line 723
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scale:F

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mDTScale:F

    .line 724
    iput v4, p0, Lcom/android/browser/BitmapWebView;->mDTEndScale:F

    .line 725
    div-float v5, v11, v4

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mDTInvEndZoomScale:F

    .line 726
    iput v11, p0, Lcom/android/browser/BitmapWebView;->mDTStartScale:F

    .line 727
    iput v9, p0, Lcom/android/browser/BitmapWebView;->mDTCount:F

    .line 728
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterX:F

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCX:F

    .line 729
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterY:F

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCY:F

    .line 731
    iget v5, p0, Lcom/android/browser/BitmapWebView;->mDTEndScale:F

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mDTStartScale:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v10

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mDTScaleDelta:F

    .line 732
    iget v5, p0, Lcom/android/browser/BitmapWebView;->mDTEndScrollX:F

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mDTStartScrollX:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v10

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mDTScrollXDelta:F

    .line 733
    iget v5, p0, Lcom/android/browser/BitmapWebView;->mDTEndScrollY:F

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mDTStartScrollY:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v10

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mDTScrollYDelta:F

    .line 737
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterX:F

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterX:F

    .line 738
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterY:F

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterY:F

    .line 743
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/browser/BitmapWebView;->mDTStartTick:J

    .line 744
    iput-boolean v8, p0, Lcom/android/browser/BitmapWebView;->mDoubleTapping:Z

    .line 745
    iget v5, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCX:F

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCY:F

    iget v7, p0, Lcom/android/browser/BitmapWebView;->mDTStartScale:F

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    .line 749
    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 750
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
    .line 785
    const/4 v0, 0x0

    return v0
.end method

.method public doFling(II)Z
    .locals 1
    .parameter "vx"
    .parameter "vy"

    .prologue
    .line 804
    const/4 v0, 0x0

    return v0
.end method

.method doTensionAni()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    .line 2212
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDx:I

    if-nez v4, :cond_0

    .line 2214
    const/high16 v2, 0x3f80

    .line 2221
    .local v2, scalex:F
    :goto_0
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDy:I

    if-nez v4, :cond_1

    .line 2223
    const/high16 v3, 0x3f80

    .line 2232
    .local v3, scaley:F
    :goto_1
    cmpl-float v4, v2, v7

    if-ltz v4, :cond_2

    cmpl-float v4, v3, v7

    if-ltz v4, :cond_2

    .line 2234
    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mTensionAni:Z

    .line 2235
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 2236
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5, v9}, Landroid/webkit/WebView;->transformPlugins(Landroid/graphics/Matrix;Z)V

    .line 2237
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    invoke-virtual {v4, v5, v6}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 2238
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->resumeWebViewPriority()V

    .line 2239
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->hide()V

    .line 2261
    :goto_2
    return-void

    .line 2218
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

    .line 2227
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

    .line 2244
    :cond_2
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDx:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2245
    .local v0, dx:I
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDy:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 2248
    .local v1, dy:I
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    sub-int v4, v0, v4

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    sub-int v5, v1, v5

    invoke-virtual {p0, v4, v5}, Lcom/android/browser/BitmapWebView;->scrollPlugins(II)V

    .line 2249
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/browser/BitmapWebView;->scroll(II)V

    .line 2251
    const/4 v4, 0x1

    invoke-virtual {p0, v8, v8, v7, v4}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    .line 2253
    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    .line 2254
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    .line 2256
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

    .line 611
    iget-boolean v3, p0, Lcom/android/browser/BitmapWebView;->mDoubleTapping:Z

    if-nez v3, :cond_0

    .line 675
    :goto_0
    return-void

    .line 619
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/browser/BitmapWebView;->mDTStartTick:J

    sub-long/2addr v3, v5

    long-to-int v0, v3

    .line 620
    .local v0, interval:I
    const/16 v3, 0x3e8

    if-ge v0, v3, :cond_2

    .line 622
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getDrawFrameFlag()Z

    move-result v3

    if-ne v3, v9, :cond_1

    .line 625
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->requestDoubleTapAni()V

    goto :goto_0

    .line 629
    :cond_1
    int-to-float v3, v0

    const/high16 v4, 0x447a

    div-float v2, v3, v4

    .line 630
    .local v2, ratio:F
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mDTInvEndZoomScale:F

    sub-float/2addr v3, v7

    mul-float/2addr v3, v2

    add-float/2addr v3, v7

    div-float v1, v7, v3

    .line 634
    .local v1, newScale:F
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mDTStartScrollX:F

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mDTEndScrollX:F

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mDTStartScrollX:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/browser/BitmapWebView;->mScrollDX:F

    .line 635
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mDTStartScrollY:F

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mDTEndScrollY:F

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mDTStartScrollY:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/browser/BitmapWebView;->mScrollDY:F

    .line 638
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCX:F

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCY:F

    invoke-virtual {p0, v3, v4, v1, v10}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    .line 641
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

    .line 646
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mScrollDX:F

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mScrollDY:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 647
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4, v9}, Landroid/webkit/WebView;->transformPlugins(Landroid/graphics/Matrix;Z)V

    .line 649
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->requestDoubleTapAni()V

    goto :goto_0

    .line 653
    .end local v1           #newScale:F
    .end local v2           #ratio:F
    :cond_2
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mDTEndScrollX:F

    iput v3, p0, Lcom/android/browser/BitmapWebView;->mScrollDX:F

    .line 654
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mDTEndScrollY:F

    iput v3, p0, Lcom/android/browser/BitmapWebView;->mScrollDY:F

    .line 656
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCX:F

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCY:F

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mDTEndScale:F

    invoke-virtual {p0, v3, v4, v5, v9}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    .line 658
    const-string v3, "BitmapWebView"

    const-string v4, "doubleTapAni done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
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

    .line 666
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mScrollDX:F

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mScrollDY:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 667
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4, v9}, Landroid/webkit/WebView;->transformPlugins(Landroid/graphics/Matrix;Z)V

    .line 669
    iput-boolean v10, p0, Lcom/android/browser/BitmapWebView;->mDoubleTapping:Z

    .line 670
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v3, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 672
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

    .line 1239
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    mul-int/lit16 v7, p1, 0x100

    add-int v0, v6, v7

    .line 1240
    .local v0, left:I
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    mul-int/lit16 v7, p2, 0x100

    add-int v4, v6, v7

    .line 1242
    .local v4, top:I
    add-int v6, p1, p3

    iget v7, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    rem-int v1, v6, v7

    .line 1243
    .local v1, targetx:I
    add-int v6, p2, p4

    iget v7, p0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    rem-int v2, v6, v7

    .line 1245
    .local v2, targety:I
    new-instance v5, Landroid/graphics/Rect;

    add-int/lit16 v6, v0, 0x100

    add-int/lit16 v7, v4, 0x100

    invoke-direct {v5, v0, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1247
    .local v5, updateRegion:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v6, v1, v2, v5}, Lcom/android/browser/BitmapWebView$Surface;->getTile(IILandroid/graphics/Rect;)Lcom/android/browser/BitmapWebView$Tile;

    move-result-object v3

    .line 1248
    .local v3, tile:Lcom/android/browser/BitmapWebView$Tile;
    if-nez v3, :cond_1

    .line 1250
    iget-wide v6, p0, Lcom/android/browser/BitmapWebView;->mQueueFullTick:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 1251
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/browser/BitmapWebView;->mQueueFullTick:J

    .line 1255
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->updateWebViewTexture()V

    .line 1257
    const/4 v6, 0x0

    .line 1297
    :goto_0
    return-object v6

    .line 1261
    :cond_1
    iput-wide v8, p0, Lcom/android/browser/BitmapWebView;->mQueueFullTick:J

    .line 1266
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v7, v3, Lcom/android/browser/BitmapWebView$Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1268
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 1270
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    neg-int v7, v0

    int-to-float v7, v7

    neg-int v8, v4

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1283
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/browser/BitmapWebView;->mIsDrawingWebView:Z

    .line 1284
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    .line 1285
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/browser/BitmapWebView;->mIsDrawingWebView:Z

    .line 1295
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    move-object v6, v3

    .line 1297
    goto :goto_0
.end method

.method fling(Landroid/view/VelocityTracker;II)V
    .locals 11
    .parameter "tracker"
    .parameter "vx"
    .parameter "vy"

    .prologue
    .line 2063
    if-eqz p1, :cond_0

    .line 2065
    const/16 v0, 0x3e8

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mMaximumFling:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2066
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int p2, v0

    .line 2067
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int p3, v0

    .line 2079
    :cond_0
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    float-to-int v10, v0

    .line 2080
    .local v10, flingMaxW:I
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    float-to-int v9, v0

    .line 2083
    .local v9, flingMaxH:I
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    sub-int v5, v0, v10

    .line 2084
    .local v5, minX:I
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistX:I

    neg-int v0, v0

    if-ge v5, v0, :cond_1

    .line 2085
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistX:I

    neg-int v5, v0

    .line 2087
    :cond_1
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    add-int v6, v0, v10

    .line 2088
    .local v6, maxX:I
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistX:I

    add-int/2addr v0, v1

    if-le v6, v0, :cond_2

    .line 2089
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistX:I

    add-int v6, v0, v1

    .line 2091
    :cond_2
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    sub-int v7, v0, v9

    .line 2092
    .local v7, minY:I
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistY:I

    neg-int v0, v0

    if-ge v7, v0, :cond_3

    .line 2093
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistY:I

    neg-int v7, v0

    .line 2095
    :cond_3
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    add-int v8, v0, v9

    .line 2096
    .local v8, maxY:I
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistY:I

    add-int/2addr v0, v1

    if-le v8, v0, :cond_4

    .line 2097
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistY:I

    add-int v8, v0, v1

    .line 2100
    :cond_4
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mSnapScrollMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 2101
    const/4 p3, 0x0

    .line 2102
    :cond_5
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mSnapScrollMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 2103
    const/4 p2, 0x0

    .line 2107
    :cond_6
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    neg-int v3, p2

    neg-int v4, p3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 2110
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->show()V

    .line 2112
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    .line 2114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mFlinging:Z

    .line 2115
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BitmapWebView;->requestFlingIng(J)V

    .line 2116
    return-void
.end method

.method getBGBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 3090
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3091
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 3092
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
    .line 825
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterX:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    .prologue
    .line 829
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterY:F

    return v0
.end method

.method getCheckerBoardBitmap()Landroid/graphics/Bitmap;
    .locals 15

    .prologue
    .line 2863
    const/4 v0, 0x0

    .line 2865
    if-nez v0, :cond_0

    .line 2866
    const/16 v0, 0x40

    const/16 v1, 0x40

    sget-object v2, Lcom/android/browser/BitmapWebView;->TEXTURE_FORMAT:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2868
    :cond_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2869
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 2870
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2871
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2873
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 2874
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2875
    const v4, -0x333334

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2879
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2881
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2882
    const/4 v7, 0x0

    move v14, v7

    move v7, v5

    move v5, v14

    :goto_0
    const/16 v8, 0x40

    iget v9, p0, Lcom/android/browser/BitmapWebView;->mCheckBoardTileSize:I

    div-int/2addr v8, v9

    if-ge v5, v8, :cond_5

    .line 2883
    const/4 v8, 0x0

    move v14, v8

    move v8, v6

    move v6, v14

    :goto_1
    const/16 v9, 0x40

    iget v10, p0, Lcom/android/browser/BitmapWebView;->mCheckBoardTileSize:I

    div-int/2addr v9, v10

    if-ge v6, v9, :cond_4

    .line 2886
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

    .line 2889
    rem-int/lit8 v9, v7, 0x2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 2891
    rem-int/lit8 v9, v8, 0x2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    move-object v9, v2

    .line 2906
    :goto_2
    invoke-virtual {v1, v4, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2883
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    move-object v9, v3

    .line 2894
    goto :goto_2

    .line 2899
    :cond_2
    rem-int/lit8 v9, v8, 0x2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    move-object v9, v3

    .line 2900
    goto :goto_2

    :cond_3
    move-object v9, v2

    .line 2902
    goto :goto_2

    .line 2882
    :cond_4
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v8

    goto :goto_0

    .line 2910
    :cond_5
    return-object v0
.end method

.method declared-synchronized getDrawFrameFlag()Z
    .locals 1

    .prologue
    .line 2920
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
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2982
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getState()I

    move-result v0

    .line 2983
    if-eq v0, v7, :cond_0

    .line 2985
    const-string v1, "BitmapWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "draw : STATUS is not OK, status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 3085
    :goto_0
    return v0

    .line 2989
    :cond_0
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    if-nez v0, :cond_2

    :cond_1
    move v0, v8

    .line 2990
    goto :goto_0

    .line 2992
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mValidTextureRegion:Landroid/graphics/Region;

    monitor-enter v0

    .line 2994
    :try_start_0
    iget-object v1, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->validRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mValidTextureRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 2995
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2997
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2998
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2999
    iget v2, p0, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_5

    .line 3001
    iget v2, p0, Lcom/android/browser/BitmapWebView;->mScrollDX:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mScrollDY:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_4

    .line 3003
    :cond_3
    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3020
    :goto_1
    iget-object v2, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->validRegion:Landroid/graphics/Region;

    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 3022
    new-instance v2, Landroid/graphics/RegionIterator;

    iget-object v3, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->validRegion:Landroid/graphics/Region;

    invoke-direct {v2, v3}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 3023
    iget-object v3, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->validRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->isComplex()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3025
    iget-object v2, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->validRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3042
    :goto_2
    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 3043
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-ne v2, v7, :cond_9

    .line 3045
    iput-boolean v8, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawBG:Z

    .line 3046
    iput-boolean v8, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawCB:Z

    :goto_3
    move v0, v7

    .line 3085
    goto :goto_0

    .line 2995
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3008
    :cond_4
    const/high16 v2, 0x3f80

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    div-float/2addr v2, v3

    .line 3009
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterX:F

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterY:F

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 3010
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 3011
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 3012
    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 3018
    :cond_5
    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 3031
    :cond_6
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 3033
    :cond_7
    :goto_4
    invoke-virtual {v2, v0}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3035
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int/2addr v5, v6

    if-ge v4, v5, :cond_7

    .line 3036
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4

    .line 3039
    :cond_8
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 3050
    :cond_9
    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-ne v2, v7, :cond_b

    .line 3052
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mContentsRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3053
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 3054
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-ne v0, v7, :cond_a

    .line 3056
    iput-boolean v8, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawBG:Z

    .line 3057
    iput-boolean v8, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawCB:Z

    goto :goto_3

    .line 3061
    :cond_a
    iput-boolean v8, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawBG:Z

    .line 3062
    iput-boolean v7, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawCB:Z

    goto/16 :goto_3

    .line 3067
    :cond_b
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mContentsRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3068
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 3070
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-ne v0, v7, :cond_c

    .line 3072
    iput-boolean v7, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawBG:Z

    .line 3073
    iput-boolean v8, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawCB:Z

    goto/16 :goto_3

    .line 3077
    :cond_c
    iput-boolean v7, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawBG:Z

    .line 3078
    iput-boolean v7, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawCB:Z

    goto/16 :goto_3
.end method

.method public getFlingFactor()F
    .locals 1

    .prologue
    .line 820
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getPluginMode()I
    .locals 1

    .prologue
    .line 838
    const/4 v0, 0x2

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 833
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    return v0
.end method

.method getState()I
    .locals 7

    .prologue
    .line 459
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 472
    .local v1, tick:J
    iget-wide v3, p0, Lcom/android/browser/BitmapWebView;->mQueueFullTick:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/android/browser/BitmapWebView;->mQueueFullTick:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x9c4

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 473
    const/4 v0, 0x7

    .line 480
    .local v0, status:I
    :goto_0
    return v0

    .line 476
    .end local v0           #status:I
    :cond_0
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mState:I

    .restart local v0       #status:I
    goto :goto_0
.end method

.method getTitleBarHeight()I
    .locals 1

    .prologue
    .line 3100
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTitleBarHeight:I

    if-gez v0, :cond_0

    .line 3101
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTitleBarHeight:I

    .line 3103
    :cond_0
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTitleBarHeight:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 2375
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mVisible:Z

    if-nez v0, :cond_0

    .line 2385
    :goto_0
    return-void

    .line 2378
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mVisible:Z

    .line 2380
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 2381
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 2382
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method initWebViewVariables(ZZ)Z
    .locals 19
    .parameter "force"
    .parameter "forceRearrange"

    .prologue
    .line 1701
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BitmapWebView;->getState()I

    move-result v9

    .line 1710
    .local v9, state:I
    const/4 v13, 0x1

    if-eq v9, v13, :cond_0

    const/4 v13, 0x4

    if-eq v9, v13, :cond_0

    .line 1713
    const/4 v13, 0x0

    .line 1797
    :goto_0
    return v13

    .line 1716
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    move-object v13, v0

    if-nez v13, :cond_1

    const/4 v13, 0x0

    goto :goto_0

    .line 1718
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v4

    .line 1719
    .local v4, contWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v3

    .line 1721
    .local v3, contHeight:I
    if-eqz v4, :cond_2

    if-nez v3, :cond_3

    .line 1722
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 1724
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/webkit/WebView;->getWidth()I

    move-result v11

    .line 1725
    .local v11, viewWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/webkit/WebView;->getHeight()I

    move-result v10

    .line 1727
    .local v10, viewHeight:I
    if-eqz v11, :cond_4

    if-nez v10, :cond_5

    .line 1728
    :cond_4
    const/4 v13, 0x0

    goto :goto_0

    .line 1730
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/webkit/WebView;->getScale()F

    move-result v13

    int-to-float v14, v4

    mul-float/2addr v13, v14

    float-to-int v12, v13

    .line 1731
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

    .line 1733
    .local v5, height:I
    if-ge v12, v11, :cond_6

    .line 1734
    move v12, v11

    .line 1735
    :cond_6
    if-ge v5, v10, :cond_7

    .line 1736
    move v5, v10

    .line 1739
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

    .line 1742
    const/4 v13, 0x0

    goto :goto_0

    .line 1747
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    move v7, v0

    .line 1748
    .local v7, oldContentsWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    move v6, v0

    .line 1752
    .local v6, oldContentsHeight:I
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    .line 1753
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    .line 1754
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    .line 1755
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    .line 1756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/webkit/WebView;->getScrollX()I

    move-result v13

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/webkit/WebView;->getScrollY()I

    move-result v13

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BitmapWebView;->mViewTop:I

    .line 1761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/webkit/WebView;->getProgress()I

    move-result v13

    const/16 v14, 0x64

    if-ge v13, v14, :cond_c

    .line 1762
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BitmapWebView;->mAfterLoadFinishedCount:I

    .line 1766
    :goto_1
    const/4 v8, 0x0

    .line 1767
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

    .line 1772
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BitmapWebView;->reArrangeTextures()Z

    move-result v8

    .line 1776
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

    .line 1791
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

    .line 1792
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

    .line 1794
    const/4 v13, 0x1

    if-ne v8, v13, :cond_b

    .line 1795
    new-instance v13, Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/browser/BitmapWebView;->requestUpdateContents(Landroid/graphics/Region;)V

    .line 1797
    :cond_b
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1764
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
    .line 935
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mIsDrawingWebView:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 845
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mVisible:Z

    return v0
.end method

.method onDestroy()V
    .locals 1

    .prologue
    .line 2954
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0}, Lcom/android/browser/BitmapWebView$Surface;->destroy()V

    .line 2955
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2956
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2959
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 2961
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2963
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BitmapWebView;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    .line 2966
    :cond_1
    return-void

    .line 2961
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method onDrawFinished()V
    .locals 0

    .prologue
    .line 1161
    return-void
.end method

.method public onNewScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8
    .parameter "detector"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 850
    iget-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mScaling:Z

    if-nez v1, :cond_0

    move v1, v7

    .line 906
    :goto_0
    return v1

    .line 853
    :cond_0
    const/4 v0, 0x0

    .line 864
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

    .line 868
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3c23d70a

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    .line 871
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 873
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    const/high16 v2, 0x3fa0

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 882
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

    .line 883
    goto :goto_0

    .line 877
    :cond_2
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1

    .line 885
    :cond_3
    iput v0, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    .line 888
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mBeginScale:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    .line 891
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterX:F

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterY:F

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    invoke-virtual {p0, v1, v2, v3, v5}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    .line 894
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

    .line 899
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v7}, Landroid/webkit/WebView;->transformPlugins(Landroid/graphics/Matrix;Z)V

    move v1, v7

    .line 903
    goto/16 :goto_0

    :cond_4
    move v1, v5

    .line 906
    goto/16 :goto_0
.end method

.method public onPageFinished(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 940
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BitmapWebView;->initWebViewVariables(ZZ)Z

    .line 942
    return-void
.end method

.method public onPageStarted(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 948
    return-void
.end method

.method onPaused()V
    .locals 1

    .prologue
    .line 2934
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0}, Lcom/android/browser/BitmapWebView$Surface;->onPaused()V

    .line 2935
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebView;->setState(I)V

    .line 2936
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->hide()V

    .line 2937
    return-void
.end method

.method onResumed()V
    .locals 1

    .prologue
    .line 2948
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebView;->setState(I)V

    .line 2949
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0}, Lcom/android/browser/BitmapWebView$Surface;->onResumed()V

    .line 2950
    return-void
.end method

.method public onScale(Landroid/webkit/OnPinchZoomListener$ZoomInfo;)Z
    .locals 1
    .parameter "zoomInfo"

    .prologue
    .line 952
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

    .line 960
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->canHandleTouchEvent()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    .line 1003
    :goto_0
    return v0

    .line 963
    :cond_0
    iput p3, p0, Lcom/android/browser/BitmapWebView;->mMinScale:F

    .line 964
    iput p2, p0, Lcom/android/browser/BitmapWebView;->mMaxScale:F

    .line 966
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mMinScale:F

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mMaxScale:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    move v0, v3

    .line 967
    goto :goto_0

    .line 969
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

    .line 970
    goto :goto_0

    .line 973
    :cond_3
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 974
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->transformPlugins(Landroid/graphics/Matrix;Z)V

    .line 976
    iput-boolean v3, p0, Lcom/android/browser/BitmapWebView;->mScaling:Z

    .line 978
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterX:F

    .line 979
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterY:F

    .line 983
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    .line 984
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScale()F

    move-result v0

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mBeginScale:F

    .line 993
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->show()V

    .line 996
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScale()F

    move-result v0

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    .line 1000
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterX:F

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterY:F

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    move v0, v3

    .line 1003
    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4
    .parameter "detector"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1010
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mScaling:Z

    if-nez v0, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return-void

    .line 1012
    :cond_1
    iput-boolean v3, p0, Lcom/android/browser/BitmapWebView;->mScaling:Z

    .line 1014
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0}, Lcom/android/browser/BitmapWebView$Surface;->stopDraw()V

    .line 1016
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->hide()V

    .line 1024
    invoke-virtual {p0, v2, v2}, Lcom/android/browser/BitmapWebView;->initWebViewVariables(ZZ)Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1026
    new-instance v0, Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0, v3}, Lcom/android/browser/BitmapWebView;->updateWebViewTextureBitmap(Landroid/graphics/Region;Z)Z

    .line 1036
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1037
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

    .line 912
    if-ne p1, p3, :cond_1

    if-ne p2, p4, :cond_1

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mScaling:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mDoubleTapping:Z

    if-eq v0, v1, :cond_0

    .line 923
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/BitmapWebView;->scroll(II)V

    goto :goto_0
.end method

.method public onUpdateContents(Landroid/graphics/Region;)V
    .locals 10
    .parameter "dirtyRegion"

    .prologue
    const/4 v9, 0x1

    .line 1044
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1045
    .local v3, updateRect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/RegionIterator;

    invoke-direct {v0, p1}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 1046
    .local v0, iter:Landroid/graphics/RegionIterator;
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    .line 1047
    .local v1, scaleX:F
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScale()F

    move-result v2

    .line 1049
    .local v2, scaleY:F
    :goto_0
    invoke-virtual {v0, v3}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1051
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

    .line 1056
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_0

    .line 1059
    :cond_0
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1060
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1062
    return-void
.end method

.method public onWebViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1073
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

    .line 2637
    .line 2639
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2640
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 2641
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 2645
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v3, v10, :cond_0

    .line 2647
    iput v4, p0, Lcom/android/browser/BitmapWebView;->mLastTouchX:F

    .line 2648
    iput v4, p0, Lcom/android/browser/BitmapWebView;->mLastTouchY:F

    move v0, v9

    .line 2856
    :goto_0
    return v0

    .line 2652
    :cond_0
    packed-switch v0, :pswitch_data_0

    move v0, v9

    goto :goto_0

    .line 2655
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mTouchEventProcessing:Z

    if-nez v0, :cond_1

    move v0, v9

    .line 2658
    goto :goto_0

    .line 2661
    :cond_1
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mLastTouchX:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/browser/BitmapWebView;->mLastTouchY:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    .line 2666
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mLastTouchX:F

    .line 2667
    iput v2, p0, Lcom/android/browser/BitmapWebView;->mLastTouchY:F

    move v0, v10

    .line 2668
    goto :goto_0

    .line 2671
    :cond_2
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mLastTouchX:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 2672
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mLastTouchY:F

    sub-float/2addr v3, v2

    float-to-int v3, v3

    .line 2677
    iget-boolean v4, p0, Lcom/android/browser/BitmapWebView;->mMoveFirst:Z

    if-nez v4, :cond_3

    mul-int v4, v0, v0

    mul-int v5, v3, v3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTouchSlopSquare:I

    if-ge v4, v5, :cond_3

    move v0, v10

    .line 2680
    goto :goto_0

    .line 2683
    :cond_3
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-boolean v4, v4, Landroid/webkit/WebView;->mStopSelection:Z

    if-nez v4, :cond_4

    move v0, v9

    .line 2686
    goto :goto_0

    .line 2691
    :cond_4
    iget-boolean v4, p0, Lcom/android/browser/BitmapWebView;->mDragConfirmed:Z

    if-nez v4, :cond_7

    .line 2694
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mPrevPreventDefault:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 2696
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget v4, v4, Landroid/webkit/WebView;->mPreventDefault:I

    if-eq v4, v10, :cond_5

    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget v4, v4, Landroid/webkit/WebView;->mPreventDefault:I

    if-ne v4, v11, :cond_6

    :cond_5
    move v0, v9

    .line 2700
    goto :goto_0

    .line 2704
    :cond_6
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget v4, v4, Landroid/webkit/WebView;->mPreventDefault:I

    if-eq v4, v10, :cond_7

    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget v4, v4, Landroid/webkit/WebView;->mPreventDefault:I

    if-eq v4, v11, :cond_7

    .line 2709
    iput-boolean v10, p0, Lcom/android/browser/BitmapWebView;->mDragConfirmed:Z

    .line 2710
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget v4, v4, Landroid/webkit/WebView;->mPreventDefault:I

    iput v4, p0, Lcom/android/browser/BitmapWebView;->mPrevPreventDefault:I

    .line 2712
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->cancelTouch()V

    .line 2713
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->reduceWebViewPriority()V

    .line 2718
    :cond_7
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget v4, v4, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_9

    .line 2720
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mVisible:Z

    if-eqz v0, :cond_8

    .line 2722
    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mMoveFirst:Z

    .line 2723
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2724
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v9}, Landroid/webkit/WebView;->transformPlugins(Landroid/graphics/Matrix;Z)V

    .line 2725
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->hide()V

    .line 2727
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BitmapWebView;->scroll(II)V

    .line 2730
    :cond_8
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeWebViewPriority()V

    move v0, v9

    .line 2731
    goto/16 :goto_0

    .line 2735
    :cond_9
    iget-boolean v4, p0, Lcom/android/browser/BitmapWebView;->mMoveFirst:Z

    if-nez v4, :cond_b

    .line 2737
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 2738
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 2739
    int-to-float v6, v4

    const/high16 v7, 0x4000

    int-to-float v8, v5

    mul-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_c

    .line 2740
    iput v11, p0, Lcom/android/browser/BitmapWebView;->mSnapScrollMode:I

    .line 2745
    :cond_a
    :goto_1
    iput-boolean v10, p0, Lcom/android/browser/BitmapWebView;->mMoveFirst:Z

    .line 2746
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->show()V

    .line 2751
    :cond_b
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iput-boolean v10, v4, Landroid/webkit/WebView;->mUserScroll:Z

    .line 2756
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mSnapScrollMode:I

    if-ne v4, v11, :cond_d

    move v3, v9

    .line 2762
    :goto_2
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mSnapScrollMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_e

    move v0, v9

    .line 2768
    :goto_3
    invoke-virtual {p0, v0, v3}, Lcom/android/browser/BitmapWebView;->scrollPlugins(II)V

    .line 2769
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    add-int/2addr v0, v4

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v3}, Lcom/android/browser/BitmapWebView;->scroll(II)V

    .line 2771
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v12, v12, v0, v10}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    .line 2777
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mLastTouchX:F

    .line 2778
    iput v2, p0, Lcom/android/browser/BitmapWebView;->mLastTouchY:F

    .line 2779
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2781
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mDragConfirmed:Z

    if-eqz v0, :cond_f

    move v0, v10

    .line 2782
    goto/16 :goto_0

    .line 2741
    :cond_c
    int-to-float v5, v5

    const/high16 v6, 0x4000

    int-to-float v4, v4

    mul-float/2addr v4, v6

    cmpl-float v4, v5, v4

    if-lez v4, :cond_a

    .line 2742
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/browser/BitmapWebView;->mSnapScrollMode:I

    goto :goto_1

    .line 2759
    :cond_d
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    invoke-virtual {p0, v4, v3}, Lcom/android/browser/BitmapWebView;->checkTensionY(II)I

    move-result v3

    goto :goto_2

    .line 2765
    :cond_e
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    invoke-virtual {p0, v4, v0}, Lcom/android/browser/BitmapWebView;->checkTensionX(II)I

    move-result v0

    goto :goto_3

    :cond_f
    move v0, v9

    .line 2786
    goto/16 :goto_0

    .line 2789
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->canHandleTouchEvent()Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v9

    .line 2792
    goto/16 :goto_0

    .line 2795
    :cond_10
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->stopFling()V

    .line 2796
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->stopTension()V

    .line 2797
    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mMoveFirst:Z

    .line 2798
    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mDragConfirmed:Z

    .line 2799
    iput v9, p0, Lcom/android/browser/BitmapWebView;->mSnapScrollMode:I

    .line 2800
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2801
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mLastTouchX:F

    .line 2802
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mLastTouchY:F

    .line 2803
    iput-boolean v10, p0, Lcom/android/browser/BitmapWebView;->mTouchEventProcessing:Z

    move v0, v9

    .line 2806
    goto/16 :goto_0

    .line 2809
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mTouchEventProcessing:Z

    if-nez v0, :cond_11

    move v0, v9

    .line 2812
    goto/16 :goto_0

    .line 2815
    :cond_11
    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mTouchEventProcessing:Z

    .line 2817
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mMoveFirst:Z

    if-ne v0, v10, :cond_12

    .line 2821
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2822
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v0, v9, v9}, Lcom/android/browser/BitmapWebView;->fling(Landroid/view/VelocityTracker;II)V

    .line 2824
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->cancelTouch()V

    .line 2827
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->sendTextSelectionMoveEvent()V

    move v0, v9

    goto/16 :goto_0

    :cond_12
    move v0, v9

    .line 2850
    goto/16 :goto_0

    .line 2652
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
    .line 1095
    const/4 v0, 0x0

    return v0
.end method

.method pause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2925
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0}, Lcom/android/browser/BitmapWebView$Surface;->pause()V

    .line 2926
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2927
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2928
    iput-boolean v2, p0, Lcom/android/browser/BitmapWebView;->mPaused:Z

    .line 2929
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebView;->setState(I)V

    .line 2930
    return-void
.end method

.method pinLoc(III)I
    .locals 1
    .parameter "x"
    .parameter "textureMax"
    .parameter "contentsMax"

    .prologue
    .line 1658
    if-ge p3, p2, :cond_1

    .line 1660
    const/4 p1, 0x0

    .line 1668
    :cond_0
    :goto_0
    return p1

    .line 1661
    :cond_1
    if-gez p1, :cond_2

    .line 1663
    const/4 p1, 0x0

    goto :goto_0

    .line 1664
    :cond_2
    add-int v0, p1, p2

    if-le v0, p3, :cond_0

    .line 1666
    sub-int p1, p3, p2

    goto :goto_0
.end method

.method declared-synchronized reArrangeTextures()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1812
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    .line 1813
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    .line 1820
    const/high16 v0, 0x4020

    .line 1821
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    if-le v1, v2, :cond_0

    .line 1822
    const/high16 v0, 0x3fc0

    .line 1824
    :cond_0
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1825
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    if-le v0, v1, :cond_1

    .line 1826
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    .line 1827
    :cond_1
    div-int/lit16 v1, v0, 0x100

    .line 1828
    rem-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    .line 1829
    add-int/lit8 v0, v1, 0x1

    .line 1831
    :goto_0
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    div-int/lit16 v1, v1, 0x100

    .line 1832
    iget v2, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    rem-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_2

    .line 1833
    add-int/lit8 v1, v1, 0x1

    .line 1835
    :cond_2
    iget v2, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    mul-int/lit8 v2, v2, 0x6

    div-int/lit16 v2, v2, 0x100

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1836
    if-nez v1, :cond_3

    move v1, v5

    .line 1840
    :cond_3
    iget v2, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    div-int/lit16 v2, v2, 0x100

    .line 1841
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    rem-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_4

    .line 1842
    add-int/lit8 v2, v2, 0x1

    .line 1845
    :cond_4
    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    .line 1846
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTotalTexNum:I

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    div-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    .line 1847
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    if-le v0, v1, :cond_5

    .line 1848
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    .line 1850
    :cond_5
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTotalTexNum:I

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    mul-int/2addr v1, v3

    sub-int/2addr v0, v1

    .line 1851
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    div-int/2addr v0, v3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    .line 1853
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    if-ge v2, v0, :cond_6

    .line 1854
    iput v2, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    .line 1861
    :cond_6
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    mul-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    .line 1862
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    mul-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    .line 1870
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/browser/BitmapWebView$Surface;->reArrangeTextures(IIII)V

    .line 1888
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mValidTextureRegion:Landroid/graphics/Region;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1891
    :try_start_1
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mValidTextureRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    .line 1892
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1895
    :try_start_2
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->removeRequestUpdateWebViewTexture()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1900
    monitor-exit p0

    return v5

    .line 1892
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

    .line 1812
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
    .line 1143
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1144
    return-void
.end method

.method removeRequestUpdateWebViewTexture()V
    .locals 2

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1109
    return-void
.end method

.method removeTensionAni()V
    .locals 2

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1129
    return-void
.end method

.method requestDoubleTapAni()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 1150
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1151
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1153
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

    .line 1166
    iput p3, p0, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    .line 1167
    iput p1, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterX:F

    .line 1168
    iput p2, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterY:F

    .line 1170
    if-ne p4, v0, :cond_0

    .line 1171
    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebView;->setDrawFrameFlag(Z)V

    .line 1173
    :cond_0
    if-nez p4, :cond_2

    .line 1175
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getDrawFrameFlag()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1176
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/browser/BitmapWebView$Surface;->draw(FFF)V

    .line 1181
    :cond_1
    :goto_0
    return-void

    .line 1179
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

    .line 1133
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1134
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1139
    :goto_0
    return-void

    .line 1137
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method requestSurfaceChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 1185
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1186
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1187
    return-void
.end method

.method requestTensionAni()V
    .locals 4

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1125
    return-void
.end method

.method requestUpdateContents(Landroid/graphics/Region;)V
    .locals 3
    .parameter "region"

    .prologue
    const/4 v2, 0x1

    .line 1101
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    sget-object v1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1102
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1103
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1104
    return-void
.end method

.method requestUpdateWebViewTexture()V
    .locals 2

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1117
    return-void
.end method

.method resume()V
    .locals 1

    .prologue
    .line 2941
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebView;->setState(I)V

    .line 2942
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mPaused:Z

    .line 2943
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0}, Lcom/android/browser/BitmapWebView$Surface;->resume()V

    .line 2944
    return-void
.end method

.method saveTextureBitmap()V
    .locals 0

    .prologue
    .line 3211
    return-void
.end method

.method scroll(II)V
    .locals 18
    .parameter "newx"
    .parameter "newy"

    .prologue
    .line 1955
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

    .line 2033
    :cond_0
    :goto_0
    return-void

    .line 1960
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    move v12, v0

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BitmapWebView;->mOldViewLeft:I

    .line 1961
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    move v12, v0

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BitmapWebView;->mOldViewTop:I

    .line 1963
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    .line 1964
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BitmapWebView;->mViewTop:I

    .line 1970
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

    .line 1972
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    move v12, v0

    div-int/lit8 v3, v12, 0x2

    .line 1973
    .local v3, dx:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    move v12, v0

    div-int/lit8 v4, v12, 0x2

    .line 1974
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

    .line 1980
    .local v10, textureRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    move-object v12, v0

    invoke-virtual {v10, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1984
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

    .line 1991
    .local v5, newTextureRegion:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v12, v0

    iget v12, v12, Landroid/graphics/Rect;->left:I

    div-int/lit16 v8, v12, 0x100

    .line 1992
    .local v8, oldtilex:I
    iget v12, v5, Landroid/graphics/Rect;->left:I

    div-int/lit16 v6, v12, 0x100

    .line 1993
    .local v6, newtilex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v12, v0

    iget v12, v12, Landroid/graphics/Rect;->top:I

    div-int/lit16 v9, v12, 0x100

    .line 1994
    .local v9, oldtiley:I
    iget v12, v5, Landroid/graphics/Rect;->top:I

    div-int/lit16 v7, v12, 0x100

    .line 1997
    .local v7, newtiley:I
    if-ne v8, v6, :cond_2

    if-eq v9, v7, :cond_0

    .line 2001
    :cond_2
    new-instance v11, Landroid/graphics/Region;

    invoke-direct {v11, v5}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    .line 2002
    .local v11, updateRegion:Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v12, v0

    sget-object v13, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2004
    invoke-virtual {v11}, Landroid/graphics/Region;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 2006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v12, v0

    invoke-virtual {v12, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2008
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/browser/BitmapWebView;->requestUpdateContents(Landroid/graphics/Region;)V

    .line 2011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mValidTextureRegion:Landroid/graphics/Region;

    move-object v12, v0

    monitor-enter v12

    .line 2014
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mValidTextureRegion:Landroid/graphics/Region;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v14, v0

    sget-object v15, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mValidTextureRegion:Landroid/graphics/Region;

    move-object v13, v0

    sget-object v14, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v13, v11, v14}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 2019
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
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2434
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 2461
    :cond_0
    return-void

    .line 2437
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v0

    .line 2438
    invoke-virtual {v0}, Landroid/webkit/ViewManager;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    .line 2440
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/ViewManager$ChildView;

    .line 2441
    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2444
    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2446
    instance-of v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v2, :cond_2

    .line 2447
    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 2449
    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    sub-int/2addr v2, p1

    iput v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 2450
    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    sub-int/2addr v2, p2

    iput v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 2453
    iget-object v2, p0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2456
    :cond_2
    const-string v0, "BitmapWebView"

    const-string v2, "scrollPlugins : no AbsoluteLayout params"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method declared-synchronized setDrawFrameFlag(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 2915
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/browser/BitmapWebView;->mDrawFrameFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2916
    monitor-exit p0

    return-void

    .line 2915
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

    .line 485
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getState()I

    move-result v0

    .line 487
    .local v0, currState:I
    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 489
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    if-ne p1, v2, :cond_0

    .line 490
    iput v2, p0, Lcom/android/browser/BitmapWebView;->mState:I

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iput p1, p0, Lcom/android/browser/BitmapWebView;->mState:I

    goto :goto_0
.end method

.method setTitleBar(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 3108
    iput-object p1, p0, Lcom/android/browser/BitmapWebView;->mTitleBar:Landroid/view/View;

    .line 3109
    return-void
.end method

.method public setTitleBarVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 930
    return-void
.end method

.method setVisible(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 3113
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    check-cast v0, Landroid/view/View;

    .line 3114
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3115
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3116
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/browser/BitmapWebView;->setVisibility(I)V

    .line 3117
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

    .line 1213
    iput-object p1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    .line 1214
    iput-object p2, p0, Lcom/android/browser/BitmapWebView;->mWebViewContainer:Landroid/view/View;

    .line 1215
    iput-object p3, p0, Lcom/android/browser/BitmapWebView;->mBitmapWebViewContainer:Landroid/view/View;

    .line 1216
    iput-object p4, p0, Lcom/android/browser/BitmapWebView;->mContentView:Landroid/view/View;

    .line 1219
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-interface {v1, v2}, Lcom/android/browser/BitmapWebView$Surface;->setWebView(Landroid/webkit/WebView;)V

    .line 1220
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 1221
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 1223
    invoke-virtual {p0, v4, v4}, Lcom/android/browser/BitmapWebView;->initWebViewVariables(ZZ)Z

    .line 1225
    new-instance v0, Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    .line 1226
    .local v0, region:Landroid/graphics/Region;
    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebView;->requestUpdateContents(Landroid/graphics/Region;)V

    .line 1228
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x3fc0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1230
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setTouchInterval(I)V

    .line 1231
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setPreventDefaultTimeout(I)V

    .line 1234
    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2352
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getState()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 2354
    const-string v0, "BitmapWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t show BitmapWebView, status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    :cond_0
    :goto_0
    return-void

    .line 2358
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mVisible:Z

    if-eq v0, v1, :cond_0

    .line 2363
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->bringToFront()V

    .line 2367
    iput-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mVisible:Z

    .line 2368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mTiltebarBitmapUpdated:Z

    goto :goto_0
.end method

.method public startDrag()V
    .locals 0

    .prologue
    .line 1083
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

    .line 2160
    iput p1, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDx:I

    .line 2161
    iput p2, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDy:I

    .line 2162
    iput v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    .line 2163
    iput v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    .line 2167
    move v0, p1

    .line 2168
    .local v0, dx:I
    move v1, p2

    .line 2174
    .local v1, dy:I
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDx:I

    if-nez v4, :cond_0

    .line 2176
    const/4 v0, 0x0

    .line 2177
    const/high16 v2, 0x3f80

    .line 2185
    .local v2, scalex:F
    :goto_0
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDy:I

    if-nez v4, :cond_1

    .line 2187
    const/4 v1, 0x0

    .line 2188
    const/high16 v3, 0x3f80

    .line 2197
    .local v3, scaley:F
    :goto_1
    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mTensionAni:Z

    .line 2198
    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    .line 2199
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    .line 2201
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    invoke-virtual {p0, v4, v5}, Lcom/android/browser/BitmapWebView;->scrollPlugins(II)V

    .line 2202
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/browser/BitmapWebView;->scroll(II)V

    .line 2204
    invoke-virtual {p0, v8, v8, v7, v9}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    .line 2206
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->requestTensionAni()V

    .line 2207
    return-void

    .line 2181
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

    .line 2182
    .restart local v2       #scalex:F
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDx:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 2192
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

    .line 2193
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

    .line 1087
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getState()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 1090
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method stopFling()V
    .locals 1

    .prologue
    .line 2281
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mFlinging:Z

    if-nez v0, :cond_0

    .line 2293
    :goto_0
    return-void

    .line 2284
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2285
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->removeFlingIng()V

    .line 2292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mFlinging:Z

    goto :goto_0
.end method

.method stopTension()V
    .locals 1

    .prologue
    .line 2297
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mTensionAni:Z

    if-nez v0, :cond_0

    .line 2302
    :goto_0
    return-void

    .line 2300
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->removeTensionAni()V

    .line 2301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mTensionAni:Z

    goto :goto_0
.end method

.method surfaceChanged()V
    .locals 6

    .prologue
    const/high16 v4, 0x40a0

    const/4 v3, 0x1

    const-string v5, " "

    .line 2038
    const-string v0, "BitmapWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v2}, Lcom/android/browser/BitmapWebView$Surface;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v2}, Lcom/android/browser/BitmapWebView$Surface;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0}, Lcom/android/browser/BitmapWebView$Surface;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0}, Lcom/android/browser/BitmapWebView$Surface;->height()I

    move-result v0

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 2042
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->requestSurfaceChanged()V

    .line 2057
    :goto_0
    return-void

    .line 2046
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebView;->setState(I)V

    .line 2048
    invoke-virtual {p0, v3, v3}, Lcom/android/browser/BitmapWebView;->initWebViewVariables(ZZ)Z

    .line 2049
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0}, Lcom/android/browser/BitmapWebView$Surface;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistX:I

    .line 2050
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0}, Lcom/android/browser/BitmapWebView$Surface;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistY:I

    .line 2052
    new-instance v0, Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    .line 2054
    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebView;->requestUpdateContents(Landroid/graphics/Region;)V

    .line 2056
    invoke-virtual {p0, v3}, Lcom/android/browser/BitmapWebView;->setState(I)V

    goto :goto_0
.end method

.method updateTitleBarTextureBitmap()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2389
    iget-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mTitleBarVisibility:Z

    if-nez v1, :cond_1

    .line 2404
    :cond_0
    :goto_0
    return-void

    .line 2392
    :cond_1
    iget-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mTiltebarBitmapUpdated:Z

    if-eq v1, v2, :cond_0

    .line 2396
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2401
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2403
    iput-boolean v2, p0, Lcom/android/browser/BitmapWebView;->mTiltebarBitmapUpdated:Z

    goto :goto_0
.end method

.method updateWebViewTexture()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1306
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getDrawFrameFlag()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/browser/BitmapWebView;->mScaling:Z

    if-nez v2, :cond_2

    .line 1308
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1310
    .local v0, tick:J
    iget-wide v2, p0, Lcom/android/browser/BitmapWebView;->mUpdateTexIgnoreTick:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1311
    iput-wide v0, p0, Lcom/android/browser/BitmapWebView;->mUpdateTexIgnoreTick:J

    .line 1315
    :cond_0
    iget-wide v2, p0, Lcom/android/browser/BitmapWebView;->mUpdateTexIgnoreTick:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/android/browser/BitmapWebView;->mUpdateTexIgnoreTick:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x9c4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1331
    .end local v0           #tick:J
    :goto_0
    return-void

    .line 1321
    .restart local v0       #tick:J
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->requestUpdateWebViewTexture()V

    goto :goto_0

    .line 1326
    .end local v0           #tick:J
    :cond_2
    iput-wide v4, p0, Lcom/android/browser/BitmapWebView;->mUpdateTexIgnoreTick:J

    .line 1328
    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v2}, Lcom/android/browser/BitmapWebView$Surface;->updateTilesInQueue()V

    goto :goto_0
.end method

.method updateWebViewTextureBitmap(Landroid/graphics/Region;Z)Z
    .locals 40
    .parameter "regionToUpdate"
    .parameter "timelimit"

    .prologue
    .line 1336
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BitmapWebView;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 1337
    const/4 v5, 0x1

    .line 1652
    :goto_0
    return v5

    .line 1340
    :cond_0
    new-instance v30, Landroid/graphics/Rect;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/Rect;-><init>()V

    .line 1341
    .local v30, updateRegion:Landroid/graphics/Rect;
    new-instance v20, Landroid/graphics/Region;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    .line 1350
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

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    move-object v6, v0

    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1358
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

    .line 1364
    .local v27, tiles:[[Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1365
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Region;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 1368
    const/4 v5, 0x1

    goto :goto_0

    .line 1372
    :cond_2
    new-instance v18, Landroid/graphics/RegionIterator;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 1376
    .local v18, iter:Landroid/graphics/RegionIterator;
    const/16 v28, 0x0

    .line 1377
    .local v28, tooklongtime:Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    .line 1379
    .local v22, startTick:J
    const/4 v10, 0x0

    .line 1390
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

    .line 1391
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

    .line 1398
    .local v9, shifty:I
    :cond_3
    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1401
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

    .line 1404
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    move v0, v5

    div-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    .line 1406
    .local v19, lx:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    div-int/lit16 v0, v0, 0x100

    move/from16 v21, v0

    .line 1407
    .local v21, rx:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    move v0, v5

    div-int/lit16 v0, v0, 0x100

    move/from16 v29, v0

    .line 1408
    .local v29, ty:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    div-int/lit16 v12, v5, 0x100

    .line 1416
    .local v12, by:I
    move/from16 v6, v19

    .local v6, x:I
    :goto_1
    move v0, v6

    move/from16 v1, v21

    if-gt v0, v1, :cond_3

    .line 1417
    move/from16 v7, v29

    .local v7, y:I
    :goto_2
    if-gt v7, v12, :cond_4

    .line 1419
    aget-object v5, v27, v7

    const/4 v11, 0x1

    aput-boolean v11, v5, v6

    .line 1417
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1416
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1433
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

    .line 1441
    .local v33, viewRect:Landroid/graphics/Rect;
    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    move v0, v5

    div-int/lit16 v0, v0, 0x100

    move/from16 v32, v0

    .line 1443
    .local v32, viewLeft:I
    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    div-int/lit16 v0, v0, 0x100

    move/from16 v34, v0

    .line 1444
    .local v34, viewRight:I
    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    move v0, v5

    div-int/lit16 v0, v0, 0x100

    move/from16 v35, v0

    .line 1445
    .local v35, viewTop:I
    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    div-int/lit16 v0, v0, 0x100

    move/from16 v31, v0

    .line 1447
    .local v31, viewBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    move v5, v0

    move/from16 v0, v31

    move v1, v5

    if-lt v0, v1, :cond_6

    .line 1450
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v31, v5, v6

    .line 1453
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    move v5, v0

    move/from16 v0, v34

    move v1, v5

    if-lt v0, v1, :cond_7

    .line 1456
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v34, v5, v6

    .line 1463
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mOldViewLeft:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    move v6, v0

    if-le v5, v6, :cond_a

    .line 1466
    move/from16 v24, v34

    .line 1467
    .local v24, sx:I
    move/from16 v16, v32

    .line 1476
    .local v16, ex:I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mOldViewTop:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    move v6, v0

    if-ge v5, v6, :cond_b

    .line 1478
    move/from16 v25, v35

    .line 1479
    .local v25, sy:I
    move/from16 v17, v31

    .line 1488
    .local v17, ey:I
    :goto_4
    move/from16 v7, v25

    .line 1491
    .restart local v7       #y:I
    :goto_5
    const/4 v5, 0x1

    move/from16 v0, v28

    move v1, v5

    if-ne v0, v1, :cond_c

    .line 1564
    :cond_8
    if-nez v28, :cond_9

    .line 1567
    const/4 v15, 0x0

    .local v15, count:I
    const/4 v11, 0x0

    .line 1571
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

    .line 1572
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

    .line 1579
    .local v14, centery:I
    div-int/lit16 v13, v13, 0x100

    .line 1580
    div-int/lit16 v14, v14, 0x100

    .line 1583
    .end local v11           #bitmapcount:I
    :goto_6
    const/4 v5, 0x1

    move/from16 v0, v28

    move v1, v5

    if-ne v0, v1, :cond_13

    .line 1649
    .end local v13           #centerx:I
    .end local v14           #centery:I
    .end local v15           #count:I
    :cond_9
    const/4 v5, 0x1

    move/from16 v0, v28

    move v1, v5

    if-ne v0, v1, :cond_1e

    .line 1650
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1471
    .end local v7           #y:I
    .end local v16           #ex:I
    .end local v17           #ey:I
    .end local v24           #sx:I
    .end local v25           #sy:I
    :cond_a
    move/from16 v24, v32

    .line 1472
    .restart local v24       #sx:I
    move/from16 v16, v34

    .restart local v16       #ex:I
    goto :goto_3

    .line 1483
    :cond_b
    move/from16 v25, v31

    .line 1484
    .restart local v25       #sy:I
    move/from16 v17, v35

    .restart local v17       #ey:I
    goto :goto_4

    .line 1497
    .restart local v7       #y:I
    :cond_c
    move/from16 v6, v24

    .line 1500
    .restart local v6       #x:I
    :goto_7
    const/4 v5, 0x1

    move/from16 v0, v28

    move v1, v5

    if-ne v0, v1, :cond_e

    .line 1548
    :cond_d
    :goto_8
    move/from16 v0, v25

    move/from16 v1, v17

    if-le v0, v1, :cond_12

    .line 1550
    move v0, v7

    move/from16 v1, v17

    if-le v0, v1, :cond_8

    if-lez v7, :cond_8

    .line 1551
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 1506
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

    .line 1509
    aget-object v5, v27, v7

    aget-boolean v5, v5, v6

    const/4 v11, 0x1

    if-ne v5, v11, :cond_10

    move-object/from16 v5, p0

    .line 1512
    invoke-virtual/range {v5 .. v10}, Lcom/android/browser/BitmapWebView;->drawTile(IIIILandroid/graphics/Picture;)Lcom/android/browser/BitmapWebView$Tile;

    move-result-object v26

    .line 1513
    .local v26, tile:Lcom/android/browser/BitmapWebView$Tile;
    if-nez v26, :cond_f

    .line 1515
    const/16 v28, 0x1

    .line 1516
    goto :goto_8

    .line 1521
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/android/browser/BitmapWebView$Surface;->updateTile(Lcom/android/browser/BitmapWebView$Tile;)V

    .line 1522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    move-object v5, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/browser/BitmapWebView$Tile;->mBoundary:Landroid/graphics/Rect;

    move-object v11, v0

    sget-object v12, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1523
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BitmapWebView;->updateWebViewTexture()V

    .line 1524
    aget-object v5, v27, v7

    const/4 v11, 0x0

    aput-boolean v11, v5, v6

    .line 1526
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

    .line 1528
    const/16 v28, 0x1

    .line 1529
    goto :goto_8

    .line 1535
    .end local v26           #tile:Lcom/android/browser/BitmapWebView$Tile;
    :cond_10
    move/from16 v0, v24

    move/from16 v1, v16

    if-le v0, v1, :cond_11

    .line 1537
    move v0, v6

    move/from16 v1, v16

    if-le v0, v1, :cond_d

    if-lez v6, :cond_d

    .line 1538
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    .line 1542
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

    .line 1543
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_7

    .line 1555
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

    .line 1556
    .end local v6           #x:I
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    .line 1586
    .restart local v13       #centerx:I
    .restart local v14       #centery:I
    .restart local v15       #count:I
    :cond_13
    sub-int v24, v13, v15

    .line 1587
    add-int v16, v13, v15

    .line 1588
    sub-int v25, v14, v15

    .line 1589
    add-int v17, v14, v15

    .line 1592
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

    .line 1596
    :cond_14
    if-gez v24, :cond_15

    .line 1597
    const/16 v24, 0x0

    .line 1598
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    move v5, v0

    move/from16 v0, v16

    move v1, v5

    if-lt v0, v1, :cond_16

    .line 1599
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v16, v5, v6

    .line 1600
    :cond_16
    if-gez v25, :cond_17

    .line 1601
    const/16 v25, 0x0

    .line 1602
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    move v5, v0

    move/from16 v0, v17

    move v1, v5

    if-lt v0, v1, :cond_18

    .line 1603
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v17, v5, v6

    .line 1606
    :cond_18
    move/from16 v6, v24

    .restart local v6       #x:I
    :goto_9
    move v0, v6

    move/from16 v1, v16

    if-gt v0, v1, :cond_1d

    .line 1607
    move/from16 v7, v25

    :goto_a
    move v0, v7

    move/from16 v1, v17

    if-gt v0, v1, :cond_1b

    .line 1609
    aget-object v5, v27, v7

    aget-boolean v5, v5, v6

    if-nez v5, :cond_1a

    .line 1607
    :cond_19
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_1a
    move-object/from16 v5, p0

    .line 1612
    invoke-virtual/range {v5 .. v10}, Lcom/android/browser/BitmapWebView;->drawTile(IIIILandroid/graphics/Picture;)Lcom/android/browser/BitmapWebView$Tile;

    move-result-object v26

    .line 1614
    .restart local v26       #tile:Lcom/android/browser/BitmapWebView$Tile;
    if-nez v26, :cond_1c

    .line 1616
    const/16 v28, 0x1

    .line 1617
    add-int/lit8 v6, v16, 0x1

    .line 1618
    add-int/lit8 v7, v17, 0x1

    .line 1606
    .end local v26           #tile:Lcom/android/browser/BitmapWebView$Tile;
    :cond_1b
    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 1622
    .restart local v26       #tile:Lcom/android/browser/BitmapWebView$Tile;
    :cond_1c
    aget-object v5, v27, v7

    const/4 v11, 0x0

    aput-boolean v11, v5, v6

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/android/browser/BitmapWebView$Surface;->updateTile(Lcom/android/browser/BitmapWebView$Tile;)V

    .line 1626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    move-object v5, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/browser/BitmapWebView$Tile;->mBoundary:Landroid/graphics/Rect;

    move-object v11, v0

    sget-object v12, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1627
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BitmapWebView;->updateWebViewTexture()V

    .line 1629
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

    .line 1631
    const/16 v28, 0x1

    .line 1632
    add-int/lit8 v6, v16, 0x1

    .line 1633
    add-int/lit8 v7, v17, 0x1

    .line 1634
    goto :goto_b

    .line 1639
    .end local v26           #tile:Lcom/android/browser/BitmapWebView$Tile;
    :cond_1d
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    .line 1652
    .end local v6           #x:I
    .end local v13           #centerx:I
    .end local v14           #centery:I
    .end local v15           #count:I
    :cond_1e
    const/4 v5, 0x1

    goto/16 :goto_0
.end method
