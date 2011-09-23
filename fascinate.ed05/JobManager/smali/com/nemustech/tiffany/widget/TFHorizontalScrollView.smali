.class public Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;
.super Landroid/widget/FrameLayout;
.source "TFHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;,
        Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final DEBUG_EXCESS_SCROLL:Z = false

.field protected static final EXCESS_SCROLL_MODE_DECELERATE:I = 0x1

.field protected static final EXCESS_SCROLL_MODE_DRAG:I = 0x0

.field protected static final EXCESS_SCROLL_MODE_RECOVER_FROM_DECELERATE:I = 0x3

.field protected static final EXCESS_SCROLL_MODE_RECOVER_FROM_DRAG:I = 0x2

.field private static final EXCESS_SCROLL_RECOVER_DURATION:I = 0x96

.field private static final EXCESS_SCROLL_TENSION:F = 0.5f

.field private static final MAX_SCROLL_FACTOR:F = 0.5f

.field static final TAG:Ljava/lang/String; = "TFHorizontalScrollView"


# instance fields
.field protected mBlockExcessScroll:Z

.field private mChildToScrollTo:Landroid/view/View;

.field protected mExcessScroll:I

.field private mExcessScrollDecelerateRunnable:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;

.field private mExcessScrollDrawInterpolator:Landroid/view/animation/Interpolator;

.field protected mExcessScrollEnabled:Z

.field private mExcessScrollMode:I

.field protected mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mScrollViewMovedFocus:Z

.field private mScroller:Landroid/widget/Scroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 233
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 234
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 237
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 97
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mIsLayoutDirty:Z

    .line 104
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 111
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mIsBeingDragged:Z

    .line 127
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 140
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    .line 143
    new-instance v1, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$1;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$1;-><init>(Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScrollDrawInterpolator:Landroid/view/animation/Interpolator;

    .line 188
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScrollEnabled:Z

    .line 195
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mBlockExcessScroll:Z

    .line 217
    new-instance v1, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;

    .line 220
    new-instance v1, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScrollDecelerateRunnable:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;

    .line 238
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->initScrollView()V

    .line 240
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v1

    const/16 v2, 0x105

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getIntArr(I)[I

    move-result-object v1

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 243
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->setFillViewport(Z)V

    .line 245
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 246
    return-void
.end method

.method static synthetic access$002(Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScrollMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;)Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScrollDecelerateRunnable:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 339
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 340
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 342
    .local v1, childWidth:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mPaddingLeft:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    .line 344
    .end local v1           #childWidth:I
    :goto_0
    return v2

    .restart local v1       #childWidth:I
    :cond_0
    move v2, v5

    .line 342
    goto :goto_0

    .end local v1           #childWidth:I
    :cond_1
    move v2, v5

    .line 344
    goto :goto_0
.end method

.method private clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 1503
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_1

    .line 1504
    :cond_0
    const/4 v0, 0x0

    .line 1509
    :goto_0
    return v0

    .line 1506
    :cond_1
    add-int v0, p2, p1

    if-le v0, p3, :cond_2

    .line 1507
    sub-int v0, p3, p2

    goto :goto_0

    :cond_2
    move v0, p1

    .line 1509
    goto :goto_0
.end method

.method private doScrollX(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1102
    if-eqz p1, :cond_0

    .line 1103
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1104
    invoke-virtual {p0, p1, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->smoothScrollBy(II)V

    .line 1109
    :cond_0
    :goto_0
    return-void

    .line 1106
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .parameter "leftFocus"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 845
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 846
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 855
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 857
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 858
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 859
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 860
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 861
    .local v8, viewLeft:I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    .line 863
    .local v9, viewRight:I
    if-ge p2, v9, :cond_0

    if-ge v8, p3, :cond_0

    .line 869
    if-ge p2, v8, :cond_1

    if-ge v9, p3, :cond_1

    const/4 v10, 0x1

    move v7, v10

    .line 872
    .local v7, viewIsFullyContained:Z
    :goto_1
    if-nez v1, :cond_2

    .line 874
    move-object v1, v5

    .line 875
    move v3, v7

    .line 858
    .end local v7           #viewIsFullyContained:Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 869
    :cond_1
    const/4 v10, 0x0

    move v7, v10

    goto :goto_1

    .line 877
    .restart local v7       #viewIsFullyContained:Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v8, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v10

    if-le v9, v10, :cond_5

    :cond_4
    const/4 v10, 0x1

    move v6, v10

    .line 881
    .local v6, viewIsCloserToBoundary:Z
    :goto_3
    if-eqz v3, :cond_6

    .line 882
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 888
    move-object v1, v5

    goto :goto_2

    .line 877
    .end local v6           #viewIsCloserToBoundary:Z
    :cond_5
    const/4 v10, 0x0

    move v6, v10

    goto :goto_3

    .line 891
    .restart local v6       #viewIsCloserToBoundary:Z
    :cond_6
    if-eqz v7, :cond_7

    .line 893
    move-object v1, v5

    .line 894
    const/4 v3, 0x1

    goto :goto_2

    .line 895
    :cond_7
    if-eqz v6, :cond_0

    .line 900
    move-object v1, v5

    goto :goto_2

    .line 907
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewIsCloserToBoundary:Z
    .end local v7           #viewIsFullyContained:Z
    .end local v8           #viewLeft:I
    .end local v9           #viewRight:I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "leftFocus"
    .parameter "left"
    .parameter "preferredFocusable"

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 815
    .local v0, fadingEdgeLength:I
    add-int v1, p2, v0

    .line 816
    .local v1, leftWithoutFadingEdge:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v2, v3, v0

    .line 818
    .local v2, rightWithoutFadingEdge:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v1, :cond_0

    move-object v3, p3

    .line 824
    :goto_0
    return-object v3

    :cond_0
    invoke-direct {p0, p1, v1, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    .line 289
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    .line 290
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->setFocusable(Z)V

    .line 291
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->setDescendantFocusability(I)V

    .line 292
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->setWillNotDraw(Z)V

    .line 293
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 294
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTouchSlop:I

    .line 295
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mMinimumVelocity:I

    .line 296
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mMaximumVelocity:I

    .line 297
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .parameter "descendant"

    .prologue
    const/4 v1, 0x0

    .line 1081
    invoke-direct {p0, p1, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    .line 1439
    if-ne p1, p2, :cond_0

    move v1, v2

    .line 1444
    :goto_0
    return v1

    .line 1443
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1444
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .locals 3
    .parameter "descendant"
    .parameter "delta"

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1090
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1092
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollAndFocus(III)Z
    .locals 10
    .parameter "direction"
    .parameter "left"
    .parameter "right"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 990
    const/4 v4, 0x1

    .line 992
    .local v4, handled:Z
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getWidth()I

    move-result v6

    .line 993
    .local v6, width:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getScrollX()I

    move-result v0

    .line 994
    .local v0, containerLeft:I
    add-int v1, v0, v6

    .line 995
    .local v1, containerRight:I
    const/16 v7, 0x11

    if-ne p1, v7, :cond_2

    move v3, v9

    .line 997
    .local v3, goLeft:Z
    :goto_0
    invoke-direct {p0, v3, p2, p3}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 998
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 999
    move-object v5, p0

    .line 1002
    :cond_0
    if-lt p2, v0, :cond_3

    if-gt p3, v1, :cond_3

    .line 1003
    const/4 v4, 0x0

    .line 1009
    :goto_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1010
    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollViewMovedFocus:Z

    .line 1011
    iput-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollViewMovedFocus:Z

    .line 1014
    :cond_1
    return v4

    .end local v3           #goLeft:Z
    .end local v5           #newFocused:Landroid/view/View;
    :cond_2
    move v3, v8

    .line 995
    goto :goto_0

    .line 1005
    .restart local v3       #goLeft:Z
    .restart local v5       #newFocused:Landroid/view/View;
    :cond_3
    if-eqz v3, :cond_4

    sub-int v7, p2, v0

    move v2, v7

    .line 1006
    .local v2, delta:I
    :goto_2
    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->doScrollX(I)V

    goto :goto_1

    .line 1005
    .end local v2           #delta:I
    :cond_4
    sub-int v7, p3, v1

    move v2, v7

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1239
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1242
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1244
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1246
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 1247
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->scrollBy(II)V

    .line 1249
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 4
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v3, 0x0

    .line 1260
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1261
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 1262
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1263
    if-eqz p2, :cond_2

    .line 1264
    invoke-virtual {p0, v0, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->scrollBy(II)V

    .line 1269
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v3

    .line 1261
    goto :goto_0

    .line 1266
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 302
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TFHorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 306
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 311
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TFHorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 315
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 329
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TFHorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 333
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 320
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TFHorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/16 v10, 0x42

    const/4 v9, 0x0

    .line 1026
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1027
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1029
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v7

    invoke-virtual {v7, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1031
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1033
    .local v3, maxJump:I
    if-eqz v4, :cond_2

    invoke-direct {p0, v4, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1034
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1035
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1036
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1037
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->doScrollX(I)V

    .line 1038
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1061
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1068
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1069
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->setDescendantFocusability(I)V

    .line 1070
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->requestFocus()Z

    .line 1071
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->setDescendantFocusability(I)V

    .line 1073
    .end local v2           #descendantFocusability:I
    :cond_1
    const/4 v7, 0x1

    :goto_1
    return v7

    .line 1041
    .end local v6           #scrollDelta:I
    :cond_2
    move v6, v3

    .line 1043
    .restart local v6       #scrollDelta:I
    const/16 v7, 0x11

    if-ne p1, v7, :cond_4

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getScrollX()I

    move-result v7

    if-ge v7, v6, :cond_4

    .line 1044
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getScrollX()I

    move-result v6

    .line 1055
    :cond_3
    :goto_2
    if-nez v6, :cond_5

    move v7, v9

    .line 1056
    goto :goto_1

    .line 1045
    :cond_4
    if-ne p1, v10, :cond_3

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 1047
    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1049
    .local v1, daRight:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getScrollX()I

    move-result v7

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getWidth()I

    move-result v8

    add-int v5, v7, v8

    .line 1051
    .local v5, screenRight:I
    sub-int v7, v1, v5

    if-ge v7, v3, :cond_3

    .line 1052
    sub-int v6, v1, v5

    goto :goto_2

    .line 1058
    .end local v1           #daRight:I
    .end local v5           #screenRight:I
    :cond_5
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_3
    invoke-direct {p0, v7}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->doScrollX(I)V

    goto :goto_0

    :cond_6
    neg-int v7, v6

    goto :goto_3
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 4

    .prologue
    .line 1545
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result v0

    .line 1547
    .local v0, extent:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->computeHorizontalScrollRange()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1548
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 1549
    .local v1, ratio:F
    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 1551
    .end local v1           #ratio:F
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 6

    .prologue
    .line 1556
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v2

    .line 1558
    .local v2, offset:I
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    if-gez v5, :cond_0

    .line 1559
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    .line 1560
    .local v3, savedExcessScroll:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->computeHorizontalScrollExtent()I

    move-result v4

    .line 1561
    .local v4, shrinkedScrollExtent:I
    const/4 v5, 0x0

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    .line 1562
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->computeHorizontalScrollExtent()I

    move-result v1

    .line 1563
    .local v1, normalScrollExtent:I
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    .line 1565
    sub-int v0, v1, v4

    .line 1567
    .local v0, delta:I
    add-int/2addr v2, v0

    .line 1569
    .end local v0           #delta:I
    .end local v1           #normalScrollExtent:I
    .end local v3           #savedExcessScroll:I
    .end local v4           #shrinkedScrollExtent:I
    :cond_0
    return v2
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 1148
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildCount()I

    move-result v0

    .line 1149
    .local v0, count:I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getWidth()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 10

    .prologue
    .line 1184
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1201
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollX:I

    .line 1202
    .local v2, oldX:I
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollY:I

    .line 1203
    .local v3, oldY:I
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1204
    .local v5, x:I
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1205
    .local v6, y:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_5

    .line 1206
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1207
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-direct {p0, v5, v7, v8}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->clamp(III)I

    move-result v7

    iput v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollX:I

    .line 1208
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mPaddingBottom:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-direct {p0, v6, v7, v8}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->clamp(III)I

    move-result v7

    iput v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollY:I

    .line 1210
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollX:I

    if-eq v7, v5, :cond_1

    .line 1211
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v4

    .line 1212
    .local v4, velocity:F
    const-string v7, "TFHorizontalScrollView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "computeScroll. bumped to limits. velocity:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mScrollX:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollX:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1214
    float-to-int v1, v4

    .line 1215
    .local v1, decelerationFlingSpeed:I
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollX:I

    if-nez v7, :cond_0

    .line 1216
    mul-int/lit8 v1, v1, -0x1

    .line 1218
    :cond_0
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScrollDecelerateRunnable:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;

    invoke-virtual {v7, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollDecelerateRunnable;->start(I)V

    .line 1224
    .end local v0           #child:Landroid/view/View;
    .end local v1           #decelerationFlingSpeed:I
    .end local v4           #velocity:F
    :cond_1
    :goto_0
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollX:I

    if-ne v2, v7, :cond_2

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollY:I

    if-eq v3, v7, :cond_3

    .line 1225
    :cond_2
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollX:I

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v7, v8, v2, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->onScrollChanged(IIII)V

    .line 1229
    :cond_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->postInvalidate()V

    .line 1231
    .end local v2           #oldX:I
    .end local v3           #oldY:I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_4
    return-void

    .line 1221
    .restart local v2       #oldX:I
    .restart local v3       #oldY:I
    .restart local v5       #x:I
    .restart local v6       #y:I
    :cond_5
    iput v5, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollX:I

    .line 1222
    iput v6, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollY:I

    goto :goto_0
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .parameter "rect"

    .prologue
    const/4 v9, 0x0

    .line 1281
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildCount()I

    move-result v7

    if-nez v7, :cond_0

    move v7, v9

    .line 1335
    :goto_0
    return v7

    .line 1283
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getWidth()I

    move-result v6

    .line 1284
    .local v6, width:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getScrollX()I

    move-result v3

    .line 1285
    .local v3, screenLeft:I
    add-int v4, v3, v6

    .line 1287
    .local v4, screenRight:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v1

    .line 1290
    .local v1, fadingEdge:I
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-lez v7, :cond_1

    .line 1291
    add-int/2addr v3, v1

    .line 1295
    :cond_1
    iget v7, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 1296
    sub-int/2addr v4, v1

    .line 1299
    :cond_2
    const/4 v5, 0x0

    .line 1301
    .local v5, scrollXDelta:I
    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-le v7, v4, :cond_5

    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-le v7, v3, :cond_5

    .line 1306
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_4

    .line 1308
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v3

    add-int/2addr v5, v7

    .line 1315
    :goto_1
    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1316
    .local v2, right:I
    sub-int v0, v2, v4

    .line 1317
    .local v0, distanceToRight:I
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .end local v0           #distanceToRight:I
    .end local v2           #right:I
    :cond_3
    :goto_2
    move v7, v5

    .line 1335
    goto :goto_0

    .line 1311
    :cond_4
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v4

    add-int/2addr v5, v7

    goto :goto_1

    .line 1319
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ge v7, v3, :cond_3

    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-ge v7, v4, :cond_3

    .line 1324
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_6

    .line 1326
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int v7, v4, v7

    sub-int/2addr v5, v7

    .line 1333
    :goto_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getScrollX()I

    move-result v7

    neg-int v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_2

    .line 1329
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int v7, v3, v7

    sub-int/2addr v5, v7

    goto :goto_3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 1514
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScrollEnabled:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mBlockExcessScroll:Z

    if-nez v3, :cond_1

    .line 1516
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 1517
    .local v2, width:F
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getExcessScrollDrawInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 1520
    .local v1, shift:I
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    if-gez v3, :cond_0

    .line 1521
    mul-int/lit8 v1, v1, -0x1

    .line 1524
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getPaddingLeft()I

    move-result v4

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollX:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1525
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getPaddingTop()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1526
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollX:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 1527
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 1528
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1530
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1531
    .local v0, save1:I
    int-to-float v3, v1

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1533
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1535
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1540
    .end local v0           #save1:I
    .end local v1           #shift:I
    .end local v2           #width:F
    :goto_0
    return-void

    .line 1538
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 418
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 419
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 420
    const/4 v1, 0x1

    .line 422
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x11

    const/16 v4, 0x42

    .line 434
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 436
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->canScroll()Z

    move-result v3

    if-nez v3, :cond_3

    .line 437
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 438
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 439
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 440
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v4}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 442
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 471
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :goto_0
    return v3

    .restart local v0       #currentFocused:Landroid/view/View;
    .restart local v2       #nextFocused:Landroid/view/View;
    :cond_1
    move v3, v6

    .line 442
    goto :goto_0

    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_2
    move v3, v6

    .line 445
    goto :goto_0

    .line 448
    :cond_3
    const/4 v1, 0x0

    .line 449
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 450
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_4
    :goto_1
    move v3, v1

    .line 471
    goto :goto_0

    .line 452
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 453
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 455
    :cond_5
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->fullScroll(I)Z

    move-result v1

    .line 457
    goto :goto_1

    .line 459
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 460
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 462
    :cond_6
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->fullScroll(I)Z

    move-result v1

    .line 464
    goto :goto_1

    .line 466
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v5

    :goto_2
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_7
    move v3, v4

    goto :goto_2

    .line 450
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 14
    .parameter "velocityX"

    .prologue
    const/4 v13, 0x1

    const/4 v4, 0x0

    .line 1455
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1456
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mPaddingLeft:I

    sub-int v12, v0, v1

    .line 1457
    .local v12, width:I
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 1459
    .local v11, right:I
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mBlockExcessScroll:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScrollEnabled:Z

    if-nez v0, :cond_4

    .line 1460
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollX:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollY:I

    sub-int v6, v11, v12

    move v3, p1

    move v5, v4

    move v7, v4

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1465
    :goto_0
    if-lez p1, :cond_5

    move v9, v13

    .line 1467
    .local v9, movingRight:Z
    :goto_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v9, v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v10

    .line 1470
    .local v10, newFocused:Landroid/view/View;
    if-nez v10, :cond_1

    .line 1471
    move-object v10, p0

    .line 1474
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v10, v0, :cond_2

    if-eqz v9, :cond_6

    const/16 v0, 0x42

    :goto_2
    invoke-virtual {v10, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1476
    iput-boolean v13, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollViewMovedFocus:Z

    .line 1477
    iput-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollViewMovedFocus:Z

    .line 1480
    :cond_2
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->awakenScrollBars(I)Z

    .line 1481
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->invalidate()V

    .line 1483
    .end local v9           #movingRight:Z
    .end local v10           #newFocused:Landroid/view/View;
    .end local v11           #right:I
    .end local v12           #width:I
    :cond_3
    return-void

    .line 1462
    .restart local v11       #right:I
    .restart local v12       #width:I
    :cond_4
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollX:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollY:I

    const/high16 v5, -0x8000

    const v6, 0x7fffffff

    move v3, p1

    move v7, v4

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    :cond_5
    move v9, v4

    .line 1465
    goto :goto_1

    .line 1474
    .restart local v9       #movingRight:Z
    .restart local v10       #newFocused:Landroid/view/View;
    :cond_6
    const/16 v0, 0x11

    goto :goto_2
.end method

.method public fullScroll(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v5, 0x0

    .line 959
    const/16 v4, 0x42

    if-ne p1, v4, :cond_1

    const/4 v4, 0x1

    move v1, v4

    .line 960
    .local v1, right:Z
    :goto_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getWidth()I

    move-result v3

    .line 962
    .local v3, width:I
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 963
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->right:I

    .line 965
    if-eqz v1, :cond_0

    .line 966
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildCount()I

    move-result v0

    .line 967
    .local v0, count:I
    if-lez v0, :cond_0

    .line 968
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 969
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 970
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 974
    .end local v0           #count:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #right:Z
    .end local v3           #width:I
    :cond_1
    move v1, v5

    .line 959
    goto :goto_0
.end method

.method protected getExcessScrollDrawInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScrollDrawInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method protected getExcessScrollMode()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScrollMode:I

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 4

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 251
    const/4 v2, 0x0

    .line 260
    :goto_0
    return v2

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 255
    .local v0, length:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollX:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    if-gez v3, :cond_1

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    :goto_1
    sub-int v1, v2, v3

    .line 256
    .local v1, span:I
    if-ge v1, v0, :cond_2

    .line 257
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    .line 255
    .end local v1           #span:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 260
    .restart local v1       #span:I
    :cond_2
    const/high16 v2, 0x3f80

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 284
    const/high16 v0, 0x3f00

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mRight:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 265
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 266
    const/4 v3, 0x0

    .line 276
    :goto_0
    return v3

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 270
    .local v0, length:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mPaddingRight:I

    sub-int v1, v3, v4

    .line 271
    .local v1, rightEdge:I
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollX:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    if-lez v4, :cond_1

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    :goto_1
    add-int v2, v3, v4

    .line 272
    .local v2, span:I
    if-ge v2, v0, :cond_2

    .line 273
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    goto :goto_0

    .end local v2           #span:I
    :cond_1
    move v4, v5

    .line 271
    goto :goto_1

    .line 276
    .restart local v2       #span:I
    :cond_2
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method public isExcessScrollEnabled()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScrollEnabled:Z

    return v0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1155
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1160
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1163
    .local v0, childHeightMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1165
    .local v1, childWidthMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1166
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 1171
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1173
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v3, v4}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1176
    .local v0, childHeightMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1179
    .local v1, childWidthMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1180
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 487
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 488
    .local v0, action:I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    move v3, v5

    .line 540
    :goto_0
    return v3

    .line 492
    :cond_0
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->canScroll()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mBlockExcessScroll:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScrollEnabled:Z

    if-nez v3, :cond_1

    .line 493
    iput-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mIsBeingDragged:Z

    move v3, v4

    .line 494
    goto :goto_0

    .line 497
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 499
    .local v1, x:F
    packed-switch v0, :pswitch_data_0

    .line 540
    :cond_2
    :goto_1
    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 510
    :pswitch_0
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mLastMotionX:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v2, v3

    .line 511
    .local v2, xDiff:I
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTouchSlop:I

    if-le v2, v3, :cond_2

    .line 512
    iput-boolean v5, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mIsBeingDragged:Z

    .line 513
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 519
    .end local v2           #xDiff:I
    :pswitch_1
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mLastMotionX:F

    .line 526
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v5

    :goto_2
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2

    .line 532
    :pswitch_2
    iput-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1405
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mIsLayoutDirty:Z

    .line 1408
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1409
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1411
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1414
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollX:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->scrollTo(II)V

    .line 1415
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 387
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 389
    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 394
    .local v5, widthMode:I
    if-eqz v5, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 399
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 400
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getMeasuredWidth()I

    move-result v4

    .line 401
    .local v4, width:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ge v6, v4, :cond_0

    .line 402
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 404
    .local v3, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mPaddingTop:I

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p2, v6, v7}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 406
    .local v1, childHeightMeasureSpec:I
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v6

    .line 407
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v4, v6

    .line 408
    const/high16 v6, 0x4000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 410
    .local v2, childWidthMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v3, 0x0

    .line 1365
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1366
    const/16 p1, 0x42

    .line 1371
    :cond_0
    :goto_0
    if-nez p2, :cond_2

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 1376
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_3

    move v1, v3

    .line 1384
    :goto_2
    return v1

    .line 1367
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1368
    const/16 p1, 0x11

    goto :goto_0

    .line 1371
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 1380
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_3
    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    .line 1381
    goto :goto_2

    .line 1384
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1419
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1421
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1422
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1433
    :cond_0
    :goto_0
    return-void

    .line 1425
    :cond_1
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mRight:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mLeft:I

    sub-int v1, v3, v4

    .line 1427
    .local v1, maxJump:I
    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1428
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1429
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1430
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1431
    .local v2, scrollDelta:I
    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->doScrollX(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 546
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v8

    if-eqz v8, :cond_0

    move v8, v10

    .line 669
    :goto_0
    return v8

    .line 552
    :cond_0
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->canScroll()Z

    move-result v8

    if-nez v8, :cond_1

    iget-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mBlockExcessScroll:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScrollEnabled:Z

    if-nez v8, :cond_1

    move v8, v10

    .line 553
    goto :goto_0

    .line 556
    :cond_1
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_2

    .line 557
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 559
    :cond_2
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 561
    iget-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScrollEnabled:Z

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mBlockExcessScroll:Z

    if-nez v8, :cond_4

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    if-eqz v8, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-eq v8, v11, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    .line 566
    :cond_3
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;

    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->start()V

    .line 570
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->clear()V

    .line 575
    const-string v8, "TFHorizontalScrollView"

    const-string v9, "aaaa"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 579
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 581
    .local v7, x:F
    packed-switch v0, :pswitch_data_0

    :cond_5
    :goto_1
    move v8, v11

    .line 669
    goto :goto_0

    .line 583
    :pswitch_0
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;

    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$ExcessScrollRecoverRunnable;->cancel()V

    .line 589
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_6

    .line 590
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    .line 594
    :cond_6
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mLastMotionX:F

    goto :goto_1

    .line 598
    :pswitch_1
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mLastMotionX:F

    sub-float/2addr v8, v7

    float-to-int v2, v8

    .line 599
    .local v2, deltaX:I
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mLastMotionX:F

    .line 601
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    .line 603
    .local v4, prevExcessScroll:I
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    mul-int/2addr v8, v2

    if-lez v8, :cond_7

    .line 605
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-lt v8, v9, :cond_c

    .line 606
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    sub-int/2addr v8, v2

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    .line 607
    const/4 v2, 0x0

    .line 608
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->invalidate()V

    .line 615
    :cond_7
    :goto_2
    if-gez v2, :cond_f

    .line 616
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollX:I

    if-lez v8, :cond_e

    .line 617
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollX:I

    add-int/2addr v8, v2

    if-gez v8, :cond_d

    .line 618
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollY:I

    add-int/2addr v8, v2

    neg-int v8, v8

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    .line 619
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollX:I

    neg-int v8, v8

    invoke-virtual {p0, v8, v10}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->scrollBy(II)V

    .line 644
    :cond_8
    :goto_3
    iget-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mBlockExcessScroll:Z

    if-nez v8, :cond_9

    iget-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScrollEnabled:Z

    if-nez v8, :cond_a

    .line 645
    :cond_9
    iput v10, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    .line 647
    :cond_a
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    if-eqz v8, :cond_b

    .line 648
    iput v10, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScrollMode:I

    .line 650
    :cond_b
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    if-eq v8, v4, :cond_5

    .line 651
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->awakenScrollBars()Z

    goto :goto_1

    .line 610
    :cond_c
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    sub-int/2addr v2, v8

    .line 611
    iput v10, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    goto :goto_2

    .line 621
    :cond_d
    invoke-virtual {p0, v2, v10}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->scrollBy(II)V

    goto :goto_3

    .line 624
    :cond_e
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    sub-int/2addr v8, v2

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    .line 625
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->invalidate()V

    goto :goto_3

    .line 627
    :cond_f
    if-lez v2, :cond_8

    .line 628
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mPaddingRight:I

    sub-int v5, v8, v9

    .line 629
    .local v5, rightEdge:I
    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollX:I

    sub-int/2addr v8, v9

    sub-int v1, v8, v5

    .line 631
    .local v1, availableToScroll:I
    if-lez v1, :cond_11

    .line 632
    if-le v1, v2, :cond_10

    .line 633
    invoke-virtual {p0, v2, v10}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->scrollBy(II)V

    goto :goto_3

    .line 635
    :cond_10
    sub-int v8, v1, v2

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    .line 636
    invoke-virtual {p0, v1, v10}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->scrollBy(II)V

    goto :goto_3

    .line 639
    :cond_11
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    sub-int/2addr v8, v2

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScroll:I

    .line 640
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->invalidate()V

    goto :goto_3

    .line 656
    .end local v1           #availableToScroll:I
    .end local v2           #deltaX:I
    .end local v4           #prevExcessScroll:I
    .end local v5           #rightEdge:I
    :pswitch_2
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 657
    .local v6, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v8, 0x3e8

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mMaximumVelocity:I

    int-to-float v9, v9

    invoke-virtual {v6, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 658
    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    float-to-int v3, v8

    .line 660
    .local v3, initialVelocity:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mMinimumVelocity:I

    if-le v8, v9, :cond_12

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_12

    .line 661
    neg-int v8, v3

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->fling(I)V

    .line 664
    :cond_12
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_5

    .line 665
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    .line 666
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 581
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v6, 0x0

    .line 923
    const/16 v4, 0x42

    if-ne p1, v4, :cond_1

    const/4 v4, 0x1

    move v1, v4

    .line 924
    .local v1, right:Z
    :goto_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getWidth()I

    move-result v3

    .line 926
    .local v3, width:I
    if-eqz v1, :cond_2

    .line 927
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getScrollX()I

    move-result v5

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 928
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildCount()I

    move-result v0

    .line 929
    .local v0, count:I
    if-lez v0, :cond_0

    .line 930
    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 931
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 932
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 941
    .end local v0           #count:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 943
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #right:Z
    .end local v3           #width:I
    :cond_1
    move v1, v6

    .line 923
    goto :goto_0

    .line 936
    .restart local v1       #right:Z
    .restart local v3       #width:I
    :cond_2
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getScrollX()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 937
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_0

    .line 938
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v6, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1340
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollViewMovedFocus:Z

    if-nez v0, :cond_0

    .line 1341
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    .line 1342
    invoke-direct {p0, p2}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1348
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1349
    return-void

    .line 1345
    :cond_1
    iput-object p2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1391
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1394
    invoke-direct {p0, p2, p3}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mIsLayoutDirty:Z

    .line 1400
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1401
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1492
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1493
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1494
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->clamp(III)I

    move-result p1

    .line 1495
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->clamp(III)I

    move-result p2

    .line 1496
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 1497
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1500
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setEnableExcessScroll(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mExcessScrollEnabled:Z

    .line 204
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 365
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mFillViewport:Z

    .line 366
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->requestLayout()V

    .line 368
    :cond_0
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 382
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 383
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 6
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1118
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mLastScroll:J

    sub-long v0, v2, v4

    .line 1119
    .local v0, duration:J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1120
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollX:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollY:I

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 1121
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getDuration()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->awakenScrollBars(I)Z

    .line 1122
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->invalidate()V

    .line 1129
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mLastScroll:J

    .line 1130
    return-void

    .line 1124
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1125
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1127
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1139
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->smoothScrollBy(II)V

    .line 1140
    return-void
.end method
