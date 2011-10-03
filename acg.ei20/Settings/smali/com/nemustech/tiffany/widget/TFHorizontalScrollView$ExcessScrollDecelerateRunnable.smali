.class Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;
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
    name = "ExcessScrollDecelerateRunnable"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "TFScrollView.ExcessScrollDecelerateRunnable"


# instance fields
.field private mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;)V
    .locals 4
    .parameter

    .prologue
    .line 743
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 788
    new-instance v0, Lcom/nemustech/tiffany/widget/TFScroller;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x4220

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;F)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 782
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    iget-object v1, v1, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 783
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFScroller;->computeScrollOffset()Z

    .line 766
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFScroller;->getCurrX()I

    move-result v1

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    .line 770
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->access$300(Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;)Z

    .line 772
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->invalidate()V

    .line 773
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 778
    :goto_0
    return-void

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->startAfterDecelerating()V

    goto :goto_0
.end method

.method public start(I)V
    .locals 9
    .parameter "flingSpeed"

    .prologue
    const/4 v1, 0x0

    .line 750
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;->cancel()V

    .line 751
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->access$002(Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;I)I

    .line 753
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getWidth()I

    move-result v6

    .line 755
    .local v6, width:I
    mul-int/lit8 v3, p1, -0x1

    .line 756
    .local v3, speed:I
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    neg-int v5, v6

    move v2, v1

    move v4, v1

    move v7, v1

    move v8, v1

    invoke-virtual/range {v0 .. v8}, Lcom/nemustech/tiffany/widget/TFScroller;->fling(IIIIIIII)V

    .line 761
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 762
    return-void
.end method
