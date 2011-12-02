.class public Lcom/nemustech/tiffany/widget/TFScrollView;
.super Landroid/widget/FrameLayout;
.source "TFScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;,
        Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;
    }
.end annotation


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field static final DEBUG_EXCESS_SCROLL:Z = false

.field protected static final EXCESS_SCROLL_MODE_DECELERATE:I = 0x1

.field protected static final EXCESS_SCROLL_MODE_DRAG:I = 0x0

.field protected static final EXCESS_SCROLL_MODE_RECOVER_FROM_DECELERATE:I = 0x3

.field protected static final EXCESS_SCROLL_MODE_RECOVER_FROM_DRAG:I = 0x2

.field private static final EXCESS_SCROLL_RECOVER_DURATION:I = 0x96

.field private static final EXCESS_SCROLL_TENSION:F = 0.5f

.field public static final HORIZONTAL:I = 0x0

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field static final TAG:Ljava/lang/String; = "TFScrollView"

.field public static final VERTICAL:I = 0x1


# instance fields
.field protected mBlockExcessScroll:Z

.field private mChildToScrollTo:Landroid/view/View;

.field protected mExcessScroll:I

.field private mExcessScrollDecelerateRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;

.field private mExcessScrollDrawInterpolator:Landroid/view/animation/Interpolator;

.field protected mExcessScrollEnabled:Z

.field private mExcessScrollMode:I

.field protected mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOrientation:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSmoothScrollingEnabled:Z

.field private mTFScrollViewMovedFocus:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 236
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 239
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 240
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

    .line 243
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 98
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsLayoutDirty:Z

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 112
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsBeingDragged:Z

    .line 128
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mSmoothScrollingEnabled:Z

    .line 141
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 144
    new-instance v1, Lcom/nemustech/tiffany/widget/TFScrollView$1;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFScrollView$1;-><init>(Lcom/nemustech/tiffany/widget/TFScrollView;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollDrawInterpolator:Landroid/view/animation/Interpolator;

    .line 189
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    .line 196
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBlockExcessScroll:Z

    .line 218
    new-instance v1, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFScrollView;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;

    .line 221
    new-instance v1, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFScrollView;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollDecelerateRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;

    .line 232
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    .line 244
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->initScrollView()V

    .line 246
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v1

    const/16 v2, 0x105

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getIntArr(I)[I

    move-result-object v1

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 249
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->setFillViewport(Z)V

    .line 251
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 252
    return-void
.end method

.method static synthetic access$002(Lcom/nemustech/tiffany/widget/TFScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/nemustech/tiffany/widget/TFScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    return v0
.end method

.method static synthetic access$200(Lcom/nemustech/tiffany/widget/TFScrollView;)Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollDecelerateRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nemustech/tiffany/widget/TFScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/nemustech/tiffany/widget/TFScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method private canScroll()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 387
    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 388
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_3

    .line 389
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v3, :cond_1

    .line 390
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 391
    .local v2, childWidth:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingLeft:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    move v3, v7

    .line 397
    .end local v2           #childWidth:I
    :goto_0
    return v3

    .restart local v2       #childWidth:I
    :cond_0
    move v3, v6

    .line 391
    goto :goto_0

    .line 393
    .end local v2           #childWidth:I
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 394
    .local v1, childHeight:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingTop:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_2

    move v3, v7

    goto :goto_0

    :cond_2
    move v3, v6

    goto :goto_0

    .end local v1           #childHeight:I
    :cond_3
    move v3, v6

    .line 397
    goto :goto_0
.end method

.method private clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 2026
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_1

    .line 2042
    :cond_0
    const/4 v0, 0x0

    .line 2052
    :goto_0
    return v0

    .line 2044
    :cond_1
    add-int v0, p2, p1

    if-le v0, p3, :cond_2

    .line 2050
    sub-int v0, p3, p2

    goto :goto_0

    :cond_2
    move v0, p1

    .line 2052
    goto :goto_0
.end method

.method private doScrollX(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1466
    if-eqz p1, :cond_0

    .line 1467
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1468
    invoke-virtual {p0, p1, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->smoothScrollBy(II)V

    .line 1473
    :cond_0
    :goto_0
    return-void

    .line 1470
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private doScrollY(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1451
    if-eqz p1, :cond_0

    .line 1452
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1453
    invoke-virtual {p0, v1, p1}, Lcom/nemustech/tiffany/widget/TFScrollView;->smoothScrollBy(II)V

    .line 1458
    :cond_0
    :goto_0
    return-void

    .line 1455
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 12
    .parameter "topFocus"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 1072
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/nemustech/tiffany/widget/TFScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1073
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1082
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 1084
    .local v3, foundFullyContainedFocusable:Z
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    .line 1085
    .local v5, orientation:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1086
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_d

    .line 1087
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1088
    .local v6, view:Landroid/view/View;
    const/4 v10, 0x0

    .line 1089
    .local v10, viewTop:I
    const/4 v7, 0x0

    .line 1090
    .local v7, viewBottom:I
    if-nez v5, :cond_1

    .line 1091
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 1092
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    .line 1098
    :goto_1
    if-ge p2, v7, :cond_0

    if-ge v10, p3, :cond_0

    .line 1104
    if-ge p2, v10, :cond_2

    if-ge v7, p3, :cond_2

    const/4 v11, 0x1

    move v9, v11

    .line 1107
    .local v9, viewIsFullyContained:Z
    :goto_2
    if-nez v1, :cond_3

    .line 1109
    move-object v1, v6

    .line 1110
    move v3, v9

    .line 1086
    .end local v9           #viewIsFullyContained:Z
    :cond_0
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1094
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v10

    .line 1095
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    goto :goto_1

    .line 1104
    :cond_2
    const/4 v11, 0x0

    move v9, v11

    goto :goto_2

    .line 1112
    .restart local v9       #viewIsFullyContained:Z
    :cond_3
    const/4 v8, 0x0

    .line 1113
    .local v8, viewIsCloserToBoundary:Z
    if-nez v5, :cond_7

    .line 1114
    if-eqz p1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v11

    if-lt v10, v11, :cond_5

    :cond_4
    if-nez p1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v11

    if-le v7, v11, :cond_6

    :cond_5
    const/4 v11, 0x1

    move v8, v11

    .line 1125
    :goto_4
    if-eqz v3, :cond_b

    .line 1126
    if-eqz v9, :cond_0

    if-eqz v8, :cond_0

    .line 1132
    move-object v1, v6

    goto :goto_3

    .line 1114
    :cond_6
    const/4 v11, 0x0

    move v8, v11

    goto :goto_4

    .line 1119
    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v11

    if-lt v10, v11, :cond_9

    :cond_8
    if-nez p1, :cond_a

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v11

    if-le v7, v11, :cond_a

    :cond_9
    const/4 v11, 0x1

    move v8, v11

    :goto_5
    goto :goto_4

    :cond_a
    const/4 v11, 0x0

    move v8, v11

    goto :goto_5

    .line 1135
    :cond_b
    if-eqz v9, :cond_c

    .line 1137
    move-object v1, v6

    .line 1138
    const/4 v3, 0x1

    goto :goto_3

    .line 1139
    :cond_c
    if-eqz v8, :cond_0

    .line 1144
    move-object v1, v6

    goto :goto_3

    .line 1151
    .end local v6           #view:Landroid/view/View;
    .end local v7           #viewBottom:I
    .end local v8           #viewIsCloserToBoundary:Z
    .end local v9           #viewIsFullyContained:Z
    .end local v10           #viewTop:I
    :cond_d
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 6
    .parameter "topFocus"
    .parameter "top"
    .parameter "preferredFocusable"

    .prologue
    .line 1026
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v5, :cond_1

    .line 1027
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHorizontalFadingEdgeLength()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 1028
    .local v1, fadingEdgeLength:I
    add-int v2, p2, v1

    .line 1029
    .local v2, leftWithoutFadingEdge:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v5

    add-int/2addr v5, p2

    sub-int v3, v5, v1

    .line 1031
    .local v3, rightWithoutFadingEdge:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ge v5, v3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v5, v2, :cond_0

    move-object v5, p3

    .line 1051
    .end local v2           #leftWithoutFadingEdge:I
    .end local v3           #rightWithoutFadingEdge:I
    :goto_0
    return-object v5

    .line 1037
    .restart local v2       #leftWithoutFadingEdge:I
    .restart local v3       #rightWithoutFadingEdge:I
    :cond_0
    invoke-direct {p0, p1, v2, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    goto :goto_0

    .line 1041
    .end local v1           #fadingEdgeLength:I
    .end local v2           #leftWithoutFadingEdge:I
    .end local v3           #rightWithoutFadingEdge:I
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getVerticalFadingEdgeLength()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 1042
    .restart local v1       #fadingEdgeLength:I
    add-int v4, p2, v1

    .line 1043
    .local v4, topWithoutFadingEdge:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v5

    add-int/2addr v5, p2

    sub-int v0, v5, v1

    .line 1045
    .local v0, bottomWithoutFadingEdge:I
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v5

    if-ge v5, v0, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v5, v4, :cond_2

    move-object v5, p3

    .line 1048
    goto :goto_0

    .line 1051
    :cond_2
    invoke-direct {p0, p1, v4, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    .line 337
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    .line 338
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->setFocusable(Z)V

    .line 339
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->setDescendantFocusability(I)V

    .line 340
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->setWillNotDraw(Z)V

    .line 341
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 342
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTouchSlop:I

    .line 343
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mMinimumVelocity:I

    .line 344
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mMaximumVelocity:I

    .line 345
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 3
    .parameter "descendant"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1415
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v0, :cond_1

    .line 1416
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 1418
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1416
    goto :goto_0

    .line 1418
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    .line 1936
    if-ne p1, p2, :cond_0

    move v1, v2

    .line 1941
    :goto_0
    return v1

    .line 1940
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1941
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/nemustech/tiffany/widget/TFScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

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
    .line 1438
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1439
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1441
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

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

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2
    .parameter "descendant"
    .parameter "delta"
    .parameter "height"

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1427
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1429
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

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
    .parameter "top"
    .parameter "bottom"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1278
    const/4 v3, 0x1

    .line 1280
    .local v3, handled:Z
    const/4 v4, 0x0

    .line 1281
    .local v4, height:I
    const/4 v1, 0x0

    .line 1282
    .local v1, containerTop:I
    const/4 v0, 0x0

    .line 1283
    .local v0, containerBottom:I
    const/4 v6, 0x0

    .line 1285
    .local v6, up:Z
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v7, :cond_3

    .line 1286
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v4

    .line 1287
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollX()I

    move-result v1

    .line 1288
    const/16 v7, 0x11

    if-ne p1, v7, :cond_2

    move v6, v9

    .line 1294
    :goto_0
    add-int v0, v1, v4

    .line 1296
    invoke-direct {p0, v6, p2, p3}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1297
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 1298
    move-object v5, p0

    .line 1301
    :cond_0
    if-lt p2, v1, :cond_5

    if-gt p3, v0, :cond_5

    .line 1302
    const/4 v3, 0x0

    .line 1312
    :goto_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1313
    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTFScrollViewMovedFocus:Z

    .line 1314
    iput-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTFScrollViewMovedFocus:Z

    .line 1317
    :cond_1
    return v3

    .end local v5           #newFocused:Landroid/view/View;
    :cond_2
    move v6, v8

    .line 1288
    goto :goto_0

    .line 1290
    :cond_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v4

    .line 1291
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v1

    .line 1292
    const/16 v7, 0x21

    if-ne p1, v7, :cond_4

    move v6, v9

    :goto_2
    goto :goto_0

    :cond_4
    move v6, v8

    goto :goto_2

    .line 1304
    .restart local v5       #newFocused:Landroid/view/View;
    :cond_5
    if-eqz v6, :cond_6

    sub-int v7, p2, v1

    move v2, v7

    .line 1305
    .local v2, delta:I
    :goto_3
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v7, :cond_7

    .line 1306
    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->doScrollX(I)V

    goto :goto_1

    .line 1304
    .end local v2           #delta:I
    :cond_6
    sub-int v7, p3, v0

    move v2, v7

    goto :goto_3

    .line 1308
    .restart local v2       #delta:I
    :cond_7
    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->doScrollY(I)V

    goto :goto_1
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 3
    .parameter "child"

    .prologue
    const/4 v2, 0x0

    .line 1648
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1651
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1653
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1655
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 1656
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v1, :cond_1

    .line 1657
    invoke-virtual {p0, v0, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    .line 1662
    :cond_0
    :goto_0
    return-void

    .line 1659
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 4
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v3, 0x0

    .line 1673
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1674
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 1675
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1676
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v2, :cond_3

    .line 1677
    if-eqz p2, :cond_2

    .line 1678
    invoke-virtual {p0, v0, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    .line 1690
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v3

    .line 1674
    goto :goto_0

    .line 1680
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->smoothScrollBy(II)V

    goto :goto_1

    .line 1683
    :cond_3
    if-eqz p2, :cond_4

    .line 1684
    invoke-virtual {p0, v3, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto :goto_1

    .line 1686
    :cond_4
    invoke-virtual {p0, v3, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 350
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TFScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 354
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 359
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TFScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 363
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 377
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TFScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 381
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 368
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TFScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 14
    .parameter "direction"

    .prologue
    const/16 v13, 0x82

    const/16 v12, 0x42

    const/4 v11, 0x0

    .line 1329
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1330
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1332
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v9

    invoke-virtual {v9, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 1334
    .local v5, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getMaxScrollAmount()I

    move-result v4

    .line 1336
    .local v4, maxJump:I
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v9, :cond_7

    .line 1337
    if-eqz v5, :cond_2

    invoke-direct {p0, v5, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1338
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v9}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1339
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1340
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v8

    .line 1341
    .local v8, scrollDelta:I
    invoke-direct {p0, v8}, Lcom/nemustech/tiffany/widget/TFScrollView;->doScrollX(I)V

    .line 1342
    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1395
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1402
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getDescendantFocusability()I

    move-result v3

    .line 1403
    .local v3, descendantFocusability:I
    const/high16 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->setDescendantFocusability(I)V

    .line 1404
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->requestFocus()Z

    .line 1405
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->setDescendantFocusability(I)V

    .line 1407
    .end local v3           #descendantFocusability:I
    :cond_1
    const/4 v9, 0x1

    :goto_1
    return v9

    .line 1345
    .end local v8           #scrollDelta:I
    :cond_2
    move v8, v4

    .line 1347
    .restart local v8       #scrollDelta:I
    const/16 v9, 0x11

    if-ne p1, v9, :cond_4

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollX()I

    move-result v9

    if-ge v9, v8, :cond_4

    .line 1348
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollX()I

    move-result v8

    .line 1359
    :cond_3
    :goto_2
    if-nez v8, :cond_5

    move v9, v11

    .line 1360
    goto :goto_1

    .line 1349
    :cond_4
    if-ne p1, v12, :cond_3

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_3

    .line 1351
    invoke-virtual {p0, v11}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1353
    .local v2, daRight:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v10

    add-int v7, v9, v10

    .line 1355
    .local v7, screenRight:I
    sub-int v9, v2, v7

    if-ge v9, v4, :cond_3

    .line 1356
    sub-int v8, v2, v7

    goto :goto_2

    .line 1362
    .end local v2           #daRight:I
    .end local v7           #screenRight:I
    :cond_5
    if-ne p1, v12, :cond_6

    move v9, v8

    :goto_3
    invoke-direct {p0, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->doScrollX(I)V

    goto :goto_0

    :cond_6
    neg-int v9, v8

    goto :goto_3

    .line 1365
    .end local v8           #scrollDelta:I
    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v9

    invoke-direct {p0, v5, v4, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1366
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v9}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1367
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1368
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v8

    .line 1369
    .restart local v8       #scrollDelta:I
    invoke-direct {p0, v8}, Lcom/nemustech/tiffany/widget/TFScrollView;->doScrollY(I)V

    .line 1370
    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_0

    .line 1373
    .end local v8           #scrollDelta:I
    :cond_8
    move v8, v4

    .line 1375
    .restart local v8       #scrollDelta:I
    const/16 v9, 0x21

    if-ne p1, v9, :cond_a

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v9

    if-ge v9, v8, :cond_a

    .line 1376
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v8

    .line 1388
    :cond_9
    :goto_4
    if-nez v8, :cond_b

    move v9, v11

    .line 1389
    goto :goto_1

    .line 1377
    :cond_a
    if-ne p1, v13, :cond_9

    .line 1378
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_9

    .line 1379
    invoke-virtual {p0, v11}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1381
    .local v1, daBottom:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v9

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v10

    add-int v6, v9, v10

    .line 1383
    .local v6, screenBottom:I
    sub-int v9, v1, v6

    if-ge v9, v4, :cond_9

    .line 1384
    sub-int v8, v1, v6

    goto :goto_4

    .line 1391
    .end local v1           #daBottom:I
    .end local v6           #screenBottom:I
    :cond_b
    if-ne p1, v13, :cond_c

    move v9, v8

    :goto_5
    invoke-direct {p0, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->doScrollY(I)V

    goto/16 :goto_0

    :cond_c
    neg-int v9, v8

    goto :goto_5
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2130
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result v0

    .line 2131
    .local v0, extent:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-ne v2, v4, :cond_0

    move v2, v0

    .line 2137
    :goto_0
    return v2

    .line 2133
    :cond_0
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeHorizontalScrollRange()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2134
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 2135
    .local v1, ratio:F
    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 2137
    .end local v1           #ratio:F
    :cond_1
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 8

    .prologue
    .line 2142
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v2

    .line 2143
    .local v2, offset:I
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    move v3, v2

    .line 2156
    .end local v2           #offset:I
    .local v3, offset:I
    :goto_0
    return v3

    .line 2145
    .end local v3           #offset:I
    .restart local v2       #offset:I
    :cond_0
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-gez v6, :cond_1

    .line 2146
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 2147
    .local v4, savedExcessScroll:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeHorizontalScrollExtent()I

    move-result v5

    .line 2148
    .local v5, shrinkedScrollExtent:I
    const/4 v6, 0x0

    iput v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 2149
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeHorizontalScrollExtent()I

    move-result v1

    .line 2150
    .local v1, normalScrollExtent:I
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 2152
    sub-int v0, v1, v5

    .line 2154
    .local v0, delta:I
    add-int/2addr v2, v0

    .end local v0           #delta:I
    .end local v1           #normalScrollExtent:I
    .end local v4           #savedExcessScroll:I
    .end local v5           #shrinkedScrollExtent:I
    :cond_1
    move v3, v2

    .line 2156
    .end local v2           #offset:I
    .restart local v3       #offset:I
    goto :goto_0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 3

    .prologue
    .line 1526
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1527
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollRange()I

    move-result v1

    .line 1531
    :goto_0
    return v1

    .line 1530
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    .line 1531
    .local v0, count:I
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 11

    .prologue
    .line 1583
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1600
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    .line 1601
    .local v2, oldX:I
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    .line 1602
    .local v3, oldY:I
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrX()I

    move-result v7

    .line 1603
    .local v7, x:I
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrY()I

    move-result v8

    .line 1604
    .local v8, y:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_6

    .line 1605
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1606
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v9

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingLeft:I

    sub-int/2addr v9, v10

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-direct {p0, v7, v9, v10}, Lcom/nemustech/tiffany/widget/TFScrollView;->clamp(III)I

    move-result v9

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    .line 1607
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v9

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingTop:I

    sub-int/2addr v9, v10

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-direct {p0, v8, v9, v10}, Lcom/nemustech/tiffany/widget/TFScrollView;->clamp(III)I

    move-result v9

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    .line 1609
    const/4 v4, 0x0

    .line 1610
    .local v4, scroll:I
    const/4 v5, 0x0

    .line 1611
    .local v5, value:I
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v9, :cond_5

    .line 1612
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    .line 1613
    move v5, v7

    .line 1618
    :goto_0
    if-eq v4, v5, :cond_1

    .line 1619
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v6

    .line 1621
    .local v6, velocity:F
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1622
    float-to-int v1, v6

    .line 1623
    .local v1, decelerationFlingSpeed:I
    if-nez v4, :cond_0

    .line 1624
    mul-int/lit8 v1, v1, -0x1

    .line 1626
    :cond_0
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollDecelerateRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;

    invoke-virtual {v9, v1}, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->start(I)V

    .line 1633
    .end local v0           #child:Landroid/view/View;
    .end local v1           #decelerationFlingSpeed:I
    .end local v4           #scroll:I
    .end local v5           #value:I
    .end local v6           #velocity:F
    :cond_1
    :goto_1
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    if-ne v2, v9, :cond_2

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    if-eq v3, v9, :cond_3

    .line 1634
    :cond_2
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    invoke-virtual {p0, v9, v10, v2, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->onScrollChanged(IIII)V

    .line 1638
    :cond_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->postInvalidate()V

    .line 1640
    .end local v2           #oldX:I
    .end local v3           #oldY:I
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_4
    return-void

    .line 1615
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #oldX:I
    .restart local v3       #oldY:I
    .restart local v4       #scroll:I
    .restart local v5       #value:I
    .restart local v7       #x:I
    .restart local v8       #y:I
    :cond_5
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    .line 1616
    move v5, v8

    goto :goto_0

    .line 1630
    .end local v0           #child:Landroid/view/View;
    .end local v4           #scroll:I
    .end local v5           #value:I
    :cond_6
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    .line 1631
    iput v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    goto :goto_1
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 17
    .parameter "rect"

    .prologue
    .line 1702
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v15

    if-nez v15, :cond_0

    const/4 v15, 0x0

    .line 1812
    :goto_0
    return v15

    .line 1704
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    move v15, v0

    if-nez v15, :cond_7

    .line 1705
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v14

    .line 1706
    .local v14, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollX()I

    move-result v9

    .line 1707
    .local v9, screenLeft:I
    add-int v10, v9, v14

    .line 1709
    .local v10, screenRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHorizontalFadingEdgeLength()I

    move-result v5

    .line 1712
    .local v5, fadingEdge:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    if-lez v15, :cond_1

    .line 1713
    add-int/2addr v9, v5

    .line 1717
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v16

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 1718
    sub-int/2addr v10, v5

    .line 1721
    :cond_2
    const/4 v12, 0x0

    .line 1723
    .local v12, scrollXDelta:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    if-le v15, v10, :cond_5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    if-le v15, v9, :cond_5

    .line 1728
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v15

    if-le v15, v14, :cond_4

    .line 1730
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    sub-int/2addr v15, v9

    add-int/2addr v12, v15

    .line 1737
    :goto_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v7

    .line 1738
    .local v7, right:I
    sub-int v4, v7, v10

    .line 1739
    .local v4, distanceToRight:I
    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    .end local v4           #distanceToRight:I
    .end local v7           #right:I
    :cond_3
    :goto_2
    move v15, v12

    .line 1757
    goto :goto_0

    .line 1733
    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    sub-int/2addr v15, v10

    add-int/2addr v12, v15

    goto :goto_1

    .line 1741
    :cond_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    if-ge v15, v9, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    if-ge v15, v10, :cond_3

    .line 1746
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v15

    if-le v15, v14, :cond_6

    .line 1748
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    sub-int v15, v10, v15

    sub-int/2addr v12, v15

    .line 1755
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollX()I

    move-result v15

    neg-int v15, v15

    invoke-static {v12, v15}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_2

    .line 1751
    :cond_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    sub-int v15, v9, v15

    sub-int/2addr v12, v15

    goto :goto_3

    .line 1760
    .end local v5           #fadingEdge:I
    .end local v9           #screenLeft:I
    .end local v10           #screenRight:I
    .end local v12           #scrollXDelta:I
    .end local v14           #width:I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v6

    .line 1761
    .local v6, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v11

    .line 1762
    .local v11, screenTop:I
    add-int v8, v11, v6

    .line 1764
    .local v8, screenBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 1767
    .restart local v5       #fadingEdge:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    if-lez v15, :cond_8

    .line 1768
    add-int/2addr v11, v5

    .line 1772
    :cond_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v16

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    .line 1773
    sub-int/2addr v8, v5

    .line 1776
    :cond_9
    const/4 v13, 0x0

    .line 1778
    .local v13, scrollYDelta:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    if-le v15, v8, :cond_c

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    if-le v15, v11, :cond_c

    .line 1783
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v15

    if-le v15, v6, :cond_b

    .line 1785
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int/2addr v15, v11

    add-int/2addr v13, v15

    .line 1792
    :goto_4
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1793
    .local v2, bottom:I
    sub-int v3, v2, v8

    .line 1794
    .local v3, distanceToBottom:I
    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    move-result v13

    .end local v2           #bottom:I
    .end local v3           #distanceToBottom:I
    :cond_a
    :goto_5
    move v15, v13

    .line 1812
    goto/16 :goto_0

    .line 1788
    :cond_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    sub-int/2addr v15, v8

    add-int/2addr v13, v15

    goto :goto_4

    .line 1796
    :cond_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    if-ge v15, v11, :cond_a

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    if-ge v15, v8, :cond_a

    .line 1801
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v15

    if-le v15, v6, :cond_d

    .line 1803
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    sub-int v15, v8, v15

    sub-int/2addr v13, v15

    .line 1810
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v15

    neg-int v15, v15

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_5

    .line 1806
    :cond_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int v15, v11, v15

    sub-int/2addr v13, v15

    goto :goto_6
.end method

.method protected computeVerticalScrollExtent()I
    .locals 4

    .prologue
    .line 2099
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v0

    .line 2100
    .local v0, extent:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v2, :cond_0

    move v2, v0

    .line 2106
    :goto_0
    return v2

    .line 2102
    :cond_0
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeVerticalScrollRange()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2103
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 2104
    .local v1, ratio:F
    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 2106
    .end local v1           #ratio:F
    :cond_1
    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 7

    .prologue
    .line 2111
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v2

    .line 2112
    .local v2, offset:I
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v6, :cond_0

    move v3, v2

    .line 2125
    .end local v2           #offset:I
    .local v3, offset:I
    :goto_0
    return v3

    .line 2114
    .end local v3           #offset:I
    .restart local v2       #offset:I
    :cond_0
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-gez v6, :cond_1

    .line 2115
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 2116
    .local v4, savedExcessScroll:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeVerticalScrollExtent()I

    move-result v5

    .line 2117
    .local v5, shrinkedScrollExtent:I
    const/4 v6, 0x0

    iput v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 2118
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeVerticalScrollExtent()I

    move-result v1

    .line 2119
    .local v1, normalScrollExtent:I
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 2121
    sub-int v0, v1, v5

    .line 2123
    .local v0, delta:I
    add-int/2addr v2, v0

    .end local v0           #delta:I
    .end local v1           #normalScrollExtent:I
    .end local v4           #savedExcessScroll:I
    .end local v5           #shrinkedScrollExtent:I
    :cond_1
    move v3, v2

    .line 2125
    .end local v2           #offset:I
    .restart local v3       #offset:I
    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1512
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v1, :cond_0

    .line 1513
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollRange()I

    move-result v1

    .line 1517
    :goto_0
    return v1

    .line 1516
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    .line 1517
    .local v0, count:I
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 2057
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBlockExcessScroll:Z

    if-nez v4, :cond_3

    .line 2058
    const/4 v2, 0x0

    .line 2059
    .local v2, shift:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v4, :cond_1

    .line 2060
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 2061
    .local v3, width:F
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getExcessScrollDrawInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v4, v3

    float-to-int v2, v4

    .line 2071
    .end local v3           #width:F
    :goto_0
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-gez v4, :cond_0

    .line 2072
    mul-int/lit8 v2, v2, -0x1

    .line 2075
    :cond_0
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getPaddingLeft()I

    move-result v5

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 2076
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getPaddingTop()I

    move-result v5

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 2077
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 2078
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 2079
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 2081
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2082
    .local v1, save1:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v4, :cond_2

    .line 2083
    int-to-float v4, v2

    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2088
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2090
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2095
    .end local v1           #save1:I
    .end local v2           #shift:I
    :goto_2
    return-void

    .line 2065
    .restart local v2       #shift:I
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v4

    int-to-float v0, v4

    .line 2066
    .local v0, height:F
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getExcessScrollDrawInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v0

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v4, v0

    float-to-int v2, v4

    goto :goto_0

    .line 2085
    .end local v0           #height:F
    .restart local v1       #save1:I
    :cond_2
    int-to-float v4, v2

    invoke-virtual {p1, v7, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 2093
    .end local v1           #save1:I
    .end local v2           #shift:I
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 500
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 501
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 502
    const/4 v1, 0x1

    .line 504
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/16 v8, 0x21

    const/16 v7, 0x11

    const/4 v6, 0x0

    const/16 v5, 0x82

    const/16 v4, 0x42

    .line 516
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 518
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v3, :cond_8

    .line 519
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->canScroll()Z

    move-result v3

    if-nez v3, :cond_3

    .line 520
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 521
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 522
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 523
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v4}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 525
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 593
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :goto_0
    return v3

    .restart local v0       #currentFocused:Landroid/view/View;
    .restart local v2       #nextFocused:Landroid/view/View;
    :cond_1
    move v3, v6

    .line 525
    goto :goto_0

    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_2
    move v3, v6

    .line 528
    goto :goto_0

    .line 531
    :cond_3
    const/4 v1, 0x0

    .line 532
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 533
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_4
    :goto_1
    move v3, v1

    .line 554
    goto :goto_0

    .line 535
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 536
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 538
    :cond_5
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFScrollView;->fullScroll(I)Z

    move-result v1

    .line 540
    goto :goto_1

    .line 542
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 543
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 545
    :cond_6
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->fullScroll(I)Z

    move-result v1

    .line 547
    goto :goto_1

    .line 549
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v7

    :goto_2
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_7
    move v3, v4

    goto :goto_2

    .line 557
    .end local v1           #handled:Z
    :cond_8
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->canScroll()Z

    move-result v3

    if-nez v3, :cond_c

    .line 558
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 559
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 560
    .restart local v0       #currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_9

    const/4 v0, 0x0

    .line 561
    :cond_9
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 563
    .restart local v2       #nextFocused:Landroid/view/View;
    if-eqz v2, :cond_a

    if-eq v2, p0, :cond_a

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    goto :goto_0

    :cond_a
    move v3, v6

    goto :goto_0

    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_b
    move v3, v6

    .line 567
    goto :goto_0

    .line 570
    :cond_c
    const/4 v1, 0x0

    .line 571
    .restart local v1       #handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_d

    .line 572
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    :cond_d
    :goto_3
    move v3, v1

    .line 593
    goto :goto_0

    .line 574
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_e

    .line 575
    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_3

    .line 577
    :cond_e
    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFScrollView;->fullScroll(I)Z

    move-result v1

    .line 579
    goto :goto_3

    .line 581
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_f

    .line 582
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_3

    .line 584
    :cond_f
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFScrollView;->fullScroll(I)Z

    move-result v1

    .line 586
    goto :goto_3

    .line 588
    :sswitch_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v8

    :goto_4
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->pageScroll(I)Z

    goto :goto_3

    :cond_10
    move v3, v5

    goto :goto_4

    .line 533
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch

    .line 572
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x3e -> :sswitch_5
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 20
    .parameter "velocity"

    .prologue
    .line 1952
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 1953
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    move v4, v0

    if-nez v4, :cond_7

    .line 1954
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingLeft:I

    move v5, v0

    sub-int v19, v4, v5

    .line 1955
    .local v19, width:I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v18

    .line 1957
    .local v18, right:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBlockExcessScroll:Z

    move v4, v0

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    move v4, v0

    if-nez v4, :cond_4

    .line 1958
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    move v6, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sub-int v10, v18, v19

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v7, p1

    invoke-virtual/range {v4 .. v12}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1963
    :goto_0
    if-lez p1, :cond_5

    const/4 v4, 0x1

    move/from16 v16, v4

    .line 1965
    .local v16, movingRight:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/Scroller;->getFinalX()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v4

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v17

    .line 1968
    .local v17, newFocused:Landroid/view/View;
    if-nez v17, :cond_1

    .line 1969
    move-object/from16 v17, p0

    .line 1972
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    if-eq v0, v1, :cond_2

    if-eqz v16, :cond_6

    const/16 v4, 0x42

    :goto_2
    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1974
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mTFScrollViewMovedFocus:Z

    .line 1975
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mTFScrollViewMovedFocus:Z

    .line 2003
    .end local v16           #movingRight:Z
    .end local v18           #right:I
    .end local v19           #width:I
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/Scroller;->getDuration()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->awakenScrollBars(I)Z

    .line 2004
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    .line 2006
    .end local v17           #newFocused:Landroid/view/View;
    :cond_3
    return-void

    .line 1960
    .restart local v18       #right:I
    .restart local v19       #width:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    move v6, v0

    const/4 v8, 0x0

    const/high16 v9, -0x8000

    const v10, 0x7fffffff

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v7, p1

    invoke-virtual/range {v4 .. v12}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1963
    :cond_5
    const/4 v4, 0x0

    move/from16 v16, v4

    goto :goto_1

    .line 1972
    .restart local v16       #movingRight:Z
    .restart local v17       #newFocused:Landroid/view/View;
    :cond_6
    const/16 v4, 0x11

    goto :goto_2

    .line 1978
    .end local v16           #movingRight:Z
    .end local v17           #newFocused:Landroid/view/View;
    .end local v18           #right:I
    .end local v19           #width:I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingTop:I

    move v5, v0

    sub-int v14, v4, v5

    .line 1979
    .local v14, height:I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 1981
    .local v13, bottom:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBlockExcessScroll:Z

    move v4, v0

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    move v4, v0

    if-nez v4, :cond_a

    .line 1982
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    move v6, v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    sub-int v12, v13, v14

    move/from16 v8, p1

    invoke-virtual/range {v4 .. v12}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1988
    :goto_4
    if-lez p1, :cond_b

    const/4 v4, 0x1

    move v15, v4

    .line 1990
    .local v15, movingDown:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/Scroller;->getFinalY()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    move v1, v15

    move v2, v4

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v17

    .line 1992
    .restart local v17       #newFocused:Landroid/view/View;
    if-nez v17, :cond_9

    .line 1993
    move-object/from16 v17, p0

    .line 1996
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    if-eq v0, v1, :cond_2

    if-eqz v15, :cond_c

    const/16 v4, 0x82

    :goto_6
    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1998
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mTFScrollViewMovedFocus:Z

    .line 1999
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mTFScrollViewMovedFocus:Z

    goto/16 :goto_3

    .line 1984
    .end local v15           #movingDown:Z
    .end local v17           #newFocused:Landroid/view/View;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    move v6, v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, -0x8000

    const v12, 0x7fffffff

    move/from16 v8, p1

    invoke-virtual/range {v4 .. v12}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_4

    .line 1988
    :cond_b
    const/4 v4, 0x0

    move v15, v4

    goto :goto_5

    .line 1996
    .restart local v15       #movingDown:Z
    .restart local v17       #newFocused:Landroid/view/View;
    :cond_c
    const/16 v4, 0x21

    goto :goto_6
.end method

.method public fullScroll(I)Z
    .locals 9
    .parameter "direction"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1227
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v6, :cond_2

    .line 1228
    const/16 v6, 0x42

    if-ne p1, v6, :cond_1

    move v3, v8

    .line 1229
    .local v3, right:Z
    :goto_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v5

    .line 1231
    .local v5, width:I
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1232
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v5, v6, Landroid/graphics/Rect;->right:I

    .line 1234
    if-eqz v3, :cond_0

    .line 1235
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    .line 1236
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1237
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1238
    .local v4, view:Landroid/view/View;
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 1239
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v5

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1243
    .end local v0           #count:I
    .end local v4           #view:Landroid/view/View;
    :cond_0
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v6, v7}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollAndFocus(III)Z

    move-result v6

    .line 1261
    .end local v3           #right:Z
    .end local v5           #width:I
    :goto_1
    return v6

    :cond_1
    move v3, v7

    .line 1228
    goto :goto_0

    .line 1246
    :cond_2
    const/16 v6, 0x82

    if-ne p1, v6, :cond_4

    move v1, v8

    .line 1247
    .local v1, down:Z
    :goto_2
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v2

    .line 1249
    .local v2, height:I
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1250
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    .line 1252
    if-eqz v1, :cond_3

    .line 1253
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    .line 1254
    .restart local v0       #count:I
    if-lez v0, :cond_3

    .line 1255
    sub-int v6, v0, v8

    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1256
    .restart local v4       #view:Landroid/view/View;
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 1257
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1261
    .end local v0           #count:I
    .end local v4           #view:Landroid/view/View;
    :cond_3
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v6, v7}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollAndFocus(III)Z

    move-result v6

    goto :goto_1

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_4
    move v1, v7

    .line 1246
    goto :goto_2
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 273
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v3, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getBottomFadingEdgeStrength()F

    move-result v3

    .line 286
    :goto_0
    return v3

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 276
    const/4 v3, 0x0

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 280
    .local v1, length:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    sub-int v0, v3, v4

    .line 281
    .local v0, bottomEdge:I
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-lez v4, :cond_2

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    :goto_1
    add-int v2, v3, v4

    .line 282
    .local v2, span:I
    if-ge v2, v1, :cond_3

    .line 283
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    .end local v2           #span:I
    :cond_2
    move v4, v5

    .line 281
    goto :goto_1

    .line 286
    .restart local v2       #span:I
    :cond_3
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method protected getExcessScrollDrawInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollDrawInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method protected getExcessScrollMode()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollMode:I

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 4

    .prologue
    .line 291
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getLeftFadingEdgeStrength()F

    move-result v2

    .line 303
    :goto_0
    return v2

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 294
    const/4 v2, 0x0

    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 298
    .local v0, length:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-gez v3, :cond_2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    :goto_1
    sub-int v1, v2, v3

    .line 299
    .local v1, span:I
    if-ge v1, v0, :cond_3

    .line 300
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    .line 298
    .end local v1           #span:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 303
    .restart local v1       #span:I
    :cond_3
    const/high16 v2, 0x3f80

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    const/high16 v2, 0x3f00

    .line 329
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v0, :cond_0

    .line 330
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mRight:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 332
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBottom:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 2177
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 308
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getRightFadingEdgeStrength()F

    move-result v3

    .line 321
    :goto_0
    return v3

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 311
    const/4 v3, 0x0

    goto :goto_0

    .line 314
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 315
    .local v0, length:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    sub-int v1, v3, v4

    .line 316
    .local v1, rightEdge:I
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-lez v4, :cond_2

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    :goto_1
    add-int v2, v3, v4

    .line 317
    .local v2, span:I
    if-ge v2, v0, :cond_3

    .line 318
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    goto :goto_0

    .end local v2           #span:I
    :cond_2
    move v4, v5

    .line 316
    goto :goto_1

    .line 321
    .restart local v2       #span:I
    :cond_3
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 4

    .prologue
    .line 256
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v2, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getTopFadingEdgeStrength()F

    move-result v2

    .line 268
    :goto_0
    return v2

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 259
    const/4 v2, 0x0

    goto :goto_0

    .line 262
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 263
    .local v0, length:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-gez v3, :cond_2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    :goto_1
    sub-int v1, v2, v3

    .line 264
    .local v1, span:I
    if-ge v1, v0, :cond_3

    .line 265
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    .line 263
    .end local v1           #span:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 268
    .restart local v1       #span:I
    :cond_3
    const/high16 v2, 0x3f80

    goto :goto_0
.end method

.method public isExcessScrollEnabled()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    return v0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1537
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1542
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v3, :cond_0

    .line 1543
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1546
    .local v0, childHeightMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1554
    .local v1, childWidthMeasureSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1555
    return-void

    .line 1548
    .end local v0           #childHeightMeasureSpec:I
    .end local v1           #childWidthMeasureSpec:I
    :cond_0
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingLeft:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1551
    .restart local v1       #childWidthMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightMeasureSpec:I
    goto :goto_0
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    const/4 v5, 0x0

    .line 1560
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1564
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v3, :cond_0

    .line 1565
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v3, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1568
    .local v0, childHeightMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1578
    .local v1, childWidthMeasureSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1579
    return-void

    .line 1571
    .end local v0           #childHeightMeasureSpec:I
    .end local v1           #childWidthMeasureSpec:I
    :cond_0
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingLeft:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1574
    .restart local v1       #childWidthMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightMeasureSpec:I
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 609
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 610
    .local v0, action:I
    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsBeingDragged:Z

    if-eqz v6, :cond_0

    move v6, v8

    .line 671
    :goto_0
    return v6

    .line 614
    :cond_0
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBlockExcessScroll:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    if-nez v6, :cond_1

    .line 615
    iput-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsBeingDragged:Z

    move v6, v7

    .line 616
    goto :goto_0

    .line 619
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 620
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 622
    .local v4, y:F
    packed-switch v0, :pswitch_data_0

    .line 671
    :cond_2
    :goto_1
    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 633
    :pswitch_0
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionX:F

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v3, v6

    .line 638
    .local v3, xDiff:I
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionY:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v5, v6

    .line 640
    .local v5, yDiff:I
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v6, :cond_3

    move v1, v3

    .line 641
    .local v1, diff:I
    :goto_2
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTouchSlop:I

    if-le v1, v6, :cond_2

    .line 642
    iput-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsBeingDragged:Z

    .line 643
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v6, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .end local v1           #diff:I
    :cond_3
    move v1, v5

    .line 640
    goto :goto_2

    .line 649
    .end local v3           #xDiff:I
    .end local v5           #yDiff:I
    :pswitch_1
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionX:F

    .line 650
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionY:F

    .line 657
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_4

    move v6, v8

    :goto_3
    iput-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsBeingDragged:Z

    goto :goto_1

    :cond_4
    move v6, v7

    goto :goto_3

    .line 663
    :pswitch_2
    iput-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 622
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
    .line 1890
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1891
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsLayoutDirty:Z

    .line 1893
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1894
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1896
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1899
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollTo(II)V

    .line 1900
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v11, 0x4000

    .line 440
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 442
    iget-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mFillViewport:Z

    if-nez v9, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    .line 447
    .local v6, orientation:I
    if-nez v6, :cond_3

    .line 448
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 449
    .local v8, widthMode:I
    if-eqz v8, :cond_0

    .line 459
    .end local v8           #widthMode:I
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 460
    .local v4, heightMode:I
    if-eqz v4, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_0

    .line 465
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 466
    .local v0, child:Landroid/view/View;
    if-nez v6, :cond_4

    .line 467
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getMeasuredWidth()I

    move-result v7

    .line 468
    .local v7, width:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-ge v9, v7, :cond_0

    .line 469
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 471
    .local v5, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingTop:I

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    add-int/2addr v9, v10

    iget v10, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p2, v9, v10}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 473
    .local v1, childHeightMeasureSpec:I
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v9

    .line 474
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    sub-int/2addr v7, v9

    .line 475
    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 477
    .local v2, childWidthMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 453
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeightMeasureSpec:I
    .end local v2           #childWidthMeasureSpec:I
    .end local v4           #heightMode:I
    .end local v5           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v7           #width:I
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 454
    .restart local v4       #heightMode:I
    if-nez v4, :cond_2

    goto :goto_0

    .line 480
    .restart local v0       #child:Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getMeasuredHeight()I

    move-result v3

    .line 481
    .local v3, height:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-ge v9, v3, :cond_0

    .line 482
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 484
    .restart local v5       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingLeft:I

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    add-int/2addr v9, v10

    iget v10, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v9, v10}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 486
    .restart local v2       #childWidthMeasureSpec:I
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingTop:I

    sub-int/2addr v3, v9

    .line 487
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v9

    .line 488
    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 491
    .restart local v1       #childHeightMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 5
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1842
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v1, :cond_2

    .line 1843
    if-ne p1, v4, :cond_1

    .line 1844
    const/16 p1, 0x42

    .line 1856
    :cond_0
    :goto_0
    if-nez p2, :cond_4

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 1861
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_5

    move v1, v3

    .line 1869
    :goto_2
    return v1

    .line 1845
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_1
    if-ne p1, v2, :cond_0

    .line 1846
    const/16 p1, 0x11

    goto :goto_0

    .line 1849
    :cond_2
    if-ne p1, v4, :cond_3

    .line 1850
    const/16 p1, 0x82

    goto :goto_0

    .line 1851
    :cond_3
    if-ne p1, v2, :cond_0

    .line 1852
    const/16 p1, 0x21

    goto :goto_0

    .line 1856
    :cond_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 1865
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_5
    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v3

    .line 1866
    goto :goto_2

    .line 1869
    :cond_6
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
    .line 1904
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1906
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1907
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1930
    :cond_0
    :goto_0
    return-void

    .line 1913
    :cond_1
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v3, :cond_2

    .line 1914
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mRight:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLeft:I

    sub-int v1, v3, v4

    .line 1916
    .local v1, maxJump:I
    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1917
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1918
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1919
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1920
    .local v2, scrollDelta:I
    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->doScrollX(I)V

    goto :goto_0

    .line 1923
    .end local v1           #maxJump:I
    .end local v2           #scrollDelta:I
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, p4}, Lcom/nemustech/tiffany/widget/TFScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1924
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1925
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1926
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1927
    .restart local v2       #scrollDelta:I
    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->doScrollY(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .parameter "ev"

    .prologue
    .line 677
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v16

    if-nez v16, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v16

    if-eqz v16, :cond_0

    .line 680
    const/16 v16, 0x0

    .line 848
    :goto_0
    return v16

    .line 683
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->canScroll()Z

    move-result v16

    if-nez v16, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBlockExcessScroll:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 684
    const/16 v16, 0x0

    goto :goto_0

    .line 687
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 688
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 690
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 692
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBlockExcessScroll:Z

    move/from16 v16, v0

    if-nez v16, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v16, v0

    if-eqz v16, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v16

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 697
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->start()V

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/VelocityTracker;->clear()V

    .line 710
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 711
    .local v3, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    .line 712
    .local v14, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    .line 714
    .local v15, y:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    move v10, v0

    .line 716
    .local v10, orientation:I
    packed-switch v3, :pswitch_data_0

    .line 848
    :cond_5
    :goto_1
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 718
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->cancel()V

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Scroller;->isFinished()Z

    move-result v16

    if-nez v16, :cond_6

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Scroller;->abortAnimation()V

    .line 729
    :cond_6
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionX:F

    .line 730
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionY:F

    goto :goto_1

    .line 734
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionX:F

    move/from16 v16, v0

    sub-float v16, v16, v14

    move/from16 v0, v16

    float-to-int v0, v0

    move v7, v0

    .line 735
    .local v7, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionY:F

    move/from16 v16, v0

    sub-float v16, v16, v15

    move/from16 v0, v16

    float-to-int v0, v0

    move v8, v0

    .line 736
    .local v8, deltaY:I
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionX:F

    .line 737
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionY:F

    .line 739
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move v11, v0

    .line 741
    .local v11, prevExcessScroll:I
    const/4 v6, 0x0

    .line 742
    .local v6, delta:I
    const/4 v12, 0x0

    .line 743
    .local v12, scroll:I
    if-nez v10, :cond_c

    .line 744
    move v6, v7

    .line 745
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    move v12, v0

    .line 753
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v16, v0

    mul-int v16, v16, v6

    if-lez v16, :cond_7

    .line 755
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_d

    .line 756
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v16, v0

    sub-int v16, v16, v6

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 757
    const/4 v6, 0x0

    .line 758
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    .line 765
    :cond_7
    :goto_3
    if-gez v6, :cond_12

    .line 766
    if-lez v12, :cond_11

    .line 767
    add-int v16, v12, v6

    if-gez v16, :cond_f

    .line 768
    add-int v16, v12, v6

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 769
    if-nez v10, :cond_e

    .line 770
    move v0, v12

    neg-int v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    .line 817
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBlockExcessScroll:Z

    move/from16 v16, v0

    if-nez v16, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    move/from16 v16, v0

    if-nez v16, :cond_a

    .line 818
    :cond_9
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 820
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v16, v0

    if-eqz v16, :cond_b

    .line 821
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollMode:I

    .line 823
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v11

    if-eq v0, v1, :cond_5

    .line 824
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->awakenScrollBars()Z

    goto/16 :goto_1

    .line 747
    :cond_c
    move v6, v8

    .line 748
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    move v12, v0

    goto/16 :goto_2

    .line 760
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v16, v0

    sub-int v6, v6, v16

    .line 761
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    goto :goto_3

    .line 772
    :cond_e
    const/16 v16, 0x0

    move v0, v12

    neg-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto :goto_4

    .line 775
    :cond_f
    if-nez v10, :cond_10

    .line 776
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto :goto_4

    .line 778
    :cond_10
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto :goto_4

    .line 782
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v16, v0

    sub-int v16, v16, v6

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 783
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    goto/16 :goto_4

    .line 785
    :cond_12
    if-lez v6, :cond_8

    .line 786
    const/4 v5, 0x0

    .line 787
    .local v5, bottomEdge:I
    const/4 v4, 0x0

    .line 788
    .local v4, availableToScroll:I
    if-nez v10, :cond_13

    .line 789
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    move/from16 v17, v0

    sub-int v5, v16, v17

    .line 790
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v16

    sub-int v16, v16, v12

    sub-int v4, v16, v5

    .line 796
    :goto_5
    if-lez v4, :cond_17

    .line 797
    if-le v4, v6, :cond_15

    .line 798
    if-nez v10, :cond_14

    .line 799
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto/16 :goto_4

    .line 792
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    move/from16 v17, v0

    sub-int v5, v16, v17

    .line 793
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v16

    sub-int v16, v16, v12

    sub-int v4, v16, v5

    goto :goto_5

    .line 801
    :cond_14
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto/16 :goto_4

    .line 804
    :cond_15
    sub-int v16, v4, v6

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 805
    if-nez v10, :cond_16

    .line 806
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto/16 :goto_4

    .line 808
    :cond_16
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto/16 :goto_4

    .line 812
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v16, v0

    sub-int v16, v16, v6

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 813
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    goto/16 :goto_4

    .line 829
    .end local v4           #availableToScroll:I
    .end local v5           #bottomEdge:I
    .end local v6           #delta:I
    .end local v7           #deltaX:I
    .end local v8           #deltaY:I
    .end local v11           #prevExcessScroll:I
    .end local v12           #scroll:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v13, v0

    .line 830
    .local v13, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v16, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mMaximumVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object v0, v13

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 832
    const/4 v9, 0x0

    .line 833
    .local v9, initialVelocity:I
    if-nez v10, :cond_19

    .line 834
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v9, v0

    .line 839
    :goto_6
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mMinimumVelocity:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v16

    if-lez v16, :cond_18

    .line 840
    move v0, v9

    neg-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->fling(I)V

    .line 843
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/VelocityTracker;->recycle()V

    .line 845
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 836
    :cond_19
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v9, v0

    goto :goto_6

    .line 716
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 10
    .parameter "direction"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1167
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v6, :cond_3

    .line 1168
    const/16 v6, 0x42

    if-ne p1, v6, :cond_1

    move v3, v9

    .line 1169
    .local v3, right:Z
    :goto_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v5

    .line 1171
    .local v5, width:I
    if-eqz v3, :cond_2

    .line 1172
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollX()I

    move-result v7

    add-int/2addr v7, v5

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1173
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    .line 1174
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1175
    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1176
    .local v4, view:Landroid/view/View;
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v5

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 1177
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int/2addr v7, v5

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1186
    .end local v0           #count:I
    .end local v4           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v5

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 1188
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v6, v7}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollAndFocus(III)Z

    move-result v6

    .line 1211
    .end local v3           #right:Z
    .end local v5           #width:I
    :goto_2
    return v6

    :cond_1
    move v3, v8

    .line 1168
    goto :goto_0

    .line 1181
    .restart local v3       #right:Z
    .restart local v5       #width:I
    :cond_2
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollX()I

    move-result v7

    sub-int/2addr v7, v5

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1182
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-gez v6, :cond_0

    .line 1183
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v8, v6, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 1191
    .end local v3           #right:Z
    .end local v5           #width:I
    :cond_3
    const/16 v6, 0x82

    if-ne p1, v6, :cond_5

    move v1, v9

    .line 1192
    .local v1, down:Z
    :goto_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v2

    .line 1194
    .local v2, height:I
    if-eqz v1, :cond_6

    .line 1195
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v7

    add-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1196
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    .line 1197
    .restart local v0       #count:I
    if-lez v0, :cond_4

    .line 1198
    sub-int v6, v0, v9

    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1199
    .restart local v4       #view:Landroid/view/View;
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v2

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    if-le v6, v7, :cond_4

    .line 1200
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    sub-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1209
    .end local v0           #count:I
    .end local v4           #view:Landroid/view/View;
    :cond_4
    :goto_4
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 1211
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v6, v7}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollAndFocus(III)Z

    move-result v6

    goto :goto_2

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_5
    move v1, v8

    .line 1191
    goto :goto_3

    .line 1204
    .restart local v1       #down:Z
    .restart local v2       #height:I
    :cond_6
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v7

    sub-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1205
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-gez v6, :cond_4

    .line 1206
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v8, v6, Landroid/graphics/Rect;->top:I

    goto :goto_4
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1817
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTFScrollViewMovedFocus:Z

    if-nez v0, :cond_0

    .line 1818
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    .line 1819
    invoke-direct {p0, p2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1825
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1826
    return-void

    .line 1822
    :cond_1
    iput-object p2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1876
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

    .line 1879
    invoke-direct {p0, p2, p3}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1884
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsLayoutDirty:Z

    .line 1885
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1886
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2015
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 2016
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2017
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->clamp(III)I

    move-result p1

    .line 2018
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->clamp(III)I

    move-result p2

    .line 2019
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 2020
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 2023
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setEnableExcessScroll(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    .line 205
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 418
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mFillViewport:Z

    .line 419
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->requestLayout()V

    .line 421
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 2165
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 2166
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    .line 2167
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->requestLayout()V

    .line 2169
    :cond_0
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 435
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mSmoothScrollingEnabled:Z

    .line 436
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 6
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1482
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastScroll:J

    sub-long v0, v2, v4

    .line 1483
    .local v0, duration:J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1484
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 1485
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getDuration()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->awakenScrollBars(I)Z

    .line 1486
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    .line 1493
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastScroll:J

    .line 1494
    return-void

    .line 1488
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1489
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1491
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1503
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->smoothScrollBy(II)V

    .line 1504
    return-void
.end method
