.class public Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "DiscView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/discplus/view/DiscView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiscGLSurfaceView"
.end annotation


# instance fields
.field private mDataChanged:Z

.field private mDiscView:Lcom/android/music/discplus/view/DiscView;

.field private mRenderer:Lcom/android/music/discplus/view/DiscRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 2244
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 2239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mDataChanged:Z

    .line 2245
    return-void
.end method

.method static synthetic access$1000(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;)Lcom/android/music/discplus/view/DiscRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2238
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2238
    iget-boolean v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mDataChanged:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2238
    iput-boolean p1, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mDataChanged:Z

    return p1
.end method

.method private getTotalCount()I
    .locals 1

    .prologue
    .line 2331
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->getTotalCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCurrentSelection()I
    .locals 1

    .prologue
    .line 2322
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    if-eqz v0, :cond_0

    .line 2323
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->topViewSyncNowPosition()I

    .line 2324
    invoke-direct {p0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->getTotalCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2325
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscRenderer;->getCurrentSelection()I

    move-result v0

    .line 2328
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxDiscCount()I
    .locals 1

    .prologue
    .line 2339
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscRenderer;->getMaxDiscCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMovingMode()I
    .locals 1

    .prologue
    .line 2335
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscRenderer;->getMovingMode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 2275
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    if-eqz v0, :cond_0

    .line 2276
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->getRenderMode()I

    move-result v0

    .line 2278
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public init(Lcom/android/music/discplus/view/DiscView;)V
    .locals 2
    .parameter "discView"

    .prologue
    .line 2247
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    .line 2249
    new-instance v0, Lcom/android/music/discplus/view/DiscRenderer;

    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-direct {v0, v1}, Lcom/android/music/discplus/view/DiscRenderer;-><init>(Lcom/android/music/discplus/view/DiscView;)V

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    .line 2250
    new-instance v0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$1;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$1;-><init>(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->setGLWrapper(Landroid/opengl/GLSurfaceView$GLWrapper;)V

    .line 2256
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    invoke-virtual {p0, v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 2257
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->setFocusable(Z)V

    .line 2258
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 2259
    return-void
.end method

.method public isAllowSwitchMove()Z
    .locals 1

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscRenderer;->isAllowSwitchMove()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDataChanged()V
    .locals 1

    .prologue
    .line 2292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mDataChanged:Z

    .line 2293
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    if-eqz v0, :cond_0

    .line 2294
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->requestRender()V

    .line 2296
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 2373
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    if-eqz v0, :cond_0

    .line 2374
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscRenderer;->onDestroy()V

    .line 2375
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    .line 2376
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 2265
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    if-eqz v0, :cond_0

    .line 2266
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 2267
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 2270
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    if-eqz v0, :cond_0

    .line 2271
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 2272
    :cond_0
    return-void
.end method

.method public reloadItemData(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 2286
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    if-eqz v0, :cond_0

    .line 2287
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    invoke-virtual {v0, p1}, Lcom/android/music/discplus/view/DiscRenderer;->releaseTexture(I)V

    .line 2289
    :cond_0
    return-void
.end method

.method public setChangeListViewStart()V
    .locals 1

    .prologue
    .line 2310
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    if-eqz v0, :cond_0

    .line 2311
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscRenderer;->setChangeListViewStart()V

    .line 2313
    :cond_0
    return-void
.end method

.method public setCurrentSelection(I)Z
    .locals 2
    .parameter "pos"

    .prologue
    .line 2315
    const/4 v0, 0x0

    .line 2316
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v1}, Lcom/android/music/discplus/view/DiscView;->getDataManager()Lcom/android/music/discplus/util/DiscPlusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/discplus/util/DiscPlusManager;->isManagerStop()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    if-eqz v1, :cond_0

    .line 2317
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    invoke-virtual {v1, p1}, Lcom/android/music/discplus/view/DiscRenderer;->setCurrentSelection(I)Z

    move-result v0

    .line 2319
    :cond_0
    return v0
.end method

.method public setDragStop()V
    .locals 1

    .prologue
    .line 2365
    new-instance v0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$4;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$4;-><init>(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 2371
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .parameter "renderMode"

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    if-eqz v0, :cond_0

    .line 2283
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 2284
    :cond_0
    return-void
.end method

.method public setSpinDegree(IZ)V
    .locals 1
    .parameter "degree"
    .parameter "drag"

    .prologue
    .line 2347
    new-instance v0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$2;-><init>(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;IZ)V

    invoke-virtual {p0, v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 2353
    return-void
.end method

.method public setSpinStop()V
    .locals 1

    .prologue
    .line 2356
    new-instance v0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$3;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$3;-><init>(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 2362
    return-void
.end method

.method public showChangeDiscAnimation()V
    .locals 1

    .prologue
    .line 2298
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    if-eqz v0, :cond_0

    .line 2299
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscRenderer;->showChangeDiscAnimation()V

    .line 2301
    :cond_0
    return-void
.end method

.method public startTouchRunnable()V
    .locals 1

    .prologue
    .line 2304
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    if-eqz v0, :cond_0

    .line 2305
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscRenderer;->startTouchRunnable()V

    .line 2307
    :cond_0
    return-void
.end method
