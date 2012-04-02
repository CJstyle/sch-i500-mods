.class Landroid/widget/AbsListView$TwFlingRunnable;
.super Landroid/widget/AbsListView$FlingRunnable;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwFlingRunnable"
.end annotation


# instance fields
.field private mLastFlingY:I

.field private mLastFlingYTime:I

.field private final mScroller:Landroid/widget/Scroller;

.field private mSecondLastFlingY:I

.field private mSecondLastFlingYTime:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3266
    iput-object p1, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    .line 3263
    iput v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mLastFlingYTime:I

    .line 3264
    iput v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mSecondLastFlingYTime:I

    .line 3267
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 3277
    return-void
.end method

.method private endFling()V
    .locals 2

    .prologue
    .line 3323
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3325
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3326
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->access$1100(Landroid/widget/AbsListView;)V

    .line 3328
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3330
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->access$1200(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$PositionScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3331
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->access$1200(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$PositionScroller;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3333
    :cond_0
    return-void
.end method

.method private updateFlingSpeedInfo(II)V
    .locals 1
    .parameter "curCalcPos"
    .parameter "curCalcTime"

    .prologue
    .line 3433
    iget v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mLastFlingY:I

    iput v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mSecondLastFlingY:I

    .line 3434
    iget v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mLastFlingYTime:I

    iput v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mSecondLastFlingYTime:I

    .line 3435
    iput p1, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mLastFlingY:I

    .line 3436
    iput p2, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mLastFlingYTime:I

    .line 3437
    return-void
.end method


# virtual methods
.method edgeReached(I)V
    .locals 2
    .parameter "delta"

    .prologue
    .line 3441
    const-string v0, "AbsListView"

    const-string v1, "FlingRunnable: edgeReached"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3443
    return-void
.end method

.method getLastFlingSpeed()I
    .locals 3

    .prologue
    .line 3424
    iget v1, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mLastFlingYTime:I

    iget v2, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mSecondLastFlingYTime:I

    sub-int v0, v1, v2

    .line 3425
    .local v0, timePassed:I
    if-gtz v0, :cond_0

    .line 3426
    const/4 v1, 0x0

    .line 3429
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mLastFlingY:I

    iget v2, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mSecondLastFlingY:I

    sub-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    div-int/2addr v1, v0

    goto :goto_0
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 3336
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v10, v10, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v10, :pswitch_data_0

    .line 3420
    :cond_0
    :goto_0
    return-void

    .line 3341
    :pswitch_0
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v10, v10, Landroid/widget/AdapterView;->mItemCount:I

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v10

    if-nez v10, :cond_2

    .line 3342
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsListView$TwFlingRunnable;->endFling()V

    goto :goto_0

    .line 3346
    :cond_2
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v7, v10, Landroid/widget/AbsListView;->mExcessScroll:I

    .line 3347
    .local v7, prevExcessScroll:I
    iget-object v8, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 3348
    .local v8, scroller:Landroid/widget/Scroller;
    invoke-virtual {v8}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    .line 3349
    .local v5, more:Z
    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v9

    .line 3353
    .local v9, y:I
    iget v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mLastFlingY:I

    sub-int v1, v10, v9

    .line 3356
    .local v1, delta:I
    if-lez v1, :cond_7

    .line 3358
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v11, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v11, v11, Landroid/widget/AdapterView;->mFirstPosition:I

    iput v11, v10, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3359
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3360
    .local v2, firstView:Landroid/view/View;
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v11

    iput v11, v10, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3363
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v11}, Landroid/widget/AbsListView;->access$1300(Landroid/widget/AbsListView;)I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v11}, Landroid/widget/AbsListView;->access$1400(Landroid/widget/AbsListView;)I

    move-result v11

    sub-int/2addr v10, v11

    sub-int/2addr v10, v12

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3376
    .end local v2           #firstView:Landroid/view/View;
    :goto_1
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10, v1, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    .line 3378
    .local v0, atEnd:Z
    if-gtz v7, :cond_3

    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v10, v10, Landroid/widget/AbsListView;->mExcessScroll:I

    if-lt v10, v7, :cond_4

    :cond_3
    if-ltz v7, :cond_5

    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v10, v10, Landroid/widget/AbsListView;->mExcessScroll:I

    if-le v10, v7, :cond_5

    .line 3381
    :cond_4
    const/4 v5, 0x0

    .line 3384
    :cond_5
    if-eqz v5, :cond_6

    .line 3385
    invoke-virtual {v8}, Landroid/widget/Scroller;->timePassed()I

    move-result v10

    invoke-direct {p0, v9, v10}, Landroid/widget/AbsListView$TwFlingRunnable;->updateFlingSpeedInfo(II)V

    .line 3387
    :cond_6
    if-eqz v5, :cond_8

    if-nez v0, :cond_8

    .line 3388
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10}, Landroid/widget/AbsListView;->invalidate()V

    .line 3390
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3366
    .end local v0           #atEnd:Z
    :cond_7
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v10

    sub-int v6, v10, v12

    .line 3367
    .local v6, offsetToLast:I
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v11, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v11, v11, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v11, v6

    iput v11, v10, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3369
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3370
    .local v4, lastView:Landroid/view/View;
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v11

    iput v11, v10, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3373
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v11}, Landroid/widget/AbsListView;->access$1500(Landroid/widget/AbsListView;)I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v11}, Landroid/widget/AbsListView;->access$1600(Landroid/widget/AbsListView;)I

    move-result v11

    sub-int/2addr v10, v11

    sub-int/2addr v10, v12

    neg-int v10, v10

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 3392
    .end local v4           #lastView:Landroid/view/View;
    .end local v6           #offsetToLast:I
    .restart local v0       #atEnd:Z
    :cond_8
    invoke-direct {p0}, Landroid/widget/AbsListView$TwFlingRunnable;->endFling()V

    .line 3401
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v10, v10, Landroid/widget/AbsListView;->mExcessScrollEnabled:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v10, v10, Landroid/widget/AbsListView;->mBlockExcessScroll:Z

    if-nez v10, :cond_0

    .line 3402
    invoke-virtual {p0}, Landroid/widget/AbsListView$TwFlingRunnable;->getLastFlingSpeed()I

    move-result v3

    .line 3405
    .local v3, lastFlingSpeed:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v11}, Landroid/widget/AbsListView;->access$1700(Landroid/widget/AbsListView;)I

    move-result v11

    if-le v10, v11, :cond_9

    .line 3409
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mExcessScrollRunnable:Landroid/widget/AbsListView$ExcessScrollDampingRunnable;

    int-to-float v11, v3

    invoke-virtual {v10, v11}, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->start(F)V

    goto/16 :goto_0

    .line 3411
    :cond_9
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v10, v10, Landroid/widget/AbsListView;->mExcessScroll:I

    if-eqz v10, :cond_0

    .line 3412
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mExcessScrollRunnable:Landroid/widget/AbsListView$ExcessScrollDampingRunnable;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/AbsListView$ExcessScrollDampingRunnable;->start(F)V

    goto/16 :goto_0

    .line 3336
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method start(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 3291
    if-gez p1, :cond_0

    move v2, v6

    .line 3292
    .local v2, initialY:I
    :goto_0
    iput v1, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mLastFlingYTime:I

    .line 3293
    iput v2, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mLastFlingY:I

    .line 3294
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 3296
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3298
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->timePassed()I

    move-result v0

    invoke-direct {p0, v2, v0}, Landroid/widget/AbsListView$TwFlingRunnable;->updateFlingSpeedInfo(II)V

    .line 3300
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3308
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 3291
    goto :goto_0
.end method

.method startOverfling(I)V
    .locals 2
    .parameter "initialVelocity"

    .prologue
    .line 3447
    const-string v0, "AbsListView"

    const-string v1, "FlingRunnable: startOverfling"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3449
    return-void
.end method

.method startScroll(II)V
    .locals 6
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 3311
    if-gez p1, :cond_0

    const v0, 0x7fffffff

    move v2, v0

    .line 3312
    .local v2, initialY:I
    :goto_0
    iput v1, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mLastFlingYTime:I

    .line 3313
    iput v2, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mLastFlingY:I

    .line 3314
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 3315
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3317
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->timePassed()I

    move-result v0

    invoke-direct {p0, v2, v0}, Landroid/widget/AbsListView$TwFlingRunnable;->updateFlingSpeedInfo(II)V

    .line 3319
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3320
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 3311
    goto :goto_0
.end method

.method startSpringback()V
    .locals 2

    .prologue
    .line 3453
    const-string v0, "AbsListView"

    const-string v1, "FlingRunnable: startSpringback"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3455
    return-void
.end method
