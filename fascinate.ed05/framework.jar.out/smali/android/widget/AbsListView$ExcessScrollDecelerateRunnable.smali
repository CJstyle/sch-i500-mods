.class Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExcessScrollDecelerateRunnable"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "TFAbsListView.ExcessScrollDecelerateRunnable"


# instance fields
.field private mScroller:Landroid/widget/TFScroller;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 2
    .parameter

    .prologue
    .line 2505
    iput-object p1, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2544
    new-instance v0, Landroid/widget/TFScroller;

    iget-object v1, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TFScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->mScroller:Landroid/widget/TFScroller;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 2540
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2541
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mExcessScrollRecoverRunnable:Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2542
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 2525
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->mScroller:Landroid/widget/TFScroller;

    invoke-virtual {v0}, Landroid/widget/TFScroller;->computeScrollOffset()Z

    .line 2526
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->mScroller:Landroid/widget/TFScroller;

    invoke-virtual {v1}, Landroid/widget/TFScroller;->getCurrY()I

    move-result v1

    iput v1, v0, Landroid/widget/AbsListView;->mExcessScroll:I

    .line 2530
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->mScroller:Landroid/widget/TFScroller;

    invoke-virtual {v0}, Landroid/widget/TFScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2531
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2532
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2537
    :goto_0
    return-void

    .line 2535
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mExcessScrollRecoverRunnable:Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;

    invoke-virtual {v0}, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->startFromDeceleration()V

    goto :goto_0
.end method

.method public start(I)V
    .locals 9
    .parameter "flingSpeed"

    .prologue
    const/4 v1, 0x0

    .line 2512
    invoke-virtual {p0}, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->cancel()V

    .line 2514
    const/16 v7, 0x96

    .line 2515
    .local v7, EXCESS_SCROLL_DECELERATE_DURATION:I
    const/high16 v6, 0x3f00

    .line 2516
    .local v6, DECELERATE_DISTANCE_COEFFICIENT:F
    int-to-float v0, p1

    const/high16 v2, 0x3f00

    mul-float/2addr v0, v2

    const/high16 v2, 0x4316

    mul-float/2addr v0, v2

    const/high16 v2, 0x447a

    div-float/2addr v0, v2

    float-to-int v8, v0

    .line 2519
    .local v8, distanceToDecelerate:I
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->mScroller:Landroid/widget/TFScroller;

    neg-int v4, v8

    const/16 v5, 0x96

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TFScroller;->startScroll(IIIII)V

    .line 2521
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2522
    return-void
.end method
