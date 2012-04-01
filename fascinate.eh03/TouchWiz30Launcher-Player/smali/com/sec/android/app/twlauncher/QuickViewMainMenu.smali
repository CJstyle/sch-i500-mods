.class public Lcom/sec/android/app/twlauncher/QuickViewMainMenu;
.super Landroid/widget/FrameLayout;
.source "QuickViewMainMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;,
        Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;
    }
.end annotation


# instance fields
.field private mAddDrawable:Landroid/graphics/drawable/Drawable;

.field private mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

.field private mAnimationDuration:I

.field private mAnimationStartTime:J

.field private mAnimationState:I

.field private mAnimationStyle:I

.field private mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;

.field private mChildGapH:I

.field private mChildGapV:I

.field private mChildLeft:I

.field private mChildRects:[Landroid/graphics/Rect;

.field private mChildTop:I

.field private mCurrentPage:I

.field private mCurrentRects:[Landroid/graphics/Rect;

.field private mDeleteIndex:I

.field private mDeleteView:Landroid/view/View;

.field private mDraggingIndex:I

.field private mDraggingView:Landroid/view/View;

.field private mEnabledChildAnimation:Z

.field private mFinishRects:[Landroid/graphics/Rect;

.field private mIsDBUpdate:Z

.field private mItemNumOfPage:I

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mMaxDeltaY:I

.field private mMaximumVelocity:I

.field private mMenuManager:Landroid/view/ViewGroup;

.field private mMinimumVelocity:I

.field private mMovePinch:I

.field private mMovePinchStart:I

.field private mMultiTouchUsed:Z

.field private mOrientation:I

.field private mOriginDragIndex:I

.field private final mPanelSizeLong:I

.field private final mPanelSizeLong2:I

.field private final mPanelSizeShort:I

.field private mPinchIndex:I

.field private mPinchOutIndex:I

.field private mPinchOutProcess:Z

.field private mPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

.field private mScreenBgDrawablePadding:Landroid/graphics/Rect;

.field private mScreenRect:Landroid/graphics/Rect;

.field private mScrollRunnable:Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

.field private mScrollState:I

.field private mScrollTop:I

.field private mScroller:Landroid/widget/Scroller;

.field private mStartRects:[Landroid/graphics/Rect;

.field private mTmpLocation:[I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTouchedView:Landroid/view/View;

.field private mUseFullScreenInLandScapeMode:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 170
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationStyle:I

    .line 91
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    .line 92
    new-instance v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;-><init>(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollRunnable:Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

    .line 100
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaxDeltaY:I

    .line 102
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpRect:Landroid/graphics/Rect;

    .line 104
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScreenRect:Landroid/graphics/Rect;

    .line 109
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchState:I

    .line 125
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMultiTouchUsed:Z

    .line 126
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPinchOutProcess:Z

    .line 128
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    .line 134
    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOrientation:I

    .line 135
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mUseFullScreenInLandScapeMode:Z

    .line 145
    const/4 v1, 0x7

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationState:I

    .line 153
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mIsDBUpdate:Z

    .line 863
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    .line 172
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 174
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getItemNoOfPage(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mItemNumOfPage:I

    .line 176
    const v1, 0x7f08003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPanelSizeShort:I

    .line 177
    const v1, 0x7f080040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPanelSizeLong:I

    .line 178
    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPanelSizeLong2:I

    .line 180
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->init()V

    .line 181
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaxDeltaY:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    return p1
.end method

.method private drop(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 851
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 852
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 854
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v0

    .line 855
    .local v0, dropedIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 856
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->swapScreen(I)V

    .line 861
    :goto_0
    return-void

    .line 859
    :cond_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mDraggingIndex:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->swapScreen(I)V

    goto :goto_0
.end method

.method private endDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 842
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchState:I

    .line 843
    iput-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    .line 844
    iput-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchedView:Landroid/view/View;

    .line 845
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPinchIndex:I

    .line 846
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mDraggingIndex:I

    .line 847
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOriginDragIndex:I

    .line 848
    return-void
.end method

.method private fling(I)V
    .locals 9
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x0

    .line 1094
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaxDeltaY:I

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1099
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->invalidate()V

    .line 1101
    :cond_0
    return-void
.end method

.method private getTouchedIndex(II)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, -0x1

    .line 722
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    if-nez v2, :cond_0

    move v2, v5

    .line 730
    :goto_0
    return v2

    .line 723
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    array-length v0, v2

    .line 724
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 725
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 724
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 726
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    add-int/2addr v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    .line 727
    goto :goto_0

    :cond_3
    move v2, v5

    .line 730
    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 185
    new-instance v3, Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    invoke-direct {v3}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    .line 186
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 188
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 189
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOrientation:I

    .line 190
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/twlauncher/LauncherConfig;->landscapeScreen_isUseFullScreenQuickView(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mUseFullScreenInLandScapeMode:Z

    .line 192
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 194
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 195
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchSlop:I

    .line 197
    new-instance v3, Landroid/widget/Scroller;

    invoke-direct {v3, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    .line 199
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMinimumVelocity:I

    .line 200
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaximumVelocity:I

    .line 202
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setClipChildren(Z)V

    .line 203
    return-void
.end method

.method private isAvailableRect(Landroid/graphics/Rect;)Z
    .locals 3
    .parameter "rect"

    .prologue
    .line 1083
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 1087
    :cond_0
    const/4 v0, 0x0

    .line 1089
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private makeScreen(I)Landroid/view/View;
    .locals 4
    .parameter "index"

    .prologue
    .line 814
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 815
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 816
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 819
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 820
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPanelSizeShort:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPanelSizeLong:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 826
    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 827
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 828
    return-object v0

    .line 821
    :cond_1
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 822
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPanelSizeLong2:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPanelSizeShort:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private onSwap(I)V
    .locals 4
    .parameter "dropedIndex"

    .prologue
    .line 902
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMenuManager:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOriginDragIndex:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 906
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMenuManager:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMenuManager:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v1, v2, p1, v3}, Lcom/sec/android/app/twlauncher/Utilities;->zOrderTweakMoveChild(Landroid/view/ViewGroup;IIZ)V

    .line 908
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->updateTag()V

    .line 910
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->updateAppInfo()V

    .line 915
    return-void
.end method

.method private savemenupage()V
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMenuManager:Landroid/view/ViewGroup;

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuManager;

    .line 1106
    .local v0, menumanager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->stopUpdateDB()V

    .line 1137
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->startUpdateDB()V

    .line 1138
    return-void
.end method

.method private scroll(II)V
    .locals 4
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v3, 0x0

    .line 697
    if-gez p2, :cond_3

    .line 698
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    if-lez v1, :cond_2

    .line 699
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    add-int/2addr v1, p2

    if-gez v1, :cond_1

    .line 700
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->smoothScrollBy(II)V

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    invoke-virtual {p0, v3, p2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->smoothScrollBy(II)V

    goto :goto_0

    .line 705
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->invalidate()V

    goto :goto_0

    .line 707
    :cond_3
    if-lez p2, :cond_0

    .line 708
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaxDeltaY:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    sub-int v0, v1, v2

    .line 709
    .local v0, availableToScroll:I
    if-lez v0, :cond_5

    .line 710
    if-le v0, p2, :cond_4

    .line 711
    invoke-virtual {p0, v3, p2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->smoothScrollBy(II)V

    goto :goto_0

    .line 713
    :cond_4
    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->smoothScrollBy(II)V

    goto :goto_0

    .line 716
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->invalidate()V

    goto :goto_0
.end method

.method private setCloseEndRect(I)V
    .locals 32
    .parameter "index"

    .prologue
    .line 1002
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v4

    .line 1004
    .local v4, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getLocationOnScreen([I)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v20, v27, v28

    .line 1008
    .local v20, myScreenPosY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMenuManager:Landroid/view/ViewGroup;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1010
    .local v14, menuScreen:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v27, v0

    move-object v0, v14

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1011
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v19

    .line 1012
    .local v19, menuScreenWidth:I
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v17

    .line 1013
    .local v17, menuScreenHeight:I
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    .line 1014
    .local v15, menuScreenClientPosX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    move/from16 v27, v0

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v28

    add-int v16, v27, v28

    .line 1015
    .local v16, menuScreenClientPosY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMenuManager:Landroid/view/ViewGroup;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v10

    .line 1017
    .local v10, horizontalOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMenuManager:Landroid/view/ViewGroup;

    move-object v13, v0

    .line 1018
    .local v13, menu:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v27, v0

    move-object v0, v13

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x1050004

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-int v18, v27, v28

    .line 1022
    .local v18, menuScreenPosY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    .line 1023
    .local v22, panelPaddingLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    .line 1024
    .local v23, panelPaddingRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    .line 1025
    .local v24, panelPaddingTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    .line 1027
    .local v21, panelPaddingBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move v1, v4

    if-eq v0, v1, :cond_1

    .line 1028
    :cond_0
    move v0, v4

    new-array v0, v0, [Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mFinishRects:[Landroid/graphics/Rect;

    .line 1029
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v4, :cond_1

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    new-instance v28, Landroid/graphics/Rect;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Rect;-><init>()V

    aput-object v28, v27, v11

    .line 1029
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1034
    .end local v11           #i:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    aget-object v27, v27, p1

    sub-int v28, v15, v22

    sub-int v29, v16, v24

    add-int v30, v15, v19

    add-int v30, v30, v23

    add-int v31, v16, v17

    add-int v31, v31, v21

    invoke-virtual/range {v27 .. v31}, Landroid/graphics/Rect;->set(IIII)V

    .line 1040
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOrientation:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mUseFullScreenInLandScapeMode:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    aget-object v27, v27, p1

    const/16 v28, 0x0

    sub-int v29, v18, v20

    invoke-virtual/range {v27 .. v29}, Landroid/graphics/Rect;->offset(II)V

    .line 1044
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationStyle:I

    move/from16 v27, v0

    if-eqz v27, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    if-nez v27, :cond_5

    .line 1046
    :cond_3
    const/16 v27, 0x1

    sub-int v11, p1, v27

    .restart local v11       #i:I
    :goto_1
    if-ltz v11, :cond_4

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    aget-object v27, v27, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v28, v0

    add-int/lit8 v29, v11, 0x1

    aget-object v28, v28, v29

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    aget-object v27, v27, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v28, v0

    aget-object v28, v28, v11

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v28

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/graphics/Rect;->offset(II)V

    .line 1046
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 1051
    :cond_4
    add-int/lit8 v11, p1, 0x1

    :goto_2
    if-ge v11, v4, :cond_7

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    aget-object v27, v27, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    sub-int v29, v11, v29

    aget-object v28, v28, v29

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    aget-object v27, v27, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v28, v0

    aget-object v28, v28, v11

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v28

    add-int v28, v28, v10

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/graphics/Rect;->offset(II)V

    .line 1051
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1056
    .end local v11           #i:I
    :cond_5
    const-string v27, "QuickViewMainMenu"

    const-string v28, "setCloseEndRect : NEW:"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    aget-object v2, v27, p1

    .line 1058
    .local v2, cFinishRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    aget-object v3, v27, p1

    .line 1065
    .local v3, cStartRect:Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v25, v27, v28

    .line 1066
    .local v25, scaleX:F
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v26, v27, v28

    .line 1068
    .local v26, scaleY:F
    const/4 v12, 0x0

    .local v12, ii:I
    :goto_3
    if-ge v12, v4, :cond_7

    .line 1069
    move v0, v12

    move/from16 v1, p1

    if-ne v0, v1, :cond_6

    .line 1068
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1070
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    aget-object v5, v27, v12

    .line 1071
    .local v5, currentChildRect:Landroid/graphics/Rect;
    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move-object v0, v3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    sub-int v6, v27, v28

    .line 1072
    .local v6, dX1:I
    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move-object v0, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    sub-int v8, v27, v28

    .line 1074
    .local v8, dY1:I
    move v0, v6

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v25

    move/from16 v0, v27

    float-to-int v0, v0

    move v7, v0

    .line 1075
    .local v7, dXX1:I
    move v0, v8

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v26

    move/from16 v0, v27

    float-to-int v0, v0

    move v9, v0

    .line 1076
    .local v9, dYY1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    aget-object v27, v27, v12

    move-object v0, v2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    add-int v28, v28, v7

    move-object v0, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    add-int v29, v29, v9

    move-object v0, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    add-int v30, v30, v7

    move-object v0, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    add-int v31, v31, v9

    invoke-virtual/range {v27 .. v31}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4

    .line 1080
    .end local v2           #cFinishRect:Landroid/graphics/Rect;
    .end local v3           #cStartRect:Landroid/graphics/Rect;
    .end local v5           #currentChildRect:Landroid/graphics/Rect;
    .end local v6           #dX1:I
    .end local v7           #dXX1:I
    .end local v8           #dY1:I
    .end local v9           #dYY1:I
    .end local v12           #ii:I
    .end local v25           #scaleX:F
    .end local v26           #scaleY:F
    :cond_7
    return-void
.end method

.method private setOpenStartRect(I)V
    .locals 32
    .parameter "index"

    .prologue
    .line 919
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v4

    .line 921
    .local v4, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getLocationOnScreen([I)V

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v20, v27, v28

    .line 925
    .local v20, myScreenPosY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMenuManager:Landroid/view/ViewGroup;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 927
    .local v14, menuScreen:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v27, v0

    move-object v0, v14

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 928
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v19

    .line 929
    .local v19, menuscreenWidth:I
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v18

    .line 930
    .local v18, menuscreenHeight:I
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v16

    .line 931
    .local v16, menuscreenClientPosX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    move/from16 v27, v0

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v28

    add-int v17, v27, v28

    .line 933
    .local v17, menuscreenClientPosY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMenuManager:Landroid/view/ViewGroup;

    move-object v13, v0

    .line 934
    .local v13, menu:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v27, v0

    move-object v0, v13

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x1050004

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-int v15, v27, v28

    .line 938
    .local v15, menuScreenPosY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    .line 939
    .local v22, panelPaddingLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    .line 940
    .local v23, panelPaddingRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    .line 941
    .local v24, panelPaddingTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    .line 942
    .local v21, panelPaddingBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMenuManager:Landroid/view/ViewGroup;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v10

    .line 944
    .local v10, horizontalOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move v1, v4

    if-eq v0, v1, :cond_1

    .line 945
    :cond_0
    move v0, v4

    new-array v0, v0, [Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mStartRects:[Landroid/graphics/Rect;

    .line 946
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v4, :cond_1

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    new-instance v28, Landroid/graphics/Rect;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Rect;-><init>()V

    aput-object v28, v27, v11

    .line 946
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 951
    .end local v11           #i:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    aget-object v27, v27, p1

    sub-int v28, v16, v22

    sub-int v29, v17, v24

    add-int v30, v16, v19

    add-int v30, v30, v23

    add-int v31, v17, v18

    add-int v31, v31, v21

    invoke-virtual/range {v27 .. v31}, Landroid/graphics/Rect;->set(IIII)V

    .line 958
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOrientation:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mUseFullScreenInLandScapeMode:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    aget-object v27, v27, p1

    const/16 v28, 0x0

    sub-int v29, v15, v20

    invoke-virtual/range {v27 .. v29}, Landroid/graphics/Rect;->offset(II)V

    .line 962
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationStyle:I

    move/from16 v27, v0

    if-eqz v27, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    if-nez v27, :cond_5

    .line 964
    :cond_3
    const/16 v27, 0x1

    sub-int v11, p1, v27

    .restart local v11       #i:I
    :goto_1
    if-ltz v11, :cond_4

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    aget-object v27, v27, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v28, v0

    add-int/lit8 v29, v11, 0x1

    aget-object v28, v28, v29

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    aget-object v27, v27, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v28, v0

    aget-object v28, v28, v11

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v28

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/graphics/Rect;->offset(II)V

    .line 964
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 969
    :cond_4
    add-int/lit8 v11, p1, 0x1

    :goto_2
    if-ge v11, v4, :cond_7

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    aget-object v27, v27, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    sub-int v29, v11, v29

    aget-object v28, v28, v29

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    aget-object v27, v27, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v28, v0

    aget-object v28, v28, v11

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v28

    add-int v28, v28, v10

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/graphics/Rect;->offset(II)V

    .line 969
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 974
    .end local v11           #i:I
    :cond_5
    const-string v27, "QuickViewMainMenu"

    const-string v28, "setOpenStartRect : NEW:"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    aget-object v3, v27, p1

    .line 976
    .local v3, cStartRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    aget-object v2, v27, p1

    .line 983
    .local v2, cEndRect:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v25, v27, v28

    .line 984
    .local v25, scaleX:F
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v26, v27, v28

    .line 986
    .local v26, scaleY:F
    const/4 v12, 0x0

    .local v12, ii:I
    :goto_3
    if-ge v12, v4, :cond_7

    .line 987
    move v0, v12

    move/from16 v1, p1

    if-ne v0, v1, :cond_6

    .line 986
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 988
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    aget-object v5, v27, v12

    .line 989
    .local v5, currentChildRect:Landroid/graphics/Rect;
    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move-object v0, v2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    sub-int v6, v27, v28

    .line 990
    .local v6, dX1:I
    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move-object v0, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    sub-int v8, v27, v28

    .line 992
    .local v8, dY1:I
    move v0, v6

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v25

    move/from16 v0, v27

    float-to-int v0, v0

    move v7, v0

    .line 993
    .local v7, dXX1:I
    move v0, v8

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v26

    move/from16 v0, v27

    float-to-int v0, v0

    move v9, v0

    .line 994
    .local v9, dYY1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    aget-object v27, v27, v12

    move-object v0, v3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    add-int v28, v28, v7

    move-object v0, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    add-int v29, v29, v9

    move-object v0, v3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    add-int v30, v30, v7

    move-object v0, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    add-int v31, v31, v9

    invoke-virtual/range {v27 .. v31}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4

    .line 999
    .end local v2           #cEndRect:Landroid/graphics/Rect;
    .end local v3           #cStartRect:Landroid/graphics/Rect;
    .end local v5           #currentChildRect:Landroid/graphics/Rect;
    .end local v6           #dX1:I
    .end local v7           #dXX1:I
    .end local v8           #dY1:I
    .end local v9           #dYY1:I
    .end local v12           #ii:I
    .end local v25           #scaleX:F
    .end local v26           #scaleY:F
    :cond_7
    return-void
.end method

.method private startDrag(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 832
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchState:I

    .line 833
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mDraggingIndex:I

    .line 834
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mDraggingIndex:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOriginDragIndex:I

    .line 835
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    .line 836
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchedView:Landroid/view/View;

    .line 838
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 839
    return-void
.end method

.method private swapScreen(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 896
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/sec/android/app/twlauncher/Utilities;->zOrderTweakMoveChild(Landroid/view/ViewGroup;IIZ)V

    .line 898
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->onSwap(I)V

    .line 899
    return-void
.end method

.method private updateAppInfo()V
    .locals 9

    .prologue
    const v8, 0xffff

    .line 874
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMenuManager:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 876
    .local v2, count:I
    const/4 v6, 0x0

    .local v6, page:I
    :goto_0
    if-ge v6, v2, :cond_2

    .line 877
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMenuManager:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 878
    .local v5, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v4

    .line 879
    .local v4, itemCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_1

    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mItemNumOfPage:I

    if-ge v3, v7, :cond_1

    .line 880
    invoke-virtual {v5, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 881
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 882
    .local v0, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iput v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    .line 883
    iput v6, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    .line 884
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isUpdated:Z

    .line 885
    iput v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 886
    iput v6, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 887
    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mIsDBUpdate:Z

    if-nez v7, :cond_0

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mIsDBUpdate:Z

    .line 879
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 876
    .end local v0           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v1           #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 890
    .end local v3           #i:I
    .end local v4           #itemCount:I
    .end local v5           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_2
    return-void
.end method

.method private updateTag()V
    .locals 4

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v1

    .line 867
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 868
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 869
    .local v0, child:Landroid/view/View;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 867
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 871
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method cancelDrag()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 744
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 746
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->removeView(Landroid/view/View;)V

    .line 747
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOriginDragIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->addView(Landroid/view/View;I)V

    .line 748
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 750
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->updateTag()V

    .line 752
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mDeleteIndex:I

    .line 753
    iput-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mDeleteView:Landroid/view/View;

    .line 754
    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchState:I

    .line 755
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mDraggingIndex:I

    .line 756
    iput-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    .line 757
    iput-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchedView:Landroid/view/View;

    .line 758
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPinchIndex:I

    .line 759
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOriginDragIndex:I

    .line 760
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postInvalidate()V

    .line 761
    return-void
.end method

.method clearChildrenCache()V
    .locals 5

    .prologue
    .line 687
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMenuManager:Landroid/view/ViewGroup;

    check-cast v3, Lcom/sec/android/app/twlauncher/MenuManager;

    .line 688
    .local v3, mm:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 690
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 691
    invoke-virtual {v3, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 692
    .local v2, layout:Lcom/sec/android/app/twlauncher/AppMenu;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 690
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 694
    .end local v2           #layout:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_0
    return-void
.end method

.method close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 664
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->savemenupage()V

    .line 665
    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    .line 666
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mEnabledChildAnimation:Z

    .line 667
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->clearChildrenCache()V

    .line 668
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setVisibility(I)V

    .line 669
    return-void
.end method

.method public computeScroll()V
    .locals 12

    .prologue
    .line 1179
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 1180
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMenuManager:Landroid/view/ViewGroup;

    check-cast v8, Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreen()I

    move-result v2

    .line 1181
    .local v2, index:I
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v2

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iput v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollTop:I

    .line 1183
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    if-nez v8, :cond_0

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollTop:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildTop:I

    if-le v8, v9, :cond_0

    .line 1184
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollTop:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaxDeltaY:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    .line 1188
    .end local v2           #index:I
    :cond_0
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1189
    iget v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    .line 1190
    .local v3, oldX:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    .line 1191
    .local v4, oldY:I
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    .line 1192
    .local v6, x:I
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    .line 1194
    .local v7, y:I
    iput v6, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    .line 1195
    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    .line 1197
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    if-ne v3, v8, :cond_1

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    if-eq v4, v8, :cond_2

    .line 1198
    :cond_1
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    invoke-virtual {p0, v8, v9, v3, v4}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->onScrollChanged(IIII)V

    .line 1201
    :cond_2
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 1202
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    sub-int v1, v8, v4

    .line 1203
    .local v1, deltaY:I
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    .line 1204
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_3

    .line 1205
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpRect:Landroid/graphics/Rect;

    .line 1206
    .local v5, r:Landroid/graphics/Rect;
    invoke-virtual {v0, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1207
    iget v8, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v1

    iput v8, v5, Landroid/graphics/Rect;->top:I

    .line 1208
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v1

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 1210
    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v9, v5, Landroid/graphics/Rect;->top:I

    iget v10, v5, Landroid/graphics/Rect;->right:I

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 1214
    .end local v0           #child:Landroid/view/View;
    .end local v1           #deltaY:I
    .end local v5           #r:Landroid/graphics/Rect;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postInvalidate()V

    .line 1216
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v6           #x:I
    .end local v7           #y:I
    :cond_4
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 208
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v7

    .line 209
    .local v7, count:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getWidth()I

    move-result v13

    .line 210
    .local v13, width:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getHeight()I

    move-result v11

    .line 211
    .local v11, height:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getDrawingTime()J

    move-result-wide v9

    .line 213
    .local v9, drawingTime:J
    if-eqz v13, :cond_0

    if-nez v11, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 216
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 217
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationStartTime:J

    .line 218
    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationState:I

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMenuManager:Landroid/view/ViewGroup;

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreen()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPinchIndex:I

    .line 220
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPinchIndex:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setOpenStartRect(I)V

    .line 221
    new-array v0, v7, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mFinishRects:[Landroid/graphics/Rect;

    .line 222
    new-array v0, v7, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    .line 223
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v7, :cond_4

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mFinishRects:[Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v12

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v0, v0, v12

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    aget-object v1, v1, v12

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 226
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPinchIndex:I

    if-ne v12, v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    aget-object v0, v0, v12

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollTop:I

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v12

    .line 223
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 231
    .end local v12           #i:I
    :cond_3
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationStartTime:J

    .line 233
    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationState:I

    .line 234
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentPage:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPinchIndex:I

    .line 235
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPinchIndex:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setCloseEndRect(I)V

    .line 236
    new-array v0, v7, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mStartRects:[Landroid/graphics/Rect;

    .line 237
    new-array v0, v7, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    .line 238
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_2
    if-ge v12, v7, :cond_4

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mStartRects:[Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v12

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mStartRects:[Landroid/graphics/Rect;

    aget-object v0, v0, v12

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    aget-object v1, v1, v12

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v12

    .line 238
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 245
    .end local v12           #i:I
    :cond_4
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchState:I

    if-ne v0, v4, :cond_7

    .line 246
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_3
    if-ge v12, v7, :cond_6

    .line 247
    invoke-virtual {p0, v12}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 248
    .local v6, child:Landroid/view/View;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    if-eq v6, v0, :cond_5

    .line 249
    invoke-virtual {p0, p1, v6, v9, v10}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 246
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 252
    .end local v6           #child:Landroid/view/View;
    :cond_6
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    add-int/2addr v0, v13

    int-to-float v3, v0

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    add-int/2addr v0, v11

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, p1, v0, v9, v10}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_0

    .line 255
    .end local v12           #i:I
    :cond_7
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationState:I

    if-eq v0, v4, :cond_8

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationState:I

    if-ne v0, v5, :cond_12

    .line 256
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationStartTime:J

    sub-long/2addr v0, v2

    long-to-float v8, v0

    .line 258
    .local v8, current:F
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationDuration:I

    int-to-float v0, v0

    cmpl-float v0, v8, v0

    if-ltz v0, :cond_a

    .line 259
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationDuration:I

    int-to-float v8, v0

    .line 260
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationState:I

    if-ne v0, v5, :cond_9

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewMainMenu()V

    .line 263
    :cond_9
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationState:I

    if-ne v0, v4, :cond_e

    const/4 v0, 0x7

    :goto_4
    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationState:I

    .line 266
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    array-length v0, v0

    if-eq v0, v7, :cond_c

    .line 267
    :cond_b
    if-lez v7, :cond_c

    new-array v0, v7, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    .line 270
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mStartRects:[Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mFinishRects:[Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationDuration:I

    int-to-float v4, v4

    div-float v4, v8, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;->getRect([Landroid/graphics/Rect;[Landroid/graphics/Rect;[Landroid/graphics/Rect;F)[Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    .line 272
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_5
    if-ge v12, v7, :cond_10

    .line 273
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPinchIndex:I

    if-ne v12, v0, :cond_f

    .line 272
    :cond_d
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 263
    .end local v12           #i:I
    :cond_e
    const/16 v0, 0x8

    goto :goto_4

    .line 274
    .restart local v12       #i:I
    :cond_f
    invoke-virtual {p0, v12}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 275
    .restart local v6       #child:Landroid/view/View;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v0, v0, v12

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v0, v0, v12

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v0, v0, v12

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v0, v0, v12

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v0, v0, v12

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v12

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v12

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v0, v0, v12

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isAvailableRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    invoke-virtual {p0, p1, v6, v9, v10}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_6

    .line 282
    .end local v6           #child:Landroid/view/View;
    :cond_10
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPinchIndex:I

    if-ltz v0, :cond_11

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPinchIndex:I

    if-ge v0, v7, :cond_11

    .line 283
    iget v12, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPinchIndex:I

    .line 284
    invoke-virtual {p0, v12}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 285
    .restart local v6       #child:Landroid/view/View;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v0, v0, v12

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v0, v0, v12

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v0, v0, v12

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v0, v0, v12

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v0, v0, v12

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v12

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v12

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    invoke-virtual {p0, p1, v6, v9, v10}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 290
    .end local v6           #child:Landroid/view/View;
    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postInvalidate()V

    goto/16 :goto_0

    .line 293
    .end local v8           #current:F
    .end local v12           #i:I
    :cond_12
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_7
    if-ge v12, v7, :cond_0

    .line 294
    invoke-virtual {p0, v12}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v9, v10}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 293
    add-int/lit8 v12, v12, 0x1

    goto :goto_7
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 26
    .parameter "canvas"
    .parameter "view"
    .parameter "drawingTime"

    .prologue
    .line 579
    const/4 v11, 0x0

    .line 580
    .local v11, ret:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationState:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationState:I

    move/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 581
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationStartTime:J

    move-wide/from16 v23, v0

    sub-long v21, v21, v23

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move v7, v0

    .line 583
    .local v7, current:I
    move v0, v7

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationDuration:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v10, v21, v22

    .line 584
    .local v10, progress:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationState:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    move v5, v10

    .line 585
    .local v5, backgroundAlpha:F
    :goto_0
    const/high16 v21, 0x3f80

    move/from16 v0, v21

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 586
    const/16 v21, 0x0

    move/from16 v0, v21

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    const/high16 v22, 0x437f

    mul-float v22, v22, v5

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v25

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 597
    .end local v5           #backgroundAlpha:F
    .end local v7           #current:I
    .end local v10           #progress:F
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    .line 599
    .local v16, tag:Ljava/lang/Object;
    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 600
    check-cast v16, Ljava/lang/Integer;

    .end local v16           #tag:Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 603
    .local v15, screen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMenuManager:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 605
    .local v6, child:Landroid/view/View;
    if-eqz v6, :cond_1

    .line 606
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 608
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingRight()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v14, v21, v22

    .line 609
    .local v14, scaleV:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v13, v21, v22

    .line 610
    .local v13, scaleH:F
    cmpl-float v21, v14, v13

    if-lez v21, :cond_6

    move v12, v13

    .line 612
    .local v12, scale:F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingRight()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 617
    const/16 v21, 0x11

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v12

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v12

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-static/range {v21 .. v25}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    .line 621
    .local v19, xOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    .line 623
    .local v20, yOffset:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v21

    add-int v21, v21, v19

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v22

    add-int v22, v22, v20

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 625
    move-object/from16 v0, p1

    move v1, v12

    move v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 626
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 634
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 647
    .end local v6           #child:Landroid/view/View;
    .end local v12           #scale:F
    .end local v13           #scaleH:F
    .end local v14           #scaleV:F
    .end local v15           #screen:I
    .end local v19           #xOffset:I
    .end local v20           #yOffset:I
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchedView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_2

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v25

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 652
    :cond_2
    return v11

    .line 584
    .restart local v7       #current:I
    .restart local v10       #progress:F
    :cond_3
    const/high16 v21, 0x3f80

    sub-float v21, v21, v10

    move/from16 v5, v21

    goto/16 :goto_0

    .line 591
    .end local v7           #current:I
    .end local v10           #progress:F
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationState:I

    move/from16 v21, v0

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 592
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 594
    :cond_5
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v11

    goto/16 :goto_1

    .restart local v6       #child:Landroid/view/View;
    .restart local v13       #scaleH:F
    .restart local v14       #scaleV:F
    .restart local v15       #screen:I
    :cond_6
    move v12, v14

    .line 610
    goto/16 :goto_2

    .line 638
    .end local v6           #child:Landroid/view/View;
    .end local v13           #scaleH:F
    .end local v14           #scaleV:F
    .end local v15           #screen:I
    .restart local v16       #tag:Ljava/lang/Object;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    .line 639
    .local v18, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 640
    .local v8, height:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v22

    sub-int v22, v22, v18

    div-int/lit8 v22, v22, 0x2

    add-int v9, v21, v22

    .line 641
    .local v9, left:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v22

    sub-int v22, v22, v8

    div-int/lit8 v22, v22, 0x2

    add-int v17, v21, v22

    .line 643
    .local v17, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    add-int v22, v9, v18

    add-int v23, v17, v8

    move-object/from16 v0, v21

    move v1, v9

    move/from16 v2, v17

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3
.end method

.method public drawCloseAnimation()V
    .locals 2

    .prologue
    .line 1245
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1246
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationState:I

    .line 1247
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationDuration:I

    .line 1249
    :cond_0
    return-void
.end method

.method public drawOpenAnimation()V
    .locals 1

    .prologue
    .line 1240
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationState:I

    .line 1241
    const/16 v0, 0x190

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationDuration:I

    .line 1242
    return-void
.end method

.method enableChildrenCache()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 676
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMenuManager:Landroid/view/ViewGroup;

    check-cast v3, Lcom/sec/android/app/twlauncher/MenuManager;

    .line 677
    .local v3, mm:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 679
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 680
    invoke-virtual {v3, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 681
    .local v2, layout:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 682
    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawingCacheEnabled(Z)V

    .line 679
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 684
    .end local v2           #layout:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_0
    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 734
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentPage:I

    return v0
.end method

.method initScreen(I)V
    .locals 8
    .parameter "screenCount"

    .prologue
    const v7, 0x7f020091

    .line 774
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->removeAllViews()V

    .line 776
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setBackgroundResource(I)V

    .line 778
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 780
    .local v3, res:Landroid/content/res/Resources;
    new-array v5, p1, [Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;

    .line 782
    const v5, 0x7f080039

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildGapV:I

    .line 783
    const v5, 0x7f08003a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildGapH:I

    .line 784
    const v5, 0x7f08003b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildLeft:I

    .line 785
    const v5, 0x7f08003c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildTop:I

    .line 787
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 788
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 790
    .local v4, resources:Landroid/content/res/Resources;
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 791
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchSlop:I

    .line 793
    new-instance v5, Landroid/widget/Scroller;

    invoke-direct {v5, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    .line 795
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 796
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 797
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

    .line 799
    const v5, 0x7f020030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 801
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 802
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->makeScreen(I)Landroid/view/View;

    .line 803
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;

    new-instance v6, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;

    invoke-direct {v6, p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;-><init>(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)V

    aput-object v6, v5, v2

    .line 801
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 810
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 811
    return-void
.end method

.method isOpened()Z
    .locals 1

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 569
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentPage:I

    .line 571
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawCloseAnimation()V

    .line 572
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postInvalidate()V

    .line 574
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    .line 358
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 360
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 361
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 363
    .local v5, y:F
    iget v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationState:I

    const/4 v11, 0x7

    if-eq v10, v11, :cond_0

    iget v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationState:I

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    const/4 v10, 0x1

    .line 439
    :goto_0
    return v10

    .line 367
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 439
    :cond_1
    :goto_1
    iget v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchState:I

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    goto :goto_0

    .line 369
    :sswitch_0
    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMultiTouchUsed:Z

    if-eqz v10, :cond_2

    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPinchOutProcess:Z

    if-eqz v10, :cond_2

    .line 370
    const/4 v10, 0x0

    iput v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchState:I

    .line 372
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v6, v10

    .line 373
    .local v6, y1:I
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v3, v10

    .line 374
    .local v3, x1:I
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v7, v10

    .line 375
    .local v7, y2:I
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v4, v10

    .line 377
    .local v4, x2:I
    sub-int v10, v6, v7

    sub-int v11, v6, v7

    mul-int/2addr v10, v11

    sub-int v11, v3, v4

    sub-int v12, v3, v4

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v10, v10

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMovePinchStart:I

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMovePinch:I

    .line 379
    iget v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMovePinch:I

    const/16 v11, 0x64

    if-le v10, v11, :cond_1

    .line 381
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMultiTouchUsed:Z

    .line 382
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPinchOutProcess:Z

    .line 383
    iget v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPinchOutIndex:I

    iput v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentPage:I

    .line 384
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawCloseAnimation()V

    .line 385
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postInvalidate()V

    .line 386
    const/4 v10, 0x1

    goto :goto_0

    .line 390
    .end local v3           #x1:I
    .end local v4           #x2:I
    .end local v6           #y1:I
    .end local v7           #y2:I
    :cond_2
    iget v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionY:F

    sub-float/2addr v10, v5

    float-to-int v8, v10

    .line 391
    .local v8, yDiff:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchSlop:I

    .line 392
    .local v1, touchSlop:I
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-le v10, v1, :cond_3

    const/4 v10, 0x1

    move v9, v10

    .line 393
    .local v9, yMoved:Z
    :goto_2
    iget v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchState:I

    if-nez v10, :cond_1

    .line 394
    if-eqz v9, :cond_1

    .line 395
    const/4 v10, 0x1

    iput v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchState:I

    .line 396
    const/4 v10, 0x0

    invoke-direct {p0, v10, v8}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->scroll(II)V

    .line 397
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionX:F

    .line 398
    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionY:F

    goto :goto_1

    .line 392
    .end local v9           #yMoved:Z
    :cond_3
    const/4 v10, 0x0

    move v9, v10

    goto :goto_2

    .line 405
    .end local v1           #touchSlop:I
    .end local v8           #yDiff:I
    :sswitch_1
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionX:F

    .line 406
    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionY:F

    .line 407
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v10, 0x1

    :goto_3
    iput v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchState:I

    goto/16 :goto_1

    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    .line 411
    :sswitch_2
    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMultiTouchUsed:Z

    if-eqz v10, :cond_5

    .line 412
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMultiTouchUsed:Z

    .line 413
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPinchOutProcess:Z

    goto/16 :goto_1

    .line 415
    :cond_5
    iget v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 416
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->endDrag()V

    goto/16 :goto_1

    .line 421
    :sswitch_3
    iget v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchState:I

    if-nez v10, :cond_1

    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMultiTouchUsed:Z

    if-nez v10, :cond_1

    .line 422
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMultiTouchUsed:Z

    .line 424
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v6, v10

    .line 425
    .restart local v6       #y1:I
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v3, v10

    .line 426
    .restart local v3       #x1:I
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v7, v10

    .line 427
    .restart local v7       #y2:I
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v4, v10

    .line 429
    .restart local v4       #x2:I
    invoke-direct {p0, v3, v6}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v10

    invoke-direct {p0, v4, v7}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v11

    if-ne v10, v11, :cond_1

    .line 430
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPinchOutProcess:Z

    .line 431
    sub-int v10, v6, v7

    sub-int v11, v6, v7

    mul-int/2addr v10, v11

    sub-int v11, v3, v4

    sub-int v12, v3, v4

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v10, v10

    iput v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMovePinchStart:I

    .line 433
    invoke-direct {p0, v3, v6}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v10

    iput v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPinchOutIndex:I

    goto/16 :goto_1

    .line 439
    .end local v3           #x1:I
    .end local v4           #x2:I
    .end local v6           #y1:I
    .end local v7           #y2:I
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 367
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x105 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 301
    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildLeft:I

    .line 302
    .local v4, childLeft:I
    iget v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildTop:I

    .line 304
    .local v5, childTop:I
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildGapV:I

    .line 305
    .local v2, childGapV:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildGapH:I

    .line 307
    .local v1, childGapH:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v7

    .line 309
    .local v7, count:I
    const/4 v10, 0x1

    if-ge v7, v10, :cond_1

    .line 347
    :cond_0
    return-void

    .line 311
    :cond_1
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    array-length v10, v10

    if-eq v10, v7, :cond_3

    .line 312
    :cond_2
    new-array v10, v7, [Landroid/graphics/Rect;

    iput-object v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    .line 315
    :cond_3
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 316
    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 317
    .local v0, child:Landroid/view/View;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 318
    .local v9, r:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_7

    .line 319
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 320
    .local v6, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 322
    .local v3, childHeight:I
    add-int v10, v4, v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getMeasuredWidth()I

    move-result v11

    if-le v10, v11, :cond_4

    .line 323
    add-int v10, v2, v3

    add-int/2addr v5, v10

    .line 324
    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildLeft:I

    .line 327
    :cond_4
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v8

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    aput-object v11, v10, v8

    .line 328
    :cond_5
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v8

    add-int v11, v4, v6

    add-int v12, v5, v3

    invoke-virtual {v10, v4, v5, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 330
    invoke-virtual {v0, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 332
    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mEnabledChildAnimation:Z

    if-eqz v10, :cond_8

    .line 333
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_6

    .line 334
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;

    aget-object v10, v10, v8

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    aget-object v11, v11, v8

    invoke-virtual {v10, v0, v11}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 340
    :cond_6
    :goto_1
    add-int v10, v1, v6

    add-int/2addr v4, v10

    .line 342
    const/4 v10, 0x3

    sub-int v10, v7, v10

    if-ne v8, v10, :cond_7

    .line 343
    iget v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildTop:I

    sub-int v10, v5, v10

    iput v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaxDeltaY:I

    .line 315
    .end local v3           #childHeight:I
    .end local v6           #childWidth:I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 337
    .restart local v3       #childHeight:I
    .restart local v6       #childWidth:I
    :cond_8
    add-int v10, v4, v6

    add-int v11, v5, v3

    invoke-virtual {v0, v4, v5, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 560
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMultiTouchUsed:Z

    if-eqz v0, :cond_0

    move v0, v2

    .line 565
    :goto_0
    return v0

    .line 561
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 563
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->startDrag(Landroid/view/View;)V

    :cond_1
    move v0, v2

    .line 565
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 352
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 353
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .parameter "ev"

    .prologue
    .line 444
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 445
    .local v5, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    .line 446
    .local v15, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    .line 449
    .local v16, y:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationState:I

    move/from16 v18, v0

    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAnimationState:I

    move/from16 v18, v0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    const/16 v18, 0x0

    .line 556
    :goto_0
    return v18

    .line 451
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 452
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 454
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 456
    packed-switch v5, :pswitch_data_0

    .line 556
    :cond_2
    :goto_1
    const/16 v18, 0x1

    goto :goto_0

    .line 458
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->isFinished()Z

    move-result v18

    if-nez v18, :cond_3

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->abortAnimation()V

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->computeScroll()V

    .line 463
    :cond_3
    const/high16 v18, 0x42a0

    cmpg-float v18, v16, v18

    if-ltz v18, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getHeight()I

    move-result v18

    const/16 v19, 0x50

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v16, v18

    if-lez v18, :cond_5

    .line 464
    :cond_4
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollRunnable:Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x258

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 467
    :cond_5
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    goto :goto_1

    .line 471
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionX:F

    move/from16 v18, v0

    sub-float v18, v18, v15

    move/from16 v0, v18

    float-to-int v0, v0

    move v7, v0

    .line 472
    .local v7, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionY:F

    move/from16 v18, v0

    sub-float v18, v18, v16

    move/from16 v0, v18

    float-to-int v0, v0

    move v8, v0

    .line 474
    .local v8, deltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchSlop:I

    move v12, v0

    .line 475
    .local v12, touchSlop:I
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    move v1, v12

    if-le v0, v1, :cond_7

    const/16 v18, 0x1

    move/from16 v17, v18

    .line 477
    .local v17, yMoved:Z
    :goto_2
    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchState:I

    move/from16 v18, v0

    if-nez v18, :cond_6

    .line 478
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchState:I

    .line 481
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 482
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move v2, v8

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->scroll(II)V

    .line 483
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionX:F

    .line 484
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionY:F

    goto/16 :goto_1

    .line 475
    .end local v17           #yMoved:Z
    :cond_7
    const/16 v18, 0x0

    move/from16 v17, v18

    goto :goto_2

    .line 485
    .restart local v17       #yMoved:Z
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    move-object v6, v0

    .line 487
    .local v6, child:Landroid/view/View;
    if-eqz v6, :cond_9

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpRect:Landroid/graphics/Rect;

    move-object v11, v0

    .line 489
    .local v11, r:Landroid/graphics/Rect;
    invoke-virtual {v6, v11}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 490
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v18, v18, v7

    move/from16 v0, v18

    move-object v1, v11

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 491
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v18, v18, v8

    move/from16 v0, v18

    move-object v1, v11

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 492
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v18, v18, v7

    move/from16 v0, v18

    move-object v1, v11

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 493
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v18, v18, v8

    move/from16 v0, v18

    move-object v1, v11

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 495
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move-object v0, v6

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 497
    .end local v11           #r:Landroid/graphics/Rect;
    :cond_9
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionX:F

    .line 498
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionY:F

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    move-object v13, v0

    .line 502
    .local v13, v:Landroid/view/View;
    move v0, v15

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v9

    .line 503
    .local v9, index:I
    const/16 v18, -0x1

    move v0, v9

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mDraggingIndex:I

    move/from16 v18, v0

    move v0, v9

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_a

    .line 504
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->removeView(Landroid/view/View;)V

    .line 505
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->addView(Landroid/view/View;I)V

    .line 506
    const/16 v18, 0x4

    move-object v0, v13

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 507
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mDraggingIndex:I

    .line 510
    :cond_a
    const/high16 v18, 0x42a0

    cmpg-float v18, v16, v18

    if-gez v18, :cond_b

    .line 511
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 512
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollRunnable:Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->setDirection(I)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollRunnable:Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 516
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getHeight()I

    move-result v18

    const/16 v19, 0x50

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v16, v18

    if-lez v18, :cond_2

    .line 517
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 518
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollRunnable:Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->setDirection(I)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollRunnable:Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 527
    .end local v6           #child:Landroid/view/View;
    .end local v7           #deltaX:I
    .end local v8           #deltaY:I
    .end local v9           #index:I
    .end local v12           #touchSlop:I
    .end local v13           #v:Landroid/view/View;
    .end local v17           #yMoved:Z
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v14, v0

    .line 529
    .local v14, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v18, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaximumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object v0, v14

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 530
    invoke-virtual {v14}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move v10, v0

    .line 532
    .local v10, initialVelocity:I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMinimumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v18

    if-lez v18, :cond_c

    .line 533
    move v0, v10

    neg-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->fling(I)V

    .line 536
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->recycle()V

    .line 538
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 540
    :cond_d
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchState:I

    .line 545
    .end local v10           #initialVelocity:I
    .end local v14           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_e
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    move-object/from16 v18, v0

    if-nez v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchedView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    .line 547
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postInvalidate()V

    .line 550
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->endDrag()V

    goto/16 :goto_1

    .line 541
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 542
    move v0, v15

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drop(II)V

    goto :goto_3

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method open()V
    .locals 1

    .prologue
    .line 656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mEnabledChildAnimation:Z

    .line 657
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->enableChildrenCache()V

    .line 658
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setVisibility(I)V

    .line 660
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMenuManager:Landroid/view/ViewGroup;

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreen()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mCurrentPage:I

    .line 661
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 1
    .parameter "launcher"

    .prologue
    .line 738
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 739
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMenuManager:Landroid/view/ViewGroup;

    .line 740
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 6
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1225
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastScroll:J

    sub-long v0, v2, v4

    .line 1226
    .local v0, duration:J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1227
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 1229
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->invalidate()V

    .line 1236
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastScroll:J

    .line 1237
    return-void

    .line 1231
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1232
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1234
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->scrollBy(II)V

    goto :goto_0
.end method
