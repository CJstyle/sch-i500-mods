.class Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;
.super Ljava/lang/Object;
.source "TFScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExcessScrollDecelerateRunnable"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "TFScrollView.ExcessScrollDecelerateRunnable"


# instance fields
.field private mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFScrollView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFScrollView;)V
    .locals 4
    .parameter

    .prologue
    .line 939
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    new-instance v0, Lcom/nemustech/tiffany/widget/TFScroller;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x4220

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;F)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 991
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 992
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    iget-object v1, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 993
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 971
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFScroller;->computeScrollOffset()Z

    .line 972
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->access$100(Lcom/nemustech/tiffany/widget/TFScrollView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFScroller;->getCurrX()I

    move-result v1

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 980
    :goto_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 981
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->access$400(Lcom/nemustech/tiffany/widget/TFScrollView;)Z

    .line 982
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    .line 983
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->post(Ljava/lang/Runnable;)Z

    .line 988
    :goto_1
    return-void

    .line 975
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFScroller;->getCurrY()I

    move-result v1

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    goto :goto_0

    .line 986
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->startAfterDecelerating()V

    goto :goto_1
.end method

.method public start(I)V
    .locals 18
    .parameter "flingSpeed"

    .prologue
    .line 946
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->cancel()V

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->access$002(Lcom/nemustech/tiffany/widget/TFScrollView;I)I

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    move-object v2, v0

    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->access$100(Lcom/nemustech/tiffany/widget/TFScrollView;)I

    move-result v2

    if-nez v2, :cond_0

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v8

    .line 951
    .local v8, width:I
    mul-int/lit8 v5, p1, -0x1

    .line 952
    .local v5, speed:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    neg-int v7, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/nemustech/tiffany/widget/TFScroller;->fling(IIIIIIII)V

    .line 967
    .end local v8           #width:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->post(Ljava/lang/Runnable;)Z

    .line 968
    return-void

    .line 958
    .end local v5           #speed:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v17

    .line 959
    .local v17, height:I
    mul-int/lit8 v5, p1, -0x1

    .line 960
    .restart local v5       #speed:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    move-object v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v16, v0

    move v13, v5

    invoke-virtual/range {v9 .. v17}, Lcom/nemustech/tiffany/widget/TFScroller;->fling(IIIIIIII)V

    goto :goto_0
.end method
