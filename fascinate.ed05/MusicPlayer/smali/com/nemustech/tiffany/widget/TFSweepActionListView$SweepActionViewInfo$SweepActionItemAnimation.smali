.class Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;
.super Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
.source "TFSweepActionListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SweepActionItemAnimation"
.end annotation


# instance fields
.field private mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

.field final synthetic this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .line 313
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;-><init>(IZ)V

    .line 307
    new-instance v0, Lcom/nemustech/tiffany/widget/TFScroller;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v1, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    .line 314
    return-void
.end method

.method static synthetic access$100(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;)Lcom/nemustech/tiffany/widget/TFScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    return-object v0
.end method


# virtual methods
.method public computeAnimation(J)V
    .locals 5
    .parameter "curUpTime"

    .prologue
    .line 328
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget v1, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget v1, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget v1, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 331
    :cond_2
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFScroller;->computeScrollOffset()Z

    .line 333
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFScroller;->getCurrX()I

    move-result v0

    .line 337
    .local v0, newProgress:I
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$300(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 338
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    invoke-static {v1, v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$302(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;I)I

    .line 340
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-boolean v1, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionStartReported:Z

    if-nez v1, :cond_3

    .line 341
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionStartReported:Z

    .line 342
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v1, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget v3, v3, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    const v4, 0x7fffffff

    invoke-static {v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$000(Lcom/nemustech/tiffany/widget/TFSweepActionListView;III)V

    .line 346
    :cond_3
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v1, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    new-instance v2, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation$1;

    invoke-direct {v2, p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation$1;-><init>(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;)V

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 11
    .parameter "canvas"
    .parameter "child"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 367
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    if-eq v0, v6, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$500(Lcom/nemustech/tiffany/widget/TFSweepActionListView;Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)Landroid/view/View;

    move-result-object v9

    .line 372
    .local v9, contextMenuView:Landroid/view/View;
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$600(Lcom/nemustech/tiffany/widget/TFSweepActionListView;Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)Landroid/view/View;

    move-result-object v10

    .line 376
    .local v10, listItemView:Landroid/view/View;
    if-eqz v10, :cond_2

    .line 378
    const/4 v8, 0x0

    .line 380
    .local v8, childForLocationHint:Landroid/view/View;
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mChildIdForLocationHint:I

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mChildIdForLocationHint:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 383
    :cond_1
    if-nez v8, :cond_6

    .line 384
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$700(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 386
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 388
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$700(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v1, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$700(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 389
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$700(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 391
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v7, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAnimation:Landroid/view/animation/Animation;

    .line 392
    .local v7, a:Landroid/view/animation/Animation;
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$300(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v2, v2, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$800(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/view/animation/Transformation;

    move-result-object v2

    invoke-virtual {v7, v0, v1, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 394
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$800(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/view/animation/Transformation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 395
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$700(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 396
    invoke-virtual {v10, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 398
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 441
    .end local v7           #a:Landroid/view/animation/Animation;
    .end local v8           #childForLocationHint:Landroid/view/View;
    :cond_2
    :goto_0
    if-eqz v9, :cond_5

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$1000(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 446
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$700(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 448
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mChildIdForLocationHint:I

    if-eqz v0, :cond_3

    .line 449
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mChildIdForLocationHint:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 451
    .restart local v8       #childForLocationHint:Landroid/view/View;
    if-eqz v8, :cond_3

    .line 452
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$700(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 453
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v1, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$700(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 458
    .end local v8           #childForLocationHint:Landroid/view/View;
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 460
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$700(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v1, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$700(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 461
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$700(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 463
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$700(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 464
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$900(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v1, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$700(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 466
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$300(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)I

    move-result v0

    const/16 v1, 0x64

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float v3, v0, v1

    .line 467
    .local v3, progress:F
    const/4 v4, 0x2

    .line 468
    .local v4, sweepState:I
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    if-ne v0, v6, :cond_4

    .line 469
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$1100(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 470
    const/4 v4, 0x1

    .line 476
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$1000(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v1, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget v2, v2, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v5, v5, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v5}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$900(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v5

    move-object v6, p1

    invoke-interface/range {v0 .. v6}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;->onDrawSweepActionBar(Landroid/content/Context;IFILandroid/graphics/Rect;Landroid/graphics/Canvas;)V

    .line 484
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 487
    .end local v3           #progress:F
    .end local v4           #sweepState:I
    .end local v9           #contextMenuView:Landroid/view/View;
    .end local v10           #listItemView:Landroid/view/View;
    :cond_5
    return-void

    .line 402
    .restart local v8       #childForLocationHint:Landroid/view/View;
    .restart local v9       #contextMenuView:Landroid/view/View;
    .restart local v10       #listItemView:Landroid/view/View;
    :cond_6
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$700(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 404
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 406
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$700(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v1, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$700(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 407
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$700(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 409
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$700(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 411
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$900(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 412
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$900(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v0

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 414
    invoke-virtual {v10, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 416
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 421
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$700(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 422
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v1, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$700(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 424
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 425
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$700(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v1, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$700(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 426
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$700(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 428
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v7, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAnimation:Landroid/view/animation/Animation;

    .line 429
    .restart local v7       #a:Landroid/view/animation/Animation;
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$300(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v2, v2, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$800(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/view/animation/Transformation;

    move-result-object v2

    invoke-virtual {v7, v0, v1, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 431
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$800(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/view/animation/Transformation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 432
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$700(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 434
    invoke-virtual {v8, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 436
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 472
    .end local v7           #a:Landroid/view/animation/Animation;
    .end local v8           #childForLocationHint:Landroid/view/View;
    .restart local v3       #progress:F
    .restart local v4       #sweepState:I
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method public isFinished()Z
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 360
    const/4 v0, 0x0

    .line 362
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFScroller;->isFinished()Z

    move-result v0

    goto :goto_0
.end method

.method public start(III)V
    .locals 6
    .parameter "startProgress"
    .parameter "targetProgress"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 317
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFScroller;->abortAnimation()V

    .line 318
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    invoke-static {v0, p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$302(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;I)I

    .line 321
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    sub-int v3, p2, p1

    move v1, p1

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFScroller;->startScroll(IIIII)V

    .line 325
    return-void
.end method
