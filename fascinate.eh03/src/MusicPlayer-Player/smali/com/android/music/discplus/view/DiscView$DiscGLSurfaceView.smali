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
    .line 2398
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 2393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mDataChanged:Z

    .line 2399
    return-void
.end method

.method static synthetic access$1000(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;)Lcom/android/music/discplus/view/DiscRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2392
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2392
    iget-boolean v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mDataChanged:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2392
    iput-boolean p1, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mDataChanged:Z

    return p1
.end method

.method private getTotalCount()I
    .locals 1

    .prologue
    .line 2485
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
    .line 2476
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    if-eqz v0, :cond_0

    .line 2477
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->topViewSyncNowPosition()I

    .line 2478
    invoke-direct {p0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->getTotalCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2479
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscRenderer;->getCurrentSelection()I

    move-result v0

    .line 2482
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxDiscCount()I
    .locals 1

    .prologue
    .line 2493
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
    .line 2489
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
    .line 2429
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    if-eqz v0, :cond_0

    .line 2430
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->getRenderMode()I

    move-result v0

    .line 2432
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
    .line 2401
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    .line 2403
    new-instance v0, Lcom/android/music/discplus/view/DiscRenderer;

    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-direct {v0, v1}, Lcom/android/music/discplus/view/DiscRenderer;-><init>(Lcom/android/music/discplus/view/DiscView;)V

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    .line 2404
    new-instance v0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$1;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$1;-><init>(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->setGLWrapper(Landroid/opengl/GLSurfaceView$GLWrapper;)V

    .line 2410
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    invoke-virtual {p0, v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 2411
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->setFocusable(Z)V

    .line 2412
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 2413
    return-void
.end method

.method public isAllowSwitchMove()Z
    .locals 1

    .prologue
    .line 2497
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
    .line 2446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mDataChanged:Z

    .line 2447
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    if-eqz v0, :cond_0

    .line 2448
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->requestRender()V

    .line 2450
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 2527
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    if-eqz v0, :cond_0

    .line 2528
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscRenderer;->onDestroy()V

    .line 2529
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    .line 2530
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 2419
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    if-eqz v0, :cond_0

    .line 2420
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 2421
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 2424
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    if-eqz v0, :cond_0

    .line 2425
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 2426
    :cond_0
    return-void
.end method

.method public reloadItemData(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 2440
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    if-eqz v0, :cond_0

    .line 2441
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    invoke-virtual {v0, p1}, Lcom/android/music/discplus/view/DiscRenderer;->releaseTexture(I)V

    .line 2443
    :cond_0
    return-void
.end method

.method public setChangeListViewStart()V
    .locals 1

    .prologue
    .line 2464
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    if-eqz v0, :cond_0

    .line 2465
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscRenderer;->setChangeListViewStart()V

    .line 2467
    :cond_0
    return-void
.end method

.method public setCurrentSelection(I)Z
    .locals 2
    .parameter "pos"

    .prologue
    .line 2469
    const/4 v0, 0x0

    .line 2470
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v1}, Lcom/android/music/discplus/view/DiscView;->getDataManager()Lcom/android/music/discplus/util/DiscPlusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/discplus/util/DiscPlusManager;->isManagerStop()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    if-eqz v1, :cond_0

    .line 2471
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    invoke-virtual {v1, p1}, Lcom/android/music/discplus/view/DiscRenderer;->setCurrentSelection(I)Z

    move-result v0

    .line 2473
    :cond_0
    return v0
.end method

.method public setDragStop()V
    .locals 1

    .prologue
    .line 2519
    new-instance v0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$4;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$4;-><init>(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 2525
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .parameter "renderMode"

    .prologue
    .line 2436
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    if-eqz v0, :cond_0

    .line 2437
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 2438
    :cond_0
    return-void
.end method

.method public setSpinDegree(IZ)V
    .locals 1
    .parameter "degree"
    .parameter "drag"

    .prologue
    .line 2501
    new-instance v0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$2;-><init>(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;IZ)V

    invoke-virtual {p0, v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 2507
    return-void
.end method

.method public setSpinStop()V
    .locals 1

    .prologue
    .line 2510
    new-instance v0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$3;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$3;-><init>(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 2516
    return-void
.end method

.method public showChangeDiscAnimation()V
    .locals 1

    .prologue
    .line 2452
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    if-eqz v0, :cond_0

    .line 2453
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscRenderer;->showChangeDiscAnimation()V

    .line 2455
    :cond_0
    return-void
.end method

.method public startTouchRunnable()V
    .locals 1

    .prologue
    .line 2458
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    if-eqz v0, :cond_0

    .line 2459
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->mRenderer:Lcom/android/music/discplus/view/DiscRenderer;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscRenderer;->startTouchRunnable()V

    .line 2461
    :cond_0
    return-void
.end method
