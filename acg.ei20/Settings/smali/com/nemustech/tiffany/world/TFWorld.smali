.class public Lcom/nemustech/tiffany/world/TFWorld;
.super Ljava/lang/Object;
.source "TFWorld.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;,
        Lcom/nemustech/tiffany/world/TFWorld$OnSelectListener;,
        Lcom/nemustech/tiffany/world/TFWorld$TFBackground;,
        Lcom/nemustech/tiffany/world/TFWorld$OnViewSizeChangeListener;
    }
.end annotation


# static fields
.field public static final ATTACH_ORDER:I = 0x64

.field public static final AXIS_X:I = 0x0

.field public static final AXIS_Y:I = 0x1

.field public static final AXIS_Z:I = 0x2

.field static final CAP_QUERY_MATRIX:I = 0x1

.field public static final DEPTH_ORDER:I = 0x65

.field public static final EPSILON:F = 1.0E-4f

.field public static final FREEZE_ALL_VELOCITY:I = 0xff

.field public static final FREEZE_MOVING_VELOCITY:I = 0x1

.field public static final FREEZE_ROTATION_VELOCITY:I = 0x2

.field public static final IMAGE_DIRECTION_BOTTOM:I = 0x3

.field public static final IMAGE_DIRECTION_LEFT:I = 0x1

.field public static final IMAGE_DIRECTION_RIGHT:I = 0x2

.field public static final IMAGE_DIRECTION_TOP:I = 0x0

.field public static final MOVE:I = 0x0

.field public static final REVERSE_ALL:I = 0x3

.field public static final REVERSE_HORIZONTAL:I = 0x1

.field public static final REVERSE_NONE:I = 0x0

.field public static final REVERSE_VERTICAL:I = 0x2

.field public static final ROTATE:I = 0x1

.field public static final ROTATE_DECREASE:I = 0x1

.field public static final ROTATE_FASTWAY:I = 0x2

.field public static final ROTATE_INCREASE:I = 0x0

.field static final TAG:Ljava/lang/String; = "TFWorld"

.field static final TAP_ALLOW_RANGE:F = 25.0f

.field static final TIFFANY_WORLD_VERSION_MAJOR:I = 0x2

.field static final TIFFANY_WORLD_VERSION_MIDDLE:I = 0x6

.field static final TIFFANY_WORLD_VERSION_MINOR:I = 0x34


# instance fields
.field mBackground:Lcom/nemustech/tiffany/world/TFWorld$TFBackground;

.field mBanQueryingMatrix:Z

.field mBlendingMode:Z

.field private mCamera:Lcom/nemustech/tiffany/world/TFCamera;

.field private mCapability:I

.field mChangeFogStatus:Z

.field mColorBackgroundA:F

.field mColorBackgroundB:F

.field mColorBackgroundG:F

.field mColorBackgroundR:F

.field mDefaultDelayImageBmp:Landroid/graphics/Bitmap;

.field mDefaultDelayImageTextureInfo:Lcom/nemustech/tiffany/world/TFTextureInfo;

.field private mDepth:F

.field private mDepthTestMode:Z

.field private mEconomicMode:Z

.field mEffectFinishListener:Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;

.field private mEventHandler:Lcom/nemustech/tiffany/world/TFEventHandler;

.field mFogEnabled:Z

.field mFogEnd:F

.field mFogStart:F

.field mGLSurfaceView:Lcom/nemustech/tiffany/world/TFView;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:F

.field private mIsLocked:Z

.field mLoadTextureInAdvance:Z

.field private mPaused:Z

.field mPostDrawListener:Ljava/lang/Runnable;

.field mReflectingFloor:F

.field mReflection:Z

.field mReflectionOpacity:F

.field mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

.field mRequestRender:Z

.field mSelectListener:Lcom/nemustech/tiffany/world/TFWorld$OnSelectListener;

.field private mStartupDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mTextureFilter:I

.field mTextureIsLoading:Z

.field mTouchDown:Z

.field mTouchedModelColorMaskB:F

.field mTouchedModelColorMaskG:F

.field mTouchedModelColorMaskR:F

.field mTranslucentMode:Z

.field mUserTouchListener:Landroid/view/View$OnTouchListener;

.field mViewSizeChangeListener:Lcom/nemustech/tiffany/world/TFWorld$OnViewSizeChangeListener;

.field private mWidth:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 5
    .parameter "width"
    .parameter "height"
    .parameter "depth"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    iput-object v4, p0, Lcom/nemustech/tiffany/world/TFWorld;->mBackground:Lcom/nemustech/tiffany/world/TFWorld$TFBackground;

    .line 952
    iput-object v4, p0, Lcom/nemustech/tiffany/world/TFWorld;->mDefaultDelayImageBmp:Landroid/graphics/Bitmap;

    .line 986
    iput-boolean v1, p0, Lcom/nemustech/tiffany/world/TFWorld;->mBanQueryingMatrix:Z

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/world/TFWorld;->create(FFF)V

    .line 38
    invoke-virtual {p0, v2, v2, v2, v0}, Lcom/nemustech/tiffany/world/TFWorld;->setBackgroundColor(FFFF)V

    .line 39
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/world/TFWorld;->setTranslucentMode(Z)V

    .line 45
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/world/TFWorld;->banChiselFringe(Z)V

    .line 46
    invoke-virtual {p0, v0, v0, v0}, Lcom/nemustech/tiffany/world/TFWorld;->setTouchedModelColorMasking(FFF)V

    .line 47
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/world/TFWorld;->setEconomicMode(Z)V

    .line 48
    iput-boolean v1, p0, Lcom/nemustech/tiffany/world/TFWorld;->mReflection:Z

    .line 49
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/world/TFWorld;->setDepthTestMode(Z)V

    .line 50
    return-void
.end method

.method static synthetic access$002(Lcom/nemustech/tiffany/world/TFWorld;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFWorld;->mStartupDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nemustech/tiffany/world/TFWorld;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private applyEconomicMode()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mGLSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    if-eqz v0, :cond_0

    .line 242
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mEconomicMode:Z

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mGLSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFView;->setRenderMode(I)V

    .line 249
    :goto_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mGLSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFView;->requestRender()V

    .line 251
    :cond_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mGLSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFView;->setRenderMode(I)V

    goto :goto_0
.end method

.method private create(FFF)V
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "depth"

    .prologue
    const/4 v3, 0x0

    .line 381
    invoke-static {}, Lcom/nemustech/tiffany/world/TFUtils;->loadLibrary()V

    .line 383
    iput p1, p0, Lcom/nemustech/tiffany/world/TFWorld;->mWidth:F

    .line 384
    iput p2, p0, Lcom/nemustech/tiffany/world/TFWorld;->mHeight:F

    .line 385
    iput p3, p0, Lcom/nemustech/tiffany/world/TFWorld;->mDepth:F

    .line 388
    invoke-static {}, Lcom/nemustech/tiffany/world/TFCamera;->getCamera()Lcom/nemustech/tiffany/world/TFCamera;

    move-result-object v0

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mCamera:Lcom/nemustech/tiffany/world/TFCamera;

    .line 389
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mCamera:Lcom/nemustech/tiffany/world/TFCamera;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/world/TFCamera;->attatch(Lcom/nemustech/tiffany/world/TFWorld;)V

    .line 390
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mCamera:Lcom/nemustech/tiffany/world/TFCamera;

    const v1, 0x3e333333

    const/high16 v2, 0x3f00

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFCamera;->setLens(FF)V

    .line 391
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mCamera:Lcom/nemustech/tiffany/world/TFCamera;

    const/high16 v1, 0x4080

    invoke-virtual {v0, v3, v3, v1}, Lcom/nemustech/tiffany/world/TFCamera;->locate(FFF)V

    .line 393
    new-instance v0, Lcom/nemustech/tiffany/world/TFRenderer;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFWorld;->mCamera:Lcom/nemustech/tiffany/world/TFCamera;

    invoke-direct {v0, p0, v1}, Lcom/nemustech/tiffany/world/TFRenderer;-><init>(Lcom/nemustech/tiffany/world/TFWorld;Lcom/nemustech/tiffany/world/TFCamera;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    .line 394
    return-void
.end method

.method public static getVersion()I
    .locals 1

    .prologue
    .line 571
    const v0, 0x20634

    .line 576
    .local v0, version:I
    return v0
.end method


# virtual methods
.method public addReflectingFloor(FF)V
    .locals 1
    .parameter "y"
    .parameter "opacity"

    .prologue
    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mReflection:Z

    .line 116
    iput p1, p0, Lcom/nemustech/tiffany/world/TFWorld;->mReflectingFloor:F

    .line 117
    iput p2, p0, Lcom/nemustech/tiffany/world/TFWorld;->mReflectionOpacity:F

    .line 118
    return-void
.end method

.method public banChiselFringe(Z)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 102
    const/16 v0, 0x2600

    iput v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mTextureFilter:I

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    const/16 v0, 0x2601

    iput v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mTextureFilter:I

    goto :goto_0
.end method

.method public banQueryingMatrix(Z)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mBanQueryingMatrix:Z

    .line 88
    .local v0, pre:Z
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/TFWorld;->mBanQueryingMatrix:Z

    .line 89
    return v0
.end method

.method public clearEventQueue()V
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mGLSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mGLSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFView;->clearEventQueue()V

    .line 851
    :cond_0
    return-void
.end method

.method public clearFog()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mChangeFogStatus:Z

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mFogEnabled:Z

    .line 143
    return-void
.end method

.method public deleteDefaultDelayImage()V
    .locals 1

    .prologue
    .line 793
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mDefaultDelayImageBmp:Landroid/graphics/Bitmap;

    .line 794
    return-void
.end method

.method public dispatchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 932
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mGLSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/world/TFView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getCamera()Lcom/nemustech/tiffany/world/TFCamera;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mCamera:Lcom/nemustech/tiffany/world/TFCamera;

    return-object v0
.end method

.method public getDepth()F
    .locals 1

    .prologue
    .line 597
    iget v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mDepth:F

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mHeight:F

    return v0
.end method

.method public getHitModel(FF)Lcom/nemustech/tiffany/world/TFModel;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/nemustech/tiffany/world/TFRenderer;->getSelectedModel(FF)Lcom/nemustech/tiffany/world/TFModel;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHolder(I)Lcom/nemustech/tiffany/world/TFHolder;
    .locals 2
    .parameter "index"

    .prologue
    .line 192
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayHolder:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/world/TFHolder;

    .line 193
    .local v0, holder:Lcom/nemustech/tiffany/world/TFHolder;
    return-object v0
.end method

.method public getHolderCount()I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayHolder:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getModel(I)Lcom/nemustech/tiffany/world/TFModel;
    .locals 2
    .parameter "index"

    .prologue
    .line 166
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayModel:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/world/TFModel;

    .line 167
    .local v0, model:Lcom/nemustech/tiffany/world/TFModel;
    return-object v0
.end method

.method public getModelCount()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayModel:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getModelIndex(Lcom/nemustech/tiffany/world/TFModel;)I
    .locals 2
    .parameter "model"

    .prologue
    .line 204
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayModel:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 205
    .local v0, index:I
    return v0
.end method

.method public getRenderOrder()I
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFRenderer;->getRenderOrder()I

    move-result v0

    return v0
.end method

.method public getViewHeight()I
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    iget v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mHeight:I

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    iget v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mWidth:I

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mWidth:F

    return v0
.end method

.method public isBlendingMode()Z
    .locals 1

    .prologue
    .line 631
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mBlendingMode:Z

    return v0
.end method

.method isCapable(I)Z
    .locals 1
    .parameter "capability"

    .prologue
    .line 236
    iget v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mCapability:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDepthTestMode()Z
    .locals 1

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mDepthTestMode:Z

    return v0
.end method

.method public isEconomicMode()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mEconomicMode:Z

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mIsLocked:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mPaused:Z

    return v0
.end method

.method public isTranslucentMode()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mTranslucentMode:Z

    return v0
.end method

.method public locateCameraAtFullScreen()V
    .locals 9

    .prologue
    .line 914
    const-string v5, "TFWorld"

    const-string v6, "LocateCameraAtFullScreen"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFWorld;->getViewWidth()I

    move-result v2

    .line 916
    .local v2, width:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFWorld;->getViewHeight()I

    move-result v0

    .line 917
    .local v0, height:I
    if-le v2, v0, :cond_0

    move v1, v2

    .line 918
    .local v1, length:I
    :goto_0
    if-le v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFWorld;->getWidth()F

    move-result v5

    move v3, v5

    .line 919
    .local v3, worldLength:F
    :goto_1
    invoke-static {p0, v2, v0, v1, v3}, Lcom/nemustech/tiffany/world/TFUtils;->calcZ(Lcom/nemustech/tiffany/world/TFWorld;IIIF)F

    move-result v4

    .line 920
    .local v4, z:F
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFWorld;->getCamera()Lcom/nemustech/tiffany/world/TFCamera;

    move-result-object v5

    const/4 v6, 0x2

    neg-float v7, v4

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/nemustech/tiffany/world/TFCamera;->locate(IFZ)V

    .line 921
    return-void

    .end local v1           #length:I
    .end local v3           #worldLength:F
    .end local v4           #z:F
    :cond_0
    move v1, v0

    .line 917
    goto :goto_0

    .line 918
    .restart local v1       #length:I
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFWorld;->getHeight()F

    move-result v5

    move v3, v5

    goto :goto_1
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mIsLocked:Z

    .line 60
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    const-string v3, "TFWorld"

    .line 409
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFWorld;->mGLSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    if-eqz v2, :cond_1

    .line 412
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayHolder:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/world/TFHolder;

    .line 413
    .local v0, h:Lcom/nemustech/tiffany/world/TFHolder;
    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFHolder;->onPause()V

    goto :goto_0

    .line 417
    .end local v0           #h:Lcom/nemustech/tiffany/world/TFHolder;
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFWorld;->mGLSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    invoke-virtual {v2}, Lcom/nemustech/tiffany/world/TFView;->onPause()V

    .line 443
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nemustech/tiffany/world/TFWorld;->mPaused:Z

    .line 444
    const-string v2, "TFWorld"

    const-string v2, "TiffanyWorld has been paused."

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_1
    return-void

    .line 448
    :cond_1
    const-string v2, "TFWorld"

    const-string v2, "Tried to pause TiffanyWorld, but no GL surface view found"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 838
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mGLSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mGLSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/world/TFView;->queueEvent(Ljava/lang/Runnable;)V

    .line 841
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 843
    :cond_0
    return-void
.end method

.method public removeReflectingFloor()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mReflection:Z

    .line 229
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 859
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mEconomicMode:Z

    if-eqz v0, :cond_1

    .line 862
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mGLSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mGLSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFView;->requestRender()V

    .line 864
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mRequestRender:Z

    .line 866
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const-string v3, "TFWorld"

    .line 457
    iget-boolean v2, p0, Lcom/nemustech/tiffany/world/TFWorld;->mPaused:Z

    if-eqz v2, :cond_2

    .line 459
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFWorld;->mGLSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    if-eqz v2, :cond_1

    .line 461
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayHolder:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/world/TFHolder;

    .line 462
    .local v0, h:Lcom/nemustech/tiffany/world/TFHolder;
    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFHolder;->onResume()V

    goto :goto_0

    .line 465
    .end local v0           #h:Lcom/nemustech/tiffany/world/TFHolder;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nemustech/tiffany/world/TFWorld;->mPaused:Z

    .line 466
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFWorld;->mGLSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    invoke-virtual {v2}, Lcom/nemustech/tiffany/world/TFView;->onResume()V

    .line 467
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 468
    const-string v2, "TFWorld"

    const-string v2, "TiffanyWorld has been resumed"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_1
    return-void

    .line 472
    :cond_1
    const-string v2, "TFWorld"

    const-string v2, "Tried to resume TiffanyWorld, but no GL surface view found"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 477
    :cond_2
    const-string v2, "TFWorld"

    const-string v2, "Tried to resume TiffanyWorld which is already active."

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setBackgroundBitmap(Landroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 637
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mBackground:Lcom/nemustech/tiffany/world/TFWorld$TFBackground;

    if-nez v0, :cond_0

    .line 638
    new-instance v0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;-><init>(Lcom/nemustech/tiffany/world/TFWorld;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mBackground:Lcom/nemustech/tiffany/world/TFWorld$TFBackground;

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mBackground:Lcom/nemustech/tiffany/world/TFWorld$TFBackground;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->setNeedToBeUpdated(Z)V

    .line 641
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mBackground:Lcom/nemustech/tiffany/world/TFWorld$TFBackground;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->setImageResource(ILandroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public setBackgroundColor(FFFF)V
    .locals 0
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 373
    iput p1, p0, Lcom/nemustech/tiffany/world/TFWorld;->mColorBackgroundR:F

    .line 374
    iput p2, p0, Lcom/nemustech/tiffany/world/TFWorld;->mColorBackgroundG:F

    .line 375
    iput p3, p0, Lcom/nemustech/tiffany/world/TFWorld;->mColorBackgroundB:F

    .line 376
    iput p4, p0, Lcom/nemustech/tiffany/world/TFWorld;->mColorBackgroundA:F

    .line 377
    return-void
.end method

.method public setBackgroundImageResource(Landroid/content/res/Resources;I)Lcom/nemustech/tiffany/world/TFError;
    .locals 2
    .parameter "resources"
    .parameter "resource_id"

    .prologue
    .line 645
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mBackground:Lcom/nemustech/tiffany/world/TFWorld$TFBackground;

    if-nez v0, :cond_0

    .line 646
    new-instance v0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;-><init>(Lcom/nemustech/tiffany/world/TFWorld;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mBackground:Lcom/nemustech/tiffany/world/TFWorld$TFBackground;

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mBackground:Lcom/nemustech/tiffany/world/TFWorld$TFBackground;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->setNeedToBeUpdated(Z)V

    .line 649
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mBackground:Lcom/nemustech/tiffany/world/TFWorld$TFBackground;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->setImageResource(ILandroid/content/res/Resources;I)Lcom/nemustech/tiffany/world/TFError;

    move-result-object v0

    return-object v0
.end method

.method public setBackgroundImageResource(Ljava/lang/String;)Lcom/nemustech/tiffany/world/TFError;
    .locals 2
    .parameter "fileName"

    .prologue
    .line 653
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mBackground:Lcom/nemustech/tiffany/world/TFWorld$TFBackground;

    if-nez v0, :cond_0

    .line 654
    new-instance v0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;-><init>(Lcom/nemustech/tiffany/world/TFWorld;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mBackground:Lcom/nemustech/tiffany/world/TFWorld$TFBackground;

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mBackground:Lcom/nemustech/tiffany/world/TFWorld$TFBackground;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->setNeedToBeUpdated(Z)V

    .line 657
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mBackground:Lcom/nemustech/tiffany/world/TFWorld$TFBackground;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->setImageResource(ILjava/lang/String;)Lcom/nemustech/tiffany/world/TFError;

    move-result-object v0

    return-object v0
.end method

.method public setBlendingMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 624
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/TFWorld;->mBlendingMode:Z

    .line 625
    return-void
.end method

.method setCapability(I)V
    .locals 1
    .parameter "capability"

    .prologue
    .line 232
    iget v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mCapability:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mCapability:I

    .line 233
    return-void
.end method

.method public setDefaultDelayImage(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 784
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/nemustech/tiffany/world/TFUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mDefaultDelayImageBmp:Landroid/graphics/Bitmap;

    .line 785
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mDefaultDelayImageBmp:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/world/TFTextures;->createTextureInfo(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Lcom/nemustech/tiffany/world/TFTextureInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mDefaultDelayImageTextureInfo:Lcom/nemustech/tiffany/world/TFTextureInfo;

    .line 786
    return-void
.end method

.method public setDepthTestMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 611
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/TFWorld;->mDepthTestMode:Z

    .line 612
    return-void
.end method

.method public setEconomicMode(Z)V
    .locals 0
    .parameter "economicMode"

    .prologue
    .line 315
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/TFWorld;->mEconomicMode:Z

    .line 316
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFWorld;->applyEconomicMode()V

    .line 317
    return-void
.end method

.method public setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V
    .locals 0
    .parameter "effectFinishListener"

    .prologue
    .line 559
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFWorld;->mEffectFinishListener:Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;

    .line 560
    return-void
.end method

.method public setModelIndex(Lcom/nemustech/tiffany/world/TFModel;I)V
    .locals 1
    .parameter "model"
    .parameter "newIndex"

    .prologue
    .line 215
    invoke-virtual {p1}, Lcom/nemustech/tiffany/world/TFModel;->getHolder()Lcom/nemustech/tiffany/world/TFHolder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayModel:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 217
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mAttachOrder:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayModel:Ljava/util/LinkedList;

    invoke-virtual {v0, p2, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mAttachOrder:Ljava/util/LinkedList;

    invoke-virtual {v0, p2, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 221
    :cond_0
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "onTouchListener"

    .prologue
    .line 549
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFWorld;->mUserTouchListener:Landroid/view/View$OnTouchListener;

    .line 550
    return-void
.end method

.method public setPostDrawListener(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "postDrawListener"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFRenderer;->initDrawCount()V

    .line 518
    :cond_0
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFWorld;->mPostDrawListener:Ljava/lang/Runnable;

    .line 519
    return-void
.end method

.method public setRenderOrder(I)V
    .locals 1
    .parameter "order"

    .prologue
    .line 924
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/world/TFRenderer;->setRenderOrder(I)V

    .line 925
    return-void
.end method

.method public setSelectListener(Lcom/nemustech/tiffany/world/TFWorld$OnSelectListener;)V
    .locals 0
    .parameter "selectListener"

    .prologue
    .line 538
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFWorld;->mSelectListener:Lcom/nemustech/tiffany/world/TFWorld$OnSelectListener;

    .line 539
    return-void
.end method

.method public setStartupImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "startupImage"

    .prologue
    .line 497
    const-string v0, "TFWorld"

    const-string v1, "SetStartupImage!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mStartupDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 499
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mHandler:Landroid/os/Handler;

    .line 501
    new-instance v0, Lcom/nemustech/tiffany/world/TFWorld$2;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/world/TFWorld$2;-><init>(Lcom/nemustech/tiffany/world/TFWorld;)V

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFWorld;->setPostDrawListener(Ljava/lang/Runnable;)V

    .line 512
    return-void
.end method

.method public setTouchedModelColorMasking(FFF)V
    .locals 0
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    .line 357
    iput p1, p0, Lcom/nemustech/tiffany/world/TFWorld;->mTouchedModelColorMaskR:F

    .line 358
    iput p2, p0, Lcom/nemustech/tiffany/world/TFWorld;->mTouchedModelColorMaskG:F

    .line 359
    iput p3, p0, Lcom/nemustech/tiffany/world/TFWorld;->mTouchedModelColorMaskB:F

    .line 360
    return-void
.end method

.method public setTranslucentMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 338
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/TFWorld;->mTranslucentMode:Z

    .line 340
    return-void
.end method

.method public setViewSizeChangeListener(Lcom/nemustech/tiffany/world/TFWorld$OnViewSizeChangeListener;)V
    .locals 0
    .parameter "viewSizeChangeListener"

    .prologue
    .line 534
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFWorld;->mViewSizeChangeListener:Lcom/nemustech/tiffany/world/TFWorld$OnViewSizeChangeListener;

    .line 535
    return-void
.end method

.method public show(Landroid/view/View;)Lcom/nemustech/tiffany/world/TFError;
    .locals 10
    .parameter "TiffanyView"

    .prologue
    const/16 v1, 0x8

    const-string v9, "."

    const-string v8, "TFWorld"

    .line 263
    check-cast p1, Lcom/nemustech/tiffany/world/TFView;

    .end local p1
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFWorld;->mGLSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    .line 265
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mStartupDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mGLSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFWorld;->mStartupDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Lcom/nemustech/tiffany/world/TFView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mGLSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    new-instance v2, Lcom/nemustech/tiffany/world/TFWorld$1;

    invoke-direct {v2, p0}, Lcom/nemustech/tiffany/world/TFWorld$1;-><init>(Lcom/nemustech/tiffany/world/TFWorld;)V

    invoke-virtual {v0, v2}, Lcom/nemustech/tiffany/world/TFView;->setGLWrapper(Lcom/nemustech/tiffany/world/TFView$GLWrapper;)V

    .line 274
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFWorld;->mSelectListener:Lcom/nemustech/tiffany/world/TFWorld$OnSelectListener;

    iput-object v2, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mSelectListener:Lcom/nemustech/tiffany/world/TFWorld$OnSelectListener;

    .line 276
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mTranslucentMode:Z

    if-eqz v0, :cond_1

    .line 278
    const-string v0, "TFWorld"

    const-string v0, "Translucent mode is activated"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mGLSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    const/16 v5, 0x10

    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/nemustech/tiffany/world/TFView;->setEGLConfigChooser(IIIIII)V

    .line 280
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mGLSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 286
    :goto_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mGLSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFView;->setRenderer(Lcom/nemustech/tiffany/world/TFView$Renderer;)V

    .line 287
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFWorld;->applyEconomicMode()V

    .line 289
    new-instance v0, Lcom/nemustech/tiffany/world/TFEventHandler;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    invoke-direct {v0, p0, v1}, Lcom/nemustech/tiffany/world/TFEventHandler;-><init>(Lcom/nemustech/tiffany/world/TFWorld;Lcom/nemustech/tiffany/world/TFRenderer;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mEventHandler:Lcom/nemustech/tiffany/world/TFEventHandler;

    .line 290
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mGLSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFWorld;->mEventHandler:Lcom/nemustech/tiffany/world/TFEventHandler;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFEventHandler;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 292
    invoke-static {}, Lcom/nemustech/tiffany/world/TFWorld;->getVersion()I

    move-result v7

    .line 293
    .local v7, version:I
    const-string v0, "TFWorld"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tiffany world("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, 0xff

    and-int/2addr v1, v7

    shr-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0xff00

    and-int/2addr v1, v7

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 v1, v7, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static {}, Lcom/nemustech/tiffany/world/TFUtils;->isEmulator()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    const-string v0, "TFWorld"

    const-string v0, "Running on Emulator."

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :goto_1
    sget-object v0, Lcom/nemustech/tiffany/world/TFError;->ERROR_NONE:Lcom/nemustech/tiffany/world/TFError;

    return-object v0

    .line 284
    .end local v7           #version:I
    :cond_1
    const-string v0, "TFWorld"

    const-string v0, "Running in non-translucent mode"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 301
    .restart local v7       #version:I
    :cond_2
    const-string v0, "TFWorld"

    const-string v0, "Running on Device."

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public spreadFog(FF)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mChangeFogStatus:Z

    .line 130
    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mFogEnabled:Z

    .line 132
    neg-float v0, p1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mFogStart:F

    .line 133
    neg-float v0, p2

    iput v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mFogEnd:F

    .line 134
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 488
    return-void
.end method

.method public toWorldCoord([I[F)V
    .locals 1
    .parameter "uiCoord"
    .parameter "worldCoord"

    .prologue
    const/4 v0, 0x0

    .line 908
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/nemustech/tiffany/world/TFWorld;->toWorldCoord([I[FII)V

    .line 909
    return-void
.end method

.method public toWorldCoord([I[FII)V
    .locals 11
    .parameter "uiCoord"
    .parameter "worldCoord"
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 889
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFWorld;->getViewWidth()I

    move-result v6

    .line 890
    .local v6, width:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFWorld;->getViewHeight()I

    move-result v0

    .line 891
    .local v0, height:I
    if-le v6, v0, :cond_0

    move v1, v6

    .line 892
    .local v1, length:I
    :goto_0
    if-le v6, v0, :cond_1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFWorld;->getWidth()F

    move-result v8

    move v7, v8

    .line 893
    .local v7, worldLength:F
    :goto_1
    const/4 v8, 0x0

    aget v8, p1, v8

    sub-int v4, v8, p3

    .line 894
    .local v4, vx:I
    const/4 v8, 0x1

    aget v8, p1, v8

    sub-int v5, v8, p4

    .line 895
    .local v5, vy:I
    const/4 v8, 0x2

    aget v3, p1, v8

    .line 896
    .local v3, vw:I
    const/4 v8, 0x3

    aget v2, p1, v8

    .line 898
    .local v2, vh:I
    const/4 v8, 0x0

    neg-int v9, v6

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v4

    div-int/lit8 v10, v3, 0x2

    add-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v7

    int-to-float v10, v1

    div-float/2addr v9, v10

    aput v9, p2, v8

    .line 899
    const/4 v8, 0x1

    div-int/lit8 v9, v0, 0x2

    sub-int/2addr v9, v5

    div-int/lit8 v10, v2, 0x2

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v7

    int-to-float v10, v1

    div-float/2addr v9, v10

    aput v9, p2, v8

    .line 900
    const/4 v8, 0x2

    int-to-float v9, v3

    mul-float/2addr v9, v7

    int-to-float v10, v1

    div-float/2addr v9, v10

    aput v9, p2, v8

    .line 901
    const/4 v8, 0x3

    int-to-float v9, v2

    mul-float/2addr v9, v7

    int-to-float v10, v1

    div-float/2addr v9, v10

    aput v9, p2, v8

    .line 902
    return-void

    .end local v1           #length:I
    .end local v2           #vh:I
    .end local v3           #vw:I
    .end local v4           #vx:I
    .end local v5           #vy:I
    .end local v7           #worldLength:F
    :cond_0
    move v1, v0

    .line 891
    goto :goto_0

    .line 892
    .restart local v1       #length:I
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFWorld;->getHeight()F

    move-result v8

    move v7, v8

    goto :goto_1
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFWorld;->mIsLocked:Z

    .line 68
    return-void
.end method
