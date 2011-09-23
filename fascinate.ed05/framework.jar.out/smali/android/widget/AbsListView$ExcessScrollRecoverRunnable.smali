.class Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;
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
    name = "ExcessScrollRecoverRunnable"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "TFAbsListView.ExcessScrollRecoverRunnable"


# instance fields
.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 4
    .parameter

    .prologue
    .line 2444
    iput-object p1, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2500
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x4080

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 2477
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2478
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->access$1000(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2479
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 2486
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mExcessScroll:I

    if-eqz v0, :cond_0

    .line 2487
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 2488
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iput v1, v0, Landroid/widget/AbsListView;->mExcessScroll:I

    .line 2493
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2494
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2497
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2498
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2451
    invoke-virtual {p0}, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->cancel()V

    .line 2455
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    iget-object v2, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mExcessScroll:I

    iget-object v3, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mExcessScroll:I

    neg-int v4, v3

    const/16 v5, 0x3e8

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2457
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2458
    return-void
.end method

.method public startFromDeceleration()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2464
    invoke-virtual {p0}, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->cancel()V

    .line 2468
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    iget-object v2, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mExcessScroll:I

    iget-object v3, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mExcessScroll:I

    neg-int v4, v3

    const/16 v5, 0x514

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2470
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2471
    return-void
.end method
