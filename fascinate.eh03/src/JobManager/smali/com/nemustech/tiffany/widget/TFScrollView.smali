.class public Lcom/nemustech/tiffany/widget/TFScrollView;
.super Landroid/widget/FrameLayout;
.source "TFScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;
    }
.end annotation


# instance fields
.field protected mBlockExcessScroll:Z

.field private mChildToScrollTo:Landroid/view/View;

.field protected mExcessScroll:I

.field private mExcessScrollDrawInterpolator:Landroid/view/animation/Interpolator;

.field protected mExcessScrollEnabled:Z

.field private mExcessScrollMode:I

.field protected mExcessScrollRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;

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
    .line 234
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 235
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 238
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 239
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

    .line 242
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

    .line 190
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    .line 197
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBlockExcessScroll:Z

    .line 219
    new-instance v1, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFScrollView;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;

    .line 231
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    .line 243
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->initScrollView()V

    .line 245
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v1

    const/16 v2, 0x105

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getIntArr(I)[I

    move-result-object v1

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 248
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->setFillViewport(Z)V

    .line 250
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 251
    return-void
.end method

.method static synthetic access$000(Lcom/nemustech/tiffany/widget/TFScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollMode:I

    return v0
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

.method static synthetic access$100(Lcom/nemustech/tiffany/widget/TFScrollView;)Z
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

    .line 386
    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 387
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_3

    .line 388
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v3, :cond_1

    .line 389
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 390
    .local v2, childWidth:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingLeft:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    move v3, v7

    .line 396
    .end local v2           #childWidth:I
    :goto_0
    return v3

    .restart local v2       #childWidth:I
    :cond_0
    move v3, v6

    .line 390
    goto :goto_0

    .line 392
    .end local v2           #childWidth:I
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 393
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

    .line 396
    goto :goto_0
.end method

.method private clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 2119
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_1

    .line 2135
    :cond_0
    const/4 v0, 0x0

    .line 2145
    :goto_0
    return v0

    .line 2137
    :cond_1
    add-int v0, p2, p1

    if-le v0, p3, :cond_2

    .line 2143
    sub-int v0, p3, p2

    goto :goto_0

    :cond_2
    move v0, p1

    .line 2145
    goto :goto_0
.end method

.method private doScrollX(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1559
    if-eqz p1, :cond_0

    .line 1560
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1561
    invoke-virtual {p0, p1, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->smoothScrollBy(II)V

    .line 1566
    :cond_0
    :goto_0
    return-void

    .line 1563
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private doScrollY(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1544
    if-eqz p1, :cond_0

    .line 1545
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1546
    invoke-virtual {p0, v1, p1}, Lcom/nemustech/tiffany/widget/TFScrollView;->smoothScrollBy(II)V

    .line 1551
    :cond_0
    :goto_0
    return-void

    .line 1548
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
    .line 1165
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/nemustech/tiffany/widget/TFScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1166
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1175
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 1177
    .local v3, foundFullyContainedFocusable:Z
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    .line 1178
    .local v5, orientation:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1179
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_d

    .line 1180
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1181
    .local v6, view:Landroid/view/View;
    const/4 v10, 0x0

    .line 1182
    .local v10, viewTop:I
    const/4 v7, 0x0

    .line 1183
    .local v7, viewBottom:I
    if-nez v5, :cond_1

    .line 1184
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 1185
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    .line 1191
    :goto_1
    if-ge p2, v7, :cond_0

    if-ge v10, p3, :cond_0

    .line 1197
    if-ge p2, v10, :cond_2

    if-ge v7, p3, :cond_2

    const/4 v11, 0x1

    move v9, v11

    .line 1200
    .local v9, viewIsFullyContained:Z
    :goto_2
    if-nez v1, :cond_3

    .line 1202
    move-object v1, v6

    .line 1203
    move v3, v9

    .line 1179
    .end local v9           #viewIsFullyContained:Z
    :cond_0
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1187
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v10

    .line 1188
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    goto :goto_1

    .line 1197
    :cond_2
    const/4 v11, 0x0

    move v9, v11

    goto :goto_2

    .line 1205
    .restart local v9       #viewIsFullyContained:Z
    :cond_3
    const/4 v8, 0x0

    .line 1206
    .local v8, viewIsCloserToBoundary:Z
    if-nez v5, :cond_7

    .line 1207
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

    .line 1218
    :goto_4
    if-eqz v3, :cond_b

    .line 1219
    if-eqz v9, :cond_0

    if-eqz v8, :cond_0

    .line 1225
    move-object v1, v6

    goto :goto_3

    .line 1207
    :cond_6
    const/4 v11, 0x0

    move v8, v11

    goto :goto_4

    .line 1212
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

    .line 1228
    :cond_b
    if-eqz v9, :cond_c

    .line 1230
    move-object v1, v6

    .line 1231
    const/4 v3, 0x1

    goto :goto_3

    .line 1232
    :cond_c
    if-eqz v8, :cond_0

    .line 1237
    move-object v1, v6

    goto :goto_3

    .line 1244
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
    .line 1119
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v5, :cond_1

    .line 1120
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHorizontalFadingEdgeLength()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 1121
    .local v1, fadingEdgeLength:I
    add-int v2, p2, v1

    .line 1122
    .local v2, leftWithoutFadingEdge:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v5

    add-int/2addr v5, p2

    sub-int v3, v5, v1

    .line 1124
    .local v3, rightWithoutFadingEdge:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ge v5, v3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v5, v2, :cond_0

    move-object v5, p3

    .line 1144
    .end local v2           #leftWithoutFadingEdge:I
    .end local v3           #rightWithoutFadingEdge:I
    :goto_0
    return-object v5

    .line 1130
    .restart local v2       #leftWithoutFadingEdge:I
    .restart local v3       #rightWithoutFadingEdge:I
    :cond_0
    invoke-direct {p0, p1, v2, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    goto :goto_0

    .line 1134
    .end local v1           #fadingEdgeLength:I
    .end local v2           #leftWithoutFadingEdge:I
    .end local v3           #rightWithoutFadingEdge:I
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getVerticalFadingEdgeLength()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 1135
    .restart local v1       #fadingEdgeLength:I
    add-int v4, p2, v1

    .line 1136
    .local v4, topWithoutFadingEdge:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v5

    add-int/2addr v5, p2

    sub-int v0, v5, v1

    .line 1138
    .local v0, bottomWithoutFadingEdge:I
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v5

    if-ge v5, v0, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v5, v4, :cond_2

    move-object v5, p3

    .line 1141
    goto :goto_0

    .line 1144
    :cond_2
    invoke-direct {p0, p1, v4, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    .line 336
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    .line 337
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->setFocusable(Z)V

    .line 338
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->setDescendantFocusability(I)V

    .line 339
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->setWillNotDraw(Z)V

    .line 340
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 341
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTouchSlop:I

    .line 342
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mMinimumVelocity:I

    .line 343
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mMaximumVelocity:I

    .line 344
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 3
    .parameter "descendant"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1508
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v0, :cond_1

    .line 1509
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 1511
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1509
    goto :goto_0

    .line 1511
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

    .line 2029
    if-ne p1, p2, :cond_0

    move v1, v2

    .line 2034
    :goto_0
    return v1

    .line 2033
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2034
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
    .line 1531
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1532
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1534
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
    .line 1519
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1520
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1522
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

    .line 1371
    const/4 v3, 0x1

    .line 1373
    .local v3, handled:Z
    const/4 v4, 0x0

    .line 1374
    .local v4, height:I
    const/4 v1, 0x0

    .line 1375
    .local v1, containerTop:I
    const/4 v0, 0x0

    .line 1376
    .local v0, containerBottom:I
    const/4 v6, 0x0

    .line 1378
    .local v6, up:Z
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v7, :cond_3

    .line 1379
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v4

    .line 1380
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollX()I

    move-result v1

    .line 1381
    const/16 v7, 0x11

    if-ne p1, v7, :cond_2

    move v6, v9

    .line 1387
    :goto_0
    add-int v0, v1, v4

    .line 1389
    invoke-direct {p0, v6, p2, p3}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1390
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 1391
    move-object v5, p0

    .line 1394
    :cond_0
    if-lt p2, v1, :cond_5

    if-gt p3, v0, :cond_5

    .line 1395
    const/4 v3, 0x0

    .line 1405
    :goto_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1406
    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTFScrollViewMovedFocus:Z

    .line 1407
    iput-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTFScrollViewMovedFocus:Z

    .line 1410
    :cond_1
    return v3

    .end local v5           #newFocused:Landroid/view/View;
    :cond_2
    move v6, v8

    .line 1381
    goto :goto_0

    .line 1383
    :cond_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v4

    .line 1384
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v1

    .line 1385
    const/16 v7, 0x21

    if-ne p1, v7, :cond_4

    move v6, v9

    :goto_2
    goto :goto_0

    :cond_4
    move v6, v8

    goto :goto_2

    .line 1397
    .restart local v5       #newFocused:Landroid/view/View;
    :cond_5
    if-eqz v6, :cond_6

    sub-int v7, p2, v1

    move v2, v7

    .line 1398
    .local v2, delta:I
    :goto_3
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v7, :cond_7

    .line 1399
    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->doScrollX(I)V

    goto :goto_1

    .line 1397
    .end local v2           #delta:I
    :cond_6
    sub-int v7, p3, v0

    move v2, v7

    goto :goto_3

    .line 1401
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

    .line 1741
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1744
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1746
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1748
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 1749
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v1, :cond_1

    .line 1750
    invoke-virtual {p0, v0, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    .line 1755
    :cond_0
    :goto_0
    return-void

    .line 1752
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

    .line 1766
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1767
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 1768
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1769
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v2, :cond_3

    .line 1770
    if-eqz p2, :cond_2

    .line 1771
    invoke-virtual {p0, v0, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    .line 1783
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v3

    .line 1767
    goto :goto_0

    .line 1773
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->smoothScrollBy(II)V

    goto :goto_1

    .line 1776
    :cond_3
    if-eqz p2, :cond_4

    .line 1777
    invoke-virtual {p0, v3, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto :goto_1

    .line 1779
    :cond_4
    invoke-virtual {p0, v3, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TFScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 353
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 358
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TFScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 362
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 376
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TFScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 380
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 367
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TFScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 14
    .parameter "direction"

    .prologue
    const/16 v13, 0x82

    const/16 v12, 0x42

    const/4 v11, 0x0

    .line 1422
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1423
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1425
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v9

    invoke-virtual {v9, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 1427
    .local v5, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getMaxScrollAmount()I

    move-result v4

    .line 1429
    .local v4, maxJump:I
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v9, :cond_7

    .line 1430
    if-eqz v5, :cond_2

    invoke-direct {p0, v5, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1431
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v9}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1432
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1433
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v8

    .line 1434
    .local v8, scrollDelta:I
    invoke-direct {p0, v8}, Lcom/nemustech/tiffany/widget/TFScrollView;->doScrollX(I)V

    .line 1435
    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1488
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1495
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getDescendantFocusability()I

    move-result v3

    .line 1496
    .local v3, descendantFocusability:I
    const/high16 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->setDescendantFocusability(I)V

    .line 1497
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->requestFocus()Z

    .line 1498
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->setDescendantFocusability(I)V

    .line 1500
    .end local v3           #descendantFocusability:I
    :cond_1
    const/4 v9, 0x1

    :goto_1
    return v9

    .line 1438
    .end local v8           #scrollDelta:I
    :cond_2
    move v8, v4

    .line 1440
    .restart local v8       #scrollDelta:I
    const/16 v9, 0x11

    if-ne p1, v9, :cond_4

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollX()I

    move-result v9

    if-ge v9, v8, :cond_4

    .line 1441
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollX()I

    move-result v8

    .line 1452
    :cond_3
    :goto_2
    if-nez v8, :cond_5

    move v9, v11

    .line 1453
    goto :goto_1

    .line 1442
    :cond_4
    if-ne p1, v12, :cond_3

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_3

    .line 1444
    invoke-virtual {p0, v11}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1446
    .local v2, daRight:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v10

    add-int v7, v9, v10

    .line 1448
    .local v7, screenRight:I
    sub-int v9, v2, v7

    if-ge v9, v4, :cond_3

    .line 1449
    sub-int v8, v2, v7

    goto :goto_2

    .line 1455
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

    .line 1458
    .end local v8           #scrollDelta:I
    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v9

    invoke-direct {p0, v5, v4, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1459
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v9}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1460
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1461
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v8

    .line 1462
    .restart local v8       #scrollDelta:I
    invoke-direct {p0, v8}, Lcom/nemustech/tiffany/widget/TFScrollView;->doScrollY(I)V

    .line 1463
    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_0

    .line 1466
    .end local v8           #scrollDelta:I
    :cond_8
    move v8, v4

    .line 1468
    .restart local v8       #scrollDelta:I
    const/16 v9, 0x21

    if-ne p1, v9, :cond_a

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v9

    if-ge v9, v8, :cond_a

    .line 1469
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v8

    .line 1481
    :cond_9
    :goto_4
    if-nez v8, :cond_b

    move v9, v11

    .line 1482
    goto :goto_1

    .line 1470
    :cond_a
    if-ne p1, v13, :cond_9

    .line 1471
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_9

    .line 1472
    invoke-virtual {p0, v11}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1474
    .local v1, daBottom:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v9

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v10

    add-int v6, v9, v10

    .line 1476
    .local v6, screenBottom:I
    sub-int v9, v1, v6

    if-ge v9, v4, :cond_9

    .line 1477
    sub-int v8, v1, v6

    goto :goto_4

    .line 1484
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

    .line 2223
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result v0

    .line 2224
    .local v0, extent:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-ne v2, v4, :cond_0

    move v2, v0

    .line 2230
    :goto_0
    return v2

    .line 2226
    :cond_0
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeHorizontalScrollRange()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2227
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

    .line 2228
    .local v1, ratio:F
    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 2230
    .end local v1           #ratio:F
    :cond_1
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 8

    .prologue
    .line 2235
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v2

    .line 2236
    .local v2, offset:I
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    move v3, v2

    .line 2249
    .end local v2           #offset:I
    .local v3, offset:I
    :goto_0
    return v3

    .line 2238
    .end local v3           #offset:I
    .restart local v2       #offset:I
    :cond_0
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-gez v6, :cond_1

    .line 2239
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 2240
    .local v4, savedExcessScroll:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeHorizontalScrollExtent()I

    move-result v5

    .line 2241
    .local v5, shrinkedScrollExtent:I
    const/4 v6, 0x0

    iput v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 2242
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeHorizontalScrollExtent()I

    move-result v1

    .line 2243
    .local v1, normalScrollExtent:I
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 2245
    sub-int v0, v1, v5

    .line 2247
    .local v0, delta:I
    add-int/2addr v2, v0

    .end local v0           #delta:I
    .end local v1           #normalScrollExtent:I
    .end local v4           #savedExcessScroll:I
    .end local v5           #shrinkedScrollExtent:I
    :cond_1
    move v3, v2

    .line 2249
    .end local v2           #offset:I
    .restart local v3       #offset:I
    goto :goto_0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 3

    .prologue
    .line 1619
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1620
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollRange()I

    move-result v1

    .line 1624
    :goto_0
    return v1

    .line 1623
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    .line 1624
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
    .line 1676
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1693
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    .line 1694
    .local v2, oldX:I
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    .line 1695
    .local v3, oldY:I
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrX()I

    move-result v7

    .line 1696
    .local v7, x:I
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrY()I

    move-result v8

    .line 1697
    .local v8, y:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_6

    .line 1698
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1699
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

    .line 1700
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

    .line 1702
    const/4 v4, 0x0

    .line 1703
    .local v4, scroll:I
    const/4 v5, 0x0

    .line 1704
    .local v5, value:I
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v9, :cond_5

    .line 1705
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    .line 1706
    move v5, v7

    .line 1711
    :goto_0
    if-eq v4, v5, :cond_1

    .line 1712
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v6

    .line 1714
    .local v6, velocity:F
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1715
    float-to-int v1, v6

    .line 1716
    .local v1, decelerationFlingSpeed:I
    if-nez v4, :cond_0

    .line 1717
    mul-int/lit8 v1, v1, -0x1

    .line 1719
    :cond_0
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;

    int-to-float v10, v1

    invoke-virtual {v9, v10}, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->start(F)V

    .line 1726
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

    .line 1727
    :cond_2
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    invoke-virtual {p0, v9, v10, v2, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->onScrollChanged(IIII)V

    .line 1731
    :cond_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->postInvalidate()V

    .line 1733
    .end local v2           #oldX:I
    .end local v3           #oldY:I
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_4
    return-void

    .line 1708
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #oldX:I
    .restart local v3       #oldY:I
    .restart local v4       #scroll:I
    .restart local v5       #value:I
    .restart local v7       #x:I
    .restart local v8       #y:I
    :cond_5
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    .line 1709
    move v5, v8

    goto :goto_0

    .line 1723
    .end local v0           #child:Landroid/view/View;
    .end local v4           #scroll:I
    .end local v5           #value:I
    :cond_6
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    .line 1724
    iput v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    goto :goto_1
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 17
    .parameter "rect"

    .prologue
    .line 1795
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v15

    if-nez v15, :cond_0

    const/4 v15, 0x0

    .line 1905
    :goto_0
    return v15

    .line 1797
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    move v15, v0

    if-nez v15, :cond_7

    .line 1798
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v14

    .line 1799
    .local v14, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollX()I

    move-result v9

    .line 1800
    .local v9, screenLeft:I
    add-int v10, v9, v14

    .line 1802
    .local v10, screenRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHorizontalFadingEdgeLength()I

    move-result v5

    .line 1805
    .local v5, fadingEdge:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    if-lez v15, :cond_1

    .line 1806
    add-int/2addr v9, v5

    .line 1810
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

    .line 1811
    sub-int/2addr v10, v5

    .line 1814
    :cond_2
    const/4 v12, 0x0

    .line 1816
    .local v12, scrollXDelta:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    if-le v15, v10, :cond_5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    if-le v15, v9, :cond_5

    .line 1821
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v15

    if-le v15, v14, :cond_4

    .line 1823
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    sub-int/2addr v15, v9

    add-int/2addr v12, v15

    .line 1830
    :goto_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v7

    .line 1831
    .local v7, right:I
    sub-int v4, v7, v10

    .line 1832
    .local v4, distanceToRight:I
    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    .end local v4           #distanceToRight:I
    .end local v7           #right:I
    :cond_3
    :goto_2
    move v15, v12

    .line 1850
    goto :goto_0

    .line 1826
    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    sub-int/2addr v15, v10

    add-int/2addr v12, v15

    goto :goto_1

    .line 1834
    :cond_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    if-ge v15, v9, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    if-ge v15, v10, :cond_3

    .line 1839
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v15

    if-le v15, v14, :cond_6

    .line 1841
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    sub-int v15, v10, v15

    sub-int/2addr v12, v15

    .line 1848
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollX()I

    move-result v15

    neg-int v15, v15

    invoke-static {v12, v15}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_2

    .line 1844
    :cond_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    sub-int v15, v9, v15

    sub-int/2addr v12, v15

    goto :goto_3

    .line 1853
    .end local v5           #fadingEdge:I
    .end local v9           #screenLeft:I
    .end local v10           #screenRight:I
    .end local v12           #scrollXDelta:I
    .end local v14           #width:I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v6

    .line 1854
    .local v6, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v11

    .line 1855
    .local v11, screenTop:I
    add-int v8, v11, v6

    .line 1857
    .local v8, screenBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 1860
    .restart local v5       #fadingEdge:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    if-lez v15, :cond_8

    .line 1861
    add-int/2addr v11, v5

    .line 1865
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

    .line 1866
    sub-int/2addr v8, v5

    .line 1869
    :cond_9
    const/4 v13, 0x0

    .line 1871
    .local v13, scrollYDelta:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    if-le v15, v8, :cond_c

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    if-le v15, v11, :cond_c

    .line 1876
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v15

    if-le v15, v6, :cond_b

    .line 1878
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int/2addr v15, v11

    add-int/2addr v13, v15

    .line 1885
    :goto_4
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1886
    .local v2, bottom:I
    sub-int v3, v2, v8

    .line 1887
    .local v3, distanceToBottom:I
    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    move-result v13

    .end local v2           #bottom:I
    .end local v3           #distanceToBottom:I
    :cond_a
    :goto_5
    move v15, v13

    .line 1905
    goto/16 :goto_0

    .line 1881
    :cond_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    sub-int/2addr v15, v8

    add-int/2addr v13, v15

    goto :goto_4

    .line 1889
    :cond_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    if-ge v15, v11, :cond_a

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    if-ge v15, v8, :cond_a

    .line 1894
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v15

    if-le v15, v6, :cond_d

    .line 1896
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    sub-int v15, v8, v15

    sub-int/2addr v13, v15

    .line 1903
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v15

    neg-int v15, v15

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_5

    .line 1899
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
    .line 2192
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v0

    .line 2193
    .local v0, extent:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v2, :cond_0

    move v2, v0

    .line 2199
    :goto_0
    return v2

    .line 2195
    :cond_0
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeVerticalScrollRange()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2196
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

    .line 2197
    .local v1, ratio:F
    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 2199
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
    .line 2204
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v2

    .line 2205
    .local v2, offset:I
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v6, :cond_0

    move v3, v2

    .line 2218
    .end local v2           #offset:I
    .local v3, offset:I
    :goto_0
    return v3

    .line 2207
    .end local v3           #offset:I
    .restart local v2       #offset:I
    :cond_0
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-gez v6, :cond_1

    .line 2208
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 2209
    .local v4, savedExcessScroll:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeVerticalScrollExtent()I

    move-result v5

    .line 2210
    .local v5, shrinkedScrollExtent:I
    const/4 v6, 0x0

    iput v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 2211
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeVerticalScrollExtent()I

    move-result v1

    .line 2212
    .local v1, normalScrollExtent:I
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 2214
    sub-int v0, v1, v5

    .line 2216
    .local v0, delta:I
    add-int/2addr v2, v0

    .end local v0           #delta:I
    .end local v1           #normalScrollExtent:I
    .end local v4           #savedExcessScroll:I
    .end local v5           #shrinkedScrollExtent:I
    :cond_1
    move v3, v2

    .line 2218
    .end local v2           #offset:I
    .restart local v3       #offset:I
    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1605
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v1, :cond_0

    .line 1606
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollRange()I

    move-result v1

    .line 1610
    :goto_0
    return v1

    .line 1609
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    .line 1610
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

    .line 2150
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBlockExcessScroll:Z

    if-nez v4, :cond_3

    .line 2151
    const/4 v2, 0x0

    .line 2152
    .local v2, shift:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v4, :cond_1

    .line 2153
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 2154
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

    .line 2164
    .end local v3           #width:F
    :goto_0
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-gez v4, :cond_0

    .line 2165
    mul-int/lit8 v2, v2, -0x1

    .line 2168
    :cond_0
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getPaddingLeft()I

    move-result v5

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 2169
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getPaddingTop()I

    move-result v5

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 2170
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 2171
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 2172
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 2174
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2175
    .local v1, save1:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v4, :cond_2

    .line 2176
    int-to-float v4, v2

    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2181
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2183
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2188
    .end local v1           #save1:I
    .end local v2           #shift:I
    :goto_2
    return-void

    .line 2158
    .restart local v2       #shift:I
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v4

    int-to-float v0, v4

    .line 2159
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

    .line 2178
    .end local v0           #height:F
    .restart local v1       #save1:I
    :cond_2
    int-to-float v4, v2

    invoke-virtual {p1, v7, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 2186
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
    .line 499
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 500
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 501
    const/4 v1, 0x1

    .line 503
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

    .line 515
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 517
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v3, :cond_8

    .line 518
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->canScroll()Z

    move-result v3

    if-nez v3, :cond_3

    .line 519
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 520
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 521
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 522
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v4}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 524
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 592
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :goto_0
    return v3

    .restart local v0       #currentFocused:Landroid/view/View;
    .restart local v2       #nextFocused:Landroid/view/View;
    :cond_1
    move v3, v6

    .line 524
    goto :goto_0

    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_2
    move v3, v6

    .line 527
    goto :goto_0

    .line 530
    :cond_3
    const/4 v1, 0x0

    .line 531
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 532
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_4
    :goto_1
    move v3, v1

    .line 553
    goto :goto_0

    .line 534
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 535
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 537
    :cond_5
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFScrollView;->fullScroll(I)Z

    move-result v1

    .line 539
    goto :goto_1

    .line 541
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 542
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 544
    :cond_6
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->fullScroll(I)Z

    move-result v1

    .line 546
    goto :goto_1

    .line 548
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

    .line 556
    .end local v1           #handled:Z
    :cond_8
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->canScroll()Z

    move-result v3

    if-nez v3, :cond_c

    .line 557
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 558
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 559
    .restart local v0       #currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_9

    const/4 v0, 0x0

    .line 560
    :cond_9
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 562
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

    .line 566
    goto :goto_0

    .line 569
    :cond_c
    const/4 v1, 0x0

    .line 570
    .restart local v1       #handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_d

    .line 571
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    :cond_d
    :goto_3
    move v3, v1

    .line 592
    goto :goto_0

    .line 573
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_e

    .line 574
    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_3

    .line 576
    :cond_e
    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFScrollView;->fullScroll(I)Z

    move-result v1

    .line 578
    goto :goto_3

    .line 580
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_f

    .line 581
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_3

    .line 583
    :cond_f
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFScrollView;->fullScroll(I)Z

    move-result v1

    .line 585
    goto :goto_3

    .line 587
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

    .line 532
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch

    .line 571
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
    .line 2045
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 2046
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    move v4, v0

    if-nez v4, :cond_7

    .line 2047
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

    .line 2048
    .local v19, width:I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v18

    .line 2050
    .local v18, right:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBlockExcessScroll:Z

    move v4, v0

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    move v4, v0

    if-nez v4, :cond_4

    .line 2051
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

    .line 2056
    :goto_0
    if-lez p1, :cond_5

    const/4 v4, 0x1

    move/from16 v16, v4

    .line 2058
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

    .line 2061
    .local v17, newFocused:Landroid/view/View;
    if-nez v17, :cond_1

    .line 2062
    move-object/from16 v17, p0

    .line 2065
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

    .line 2067
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mTFScrollViewMovedFocus:Z

    .line 2068
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mTFScrollViewMovedFocus:Z

    .line 2096
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

    .line 2097
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    .line 2099
    .end local v17           #newFocused:Landroid/view/View;
    :cond_3
    return-void

    .line 2053
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

    .line 2056
    :cond_5
    const/4 v4, 0x0

    move/from16 v16, v4

    goto :goto_1

    .line 2065
    .restart local v16       #movingRight:Z
    .restart local v17       #newFocused:Landroid/view/View;
    :cond_6
    const/16 v4, 0x11

    goto :goto_2

    .line 2071
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

    .line 2072
    .local v14, height:I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 2074
    .local v13, bottom:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBlockExcessScroll:Z

    move v4, v0

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    move v4, v0

    if-nez v4, :cond_a

    .line 2075
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

    .line 2081
    :goto_4
    if-lez p1, :cond_b

    const/4 v4, 0x1

    move v15, v4

    .line 2083
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

    .line 2085
    .restart local v17       #newFocused:Landroid/view/View;
    if-nez v17, :cond_9

    .line 2086
    move-object/from16 v17, p0

    .line 2089
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

    .line 2091
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mTFScrollViewMovedFocus:Z

    .line 2092
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mTFScrollViewMovedFocus:Z

    goto/16 :goto_3

    .line 2077
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

    .line 2081
    :cond_b
    const/4 v4, 0x0

    move v15, v4

    goto :goto_5

    .line 2089
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

    .line 1320
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v6, :cond_2

    .line 1321
    const/16 v6, 0x42

    if-ne p1, v6, :cond_1

    move v3, v8

    .line 1322
    .local v3, right:Z
    :goto_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v5

    .line 1324
    .local v5, width:I
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1325
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v5, v6, Landroid/graphics/Rect;->right:I

    .line 1327
    if-eqz v3, :cond_0

    .line 1328
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    .line 1329
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1330
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1331
    .local v4, view:Landroid/view/View;
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 1332
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v5

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1336
    .end local v0           #count:I
    .end local v4           #view:Landroid/view/View;
    :cond_0
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v6, v7}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollAndFocus(III)Z

    move-result v6

    .line 1354
    .end local v3           #right:Z
    .end local v5           #width:I
    :goto_1
    return v6

    :cond_1
    move v3, v7

    .line 1321
    goto :goto_0

    .line 1339
    :cond_2
    const/16 v6, 0x82

    if-ne p1, v6, :cond_4

    move v1, v8

    .line 1340
    .local v1, down:Z
    :goto_2
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v2

    .line 1342
    .local v2, height:I
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1343
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    .line 1345
    if-eqz v1, :cond_3

    .line 1346
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    .line 1347
    .restart local v0       #count:I
    if-lez v0, :cond_3

    .line 1348
    sub-int v6, v0, v8

    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1349
    .restart local v4       #view:Landroid/view/View;
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 1350
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1354
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

    .line 1339
    goto :goto_2
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 272
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v3, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getBottomFadingEdgeStrength()F

    move-result v3

    .line 285
    :goto_0
    return v3

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 275
    const/4 v3, 0x0

    goto :goto_0

    .line 278
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 279
    .local v1, length:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    sub-int v0, v3, v4

    .line 280
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

    .line 281
    .local v2, span:I
    if-ge v2, v1, :cond_3

    .line 282
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    .end local v2           #span:I
    :cond_2
    move v4, v5

    .line 280
    goto :goto_1

    .line 285
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

.method protected getLeftFadingEdgeStrength()F
    .locals 4

    .prologue
    .line 290
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getLeftFadingEdgeStrength()F

    move-result v2

    .line 302
    :goto_0
    return v2

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 293
    const/4 v2, 0x0

    goto :goto_0

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 297
    .local v0, length:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-gez v3, :cond_2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    :goto_1
    sub-int v1, v2, v3

    .line 298
    .local v1, span:I
    if-ge v1, v0, :cond_3

    .line 299
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    .line 297
    .end local v1           #span:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 302
    .restart local v1       #span:I
    :cond_3
    const/high16 v2, 0x3f80

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    const/high16 v2, 0x3f00

    .line 328
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v0, :cond_0

    .line 329
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mRight:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 331
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

.method protected getRightFadingEdgeStrength()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 307
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getRightFadingEdgeStrength()F

    move-result v3

    .line 320
    :goto_0
    return v3

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 310
    const/4 v3, 0x0

    goto :goto_0

    .line 313
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 314
    .local v0, length:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    sub-int v1, v3, v4

    .line 315
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

    .line 316
    .local v2, span:I
    if-ge v2, v0, :cond_3

    .line 317
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    goto :goto_0

    .end local v2           #span:I
    :cond_2
    move v4, v5

    .line 315
    goto :goto_1

    .line 320
    .restart local v2       #span:I
    :cond_3
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 4

    .prologue
    .line 255
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v2, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getTopFadingEdgeStrength()F

    move-result v2

    .line 267
    :goto_0
    return v2

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 258
    const/4 v2, 0x0

    goto :goto_0

    .line 261
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 262
    .local v0, length:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-gez v3, :cond_2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    :goto_1
    sub-int v1, v2, v3

    .line 263
    .local v1, span:I
    if-ge v1, v0, :cond_3

    .line 264
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    .line 262
    .end local v1           #span:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 267
    .restart local v1       #span:I
    :cond_3
    const/high16 v2, 0x3f80

    goto :goto_0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1630
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1635
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v3, :cond_0

    .line 1636
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1639
    .local v0, childHeightMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1647
    .local v1, childWidthMeasureSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1648
    return-void

    .line 1641
    .end local v0           #childHeightMeasureSpec:I
    .end local v1           #childWidthMeasureSpec:I
    :cond_0
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingLeft:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1644
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

    .line 1653
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1657
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v3, :cond_0

    .line 1658
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p4, v3, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1661
    .local v0, childHeightMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1671
    .local v1, childWidthMeasureSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1672
    return-void

    .line 1664
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

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1667
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

    .line 608
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 609
    .local v0, action:I
    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsBeingDragged:Z

    if-eqz v6, :cond_0

    move v6, v8

    .line 670
    :goto_0
    return v6

    .line 613
    :cond_0
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBlockExcessScroll:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    if-nez v6, :cond_1

    .line 614
    iput-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsBeingDragged:Z

    move v6, v7

    .line 615
    goto :goto_0

    .line 618
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 619
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 621
    .local v4, y:F
    packed-switch v0, :pswitch_data_0

    .line 670
    :cond_2
    :goto_1
    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 632
    :pswitch_0
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionX:F

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v3, v6

    .line 637
    .local v3, xDiff:I
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionY:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v5, v6

    .line 639
    .local v5, yDiff:I
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v6, :cond_3

    move v1, v3

    .line 640
    .local v1, diff:I
    :goto_2
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTouchSlop:I

    if-le v1, v6, :cond_2

    .line 641
    iput-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsBeingDragged:Z

    .line 642
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v6, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .end local v1           #diff:I
    :cond_3
    move v1, v5

    .line 639
    goto :goto_2

    .line 648
    .end local v3           #xDiff:I
    .end local v5           #yDiff:I
    :pswitch_1
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionX:F

    .line 649
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionY:F

    .line 656
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

    .line 662
    :pswitch_2
    iput-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 621
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
    .line 1983
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1984
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsLayoutDirty:Z

    .line 1986
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1987
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1989
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1992
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollTo(II)V

    .line 1993
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v11, 0x4000

    .line 439
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 441
    iget-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mFillViewport:Z

    if-nez v9, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    .line 446
    .local v6, orientation:I
    if-nez v6, :cond_3

    .line 447
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 448
    .local v8, widthMode:I
    if-eqz v8, :cond_0

    .line 458
    .end local v8           #widthMode:I
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 459
    .local v4, heightMode:I
    if-eqz v4, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_0

    .line 464
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 465
    .local v0, child:Landroid/view/View;
    if-nez v6, :cond_4

    .line 466
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getMeasuredWidth()I

    move-result v7

    .line 467
    .local v7, width:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-ge v9, v7, :cond_0

    .line 468
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 470
    .local v5, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingTop:I

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    add-int/2addr v9, v10

    iget v10, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v9, v10}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 472
    .local v1, childHeightMeasureSpec:I
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v9

    .line 473
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    sub-int/2addr v7, v9

    .line 474
    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 476
    .local v2, childWidthMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 452
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeightMeasureSpec:I
    .end local v2           #childWidthMeasureSpec:I
    .end local v4           #heightMode:I
    .end local v5           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v7           #width:I
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 453
    .restart local v4       #heightMode:I
    if-nez v4, :cond_2

    goto :goto_0

    .line 479
    .restart local v0       #child:Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getMeasuredHeight()I

    move-result v3

    .line 480
    .local v3, height:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-ge v9, v3, :cond_0

    .line 481
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 483
    .restart local v5       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingLeft:I

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    add-int/2addr v9, v10

    iget v10, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v9, v10}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 485
    .restart local v2       #childWidthMeasureSpec:I
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingTop:I

    sub-int/2addr v3, v9

    .line 486
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v9

    .line 487
    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 490
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

    .line 1935
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v1, :cond_2

    .line 1936
    if-ne p1, v4, :cond_1

    .line 1937
    const/16 p1, 0x42

    .line 1949
    :cond_0
    :goto_0
    if-nez p2, :cond_4

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 1954
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_5

    move v1, v3

    .line 1962
    :goto_2
    return v1

    .line 1938
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_1
    if-ne p1, v2, :cond_0

    .line 1939
    const/16 p1, 0x11

    goto :goto_0

    .line 1942
    :cond_2
    if-ne p1, v4, :cond_3

    .line 1943
    const/16 p1, 0x82

    goto :goto_0

    .line 1944
    :cond_3
    if-ne p1, v2, :cond_0

    .line 1945
    const/16 p1, 0x21

    goto :goto_0

    .line 1949
    :cond_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 1958
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_5
    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v3

    .line 1959
    goto :goto_2

    .line 1962
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
    .line 1997
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1999
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2000
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 2023
    :cond_0
    :goto_0
    return-void

    .line 2006
    :cond_1
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v3, :cond_2

    .line 2007
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mRight:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLeft:I

    sub-int v1, v3, v4

    .line 2009
    .local v1, maxJump:I
    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2010
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2011
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2012
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 2013
    .local v2, scrollDelta:I
    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->doScrollX(I)V

    goto :goto_0

    .line 2016
    .end local v1           #maxJump:I
    .end local v2           #scrollDelta:I
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, p4}, Lcom/nemustech/tiffany/widget/TFScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2017
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2018
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2019
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 2020
    .restart local v2       #scrollDelta:I
    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->doScrollY(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .parameter "ev"

    .prologue
    .line 676
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v16

    if-nez v16, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v16

    if-eqz v16, :cond_0

    .line 679
    const/16 v16, 0x0

    .line 847
    :goto_0
    return v16

    .line 682
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

    .line 683
    const/16 v16, 0x0

    goto :goto_0

    .line 686
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 687
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 689
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 691
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

    .line 696
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->start(F)V

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/VelocityTracker;->clear()V

    .line 709
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 710
    .local v3, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    .line 711
    .local v14, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    .line 713
    .local v15, y:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    move v10, v0

    .line 715
    .local v10, orientation:I
    packed-switch v3, :pswitch_data_0

    .line 847
    :cond_5
    :goto_1
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 717
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->cancel()V

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Scroller;->isFinished()Z

    move-result v16

    if-nez v16, :cond_6

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Scroller;->abortAnimation()V

    .line 728
    :cond_6
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionX:F

    .line 729
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionY:F

    goto :goto_1

    .line 733
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionX:F

    move/from16 v16, v0

    sub-float v16, v16, v14

    move/from16 v0, v16

    float-to-int v0, v0

    move v7, v0

    .line 734
    .local v7, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionY:F

    move/from16 v16, v0

    sub-float v16, v16, v15

    move/from16 v0, v16

    float-to-int v0, v0

    move v8, v0

    .line 735
    .local v8, deltaY:I
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionX:F

    .line 736
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionY:F

    .line 738
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move v11, v0

    .line 740
    .local v11, prevExcessScroll:I
    const/4 v6, 0x0

    .line 741
    .local v6, delta:I
    const/4 v12, 0x0

    .line 742
    .local v12, scroll:I
    if-nez v10, :cond_c

    .line 743
    move v6, v7

    .line 744
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    move v12, v0

    .line 752
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v16, v0

    mul-int v16, v16, v6

    if-lez v16, :cond_7

    .line 754
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

    .line 755
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v16, v0

    sub-int v16, v16, v6

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 756
    const/4 v6, 0x0

    .line 757
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    .line 764
    :cond_7
    :goto_3
    if-gez v6, :cond_12

    .line 765
    if-lez v12, :cond_11

    .line 766
    add-int v16, v12, v6

    if-gez v16, :cond_f

    .line 767
    add-int v16, v12, v6

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 768
    if-nez v10, :cond_e

    .line 769
    move v0, v12

    neg-int v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    .line 816
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

    .line 817
    :cond_9
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 819
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v16, v0

    if-eqz v16, :cond_b

    .line 820
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollMode:I

    .line 822
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v11

    if-eq v0, v1, :cond_5

    .line 823
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->awakenScrollBars()Z

    goto/16 :goto_1

    .line 746
    :cond_c
    move v6, v8

    .line 747
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    move v12, v0

    goto/16 :goto_2

    .line 759
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v16, v0

    sub-int v6, v6, v16

    .line 760
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    goto :goto_3

    .line 771
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

    .line 774
    :cond_f
    if-nez v10, :cond_10

    .line 775
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto :goto_4

    .line 777
    :cond_10
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto :goto_4

    .line 781
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v16, v0

    sub-int v16, v16, v6

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 782
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    goto/16 :goto_4

    .line 784
    :cond_12
    if-lez v6, :cond_8

    .line 785
    const/4 v5, 0x0

    .line 786
    .local v5, bottomEdge:I
    const/4 v4, 0x0

    .line 787
    .local v4, availableToScroll:I
    if-nez v10, :cond_13

    .line 788
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    move/from16 v17, v0

    sub-int v5, v16, v17

    .line 789
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v16

    sub-int v16, v16, v12

    sub-int v4, v16, v5

    .line 795
    :goto_5
    if-lez v4, :cond_17

    .line 796
    if-le v4, v6, :cond_15

    .line 797
    if-nez v10, :cond_14

    .line 798
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto/16 :goto_4

    .line 791
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    move/from16 v17, v0

    sub-int v5, v16, v17

    .line 792
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

    .line 800
    :cond_14
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto/16 :goto_4

    .line 803
    :cond_15
    sub-int v16, v4, v6

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 804
    if-nez v10, :cond_16

    .line 805
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto/16 :goto_4

    .line 807
    :cond_16
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto/16 :goto_4

    .line 811
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v16, v0

    sub-int v16, v16, v6

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 812
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    goto/16 :goto_4

    .line 828
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

    .line 829
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

    .line 831
    const/4 v9, 0x0

    .line 832
    .local v9, initialVelocity:I
    if-nez v10, :cond_19

    .line 833
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v9, v0

    .line 838
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

    .line 839
    move v0, v9

    neg-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->fling(I)V

    .line 842
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/VelocityTracker;->recycle()V

    .line 844
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 835
    :cond_19
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v9, v0

    goto :goto_6

    .line 715
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

    .line 1260
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v6, :cond_3

    .line 1261
    const/16 v6, 0x42

    if-ne p1, v6, :cond_1

    move v3, v9

    .line 1262
    .local v3, right:Z
    :goto_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v5

    .line 1264
    .local v5, width:I
    if-eqz v3, :cond_2

    .line 1265
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollX()I

    move-result v7

    add-int/2addr v7, v5

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1266
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    .line 1267
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1268
    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1269
    .local v4, view:Landroid/view/View;
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v5

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 1270
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int/2addr v7, v5

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1279
    .end local v0           #count:I
    .end local v4           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v5

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 1281
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v6, v7}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollAndFocus(III)Z

    move-result v6

    .line 1304
    .end local v3           #right:Z
    .end local v5           #width:I
    :goto_2
    return v6

    :cond_1
    move v3, v8

    .line 1261
    goto :goto_0

    .line 1274
    .restart local v3       #right:Z
    .restart local v5       #width:I
    :cond_2
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollX()I

    move-result v7

    sub-int/2addr v7, v5

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1275
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-gez v6, :cond_0

    .line 1276
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v8, v6, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 1284
    .end local v3           #right:Z
    .end local v5           #width:I
    :cond_3
    const/16 v6, 0x82

    if-ne p1, v6, :cond_5

    move v1, v9

    .line 1285
    .local v1, down:Z
    :goto_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v2

    .line 1287
    .local v2, height:I
    if-eqz v1, :cond_6

    .line 1288
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v7

    add-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1289
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    .line 1290
    .restart local v0       #count:I
    if-lez v0, :cond_4

    .line 1291
    sub-int v6, v0, v9

    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1292
    .restart local v4       #view:Landroid/view/View;
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v2

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    if-le v6, v7, :cond_4

    .line 1293
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    sub-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1302
    .end local v0           #count:I
    .end local v4           #view:Landroid/view/View;
    :cond_4
    :goto_4
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 1304
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

    .line 1284
    goto :goto_3

    .line 1297
    .restart local v1       #down:Z
    .restart local v2       #height:I
    :cond_6
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v7

    sub-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1298
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-gez v6, :cond_4

    .line 1299
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v8, v6, Landroid/graphics/Rect;->top:I

    goto :goto_4
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1910
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTFScrollViewMovedFocus:Z

    if-nez v0, :cond_0

    .line 1911
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    .line 1912
    invoke-direct {p0, p2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1918
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1919
    return-void

    .line 1915
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
    .line 1969
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

    .line 1972
    invoke-direct {p0, p2, p3}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1977
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsLayoutDirty:Z

    .line 1978
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1979
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2108
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 2109
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2110
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

    .line 2111
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

    .line 2112
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 2113
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 2116
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 417
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mFillViewport:Z

    .line 418
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->requestLayout()V

    .line 420
    :cond_0
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 6
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1575
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastScroll:J

    sub-long v0, v2, v4

    .line 1576
    .local v0, duration:J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1577
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 1578
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getDuration()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->awakenScrollBars(I)Z

    .line 1579
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    .line 1586
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastScroll:J

    .line 1587
    return-void

    .line 1581
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1582
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1584
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto :goto_0
.end method
