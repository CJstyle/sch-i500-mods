.class Lcom/android/browser/WebGLZoomView;
.super Landroid/opengl/GLSurfaceView;
.source "WebGLZoomView.java"

# interfaces
.implements Landroid/webkit/OnPinchZoomListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/WebGLZoomView$PrivateHandler;
    }
.end annotation


# static fields
.field static final DOUBLE_TAP_ANIMATION_DELAY:I = 0x3

.field static final DOUBLE_TAP_COUNT:I = 0xa

.field static final DOUBLE_TAP_WEBVIEW_SWITCH_DELAY:I = 0xa

.field static final ENABLE_SCROLL:Z = true

.field private static FLING_CHECK_INTERVAL:I = 0x0

.field private static LOGTAG:Ljava/lang/String; = null

.field private static MINIMUM_SCALE_INCREMENT:F = 0.0f

.field static final MSG_DOUBLE_TAP:I = 0x5

.field static final MSG_FLING_CHECK:I = 0x2

.field static final MSG_SURFACE_CHANGED:I = 0x3

.field static final MSG_UPDATE_CONTENTS:I = 0x1

.field static final MSG_UPDATE_WEBVIEW_TEXTURE:I = 0x4


# instance fields
.field mDTCount:F

.field mDTEndScale:F

.field mDTEndScrollX:F

.field mDTEndScrollY:F

.field mDTScale:F

.field mDTScaleDelta:F

.field mDTScrollXDelta:F

.field mDTScrollYDelta:F

.field mDTStartScale:F

.field mDTStartScrollX:F

.field mDTStartScrollY:F

.field mDTZoomCX:F

.field mDTZoomCY:F

.field mDoubleTapping:Z

.field mInverseMatrix:Landroid/graphics/Matrix;

.field mMatrix:Landroid/graphics/Matrix;

.field mMaxScale:F

.field mMinScale:F

.field mOnScroll:Z

.field mPrivateHandler:Landroid/os/Handler;

.field private mRenderer:Lcom/android/browser/WebGLZoomRenderer;

.field mScaling:Z

.field mScrollChangedCalled:Z

.field mTextureBitmapDirtyRegion:Landroid/graphics/Region;

.field mTouchDown:Z

.field mTouchMoved:Z

.field mVisible:Z

.field mWebView:Landroid/webkit/WebView;

.field mWebViewContainer:Landroid/view/View;

.field mWebViewGroup:Landroid/view/View;

.field mZoomCenterX:F

.field mZoomCenterY:F

.field mZoomScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-string v0, "WebGLZoomView"

    sput-object v0, Lcom/android/browser/WebGLZoomView;->LOGTAG:Ljava/lang/String;

    .line 91
    const/16 v0, 0x64

    sput v0, Lcom/android/browser/WebGLZoomView;->FLING_CHECK_INTERVAL:I

    .line 97
    const v0, 0x3c23d70a

    sput v0, Lcom/android/browser/WebGLZoomView;->MINIMUM_SCALE_INCREMENT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/WebGLZoomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/browser/WebGLZoomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/webkit/WebView;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/webkit/WebView;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "webview"

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/browser/WebGLZoomView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    .line 328
    iput-boolean v1, p0, Lcom/android/browser/WebGLZoomView;->mVisible:Z

    .line 388
    iput-boolean v1, p0, Lcom/android/browser/WebGLZoomView;->mOnScroll:Z

    .line 412
    iput-boolean v1, p0, Lcom/android/browser/WebGLZoomView;->mTouchMoved:Z

    .line 413
    iput-boolean v1, p0, Lcom/android/browser/WebGLZoomView;->mTouchDown:Z

    .line 694
    iput-boolean v1, p0, Lcom/android/browser/WebGLZoomView;->mScrollChangedCalled:Z

    .line 840
    iput-boolean v1, p0, Lcom/android/browser/WebGLZoomView;->mScaling:Z

    .line 126
    new-instance v0, Lcom/android/browser/WebGLZoomRenderer;

    invoke-direct {v0, p1, p3, p0}, Lcom/android/browser/WebGLZoomRenderer;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Lcom/android/browser/WebGLZoomView;)V

    iput-object v0, p0, Lcom/android/browser/WebGLZoomView;->mRenderer:Lcom/android/browser/WebGLZoomRenderer;

    .line 127
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/browser/WebGLZoomView;->setEGLContextClientVersion(I)V

    .line 128
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mRenderer:Lcom/android/browser/WebGLZoomRenderer;

    invoke-virtual {p0, v0}, Lcom/android/browser/WebGLZoomView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 129
    invoke-virtual {p0, v1}, Lcom/android/browser/WebGLZoomView;->setRenderMode(I)V

    .line 130
    iput-object p3, p0, Lcom/android/browser/WebGLZoomView;->mWebView:Landroid/webkit/WebView;

    .line 132
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/browser/WebGLZoomView;->mMatrix:Landroid/graphics/Matrix;

    .line 133
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/browser/WebGLZoomView;->mInverseMatrix:Landroid/graphics/Matrix;

    .line 138
    new-instance v0, Lcom/android/browser/WebGLZoomView$PrivateHandler;

    invoke-direct {v0, p0}, Lcom/android/browser/WebGLZoomView$PrivateHandler;-><init>(Lcom/android/browser/WebGLZoomView;)V

    iput-object v0, p0, Lcom/android/browser/WebGLZoomView;->mPrivateHandler:Landroid/os/Handler;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/WebGLZoomView;)Lcom/android/browser/WebGLZoomRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mRenderer:Lcom/android/browser/WebGLZoomRenderer;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/android/browser/WebGLZoomView;->FLING_CHECK_INTERVAL:I

    return v0
.end method


# virtual methods
.method public debug()V
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mRenderer:Lcom/android/browser/WebGLZoomRenderer;

    invoke-virtual {v0}, Lcom/android/browser/WebGLZoomRenderer;->printValues()V

    .line 748
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mRenderer:Lcom/android/browser/WebGLZoomRenderer;

    invoke-virtual {v0}, Lcom/android/browser/WebGLZoomRenderer;->saveTextureBitmap()V

    .line 749
    return-void
.end method

.method public doDoubleTap(FLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    .locals 12
    .parameter "oldScale"
    .parameter "zoomInfo"

    .prologue
    const/4 v11, 0x2

    const/high16 v10, 0x4120

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 770
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scale:F

    div-float v4, v5, p1

    .line 771
    .local v4, ratio:F
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterX:F

    iget-object v6, p0, Lcom/android/browser/WebGLZoomView;->mRenderer:Lcom/android/browser/WebGLZoomRenderer;

    iget v6, v6, Lcom/android/browser/WebGLZoomRenderer;->mViewLeft:I

    int-to-float v6, v6

    add-float v0, v5, v6

    .line 772
    .local v0, cx:F
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterY:F

    iget-object v6, p0, Lcom/android/browser/WebGLZoomView;->mRenderer:Lcom/android/browser/WebGLZoomRenderer;

    iget v6, v6, Lcom/android/browser/WebGLZoomRenderer;->mViewTop:I

    int-to-float v6, v6

    add-float v1, v5, v6

    .line 774
    .local v1, cy:F
    iget-object v5, p0, Lcom/android/browser/WebGLZoomView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 777
    new-array v2, v11, [F

    .line 778
    .local v2, p:[F
    aput v0, v2, v9

    .line 779
    aput v1, v2, v7

    .line 781
    new-array v3, v11, [F

    .line 782
    .local v3, pz:[F
    aput v8, v3, v9

    .line 783
    iget-object v5, p0, Lcom/android/browser/WebGLZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v7

    .line 785
    iget-object v5, p0, Lcom/android/browser/WebGLZoomView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 786
    iget-object v5, p0, Lcom/android/browser/WebGLZoomView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 790
    aget v5, v2, v9

    aget v6, v3, v9

    sub-float/2addr v5, v6

    iget v6, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterX:F

    sub-float/2addr v5, v6

    aput v5, v2, v9

    .line 791
    aget v5, v2, v7

    aget v6, v3, v7

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/browser/WebGLZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget v6, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterY:F

    sub-float/2addr v5, v6

    aput v5, v2, v7

    .line 794
    aget v5, v2, v9

    iget v6, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scrollX:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/browser/WebGLZoomView;->mDTEndScrollX:F

    .line 795
    aget v5, v2, v7

    iget v6, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scrollY:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/browser/WebGLZoomView;->mDTEndScrollY:F

    .line 796
    iget-object v5, p0, Lcom/android/browser/WebGLZoomView;->mRenderer:Lcom/android/browser/WebGLZoomRenderer;

    iput v8, p0, Lcom/android/browser/WebGLZoomView;->mDTStartScrollX:F

    iput v8, v5, Lcom/android/browser/WebGLZoomRenderer;->mScrollDX:F

    .line 797
    iget-object v5, p0, Lcom/android/browser/WebGLZoomView;->mRenderer:Lcom/android/browser/WebGLZoomRenderer;

    iput v8, p0, Lcom/android/browser/WebGLZoomView;->mDTStartScrollY:F

    iput v8, v5, Lcom/android/browser/WebGLZoomRenderer;->mScrollDY:F

    .line 802
    invoke-virtual {p0}, Lcom/android/browser/WebGLZoomView;->show()V

    .line 805
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scale:F

    iput v5, p0, Lcom/android/browser/WebGLZoomView;->mDTScale:F

    .line 806
    iput v4, p0, Lcom/android/browser/WebGLZoomView;->mDTEndScale:F

    .line 807
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/browser/WebGLZoomView;->mDTStartScale:F

    .line 808
    iput v8, p0, Lcom/android/browser/WebGLZoomView;->mDTCount:F

    .line 809
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterX:F

    iput v5, p0, Lcom/android/browser/WebGLZoomView;->mDTZoomCX:F

    .line 810
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterY:F

    iput v5, p0, Lcom/android/browser/WebGLZoomView;->mDTZoomCY:F

    .line 812
    iget v5, p0, Lcom/android/browser/WebGLZoomView;->mDTEndScale:F

    iget v6, p0, Lcom/android/browser/WebGLZoomView;->mDTStartScale:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v10

    iput v5, p0, Lcom/android/browser/WebGLZoomView;->mDTScaleDelta:F

    .line 813
    iget v5, p0, Lcom/android/browser/WebGLZoomView;->mDTEndScrollX:F

    iget v6, p0, Lcom/android/browser/WebGLZoomView;->mDTStartScrollX:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v10

    iput v5, p0, Lcom/android/browser/WebGLZoomView;->mDTScrollXDelta:F

    .line 814
    iget v5, p0, Lcom/android/browser/WebGLZoomView;->mDTEndScrollY:F

    iget v6, p0, Lcom/android/browser/WebGLZoomView;->mDTStartScrollY:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v10

    iput v5, p0, Lcom/android/browser/WebGLZoomView;->mDTScrollYDelta:F

    .line 817
    iget-object v5, p0, Lcom/android/browser/WebGLZoomView;->mRenderer:Lcom/android/browser/WebGLZoomRenderer;

    iget v6, p0, Lcom/android/browser/WebGLZoomView;->mDTZoomCX:F

    iget v7, p0, Lcom/android/browser/WebGLZoomView;->mDTZoomCY:F

    iget v8, p0, Lcom/android/browser/WebGLZoomView;->mDTStartScale:F

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/browser/WebGLZoomRenderer;->show(FFF)V

    .line 818
    iget-object v5, p0, Lcom/android/browser/WebGLZoomView;->mRenderer:Lcom/android/browser/WebGLZoomRenderer;

    iget v6, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterX:F

    iput v6, v5, Lcom/android/browser/WebGLZoomRenderer;->mZoomCenterX:F

    .line 819
    iget-object v5, p0, Lcom/android/browser/WebGLZoomView;->mRenderer:Lcom/android/browser/WebGLZoomRenderer;

    iget v6, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterY:F

    iput v6, v5, Lcom/android/browser/WebGLZoomRenderer;->mZoomCenterY:F

    .line 821
    invoke-virtual {p0, v9}, Lcom/android/browser/WebGLZoomView;->requestDrawFrame(Z)V

    .line 823
    iget-object v5, p0, Lcom/android/browser/WebGLZoomView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 824
    iget-object v5, p0, Lcom/android/browser/WebGLZoomView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    const-wide/16 v7, 0x3

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 826
    return-void
.end method

.method public doFling()V
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/WebGLZoomView;->requestDrawFrame(Z)V

    .line 402
    return-void
.end method

.method public draw(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mRenderer:Lcom/android/browser/WebGLZoomRenderer;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/browser/WebGLZoomRenderer;->show(FFF)V

    .line 498
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/WebGLZoomView;->requestDrawFrame(Z)V

    .line 499
    return-void
.end method

.method public getAvailable()Z
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mRenderer:Lcom/android/browser/WebGLZoomRenderer;

    invoke-virtual {v0}, Lcom/android/browser/WebGLZoomRenderer;->getAvailable()Z

    move-result v0

    return v0
.end method

.method public getCenterX()F
    .locals 1

    .prologue
    .line 635
    iget v0, p0, Lcom/android/browser/WebGLZoomView;->mZoomCenterX:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    .prologue
    .line 639
    iget v0, p0, Lcom/android/browser/WebGLZoomView;->mZoomCenterY:F

    return v0
.end method

.method public getFlingFactor()F
    .locals 1

    .prologue
    .line 406
    const/high16 v0, 0x3f40

    return v0
.end method

.method public getPluginMode()I
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x2

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 643
    iget v0, p0, Lcom/android/browser/WebGLZoomView;->mZoomScale:F

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 356
    iput-boolean v0, p0, Lcom/android/browser/WebGLZoomView;->mOnScroll:Z

    .line 357
    iput-boolean v0, p0, Lcom/android/browser/WebGLZoomView;->mVisible:Z

    .line 358
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 359
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mWebViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 360
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mWebViewGroup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 361
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mWebViewGroup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 363
    return-void
.end method

.method public isDrawingWebView()Z
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mRenderer:Lcom/android/browser/WebGLZoomRenderer;

    iget-boolean v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mIsDrawingWebView:Z

    return v0
.end method

.method public isOnFling()Z
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScroller()Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnScroll()Z
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/android/browser/WebGLZoomView;->mOnScroll:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/android/browser/WebGLZoomView;->mVisible:Z

    return v0
.end method

.method onDestroy()V
    .locals 1

    .prologue
    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mRenderer:Lcom/android/browser/WebGLZoomRenderer;

    invoke-virtual {v0}, Lcom/android/browser/WebGLZoomRenderer;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/WebGLZoomView;->mRenderer:Lcom/android/browser/WebGLZoomRenderer;

    .line 147
    return-void

    .line 145
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onNewScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8
    .parameter "detector"

    .prologue
    const/4 v5, 0x0

    const/high16 v3, 0x3f80

    const/4 v7, 0x1

    .line 509
    iget-boolean v1, p0, Lcom/android/browser/WebGLZoomView;->mScaling:Z

    if-nez v1, :cond_0

    move v1, v7

    .line 557
    :goto_0
    return v1

    .line 512
    :cond_0
    const/4 v0, 0x0

    .line 516
    .local v0, scale:F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/browser/WebGLZoomView;->mZoomScale:F

    mul-float v0, v1, v2

    .line 522
    iget v1, p0, Lcom/android/browser/WebGLZoomView;->mZoomScale:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/android/browser/WebGLZoomView;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    .line 525
    iget v1, p0, Lcom/android/browser/WebGLZoomView;->mZoomScale:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 527
    iget v1, p0, Lcom/android/browser/WebGLZoomView;->mZoomScale:F

    const/high16 v2, 0x3fa0

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 536
    :goto_1
    iget v1, p0, Lcom/android/browser/WebGLZoomView;->mMinScale:F

    mul-float/2addr v1, v3

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/android/browser/WebGLZoomView;->mMaxScale:F

    mul-float/2addr v1, v3

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    :cond_1
    move v1, v7

    .line 537
    goto :goto_0

    .line 531
    :cond_2
    iget v1, p0, Lcom/android/browser/WebGLZoomView;->mZoomScale:F

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1

    .line 539
    :cond_3
    iput v0, p0, Lcom/android/browser/WebGLZoomView;->mZoomScale:F

    .line 541
    iget-object v1, p0, Lcom/android/browser/WebGLZoomView;->mRenderer:Lcom/android/browser/WebGLZoomRenderer;

    iget v2, p0, Lcom/android/browser/WebGLZoomView;->mZoomScale:F

    iget v3, p0, Lcom/android/browser/WebGLZoomView;->mZoomCenterX:F

    iget v4, p0, Lcom/android/browser/WebGLZoomView;->mZoomCenterY:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/browser/WebGLZoomRenderer;->onScale(FFF)V

    .line 542
    invoke-virtual {p0, v5}, Lcom/android/browser/WebGLZoomView;->requestDrawFrame(Z)V

    .line 545
    iget-object v1, p0, Lcom/android/browser/WebGLZoomView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/android/browser/WebGLZoomView;->mZoomScale:F

    iget-object v3, p0, Lcom/android/browser/WebGLZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/android/browser/WebGLZoomView;->mZoomScale:F

    iget-object v4, p0, Lcom/android/browser/WebGLZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScale()F

    move-result v4

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/browser/WebGLZoomView;->mZoomCenterX:F

    iget-object v5, p0, Lcom/android/browser/WebGLZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/android/browser/WebGLZoomView;->mZoomCenterY:F

    iget-object v6, p0, Lcom/android/browser/WebGLZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 550
    iget-object v1, p0, Lcom/android/browser/WebGLZoomView;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/android/browser/WebGLZoomView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->transformPlugins(Landroid/graphics/Matrix;)V

    move v1, v7

    .line 554
    goto/16 :goto_0

    :cond_4
    move v1, v5

    .line 557
    goto/16 :goto_0
.end method

.method public onPageFinished(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mRenderer:Lcom/android/browser/WebGLZoomRenderer;

    invoke-virtual {v0, p1}, Lcom/android/browser/WebGLZoomRenderer;->onPageFinished(Ljava/lang/String;)V

    .line 765
    return-void
.end method

.method public onPageStarted(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 760
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 503
    invoke-virtual {p0, p1}, Lcom/android/browser/WebGLZoomView;->onNewScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public onScale(Landroid/webkit/OnPinchZoomListener$ZoomInfo;)Z
    .locals 1
    .parameter "zoomInfo"

    .prologue
    .line 565
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

    .line 581
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/WebGLZoomView;->mTouchDown:Z

    .line 583
    iput p3, p0, Lcom/android/browser/WebGLZoomView;->mMinScale:F

    .line 584
    iput p2, p0, Lcom/android/browser/WebGLZoomView;->mMaxScale:F

    .line 586
    iget v0, p0, Lcom/android/browser/WebGLZoomView;->mMinScale:F

    iget v1, p0, Lcom/android/browser/WebGLZoomView;->mMaxScale:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    move v0, v3

    .line 610
    :goto_0
    return v0

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    move v0, v3

    .line 590
    goto :goto_0

    .line 593
    :cond_2
    iput-boolean v3, p0, Lcom/android/browser/WebGLZoomView;->mScaling:Z

    .line 595
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    iput v0, p0, Lcom/android/browser/WebGLZoomView;->mZoomCenterX:F

    .line 596
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    iput v0, p0, Lcom/android/browser/WebGLZoomView;->mZoomCenterY:F

    .line 598
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mRenderer:Lcom/android/browser/WebGLZoomRenderer;

    iget v1, p0, Lcom/android/browser/WebGLZoomView;->mZoomCenterX:F

    iget v2, p0, Lcom/android/browser/WebGLZoomView;->mZoomCenterY:F

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/WebGLZoomRenderer;->onScaleBegin(FF)V

    .line 602
    invoke-virtual {p0}, Lcom/android/browser/WebGLZoomView;->show()V

    .line 605
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScale()F

    move-result v0

    iput v0, p0, Lcom/android/browser/WebGLZoomView;->mZoomScale:F

    .line 607
    invoke-virtual {p0, v3}, Lcom/android/browser/WebGLZoomView;->requestDrawFrame(Z)V

    move v0, v3

    .line 610
    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    const/4 v1, 0x0

    .line 616
    iget-boolean v0, p0, Lcom/android/browser/WebGLZoomView;->mScaling:Z

    if-nez v0, :cond_0

    .line 631
    :goto_0
    return-void

    .line 618
    :cond_0
    iput-boolean v1, p0, Lcom/android/browser/WebGLZoomView;->mScaling:Z

    .line 620
    invoke-virtual {p0}, Lcom/android/browser/WebGLZoomView;->hide()V

    .line 623
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mRenderer:Lcom/android/browser/WebGLZoomRenderer;

    invoke-virtual {v0}, Lcom/android/browser/WebGLZoomRenderer;->onScaleEnd()V

    .line 626
    iput-boolean v1, p0, Lcom/android/browser/WebGLZoomView;->mOnScroll:Z

    .line 627
    iput-boolean v1, p0, Lcom/android/browser/WebGLZoomView;->mTouchDown:Z

    .line 628
    iput-boolean v1, p0, Lcom/android/browser/WebGLZoomView;->mTouchMoved:Z

    .line 629
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public onScrollChanged(IIII)V
    .locals 3
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 698
    if-ne p1, p3, :cond_1

    if-ne p2, p4, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/WebGLZoomView;->mScaling:Z

    if-eq v0, v1, :cond_0

    .line 707
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mRenderer:Lcom/android/browser/WebGLZoomRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/WebGLZoomRenderer;->scroll(II)V

    .line 714
    iget-boolean v0, p0, Lcom/android/browser/WebGLZoomView;->mTouchMoved:Z

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/browser/WebGLZoomView;->mTouchDown:Z

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/browser/WebGLZoomView;->mOnScroll:Z

    if-ne v0, v1, :cond_0

    .line 717
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/WebGLZoomView;->mTouchMoved:Z

    .line 719
    iget-boolean v0, p0, Lcom/android/browser/WebGLZoomView;->mOnScroll:Z

    if-nez v0, :cond_3

    .line 721
    iput-boolean v1, p0, Lcom/android/browser/WebGLZoomView;->mOnScroll:Z

    .line 731
    :cond_3
    invoke-virtual {p0, v2, v2}, Lcom/android/browser/WebGLZoomView;->draw(FF)V

    .line 733
    iput-boolean v1, p0, Lcom/android/browser/WebGLZoomView;->mScrollChangedCalled:Z

    goto :goto_0
.end method

.method public onUpdateContents(Landroid/graphics/Region;)V
    .locals 10
    .parameter "dirtyRegion"

    .prologue
    const/4 v9, 0x1

    .line 659
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 660
    .local v3, updateRect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/RegionIterator;

    invoke-direct {v0, p1}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 661
    .local v0, iter:Landroid/graphics/RegionIterator;
    iget-object v4, p0, Lcom/android/browser/WebGLZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    .line 662
    .local v1, scaleX:F
    iget-object v4, p0, Lcom/android/browser/WebGLZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScale()F

    move-result v2

    .line 664
    .local v2, scaleY:F
    :goto_0
    invoke-virtual {v0, v3}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 666
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

    iget-object v6, p0, Lcom/android/browser/WebGLZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getTitleHeight()I

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

    iget-object v8, p0, Lcom/android/browser/WebGLZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 671
    iget-object v4, p0, Lcom/android/browser/WebGLZoomView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_0

    .line 674
    :cond_0
    iget-object v4, p0, Lcom/android/browser/WebGLZoomView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 675
    iget-object v4, p0, Lcom/android/browser/WebGLZoomView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 678
    return-void
.end method

.method public onWebViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 424
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    :goto_0
    move v1, v3

    .line 468
    :goto_1
    return v1

    .line 426
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 428
    iput-boolean v3, p0, Lcom/android/browser/WebGLZoomView;->mTouchMoved:Z

    move v1, v3

    .line 429
    goto :goto_1

    .line 431
    :cond_0
    iput-boolean v2, p0, Lcom/android/browser/WebGLZoomView;->mTouchMoved:Z

    goto :goto_0

    .line 436
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 442
    iput-boolean v3, p0, Lcom/android/browser/WebGLZoomView;->mTouchDown:Z

    .line 448
    :goto_2
    iput-boolean v3, p0, Lcom/android/browser/WebGLZoomView;->mTouchMoved:Z

    .line 449
    iput-boolean v3, p0, Lcom/android/browser/WebGLZoomView;->mOnScroll:Z

    .line 450
    iget-object v1, p0, Lcom/android/browser/WebGLZoomView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 451
    invoke-virtual {p0}, Lcom/android/browser/WebGLZoomView;->hide()V

    goto :goto_0

    .line 446
    :cond_1
    iput-boolean v2, p0, Lcom/android/browser/WebGLZoomView;->mTouchDown:Z

    goto :goto_2

    .line 456
    :pswitch_2
    iput-boolean v3, p0, Lcom/android/browser/WebGLZoomView;->mTouchDown:Z

    goto :goto_0

    .line 424
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 368
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 370
    return-void
.end method

.method removeRequestUpdateWebViewTexture()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 309
    return-void
.end method

.method requestDrawFrame(Z)V
    .locals 2
    .parameter "setflag"

    .prologue
    const/4 v1, 0x1

    .line 313
    if-ne p1, v1, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mRenderer:Lcom/android/browser/WebGLZoomRenderer;

    invoke-virtual {v0, v1}, Lcom/android/browser/WebGLZoomRenderer;->setDrawFrameFlag(Z)V

    .line 316
    :cond_0
    if-nez p1, :cond_2

    .line 318
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mRenderer:Lcom/android/browser/WebGLZoomRenderer;

    iget-boolean v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mDrawFrameFlag:Z

    if-nez v0, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/android/browser/WebGLZoomView;->requestRender()V

    .line 324
    :cond_1
    :goto_0
    return-void

    .line 322
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/WebGLZoomView;->requestRender()V

    goto :goto_0
.end method

.method requestSurfaceChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 689
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 690
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 691
    return-void
.end method

.method requestUpdateContents(Landroid/graphics/Region;)V
    .locals 3
    .parameter "region"

    .prologue
    const/4 v2, 0x1

    .line 682
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    sget-object v1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 683
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 684
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 685
    return-void
.end method

.method requestUpdateWebViewTexture()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 304
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 374
    return-void
.end method

.method public setTitleBarVisibility(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mRenderer:Lcom/android/browser/WebGLZoomRenderer;

    invoke-virtual {v0, p1}, Lcom/android/browser/WebGLZoomRenderer;->setTitleBarVisibility(Z)V

    .line 743
    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "view"
    .parameter "webViewContainer"
    .parameter "webViewGroup"

    .prologue
    const/4 v1, 0x0

    .line 479
    iput-object p1, p0, Lcom/android/browser/WebGLZoomView;->mWebView:Landroid/webkit/WebView;

    .line 480
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mRenderer:Lcom/android/browser/WebGLZoomRenderer;

    invoke-virtual {v0, p1}, Lcom/android/browser/WebGLZoomRenderer;->setWebView(Landroid/webkit/WebView;)V

    .line 482
    iput-object p2, p0, Lcom/android/browser/WebGLZoomView;->mWebViewContainer:Landroid/view/View;

    .line 483
    iput-object p3, p0, Lcom/android/browser/WebGLZoomView;->mWebViewGroup:Landroid/view/View;

    .line 485
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 486
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 488
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 333
    invoke-virtual {p0}, Lcom/android/browser/WebGLZoomView;->status()I

    move-result v0

    .line 334
    .local v0, status:I
    invoke-virtual {p0}, Lcom/android/browser/WebGLZoomView;->status()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 336
    sget-object v1, Lcom/android/browser/WebGLZoomView;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t show WebGLZoomView, status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-boolean v1, p0, Lcom/android/browser/WebGLZoomView;->mVisible:Z

    if-eq v1, v2, :cond_0

    .line 342
    iget-object v1, p0, Lcom/android/browser/WebGLZoomView;->mRenderer:Lcom/android/browser/WebGLZoomRenderer;

    invoke-virtual {v1}, Lcom/android/browser/WebGLZoomRenderer;->updateTitleBarTextureBitmap()V

    .line 344
    invoke-virtual {p0}, Lcom/android/browser/WebGLZoomView;->bringToFront()V

    .line 345
    iget-object v1, p0, Lcom/android/browser/WebGLZoomView;->mWebViewGroup:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 346
    iget-object v1, p0, Lcom/android/browser/WebGLZoomView;->mWebViewGroup:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 347
    iput-boolean v2, p0, Lcom/android/browser/WebGLZoomView;->mVisible:Z

    goto :goto_0
.end method

.method public status()I
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/browser/WebGLZoomView;->mRenderer:Lcom/android/browser/WebGLZoomRenderer;

    invoke-virtual {v0}, Lcom/android/browser/WebGLZoomRenderer;->status()I

    move-result v0

    return v0
.end method
