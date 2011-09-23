.class Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;
.super Ljava/lang/Object;
.source "TFHorizontalScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExcessScrollRecoverRunnable"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "TFScrollView.ExcessScrollRecoverRunnable"


# instance fields
.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;)V
    .locals 3
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 737
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method private getProperDuration(I)I
    .locals 1
    .parameter "distance"

    .prologue
    .line 707
    mul-int/lit16 v0, p1, 0x96

    div-int/lit16 v0, v0, 0xc8

    add-int/lit16 v0, v0, 0xc8

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 715
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->access$100(Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;)Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 716
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 723
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 725
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    .line 726
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->access$200(Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;)Z

    .line 730
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->invalidate()V

    .line 735
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 682
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->cancel()V

    .line 686
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->access$002(Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;I)I

    .line 687
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    iget v1, v1, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    iget v3, v3, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    neg-int v3, v3

    const/16 v5, 0x96

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 689
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 690
    return-void
.end method

.method public startAfterDecelerating()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 696
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->cancel()V

    .line 700
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->access$002(Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;I)I

    .line 701
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    iget v1, v1, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    iget v3, v3, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    neg-int v3, v3

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    iget v4, v4, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->getProperDuration(I)I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 703
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 704
    return-void
.end method
