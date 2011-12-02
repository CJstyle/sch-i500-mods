.class Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;
.super Ljava/lang/Object;
.source "TFDndLinearHScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildAnimator"
.end annotation


# instance fields
.field private mFinished:Z

.field private mRect:Landroid/graphics/Rect;

.field private mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

.field private mTargetView:Landroid/view/View;

.field final synthetic this$1:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;)V
    .locals 3
    .parameter

    .prologue
    .line 786
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;->this$1:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 782
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;->mRect:Landroid/graphics/Rect;

    .line 784
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;->mFinished:Z

    .line 787
    new-instance v0, Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {p1}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    .line 788
    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 1

    .prologue
    .line 808
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;->mFinished:Z

    return v0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 812
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    .line 813
    .local v1, scroller:Lcom/nemustech/tiffany/widget/TFScroller;
    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFScroller;->computeScrollOffset()Z

    move-result v0

    .line 815
    .local v0, more:Z
    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFScroller;->getCurrX()I

    move-result v3

    .line 816
    .local v3, x:I
    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFScroller;->getCurrY()I

    move-result v4

    .line 818
    .local v4, y:I
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;->mTargetView:Landroid/view/View;

    .line 819
    .local v2, target:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 820
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 822
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;->this$1:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;

    invoke-virtual {v5}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->invalidate()V

    .line 824
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;->this$1:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;

    invoke-virtual {v5, p0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 830
    :goto_0
    return-void

    .line 826
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 827
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;->this$1:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;

    invoke-virtual {v5}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->invalidate()V

    .line 828
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;->mFinished:Z

    goto :goto_0
.end method

.method public start(Landroid/view/View;III)V
    .locals 7
    .parameter "target"
    .parameter "nextX"
    .parameter "nextY"
    .parameter "duration"

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;->stop()V

    .line 792
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;->mFinished:Z

    .line 793
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;->mTargetView:Landroid/view/View;

    .line 794
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;->mRect:Landroid/graphics/Rect;

    .line 795
    .local v6, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 796
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    iget v3, v6, Landroid/graphics/Rect;->left:I

    sub-int v3, p2, v3

    iget v4, v6, Landroid/graphics/Rect;->top:I

    sub-int v4, p3, v4

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFScroller;->startScroll(IIIII)V

    .line 797
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;->this$1:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 798
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 801
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;->this$1:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 802
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScroller;->forceFinished(Z)V

    .line 803
    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;->mFinished:Z

    .line 804
    return-void
.end method
