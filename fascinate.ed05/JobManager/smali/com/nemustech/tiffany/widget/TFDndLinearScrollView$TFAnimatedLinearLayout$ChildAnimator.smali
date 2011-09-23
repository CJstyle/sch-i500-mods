.class Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout$ChildAnimator;
.super Ljava/lang/Object;
.source "TFDndLinearScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;
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

.field final synthetic this$1:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;)V
    .locals 3
    .parameter

    .prologue
    .line 863
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout$ChildAnimator;->this$1:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 859
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout$ChildAnimator;->mRect:Landroid/graphics/Rect;

    .line 861
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout$ChildAnimator;->mFinished:Z

    .line 864
    new-instance v0, Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {p1}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout$ChildAnimator;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    .line 865
    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 1

    .prologue
    .line 885
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout$ChildAnimator;->mFinished:Z

    return v0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 889
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout$ChildAnimator;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    .line 890
    .local v1, scroller:Lcom/nemustech/tiffany/widget/TFScroller;
    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFScroller;->computeScrollOffset()Z

    move-result v0

    .line 892
    .local v0, more:Z
    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFScroller;->getCurrX()I

    move-result v3

    .line 893
    .local v3, x:I
    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFScroller;->getCurrY()I

    move-result v4

    .line 895
    .local v4, y:I
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout$ChildAnimator;->mTargetView:Landroid/view/View;

    .line 896
    .local v2, target:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 897
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 899
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout$ChildAnimator;->this$1:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;

    invoke-virtual {v5}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;->invalidate()V

    .line 901
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout$ChildAnimator;->this$1:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;

    invoke-virtual {v5, p0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 907
    :goto_0
    return-void

    .line 903
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 904
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout$ChildAnimator;->this$1:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;

    invoke-virtual {v5}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;->invalidate()V

    .line 905
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout$ChildAnimator;->mFinished:Z

    goto :goto_0
.end method

.method public start(Landroid/view/View;III)V
    .locals 7
    .parameter "target"
    .parameter "nextX"
    .parameter "nextY"
    .parameter "duration"

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout$ChildAnimator;->stop()V

    .line 869
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout$ChildAnimator;->mFinished:Z

    .line 870
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout$ChildAnimator;->mTargetView:Landroid/view/View;

    .line 871
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout$ChildAnimator;->mRect:Landroid/graphics/Rect;

    .line 872
    .local v6, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 873
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout$ChildAnimator;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    iget v3, v6, Landroid/graphics/Rect;->left:I

    sub-int v3, p2, v3

    iget v4, v6, Landroid/graphics/Rect;->top:I

    sub-int v4, p3, v4

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFScroller;->startScroll(IIIII)V

    .line 874
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout$ChildAnimator;->this$1:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 875
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 878
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout$ChildAnimator;->this$1:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 879
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout$ChildAnimator;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScroller;->forceFinished(Z)V

    .line 880
    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout$ChildAnimator;->mFinished:Z

    .line 881
    return-void
.end method
