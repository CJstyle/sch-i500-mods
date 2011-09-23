.class Landroid/widget/AbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
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

    .line 2740
    iput-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2737
    iput v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingYTime:I

    .line 2738
    iput v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mSecondLastFlingYTime:I

    .line 2741
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 2742
    return-void
.end method

.method static synthetic access$200(Landroid/widget/AbsListView$FlingRunnable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2725
    invoke-direct {p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    return-void
.end method

.method private endFling()V
    .locals 2

    .prologue
    .line 2777
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2779
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 2780
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->access$1100(Landroid/widget/AbsListView;)V

    .line 2782
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2784
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->access$1200(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$PositionScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2785
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->access$1200(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$PositionScroller;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2787
    :cond_0
    return-void
.end method

.method private updateFlingSpeedInfo(II)V
    .locals 1
    .parameter "curCalcPos"
    .parameter "curCalcTime"

    .prologue
    .line 2887
    iget v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    iput v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mSecondLastFlingY:I

    .line 2888
    iget v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingYTime:I

    iput v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mSecondLastFlingYTime:I

    .line 2889
    iput p1, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 2890
    iput p2, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingYTime:I

    .line 2891
    return-void
.end method


# virtual methods
.method getLastFlingSpeed()I
    .locals 3

    .prologue
    .line 2878
    iget v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingYTime:I

    iget v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mSecondLastFlingYTime:I

    sub-int v0, v1, v2

    .line 2879
    .local v0, timePassed:I
    if-gtz v0, :cond_0

    .line 2880
    const/4 v1, 0x0

    .line 2883
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    iget v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mSecondLastFlingY:I

    sub-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    div-int/2addr v1, v0

    goto :goto_0
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 2790
    iget-object v10, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v10, v10, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v10, :pswitch_data_0

    .line 2874
    :cond_0
    :goto_0
    return-void

    .line 2795
    :pswitch_0
    iget-object v10, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v10, v10, Landroid/widget/AbsListView;->mItemCount:I

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v10

    if-nez v10, :cond_2

    .line 2796
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 2800
    :cond_2
    iget-object v10, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v7, v10, Landroid/widget/AbsListView;->mExcessScroll:I

    .line 2801
    .local v7, prevExcessScroll:I
    iget-object v8, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 2802
    .local v8, scroller:Landroid/widget/Scroller;
    invoke-virtual {v8}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    .line 2803
    .local v5, more:Z
    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v9

    .line 2807
    .local v9, y:I
    iget v10, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    sub-int v1, v10, v9

    .line 2810
    .local v1, delta:I
    if-lez v1, :cond_7

    .line 2812
    iget-object v10, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v11, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v11, v11, Landroid/widget/AbsListView;->mFirstPosition:I

    iput v11, v10, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 2813
    iget-object v10, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2814
    .local v2, firstView:Landroid/view/View;
    iget-object v10, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v11

    iput v11, v10, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 2817
    iget-object v10, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v11}, Landroid/widget/AbsListView;->access$1300(Landroid/widget/AbsListView;)I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v11}, Landroid/widget/AbsListView;->access$1400(Landroid/widget/AbsListView;)I

    move-result v11

    sub-int/2addr v10, v11

    sub-int/2addr v10, v12

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2830
    .end local v2           #firstView:Landroid/view/View;
    :goto_1
    iget-object v10, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10, v1, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    .line 2832
    .local v0, atEnd:Z
    if-gtz v7, :cond_3

    iget-object v10, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v10, v10, Landroid/widget/AbsListView;->mExcessScroll:I

    if-lt v10, v7, :cond_4

    :cond_3
    if-ltz v7, :cond_5

    iget-object v10, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v10, v10, Landroid/widget/AbsListView;->mExcessScroll:I

    if-le v10, v7, :cond_5

    .line 2835
    :cond_4
    const/4 v5, 0x0

    .line 2838
    :cond_5
    if-eqz v5, :cond_6

    .line 2839
    invoke-virtual {v8}, Landroid/widget/Scroller;->timePassed()I

    move-result v10

    invoke-direct {p0, v9, v10}, Landroid/widget/AbsListView$FlingRunnable;->updateFlingSpeedInfo(II)V

    .line 2841
    :cond_6
    if-eqz v5, :cond_8

    if-nez v0, :cond_8

    .line 2842
    iget-object v10, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10}, Landroid/widget/AbsListView;->invalidate()V

    .line 2844
    iget-object v10, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2820
    .end local v0           #atEnd:Z
    :cond_7
    iget-object v10, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v10

    sub-int v6, v10, v12

    .line 2821
    .local v6, offsetToLast:I
    iget-object v10, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v11, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v11, v11, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v11, v6

    iput v11, v10, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 2823
    iget-object v10, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2824
    .local v4, lastView:Landroid/view/View;
    iget-object v10, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v11

    iput v11, v10, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 2827
    iget-object v10, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v11}, Landroid/widget/AbsListView;->access$1500(Landroid/widget/AbsListView;)I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v11}, Landroid/widget/AbsListView;->access$1600(Landroid/widget/AbsListView;)I

    move-result v11

    sub-int/2addr v10, v11

    sub-int/2addr v10, v12

    neg-int v10, v10

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 2846
    .end local v4           #lastView:Landroid/view/View;
    .end local v6           #offsetToLast:I
    .restart local v0       #atEnd:Z
    :cond_8
    invoke-direct {p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 2855
    iget-object v10, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v10, v10, Landroid/widget/AbsListView;->mExcessScrollEnabled:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v10, v10, Landroid/widget/AbsListView;->mBlockExcessScroll:Z

    if-nez v10, :cond_0

    .line 2856
    invoke-virtual {p0}, Landroid/widget/AbsListView$FlingRunnable;->getLastFlingSpeed()I

    move-result v3

    .line 2859
    .local v3, lastFlingSpeed:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v11}, Landroid/widget/AbsListView;->access$1700(Landroid/widget/AbsListView;)I

    move-result v11

    if-le v10, v11, :cond_9

    .line 2863
    iget-object v10, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v10}, Landroid/widget/AbsListView;->access$1000(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->start(I)V

    goto/16 :goto_0

    .line 2865
    :cond_9
    iget-object v10, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v10, v10, Landroid/widget/AbsListView;->mExcessScroll:I

    if-eqz v10, :cond_0

    .line 2866
    iget-object v10, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mExcessScrollRecoverRunnable:Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;

    invoke-virtual {v10}, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->start()V

    goto/16 :goto_0

    .line 2790
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

    .line 2745
    if-gez p1, :cond_0

    move v2, v6

    .line 2746
    .local v2, initialY:I
    :goto_0
    iput v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingYTime:I

    .line 2747
    iput v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 2748
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 2750
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2752
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->timePassed()I

    move-result v0

    invoke-direct {p0, v2, v0}, Landroid/widget/AbsListView$FlingRunnable;->updateFlingSpeedInfo(II)V

    .line 2754
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2762
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 2745
    goto :goto_0
.end method

.method startScroll(II)V
    .locals 6
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 2765
    if-gez p1, :cond_0

    const v0, 0x7fffffff

    move v2, v0

    .line 2766
    .local v2, initialY:I
    :goto_0
    iput v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingYTime:I

    .line 2767
    iput v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 2768
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2769
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2771
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->timePassed()I

    move-result v0

    invoke-direct {p0, v2, v0}, Landroid/widget/AbsListView$FlingRunnable;->updateFlingSpeedInfo(II)V

    .line 2773
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2774
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 2765
    goto :goto_0
.end method
