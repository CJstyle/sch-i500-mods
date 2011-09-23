.class Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "TFDndLinearHScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TFAnimatedLinearLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;
    }
.end annotation


# static fields
.field public static final CHILD_ANIMATION_DURATION:I = 0x12c


# instance fields
.field private mAnimationDuration:I

.field private mAnimationFromParent:Z

.field private mChildAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mChildRect:[Landroid/graphics/Rect;

.field private mPrevChildRect:[Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 635
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;-><init>(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 636
    return-void
.end method

.method public constructor <init>(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 638
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;

    .line 639
    invoke-direct {p0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 625
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->mChildAnimators:Ljava/util/HashMap;

    .line 630
    const/16 v0, 0x12c

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->mAnimationDuration:I

    .line 640
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 704
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 705
    return-void
.end method

.method public getAnimationDuration()I
    .locals 1

    .prologue
    .line 768
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->mAnimationDuration:I

    return v0
.end method

.method public getChildRect(I)Landroid/graphics/Rect;
    .locals 1
    .parameter "index"

    .prologue
    .line 760
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->mChildRect:[Landroid/graphics/Rect;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public isAnimationFromParent()Z
    .locals 1

    .prologue
    .line 777
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->mAnimationFromParent:Z

    return v0
.end method

.method protected onAnimationLayout(II)V
    .locals 12
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->getChildCount()I

    move-result v4

    .line 644
    .local v4, count:I
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->mPrevChildRect:[Landroid/graphics/Rect;

    .line 645
    .local v7, prevChildRect:[Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->mChildRect:[Landroid/graphics/Rect;

    .line 647
    .local v6, newChildRect:[Landroid/graphics/Rect;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 648
    aget-object v8, v7, v5

    iget v9, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, p1

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 649
    aget-object v8, v7, v5

    iget v9, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, p1

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 647
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 652
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->mChildAnimators:Ljava/util/HashMap;

    .line 653
    .local v3, childAnimators:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/View;Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;>;"
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->mAnimationDuration:I

    .line 654
    .local v0, aniDuration:I
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    .line 655
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 656
    .local v1, child:Landroid/view/View;
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;

    .line 657
    .local v2, childAnimator:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;
    if-nez v2, :cond_2

    .line 658
    new-instance v8, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;

    invoke-direct {v8, p0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;-><init>(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;)V

    invoke-virtual {v3, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 660
    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 654
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 663
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    aget-object v8, v7, v5

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    aget-object v8, v6, v5

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 664
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 665
    aget-object v8, v7, v5

    iget v8, v8, Landroid/graphics/Rect;->left:I

    aget-object v9, v7, v5

    iget v9, v9, Landroid/graphics/Rect;->top:I

    aget-object v10, v7, v5

    iget v10, v10, Landroid/graphics/Rect;->right:I

    aget-object v11, v7, v5

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 666
    aget-object v8, v6, v5

    iget v8, v8, Landroid/graphics/Rect;->left:I

    aget-object v9, v6, v5

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v1, v8, v9, v0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;->start(Landroid/view/View;III)V

    goto :goto_2

    .line 670
    .end local v1           #child:Landroid/view/View;
    .end local v2           #childAnimator:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;
    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v6, 0x0

    .line 674
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->getChildCount()I

    move-result v1

    .line 675
    .local v1, count:I
    if-gtz v1, :cond_1

    .line 676
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->mChildAnimators:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 677
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    new-array v4, v1, [Landroid/graphics/Rect;

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->mPrevChildRect:[Landroid/graphics/Rect;

    .line 682
    .local v4, prevChildRect:[Landroid/graphics/Rect;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 683
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    aput-object v5, v4, v2

    .line 684
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 685
    .local v0, child:Landroid/view/View;
    aget-object v5, v4, v2

    invoke-virtual {v0, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 682
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 688
    .end local v0           #child:Landroid/view/View;
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 690
    new-array v3, v1, [Landroid/graphics/Rect;

    iput-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->mChildRect:[Landroid/graphics/Rect;

    .line 691
    .local v3, newChildRect:[Landroid/graphics/Rect;
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    .line 692
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    aput-object v5, v3, v2

    .line 693
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 694
    .restart local v0       #child:Landroid/view/View;
    aget-object v5, v3, v2

    invoke-virtual {v0, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 691
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 697
    .end local v0           #child:Landroid/view/View;
    :cond_3
    iget-boolean v5, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->mAnimationFromParent:Z

    if-nez v5, :cond_0

    .line 698
    invoke-virtual {p0, v6, v6}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->onAnimationLayout(II)V

    goto :goto_0
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->mChildAnimators:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 750
    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 751
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->mChildAnimators:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 756
    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 757
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 709
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->mChildAnimators:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 711
    return-void
.end method

.method public removeViewAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 732
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->mChildAnimators:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 734
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 715
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->mChildAnimators:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 717
    return-void
.end method

.method public removeViews(II)V
    .locals 4
    .parameter "start"
    .parameter "count"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->mChildAnimators:Ljava/util/HashMap;

    .line 739
    .local v0, childAnimators:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/View;Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;>;"
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->getChildCount()I

    move-result v3

    add-int v1, p1, v3

    .line 740
    .local v1, end:I
    move v2, p1

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 741
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 744
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 745
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 4
    .parameter "start"
    .parameter "count"

    .prologue
    .line 721
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->mChildAnimators:Ljava/util/HashMap;

    .line 722
    .local v0, childAnimators:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/View;Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout$ChildAnimator;>;"
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->getChildCount()I

    move-result v3

    add-int v1, p1, v3

    .line 723
    .local v1, end:I
    move v2, p1

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 724
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 727
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->removeViewsInLayout(II)V

    .line 728
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 764
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->mAnimationDuration:I

    .line 765
    return-void
.end method

.method public setAnimationFromParent(Z)V
    .locals 0
    .parameter "animationFromParent"

    .prologue
    .line 772
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->mAnimationFromParent:Z

    .line 773
    return-void
.end method
