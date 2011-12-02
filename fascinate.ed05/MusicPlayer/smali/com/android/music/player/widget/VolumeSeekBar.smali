.class public Lcom/android/music/player/widget/VolumeSeekBar;
.super Landroid/view/View;
.source "VolumeSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/player/widget/VolumeSeekBar$1;,
        Lcom/android/music/player/widget/VolumeSeekBar$SavedState;,
        Lcom/android/music/player/widget/VolumeSeekBar$RefreshProgressRunnable;,
        Lcom/android/music/player/widget/VolumeSeekBar$OnSeekBarBookmarkChangeListener;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:I = 0x2710

.field private static mIsUserSeekable:Z

.field private static mKeyProgressIncrement:I


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResourceId:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMinHeight:I

.field private mMinWidth:I

.field private mOnSeekBarBookmarkChangeListener:Lcom/android/music/player/widget/VolumeSeekBar$OnSeekBarBookmarkChangeListener;

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressPointDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressPointResourceId:I

.field private mProgressResourceId:I

.field mRefreshProgressRunnable:Lcom/android/music/player/widget/VolumeSeekBar$RefreshProgressRunnable;

.field private mTouchProgressOffset:F

.field private mUiThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 25
    sput-boolean v0, Lcom/android/music/player/widget/VolumeSeekBar;->mIsUserSeekable:Z

    .line 27
    sput v0, Lcom/android/music/player/widget/VolumeSeekBar;->mKeyProgressIncrement:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 33
    iput-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 35
    iput-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressPointDrawable:Landroid/graphics/drawable/Drawable;

    .line 119
    invoke-direct {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->init()V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 33
    iput-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 35
    iput-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressPointDrawable:Landroid/graphics/drawable/Drawable;

    .line 129
    invoke-direct {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->init()V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 33
    iput-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 35
    iput-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressPointDrawable:Landroid/graphics/drawable/Drawable;

    .line 139
    invoke-direct {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->init()V

    .line 141
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 147
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mUiThreadId:J

    .line 151
    iget-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 153
    const v0, 0x7f02010c

    invoke-virtual {p0, v0}, Lcom/android/music/player/widget/VolumeSeekBar;->setBackgroundDrawable(I)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 159
    const v0, 0x7f02010b

    invoke-virtual {p0, v0}, Lcom/android/music/player/widget/VolumeSeekBar;->setProgressDrawable(I)V

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressPointDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 165
    const v0, 0x7f0200e5

    invoke-virtual {p0, v0}, Lcom/android/music/player/widget/VolumeSeekBar;->setProgressPointDrawable(I)V

    .line 169
    :cond_2
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mMax:I

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgress:I

    .line 177
    iput v2, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mMinWidth:I

    .line 179
    iget-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mMaxWidth:I

    .line 181
    iput v2, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mMinHeight:I

    .line 183
    iget-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressPointDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mMaxHeight:I

    .line 185
    iget-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 187
    return-void
.end method

.method private refreshProgress(IIZ)V
    .locals 5
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 434
    iget-wide v1, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 436
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/music/player/widget/VolumeSeekBar;->doRefreshProgress(IIZ)V

    .line 466
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mRefreshProgressRunnable:Lcom/android/music/player/widget/VolumeSeekBar$RefreshProgressRunnable;

    if-nez v1, :cond_1

    .line 446
    new-instance v0, Lcom/android/music/player/widget/VolumeSeekBar$RefreshProgressRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/music/player/widget/VolumeSeekBar$RefreshProgressRunnable;-><init>(Lcom/android/music/player/widget/VolumeSeekBar;IIZ)V

    .line 462
    .local v0, r:Lcom/android/music/player/widget/VolumeSeekBar$RefreshProgressRunnable;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/music/player/widget/VolumeSeekBar;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 452
    .end local v0           #r:Lcom/android/music/player/widget/VolumeSeekBar$RefreshProgressRunnable;
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mRefreshProgressRunnable:Lcom/android/music/player/widget/VolumeSeekBar$RefreshProgressRunnable;

    .line 456
    .restart local v0       #r:Lcom/android/music/player/widget/VolumeSeekBar$RefreshProgressRunnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mRefreshProgressRunnable:Lcom/android/music/player/widget/VolumeSeekBar$RefreshProgressRunnable;

    .line 458
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/music/player/widget/VolumeSeekBar$RefreshProgressRunnable;->setup(IIZ)V

    goto :goto_1
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;F)V
    .locals 9
    .parameter "h"
    .parameter "thumb"
    .parameter "scale"

    .prologue
    const/4 v8, 0x0

    .line 496
    int-to-float v4, p1

    mul-float/2addr v4, p3

    float-to-int v4, v4

    sub-int v2, p1, v4

    .line 498
    .local v2, thumbPos:I
    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->getPaddingRight()I

    move-result v5

    sub-int v3, v4, v5

    .line 500
    .local v3, w:I
    iget-object v4, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int v4, v3, v4

    div-int/lit8 v0, v4, 0x2

    .line 504
    .local v0, Xc:I
    invoke-virtual {p2, v8, v2, v3, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 508
    const/4 v1, 0x0

    .line 510
    .local v1, endY:I
    float-to-double v4, p3

    const-wide v6, 0x3fc999999999999aL

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressPointDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    const/4 v5, 0x2

    sub-int v1, v4, v5

    .line 522
    :goto_0
    iget-object v4, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressPointDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressPointDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v4, v8, v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 524
    return-void

    .line 512
    :cond_0
    float-to-double v4, p3

    const-wide v6, 0x3fd999999999999aL

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    iget-object v4, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressPointDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    const/4 v5, 0x1

    sub-int v1, v4, v5

    goto :goto_0

    .line 514
    :cond_1
    float-to-double v4, p3

    const-wide v6, 0x3fe3333333333333L

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    iget-object v4, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressPointDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v1, v2, v4

    goto :goto_0

    .line 516
    :cond_2
    float-to-double v4, p3

    const-wide v6, 0x3fe999999999999aL

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    iget-object v4, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressPointDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    add-int/lit8 v1, v4, 0x1

    goto :goto_0

    .line 518
    :cond_3
    iget-object v4, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressPointDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    add-int/lit8 v1, v4, 0x2

    goto :goto_0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->getHeight()I

    move-result v1

    .line 598
    .local v1, height:I
    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->getPaddingTop()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->getPaddingBottom()I

    move-result v7

    sub-int v0, v6, v7

    .line 600
    .local v0, available:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 604
    .local v5, y:I
    const/4 v3, 0x0

    .line 608
    .local v3, progress:F
    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->getPaddingTop()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 610
    const/4 v4, 0x0

    .line 626
    .local v4, scale:F
    :goto_0
    iget v2, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mMax:I

    .line 628
    .local v2, max:I
    int-to-float v6, v2

    mul-float/2addr v6, v4

    add-float/2addr v3, v6

    .line 630
    const/4 v6, 0x0

    cmpg-float v6, v3, v6

    if-gez v6, :cond_3

    .line 632
    const/4 v3, 0x0

    .line 640
    :cond_0
    :goto_1
    float-to-int v6, v3

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/android/music/player/widget/VolumeSeekBar;->setProgress(IZ)V

    .line 642
    return-void

    .line 612
    .end local v2           #max:I
    .end local v4           #scale:F
    :cond_1
    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->getPaddingBottom()I

    move-result v6

    sub-int v6, v1, v6

    if-le v5, v6, :cond_2

    .line 614
    const/high16 v4, 0x3f80

    .restart local v4       #scale:F
    goto :goto_0

    .line 618
    .end local v4           #scale:F
    :cond_2
    sub-int v6, v0, v5

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v4, v6, v7

    .line 620
    .restart local v4       #scale:F
    iget v3, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mTouchProgressOffset:F

    goto :goto_0

    .line 634
    .restart local v2       #max:I
    :cond_3
    int-to-float v6, v2

    cmpl-float v6, v3, v6

    if-lez v6, :cond_0

    .line 636
    int-to-float v3, v2

    goto :goto_1
.end method


# virtual methods
.method declared-synchronized doRefreshProgress(IIZ)V
    .locals 7
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 366
    monitor-enter p0

    :try_start_0
    iget v5, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mMax:I

    if-lez v5, :cond_2

    int-to-float v5, p2

    iget v6, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mMax:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    move v4, v5

    .line 368
    .local v4, scale:F
    :goto_0
    iget-object v1, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 372
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 374
    const/4 v3, 0x0

    .line 378
    .local v3, progressDrawable:Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_0

    .line 380
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v5, v0

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 386
    :cond_0
    const v5, 0x461c4000

    mul-float/2addr v5, v4

    float-to-int v2, v5

    .line 388
    .local v2, level:I
    if-eqz v3, :cond_3

    move-object v5, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 398
    .end local v2           #level:I
    .end local v3           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :goto_2
    iget v5, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressResourceId:I

    if-ne p1, v5, :cond_1

    .line 400
    invoke-virtual {p0, v4, p3}, Lcom/android/music/player/widget/VolumeSeekBar;->onProgressRefresh(FZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    :cond_1
    monitor-exit p0

    return-void

    .line 366
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #scale:F
    :cond_2
    const/4 v5, 0x0

    move v4, v5

    goto :goto_0

    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #level:I
    .restart local v3       #progressDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #scale:F
    :cond_3
    move-object v5, v1

    .line 388
    goto :goto_1

    .line 392
    .end local v2           #level:I
    .end local v3           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 366
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #scale:F
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgress:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    .line 760
    iget-object v2, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 762
    .local v2, d:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressPointDrawable:Landroid/graphics/drawable/Drawable;

    .line 764
    .local v4, p:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 766
    .local v1, bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->getPaddingRight()I

    move-result v7

    sub-int v5, v6, v7

    .line 768
    .local v5, w:I
    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->getPaddingBottom()I

    move-result v7

    sub-int v3, v6, v7

    .line 770
    .local v3, h:I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int v6, v3, v6

    div-int/lit8 v0, v6, 0x2

    .line 772
    .local v0, Yc:I
    invoke-virtual {v1, v8, v8, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 774
    if-eqz v2, :cond_0

    .line 776
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 778
    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 780
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 782
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 784
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 786
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 790
    :cond_0
    return-void
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    .line 672
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 680
    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->getProgress()I

    move-result v0

    .line 684
    .local v0, progress:I
    packed-switch p1, :pswitch_data_0

    .line 724
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 688
    :pswitch_0
    if-lez v0, :cond_0

    .line 694
    sget v1, Lcom/android/music/player/widget/VolumeSeekBar;->mKeyProgressIncrement:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1, v2}, Lcom/android/music/player/widget/VolumeSeekBar;->setProgress(IZ)V

    .line 696
    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->onKeyChange()V

    move v1, v2

    .line 698
    goto :goto_0

    .line 704
    :pswitch_1
    iget v1, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mMax:I

    if-ge v0, v1, :cond_0

    .line 710
    sget v1, Lcom/android/music/player/widget/VolumeSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v2}, Lcom/android/music/player/widget/VolumeSeekBar;->setProgress(IZ)V

    .line 712
    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->onKeyChange()V

    move v1, v2

    .line 714
    goto :goto_0

    .line 684
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressPointDrawable:Landroid/graphics/drawable/Drawable;

    .line 738
    .local v0, b:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 740
    .local v2, dw:I
    const/4 v1, 0x0

    .line 742
    .local v1, dh:I
    if-eqz v0, :cond_0

    .line 744
    iget v3, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mMinWidth:I

    iget v4, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 746
    iget v3, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mMinHeight:I

    iget v4, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 750
    :cond_0
    invoke-static {v2, p1}, Lcom/android/music/player/widget/VolumeSeekBar;->resolveSize(II)I

    move-result v3

    invoke-static {v1, p2}, Lcom/android/music/player/widget/VolumeSeekBar;->resolveSize(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/music/player/widget/VolumeSeekBar;->setMeasuredDimension(II)V

    .line 752
    return-void
.end method

.method onProgressRefresh(FZ)V
    .locals 3
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 412
    .local v0, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->getHeight()I

    move-result v1

    invoke-direct {p0, v1, v0, p1}, Lcom/android/music/player/widget/VolumeSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;F)V

    .line 416
    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->invalidate()V

    .line 422
    :cond_0
    iget-object v1, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mOnSeekBarBookmarkChangeListener:Lcom/android/music/player/widget/VolumeSeekBar$OnSeekBarBookmarkChangeListener;

    if-eqz v1, :cond_1

    .line 424
    iget-object v1, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mOnSeekBarBookmarkChangeListener:Lcom/android/music/player/widget/VolumeSeekBar$OnSeekBarBookmarkChangeListener;

    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->getProgress()I

    move-result v2

    invoke-interface {v1, p0, v2, p2}, Lcom/android/music/player/widget/VolumeSeekBar$OnSeekBarBookmarkChangeListener;->onProgressChanged(Lcom/android/music/player/widget/VolumeSeekBar;IZ)V

    .line 428
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 882
    move-object v0, p1

    check-cast v0, Lcom/android/music/player/widget/VolumeSeekBar$SavedState;

    move-object v1, v0

    .line 884
    .local v1, ss:Lcom/android/music/player/widget/VolumeSeekBar$SavedState;
    invoke-virtual {v1}, Lcom/android/music/player/widget/VolumeSeekBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 888
    iget v2, v1, Lcom/android/music/player/widget/VolumeSeekBar$SavedState;->progress:I

    invoke-virtual {p0, v2}, Lcom/android/music/player/widget/VolumeSeekBar;->setProgress(I)V

    .line 892
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 864
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 866
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/android/music/player/widget/VolumeSeekBar$SavedState;

    invoke-direct {v0, v1}, Lcom/android/music/player/widget/VolumeSeekBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 868
    .local v0, ss:Lcom/android/music/player/widget/VolumeSeekBar$SavedState;
    iget v2, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgress:I

    iput v2, v0, Lcom/android/music/player/widget/VolumeSeekBar$SavedState;->progress:I

    .line 872
    return-object v0
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mOnSeekBarBookmarkChangeListener:Lcom/android/music/player/widget/VolumeSeekBar$OnSeekBarBookmarkChangeListener;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mOnSeekBarBookmarkChangeListener:Lcom/android/music/player/widget/VolumeSeekBar$OnSeekBarBookmarkChangeListener;

    invoke-interface {v0, p0}, Lcom/android/music/player/widget/VolumeSeekBar$OnSeekBarBookmarkChangeListener;->onStartTrackingTouch(Lcom/android/music/player/widget/VolumeSeekBar;)V

    .line 654
    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mOnSeekBarBookmarkChangeListener:Lcom/android/music/player/widget/VolumeSeekBar$OnSeekBarBookmarkChangeListener;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mOnSeekBarBookmarkChangeListener:Lcom/android/music/player/widget/VolumeSeekBar$OnSeekBarBookmarkChangeListener;

    invoke-interface {v0, p0}, Lcom/android/music/player/widget/VolumeSeekBar$OnSeekBarBookmarkChangeListener;->onStopTrackingTouch(Lcom/android/music/player/widget/VolumeSeekBar;)V

    .line 666
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 532
    sget-boolean v0, Lcom/android/music/player/widget/VolumeSeekBar;->mIsUserSeekable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 588
    :goto_0
    return v0

    .line 540
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    move v0, v2

    .line 588
    goto :goto_0

    .line 544
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/music/player/widget/VolumeSeekBar;->setPressed(Z)V

    .line 546
    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->onStartTrackingTouch()V

    .line 548
    invoke-direct {p0, p1}, Lcom/android/music/player/widget/VolumeSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 556
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/music/player/widget/VolumeSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 564
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/music/player/widget/VolumeSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 566
    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->onStopTrackingTouch()V

    .line 568
    invoke-virtual {p0, v1}, Lcom/android/music/player/widget/VolumeSeekBar;->setPressed(Z)V

    goto :goto_1

    .line 576
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->onStopTrackingTouch()V

    .line 578
    invoke-virtual {p0, v1}, Lcom/android/music/player/widget/VolumeSeekBar;->setPressed(Z)V

    goto :goto_1

    .line 540
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setBackgroundDrawable(I)V
    .locals 2
    .parameter "resourceId"

    .prologue
    .line 193
    iput p1, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mBackgroundResourceId:I

    .line 195
    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mBackgroundResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 197
    return-void
.end method

.method public setMax(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 472
    move v0, p1

    .line 476
    .local v0, val:I
    if-gez v0, :cond_0

    .line 478
    const/4 v0, 0x0

    .line 482
    :cond_0
    iget v1, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mMax:I

    if-eq v0, v1, :cond_1

    .line 484
    iput v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mMax:I

    .line 488
    :cond_1
    return-void
.end method

.method public setOnSeekBarBookmarkChangeListener(Lcom/android/music/player/widget/VolumeSeekBar$OnSeekBarBookmarkChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mOnSeekBarBookmarkChangeListener:Lcom/android/music/player/widget/VolumeSeekBar$OnSeekBarBookmarkChangeListener;

    .line 111
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/music/player/widget/VolumeSeekBar;->setProgress(IZ)V

    .line 245
    return-void
.end method

.method public setProgress(IZ)V
    .locals 3
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 251
    div-int/lit8 v1, p1, 0x7

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v1, 0x7

    .line 255
    .local v0, prgs:I
    if-gez v0, :cond_0

    .line 257
    const/4 v0, 0x0

    .line 263
    :cond_0
    iget v1, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mMax:I

    if-le v0, v1, :cond_1

    .line 265
    iget v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mMax:I

    .line 270
    :cond_1
    iget v1, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgress:I

    if-eq v0, v1, :cond_2

    .line 272
    iput v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgress:I

    .line 274
    iget v1, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressResourceId:I

    iget v2, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgress:I

    invoke-direct {p0, v1, v2, p2}, Lcom/android/music/player/widget/VolumeSeekBar;->refreshProgress(IIZ)V

    .line 278
    :cond_2
    return-void
.end method

.method public setProgressDrawable(I)V
    .locals 2
    .parameter "resourceId"

    .prologue
    .line 203
    iput p1, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressResourceId:I

    .line 205
    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 207
    iget-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 209
    return-void
.end method

.method public setProgressPointDrawable(I)V
    .locals 2
    .parameter "resourceId"

    .prologue
    .line 215
    iput p1, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressPointResourceId:I

    .line 217
    invoke-virtual {p0}, Lcom/android/music/player/widget/VolumeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressPointResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar;->mProgressPointDrawable:Landroid/graphics/drawable/Drawable;

    .line 219
    return-void
.end method
