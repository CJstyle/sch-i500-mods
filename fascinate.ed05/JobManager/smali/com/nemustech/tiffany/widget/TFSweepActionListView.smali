.class public Lcom/nemustech/tiffany/widget/TFSweepActionListView;
.super Lcom/nemustech/tiffany/widget/TFAnimatedListView;
.source "TFSweepActionListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;,
        Lcom/nemustech/tiffany/widget/TFSweepActionListView$ContextMenuViewWrapper;,
        Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;,
        Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;,
        Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;,
        Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;,
        Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CONTEXT_CLOSE_ANIMATION_DURATION:I = 0x7d0

.field private static final CONTEXT_OPEN_ANIMATION_DURATION:I = 0x7d0

.field private static final CONTEXT_URGENT_CLOSE_ANIMATION_DURATION:I = 0x1f4

.field private static final DEBUG:Z = false

.field public static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field private static final INVALID_INDEX:I = -0x1

.field private static final LISTENER_ACTION_CANCELED:I = 0x1

.field private static final LISTENER_ACTION_COMMITTED:I = 0x2

.field private static final LISTENER_ACTION_STARTED:I = 0x0

.field private static final PROGRESS_COUNT:I = 0x64

.field private static final SCROLL_ACTION_THRESHOLD:F = 0.5f

.field private static final STATUS_AUTO_EMERGING:I = 0x3

.field private static final STATUS_AUTO_WITHDRAWING:I = 0x5

.field private static final STATUS_NONE_IDLE:I = 0x0

.field private static final STATUS_SCROLL_TRACKING:I = 0x2

.field private static final STATUS_VISIBLE_IDLE:I = 0x4

.field private static final STATUS_WAITING_SCROLL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TFSweepActionListView"


# instance fields
.field private mActionDownOnClickableDescendant:Z

.field private mGDetector:Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;

.field private mMinimumFlingVelocity:I

.field private mMotionDownRow:I

.field private mMotionDownX:I

.field private mMotionDownY:I

.field private mSweepActionBarCallback:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;

.field private mSweepActionListener:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;

.field private mSweepActionViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTempRect:Landroid/graphics/Rect;

.field private mTempRect2:Landroid/graphics/Rect;

.field private mTempTransformation:Landroid/view/animation/Transformation;

.field private mTouchSlop:I

.field private mTrackingHorizontalFlick:Z

.field private mTrackingHorizontalFlickLocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 519
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 520
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 523
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 524
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 528
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 493
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    .line 513
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 514
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect:Landroid/graphics/Rect;

    .line 515
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    .line 530
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->setDrawSelectorOnTop(Z)V

    .line 532
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 533
    .local v0, vc:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTouchSlop:I

    .line 534
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMinimumFlingVelocity:I

    .line 536
    new-instance v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;

    new-instance v2, Lcom/nemustech/tiffany/widget/TFSweepActionListView$1;

    invoke-direct {v2, p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$1;-><init>(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)V

    invoke-direct {v1, p1, v2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;-><init>(Landroid/content/Context;Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector$OnHorizontalGestureListener;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mGDetector:Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;

    .line 555
    return-void
.end method

.method static synthetic access$000(Lcom/nemustech/tiffany/widget/TFSweepActionListView;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->fireSweepActionListener(III)V

    return-void
.end method

.method static synthetic access$1000(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionBarCallback:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/nemustech/tiffany/widget/TFSweepActionListView;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->onHorizontalFlickDetected(F)V

    return-void
.end method

.method static synthetic access$1300(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->onHorizontalScrollTouchUp()V

    return-void
.end method

.method static synthetic access$1400(Lcom/nemustech/tiffany/widget/TFSweepActionListView;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->onHorizontalScroll(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nemustech/tiffany/widget/TFSweepActionListView;Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getCurrentSweepActionView(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/nemustech/tiffany/widget/TFSweepActionListView;Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getCurrentListItemView(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/view/animation/Transformation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    return-object v0
.end method

.method private findExactMotionRow(I)I
    .locals 5
    .parameter "y"

    .prologue
    .line 1108
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->findMotionRow(I)I

    move-result v2

    .line 1110
    .local v2, retPosition:I
    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1111
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v1, v2, v3

    .line 1112
    .local v1, childIndex:I
    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1113
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1114
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1115
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1116
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    .line 1123
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childIndex:I
    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private findSweepActionViewInfo(I)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    .locals 4
    .parameter "listItemPosition"

    .prologue
    .line 1171
    const/4 v2, 0x0

    .line 1172
    .local v2, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .line 1173
    .local v1, s:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    iget v3, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    if-ne v3, p1, :cond_0

    .line 1174
    move-object v2, v1

    goto :goto_0

    .line 1177
    .end local v1           #s:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :cond_1
    return-object v2
.end method

.method private fireSweepActionListener(III)V
    .locals 2
    .parameter "listenerAction"
    .parameter "iItemIndex"
    .parameter "direction"

    .prologue
    .line 1663
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionListener:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;

    if-eqz v1, :cond_0

    .line 1664
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionListener:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;

    .line 1665
    .local v0, l:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;
    if-nez p1, :cond_1

    .line 1666
    new-instance v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$2;

    invoke-direct {v1, p0, v0, p2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$2;-><init>(Lcom/nemustech/tiffany/widget/TFSweepActionListView;Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;I)V

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->post(Ljava/lang/Runnable;)Z

    .line 1685
    .end local v0           #l:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;
    :cond_0
    :goto_0
    return-void

    .line 1671
    .restart local v0       #l:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 1672
    new-instance v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$3;

    invoke-direct {v1, p0, v0, p2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$3;-><init>(Lcom/nemustech/tiffany/widget/TFSweepActionListView;Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;I)V

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1677
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1678
    new-instance v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$4;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$4;-><init>(Lcom/nemustech/tiffany/widget/TFSweepActionListView;Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;II)V

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private getCurrentListItemView(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)Landroid/view/View;
    .locals 4
    .parameter "savi"

    .prologue
    const/4 v3, 0x0

    .line 1555
    iget v1, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, v3

    .line 1565
    :goto_0
    return-object v1

    .line 1560
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1561
    .local v0, firstVisible:I
    iget v1, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    if-lt v1, v0, :cond_2

    iget v1, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1563
    iget v1, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v3

    .line 1565
    goto :goto_0
.end method

.method private getCurrentSweepActionView(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)Landroid/view/View;
    .locals 2
    .parameter "savi"

    .prologue
    .line 1546
    iget v0, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1548
    :cond_0
    const/4 v0, 0x0

    .line 1551
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    goto :goto_0
.end method

.method private hideContextMenuView(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;ZZ)V
    .locals 6
    .parameter "savi"
    .parameter "animate"
    .parameter "fasterAnimation"

    .prologue
    .line 1463
    if-nez p2, :cond_2

    .line 1465
    iget-object v3, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 1466
    iget-object v3, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1467
    iget-object v3, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->removeFloatingView(Landroid/view/View;)V

    .line 1469
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    .line 1471
    :cond_1
    const/4 v3, 0x0

    iput v3, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    .line 1473
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    iget-object v4, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mSweepActionItemAnimation:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->removeItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    .line 1475
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1505
    :goto_0
    return-void

    .line 1479
    :cond_2
    const/4 v0, 0x1

    .line 1481
    .local v0, checkStatus:Z
    iget v3, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 1482
    const/4 v0, 0x0

    .line 1485
    :cond_3
    const/4 v3, 0x5

    iput v3, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    .line 1487
    iget-object v3, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 1488
    iget-object v3, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1489
    iget-object v3, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->removeFloatingView(Landroid/view/View;)V

    .line 1493
    :cond_4
    invoke-static {p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$300(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)I

    move-result v1

    .line 1494
    .local v1, curProgress:I
    const/16 v2, 0x64

    .line 1496
    .local v2, destProgress:I
    iget-object v3, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mSweepActionItemAnimation:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;

    if-eqz p3, :cond_6

    const/16 v4, 0x1f4

    :goto_1
    invoke-virtual {v3, v1, v2, v4}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->start(III)V

    .line 1500
    if-eqz v0, :cond_5

    .line 1501
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    iget v4, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    iget-object v5, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mSweepActionItemAnimation:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;

    invoke-virtual {v3, v4, v5}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    .line 1503
    :cond_5
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->start()V

    goto :goto_0

    .line 1496
    :cond_6
    const/16 v4, 0x7d0

    goto :goto_1
.end method

.method private makeSaviOnTouchDown()V
    .locals 21

    .prologue
    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionBarCallback:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;

    move-object v6, v0

    if-nez v6, :cond_1

    .line 1311
    :cond_0
    :goto_0
    return-void

    .line 1231
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    move v7, v0

    .line 1233
    .local v7, position:I
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->findSweepActionViewInfo(I)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    move-result-object v5

    .line 1234
    .local v5, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    if-eqz v5, :cond_2

    .line 1238
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->hideContextMenuView(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;ZZ)V

    goto :goto_0

    .line 1242
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionBarCallback:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;

    move-object v6, v0

    if-eqz v6, :cond_0

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionBarCallback:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;

    move-object v6, v0

    invoke-interface {v6, v7}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;->onDefineSweepAction(I)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;

    move-result-object v18

    .line 1246
    .local v18, sabi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    move v6, v0

    if-nez v6, :cond_3

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    move v6, v0

    if-eqz v6, :cond_0

    .line 1251
    :cond_3
    new-instance v5, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .end local v5           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    move v11, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    move v12, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    move v13, v0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v13}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;-><init>(Lcom/nemustech/tiffany/widget/TFSweepActionListView;IILandroid/view/View;IZZI)V

    .line 1260
    .restart local v5       #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    new-instance v17, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v7

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;-><init>(Lcom/nemustech/tiffany/widget/TFSweepActionListView;Landroid/content/Context;ILcom/nemustech/tiffany/widget/TFSweepActionListView;)V

    .line 1261
    .local v17, rawSweepActionView:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;
    move-object v0, v5

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;->mSweepActionViewInfo:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .line 1263
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->makeSweepActionViewWrapper(Landroid/view/View;)Landroid/view/View;

    move-result-object v20

    .line 1265
    .local v20, wrappedActionBarView:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v7, v6

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1267
    .local v16, itemView:Landroid/view/View;
    if-eqz v16, :cond_0

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v7

    .end local v7           #position:I
    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 1276
    move-object/from16 v0, v18

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    move v6, v0

    if-eqz v6, :cond_4

    .line 1277
    move-object/from16 v0, v18

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    move v6, v0

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 1279
    .local v14, childForLocationHint:Landroid/view/View;
    if-eqz v14, :cond_4

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1288
    .end local v14           #childForLocationHint:Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v19

    .line 1289
    .local v19, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 1291
    .local v15, height:I
    const/high16 v6, 0x4000

    move/from16 v0, v19

    move v1, v6

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/high16 v7, 0x4000

    invoke-static {v15, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    move-object/from16 v0, v20

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v8, v0

    iget v8, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v9, v0

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v20

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1301
    move-object/from16 v0, v20

    move-object v1, v5

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1304
    const/16 v6, 0x64

    invoke-static {v5, v6}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$302(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;I)I

    goto/16 :goto_0
.end method

.method private makeSweepActionViewWrapper(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "rawContextMenuView"

    .prologue
    const/4 v3, -0x1

    .line 1159
    new-instance v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$ContextMenuViewWrapper;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$ContextMenuViewWrapper;-><init>(Lcom/nemustech/tiffany/widget/TFSweepActionListView;Landroid/content/Context;)V

    .line 1161
    .local v1, wrapper:Lcom/nemustech/tiffany/widget/TFSweepActionListView$ContextMenuViewWrapper;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1165
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, p1, v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$ContextMenuViewWrapper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1167
    return-object v1
.end method

.method private onHorizontalFlickDetected(F)V
    .locals 11
    .parameter "velocityX"

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x64

    const/4 v8, 0x0

    .line 1392
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMinimumFlingVelocity:I

    mul-int/lit8 v7, v7, 0x4

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 1393
    cmpg-float v6, p1, v8

    if-gez v6, :cond_2

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMinimumFlingVelocity:I

    mul-int/lit8 v6, v6, 0x4

    mul-int/lit8 v6, v6, -0x1

    int-to-float p1, v6

    .line 1399
    :cond_0
    :goto_0
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    .line 1400
    .local v3, position:I
    invoke-direct {p0, v3}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->findSweepActionViewInfo(I)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    move-result-object v4

    .line 1401
    .local v4, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    if-nez v4, :cond_3

    .line 1441
    :cond_1
    :goto_1
    return-void

    .line 1394
    .end local v3           #position:I
    .end local v4           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :cond_2
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMinimumFlingVelocity:I

    mul-int/lit8 v6, v6, 0x4

    int-to-float p1, v6

    goto :goto_0

    .line 1405
    .restart local v3       #position:I
    .restart local v4       #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :cond_3
    invoke-virtual {v4}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->dump()V

    .line 1407
    iget v6, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 1411
    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$300(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)I

    move-result v0

    .line 1413
    .local v0, curProgress:I
    cmpl-float v6, p1, v8

    if-lez v6, :cond_5

    .line 1414
    iget-boolean v6, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAllowLeftToRightSweep:Z

    if-eqz v6, :cond_4

    move v5, v10

    .line 1420
    .local v5, targetProgress:I
    :goto_2
    if-ne v0, v5, :cond_7

    .line 1422
    invoke-direct {p0, v4}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->onScrollFlingBumpedToLimit(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)V

    goto :goto_1

    .end local v5           #targetProgress:I
    :cond_4
    move v5, v9

    .line 1414
    goto :goto_2

    .line 1416
    :cond_5
    iget-boolean v6, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAllowRightToLeftSweep:Z

    if-eqz v6, :cond_6

    const/16 v6, 0xc8

    move v5, v6

    .restart local v5       #targetProgress:I
    :goto_3
    goto :goto_2

    .end local v5           #targetProgress:I
    :cond_6
    move v5, v9

    goto :goto_3

    .line 1427
    .restart local v5       #targetProgress:I
    :cond_7
    const/4 v6, 0x3

    iput v6, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    .line 1428
    if-ne v5, v9, :cond_8

    .line 1429
    const/4 v6, 0x5

    iput v6, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    .line 1432
    :cond_8
    cmpl-float v6, p1, v8

    if-lez v6, :cond_9

    move v6, v10

    :goto_4
    iput v6, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mEmergingDirection:I

    .line 1433
    sub-int v6, v0, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getWidth()I

    move-result v7

    mul-int/2addr v6, v7

    div-int/lit8 v1, v6, 0x64

    .line 1434
    .local v1, distance:I
    mul-int/lit16 v6, v1, 0x3e8

    int-to-float v6, v6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float/2addr v6, v7

    float-to-int v2, v6

    .line 1438
    .local v2, duration:I
    iget-object v6, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mSweepActionItemAnimation:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;

    invoke-virtual {v6, v0, v5, v2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->start(III)V

    .line 1440
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v6}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->run()V

    goto :goto_1

    .line 1432
    .end local v1           #distance:I
    .end local v2           #duration:I
    :cond_9
    const/4 v6, 0x1

    goto :goto_4
.end method

.method private onHorizontalScroll(F)V
    .locals 7
    .parameter "distanceX"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1316
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    .line 1317
    .local v0, position:I
    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->findSweepActionViewInfo(I)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    move-result-object v1

    .line 1318
    .local v1, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    if-nez v1, :cond_1

    .line 1350
    :cond_0
    :goto_0
    return-void

    .line 1323
    :cond_1
    iget v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    if-eq v2, v5, :cond_0

    .line 1328
    iget-boolean v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAllowLeftToRightSweep:Z

    if-nez v2, :cond_2

    .line 1329
    cmpl-float v2, p1, v4

    if-lez v2, :cond_2

    .line 1330
    const/4 p1, 0x0

    .line 1333
    :cond_2
    iget-boolean v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAllowRightToLeftSweep:Z

    if-nez v2, :cond_3

    .line 1334
    cmpg-float v2, p1, v4

    if-gez v2, :cond_3

    .line 1335
    const/4 p1, 0x0

    .line 1339
    :cond_3
    const/4 v2, 0x2

    iput v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    .line 1340
    cmpl-float v2, p1, v4

    if-lez v2, :cond_4

    move v2, v6

    :goto_1
    iput v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mEmergingDirection:I

    .line 1341
    neg-float v2, p1

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x64

    invoke-static {v1, v2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$302(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;I)I

    .line 1343
    cmpl-float v2, p1, v4

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionStartReported:Z

    if-nez v2, :cond_0

    .line 1344
    iput-boolean v5, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionStartReported:Z

    .line 1345
    iget v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    const v3, 0x7fffffff

    invoke-direct {p0, v6, v2, v3}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->fireSweepActionListener(III)V

    goto :goto_0

    :cond_4
    move v2, v5

    .line 1340
    goto :goto_1
.end method

.method private onHorizontalScrollTouchUp()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/16 v8, 0x64

    .line 1355
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    .line 1356
    .local v3, position:I
    invoke-direct {p0, v3}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->findSweepActionViewInfo(I)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    move-result-object v4

    .line 1357
    .local v4, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    if-nez v4, :cond_0

    .line 1387
    :goto_0
    return-void

    .line 1360
    :cond_0
    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    if-nez v6, :cond_1

    .line 1362
    invoke-direct {p0, v4, v7, v7}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->hideContextMenuView(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;ZZ)V

    goto :goto_0

    .line 1366
    :cond_1
    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$300(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)I

    move-result v0

    .line 1367
    .local v0, curProgress:I
    sub-int v6, v0, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float v2, v6, v7

    .line 1371
    .local v2, normalizedProgress:F
    const/high16 v6, 0x3f00

    cmpg-float v6, v2, v6

    if-gez v6, :cond_2

    .line 1373
    const/16 v5, 0x64

    .line 1374
    .local v5, targetProgress:I
    const/4 v6, 0x5

    iput v6, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    .line 1375
    sub-int v6, v8, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/lit16 v6, v6, 0x7d0

    div-int/lit8 v1, v6, 0x64

    .line 1386
    .local v1, duration:I
    :goto_1
    iget-object v6, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mSweepActionItemAnimation:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;

    invoke-virtual {v6, v0, v5, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->start(III)V

    goto :goto_0

    .line 1378
    .end local v1           #duration:I
    .end local v5           #targetProgress:I
    :cond_2
    if-le v0, v8, :cond_3

    .line 1379
    const/16 v5, 0xc8

    .line 1383
    .restart local v5       #targetProgress:I
    :goto_2
    const/4 v6, 0x3

    iput v6, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    .line 1384
    sub-int v6, v8, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/lit16 v6, v6, 0x7d0

    div-int/lit8 v1, v6, 0x64

    .restart local v1       #duration:I
    goto :goto_1

    .line 1381
    .end local v1           #duration:I
    .end local v5           #targetProgress:I
    :cond_3
    const/4 v5, 0x0

    .restart local v5       #targetProgress:I
    goto :goto_2
.end method

.method private onScrollFlingBumpedToLimit(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)V
    .locals 3
    .parameter "savi"

    .prologue
    const/16 v2, 0xc8

    .line 1447
    sget-boolean v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$300(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$300(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$300(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)I

    move-result v0

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1451
    :cond_0
    invoke-static {p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$300(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$300(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1452
    :cond_1
    const/4 v0, 0x3

    iput v0, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    .line 1457
    :goto_0
    invoke-static {p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$400(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)V

    .line 1459
    return-void

    .line 1454
    :cond_2
    const/4 v0, 0x5

    iput v0, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    goto :goto_0
.end method

.method private showActionBarView(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)V
    .locals 4
    .parameter "savi"

    .prologue
    .line 1510
    iget v0, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->findSweepActionViewInfo(I)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1511
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1516
    :cond_0
    const/4 v0, 0x3

    iput v0, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    .line 1518
    const/16 v0, 0x64

    invoke-static {p1, v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$302(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;I)I

    .line 1521
    iget-object v0, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$1500(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;II)V

    .line 1525
    iget-object v0, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mSweepActionItemAnimation:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;

    invoke-static {p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$300(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)I

    move-result v1

    iget v2, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mEmergingDirection:I

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->start(III)V

    .line 1530
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    iget v1, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    iget-object v2, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mSweepActionItemAnimation:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    .line 1531
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->start()V

    .line 1532
    return-void

    .line 1525
    :cond_1
    const/16 v2, 0xc8

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 1542
    const/4 v0, 0x1

    return v0
.end method

.method public closeAllActionBar(Z)Z
    .locals 8
    .parameter "animated"

    .prologue
    const/4 v7, 0x1

    .line 787
    const/4 v3, 0x0

    .line 788
    .local v3, retVal:Z
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .local v0, arr$:[Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 790
    .local v4, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    iget v5, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    iget v5, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    iget v5, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    iget v5, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    if-ne v5, v7, :cond_1

    .line 792
    :cond_0
    invoke-direct {p0, v4, p1, v7}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->hideContextMenuView(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;ZZ)V

    .line 793
    or-int/lit8 v3, v3, 0x1

    .line 788
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 796
    .end local v4           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :cond_2
    if-nez p1, :cond_3

    if-eqz v3, :cond_3

    .line 797
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->invalidate()V

    .line 799
    :cond_3
    return v3
.end method

.method protected computeVerticalScrollExtent()I
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1615
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildCount()I

    move-result v1

    .line 1617
    .local v1, count:I
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .line 1618
    .local v7, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    iget-object v10, v7, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    if-eqz v10, :cond_0

    iget-object v10, v7, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-ne v10, p0, :cond_0

    .line 1619
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1623
    .end local v7           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :cond_1
    if-lez v1, :cond_7

    .line 1624
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->isSmoothScrollbarEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1625
    mul-int/lit8 v2, v1, 0x64

    .line 1627
    .local v2, extent:I
    invoke-virtual {p0, v11}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1628
    .local v9, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1629
    .local v8, top:I
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1630
    .local v3, height:I
    if-lez v3, :cond_2

    .line 1631
    mul-int/lit8 v10, v8, 0x64

    div-int/2addr v10, v3

    add-int/2addr v2, v10

    .line 1634
    :cond_2
    sub-int v10, v1, v12

    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1635
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1636
    .local v0, bottom:I
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1637
    if-lez v3, :cond_3

    .line 1638
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getHeight()I

    move-result v10

    sub-int v10, v0, v10

    mul-int/lit8 v10, v10, 0x64

    div-int/2addr v10, v3

    sub-int/2addr v2, v10

    .line 1641
    :cond_3
    move v6, v2

    .line 1644
    .local v6, retVal:I
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mExcessScroll:I

    if-eqz v10, :cond_5

    .line 1646
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getHeight()I

    move-result v10

    iget v11, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mExcessScroll:I

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v5, v10, v11

    .line 1647
    .local v5, ratio:F
    const v10, 0x3d4ccccd

    cmpg-float v10, v5, v10

    if-gez v10, :cond_4

    .line 1648
    const v5, 0x3d4ccccd

    .line 1651
    :cond_4
    int-to-float v10, v6

    mul-float/2addr v10, v5

    float-to-int v6, v10

    .end local v5           #ratio:F
    :cond_5
    move v10, v6

    .line 1659
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v6           #retVal:I
    .end local v8           #top:I
    .end local v9           #view:Landroid/view/View;
    :goto_1
    return v10

    :cond_6
    move v10, v12

    .line 1656
    goto :goto_1

    :cond_7
    move v10, v11

    .line 1659
    goto :goto_1
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 1689
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    if-eqz v0, :cond_0

    .line 1701
    :goto_0
    return-void

    .line 1696
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->closeAllActionBar(Z)Z

    .line 1699
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->createContextMenu(Landroid/view/ContextMenu;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 841
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 843
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 844
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->isActionBarOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 870
    :goto_0
    return v0

    .line 850
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 852
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->closeAllActionBar(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 853
    goto :goto_0

    .line 859
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_4

    .line 865
    :cond_3
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->closeAllActionBar(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 866
    goto :goto_0

    .line 870
    :cond_4
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dump()V
    .locals 5

    .prologue
    const-string v4, "TFSweepActionListView"

    .line 1704
    const-string v2, "TFSweepActionListView"

    const-string v2, "==== dump begin ===="

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    const-string v2, "TFSweepActionListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adapter getCount() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    const-string v2, "TFSweepActionListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChildCount() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    const-string v2, "TFSweepActionListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFloatingViewCount() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getFloatingViewCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    const-string v2, "TFSweepActionListView"

    const-string v2, "mItemAnimator : "

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->dump(Ljava/lang/String;)V

    .line 1710
    const-string v2, "TFSweepActionListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SAVI :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .line 1712
    .local v1, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->dump()V

    goto :goto_0

    .line 1714
    .end local v1           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :cond_0
    const-string v2, "TFSweepActionListView"

    const-string v2, "==== dump end ===="

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    return-void
.end method

.method public getSweepActionBarCallback()Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionBarCallback:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;

    return-object v0
.end method

.method public getSweepActionListener()Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionListener:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;

    return-object v0
.end method

.method protected handleDataChanged()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 1785
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->isActionBarOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1786
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->closeAllActionBar(Z)Z

    .line 1789
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1790
    .local v8, e:Landroid/view/MotionEvent;
    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1792
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionListener:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;

    if-eqz v0, :cond_0

    .line 1795
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionListener:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;->onSweepActionCanceled(I)V

    .line 1798
    .end local v8           #e:Landroid/view/MotionEvent;
    :cond_0
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->handleDataChanged()V

    .line 1799
    return-void
.end method

.method invalidateCurrentItemRect()V
    .locals 0

    .prologue
    .line 1535
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->invalidate()V

    .line 1536
    return-void
.end method

.method public isActionBarClosing()Z
    .locals 4

    .prologue
    .line 829
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .line 830
    .local v1, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    iget v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 831
    const/4 v2, 0x1

    .line 834
    .end local v1           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isActionBarOpen()Z
    .locals 4

    .prologue
    .line 811
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .line 812
    .local v1, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    iget v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    iget v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 814
    :cond_1
    const/4 v2, 0x1

    .line 817
    .end local v1           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 876
    const/4 v5, 0x0

    .line 878
    .local v5, retVal:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 880
    .local v0, action:I
    if-nez v0, :cond_0

    .line 882
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mActionDownOnClickableDescendant:Z

    .line 885
    :cond_0
    if-nez v0, :cond_3

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTouchMode:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_3

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTouchMode:I

    const/4 v11, 0x5

    if-eq v10, v11, :cond_3

    .line 887
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlick:Z

    .line 888
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    .line 889
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    iput v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownY:I

    .line 890
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    iput v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownX:I

    .line 891
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownY:I

    invoke-direct {p0, v10}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->findExactMotionRow(I)I

    move-result v10

    iput v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    .line 893
    const/4 v8, 0x0

    .line 894
    .local v8, touchDownOnContextMenu:Z
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 895
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .line 896
    .local v2, cmi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    iget v10, v2, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    iget v11, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    if-ne v10, v11, :cond_1

    .line 897
    const/4 v8, 0x1

    goto :goto_0

    .line 902
    .end local v2           #cmi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_2
    if-nez v8, :cond_a

    .line 903
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->closeAllActionBar(Z)Z

    .line 912
    :goto_1
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    .line 913
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->makeSaviOnTouchDown()V

    .line 917
    .end local v8           #touchDownOnContextMenu:Z
    :cond_3
    iget-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    if-nez v10, :cond_4

    iget-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlick:Z

    if-eqz v10, :cond_5

    .line 918
    :cond_4
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mGDetector:Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;

    invoke-virtual {v10, p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 921
    :cond_5
    const/4 v10, 0x1

    if-eq v0, v10, :cond_6

    const/4 v10, 0x3

    if-ne v0, v10, :cond_8

    .line 922
    :cond_6
    iget-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlick:Z

    if-eqz v10, :cond_7

    iget-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    if-nez v10, :cond_7

    const/4 v10, 0x1

    if-ne v0, v10, :cond_7

    .line 924
    const/4 v5, 0x0

    .line 927
    :cond_7
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    .line 928
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlick:Z

    .line 930
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_8

    iget-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlick:Z

    if-eqz v10, :cond_8

    iget-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    if-nez v10, :cond_8

    .line 932
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    invoke-direct {p0, v10}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->findSweepActionViewInfo(I)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    move-result-object v6

    .line 933
    .local v6, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    if-eqz v6, :cond_8

    .line 934
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, v6, v10, v11}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->hideContextMenuView(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;ZZ)V

    .line 939
    .end local v6           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :cond_8
    const/4 v10, 0x2

    if-ne v0, v10, :cond_9

    .line 940
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget v11, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownX:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 941
    .local v3, horizontalDistanceFromMotionDownX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iget v11, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownY:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v9, v10

    .line 944
    .local v9, verticalDistanceFromMotionDownY:I
    iget-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    if-nez v10, :cond_9

    .line 945
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTouchSlop:I

    if-le v9, v10, :cond_b

    .line 946
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlick:Z

    .line 948
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->closeAllActionBar(Z)Z

    .line 988
    .end local v3           #horizontalDistanceFromMotionDownX:I
    .end local v9           #verticalDistanceFromMotionDownY:I
    :cond_9
    :goto_2
    iget-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    if-eqz v10, :cond_e

    .line 989
    const/4 v10, 0x1

    .line 997
    :goto_3
    return v10

    .line 909
    .restart local v8       #touchDownOnContextMenu:Z
    :cond_a
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 950
    .end local v8           #touchDownOnContextMenu:Z
    .restart local v3       #horizontalDistanceFromMotionDownX:I
    .restart local v9       #verticalDistanceFromMotionDownY:I
    :cond_b
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTouchSlop:I

    if-le v3, v10, :cond_9

    .line 951
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    .line 954
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_9

    .line 955
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 956
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_9

    .line 958
    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 959
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/view/View;->setPressed(Z)V

    .line 962
    :cond_c
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTouchMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_d

    .line 963
    const-string v10, "TFSweepActionListView"

    const-string v11, "onTouchEvent.ACTION_MOVE. mTouchMode = TOUCH_MODE_SCROLL"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v10, 0x3

    iput v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTouchMode:I

    .line 967
    :cond_d
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionPosition:I

    invoke-direct {p0, v10}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->findSweepActionViewInfo(I)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    move-result-object v6

    .line 968
    .restart local v6       #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    if-eqz v6, :cond_9

    iget v10, v6, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 969
    const/4 v10, 0x2

    iput v10, v6, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    .line 971
    const/16 v10, 0x64

    invoke-static {v6, v10}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$302(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;I)I

    .line 974
    iget-object v10, v6, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    iget-object v11, v6, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-static {v6, v10, v11}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$1500(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;II)V

    .line 978
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    iget v11, v6, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    iget-object v12, v6, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mSweepActionItemAnimation:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;

    invoke-virtual {v10, v11, v12}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    .line 979
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v10}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->start()V

    goto :goto_2

    .line 992
    .end local v1           #child:Landroid/view/View;
    .end local v3           #horizontalDistanceFromMotionDownX:I
    .end local v6           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    .end local v9           #verticalDistanceFromMotionDownY:I
    :cond_e
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 994
    .local v7, superRetVal:Z
    if-nez v5, :cond_f

    move v10, v7

    .line 995
    goto :goto_3

    .line 997
    :cond_f
    const/4 v10, 0x1

    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1005
    const/4 v3, 0x0

    .line 1007
    .local v3, retVal:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1009
    .local v0, action:I
    if-nez v0, :cond_0

    .line 1010
    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mActionDownOnClickableDescendant:Z

    .line 1013
    :cond_0
    if-nez v0, :cond_1

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTouchMode:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTouchMode:I

    const/4 v8, 0x5

    if-eq v7, v8, :cond_1

    .line 1015
    iput-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlick:Z

    .line 1016
    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    .line 1017
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownY:I

    .line 1018
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownX:I

    .line 1019
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownY:I

    invoke-direct {p0, v7}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->findExactMotionRow(I)I

    move-result v7

    iput v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    .line 1022
    :cond_1
    iget-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlick:Z

    if-eqz v7, :cond_4

    .line 1023
    :cond_2
    if-ne v0, v10, :cond_3

    .line 1026
    :cond_3
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mGDetector:Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;

    invoke-virtual {v7, p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1029
    :cond_4
    if-eq v0, v10, :cond_5

    if-ne v0, v12, :cond_6

    .line 1031
    :cond_5
    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlick:Z

    .line 1032
    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    .line 1035
    :cond_6
    if-ne v0, v11, :cond_7

    iget-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlick:Z

    if-eqz v7, :cond_7

    .line 1036
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownX:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v2, v7

    .line 1037
    .local v2, horizontalDistanceFromMotionDownX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownY:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v6, v7

    .line 1040
    .local v6, verticalDistanceFromMotionDownY:I
    iget-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    if-nez v7, :cond_7

    .line 1041
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionPosition:I

    invoke-direct {p0, v7}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->findSweepActionViewInfo(I)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    move-result-object v4

    .line 1043
    .local v4, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTouchSlop:I

    if-le v6, v7, :cond_8

    .line 1044
    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlick:Z

    .line 1046
    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->closeAllActionBar(Z)Z

    .line 1094
    .end local v2           #horizontalDistanceFromMotionDownX:I
    .end local v4           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    .end local v6           #verticalDistanceFromMotionDownY:I
    :cond_7
    :goto_0
    iget-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    if-eqz v7, :cond_b

    move v7, v10

    .line 1103
    :goto_1
    return v7

    .line 1047
    .restart local v2       #horizontalDistanceFromMotionDownX:I
    .restart local v4       #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    .restart local v6       #verticalDistanceFromMotionDownY:I
    :cond_8
    if-eqz v4, :cond_7

    .line 1048
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTouchSlop:I

    if-le v2, v7, :cond_7

    .line 1049
    iput-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    .line 1052
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_7

    .line 1053
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1057
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_7

    if-eqz v4, :cond_7

    .line 1058
    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1059
    invoke-virtual {v1, v9}, Landroid/view/View;->setPressed(Z)V

    .line 1061
    :cond_9
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTouchMode:I

    if-ne v7, v10, :cond_a

    .line 1062
    const-string v7, "TFSweepActionListView"

    const-string v8, "onTouchEvent.ACTION_MOVE. mTouchMode = TOUCH_MODE_SCROLL"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    iput v12, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTouchMode:I

    .line 1072
    :cond_a
    if-eqz v4, :cond_7

    iget v7, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    if-ne v7, v10, :cond_7

    .line 1075
    iput v11, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    .line 1077
    const/16 v7, 0x64

    invoke-static {v4, v7}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$302(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;I)I

    .line 1080
    iget-object v7, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iget-object v8, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-static {v4, v7, v8}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$1500(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;II)V

    .line 1084
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    iget v8, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    iget-object v9, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mSweepActionItemAnimation:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;

    invoke-virtual {v7, v8, v9}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    .line 1085
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v7}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->start()V

    goto :goto_0

    .line 1098
    .end local v1           #child:Landroid/view/View;
    .end local v2           #horizontalDistanceFromMotionDownX:I
    .end local v4           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    .end local v6           #verticalDistanceFromMotionDownY:I
    :cond_b
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 1100
    .local v5, superRetVal:Z
    if-nez v3, :cond_c

    move v7, v5

    .line 1101
    goto :goto_1

    :cond_c
    move v7, v10

    .line 1103
    goto :goto_1
.end method

.method public openActionBar(II)Z
    .locals 25
    .parameter "position"
    .parameter "flickDirection"

    .prologue
    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getWidth()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getHeight()I

    move-result v6

    if-nez v6, :cond_1

    .line 646
    :cond_0
    const/4 v6, 0x0

    .line 775
    :goto_0
    return v6

    .line 649
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getFirstVisiblePosition()I

    move-result v18

    .line 650
    .local v18, posVisible:I
    move/from16 v0, p1

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 654
    const/4 v6, 0x0

    goto :goto_0

    .line 657
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildCount()I

    move-result v22

    .line 659
    .local v22, visibleListItemCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .line 660
    .local v5, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    iget v6, v5, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 661
    add-int/lit8 v22, v22, -0x1

    goto :goto_1

    .line 665
    .end local v5           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :cond_4
    sub-int v6, p1, v18

    move v0, v6

    move/from16 v1, v22

    if-lt v0, v1, :cond_5

    .line 669
    const/4 v6, 0x0

    goto :goto_0

    .line 672
    :cond_5
    const/4 v5, 0x0

    .line 673
    .restart local v5       #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_6
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .line 674
    .local v20, s:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    move v6, v0

    move v0, v6

    move/from16 v1, p1

    if-ne v0, v1, :cond_6

    .line 675
    move-object/from16 v5, v20

    goto :goto_2

    .line 679
    .end local v20           #s:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :cond_7
    if-eqz v5, :cond_9

    .line 681
    iget v6, v5, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_8

    iget v6, v5, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_8

    iget v6, v5, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_9

    .line 684
    :cond_8
    const/4 v6, 0x0

    goto :goto_0

    .line 690
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionBarCallback:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;

    move-object v6, v0

    if-nez v6, :cond_a

    .line 692
    const/4 v6, 0x0

    goto :goto_0

    .line 694
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionBarCallback:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;->onDefineSweepAction(I)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;

    move-result-object v21

    .line 695
    .local v21, sabi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;
    if-nez v21, :cond_b

    .line 697
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 699
    :cond_b
    if-nez p2, :cond_c

    .line 700
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    move v6, v0

    if-nez v6, :cond_d

    .line 702
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 705
    :cond_c
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    move v6, v0

    if-nez v6, :cond_d

    .line 707
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 711
    :cond_d
    if-nez v5, :cond_e

    .line 712
    new-instance v5, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .end local v5           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    move v11, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    move v12, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    move v13, v0

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v10, p2

    invoke-direct/range {v5 .. v13}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;-><init>(Lcom/nemustech/tiffany/widget/TFSweepActionListView;IILandroid/view/View;IZZI)V

    .line 730
    .restart local v5       #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :goto_3
    new-instance v19, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v6

    move/from16 v3, p1

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;-><init>(Lcom/nemustech/tiffany/widget/TFSweepActionListView;Landroid/content/Context;ILcom/nemustech/tiffany/widget/TFSweepActionListView;)V

    .line 731
    .local v19, rawSweepActionView:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;
    move-object v0, v5

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;->mSweepActionViewInfo:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .line 733
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->makeSweepActionViewWrapper(Landroid/view/View;)Landroid/view/View;

    move-result-object v24

    .line 735
    .local v24, wrappedActionBarView:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, p1, v6

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 737
    .local v17, itemView:Landroid/view/View;
    if-nez v17, :cond_f

    .line 738
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 721
    .end local v17           #itemView:Landroid/view/View;
    .end local v19           #rawSweepActionView:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;
    .end local v24           #wrappedActionBarView:Landroid/view/View;
    :cond_e
    move/from16 v0, p1

    move-object v1, v5

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    .line 722
    const/4 v6, 0x0

    iput v6, v5, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    .line 723
    const/4 v6, 0x0

    iput-object v6, v5, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    .line 724
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    move v6, v0

    iput-boolean v6, v5, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAllowLeftToRightSweep:Z

    .line 725
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    move v6, v0

    iput-boolean v6, v5, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAllowRightToLeftSweep:Z

    .line 726
    move-object/from16 v0, v21

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    move v6, v0

    iput v6, v5, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mChildIdForLocationHint:I

    goto :goto_3

    .line 741
    .restart local v17       #itemView:Landroid/view/View;
    .restart local v19       #rawSweepActionView:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;
    .restart local v24       #wrappedActionBarView:Landroid/view/View;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 746
    move-object/from16 v0, v21

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    move v6, v0

    if-eqz v6, :cond_10

    .line 747
    move-object/from16 v0, v21

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    move v6, v0

    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 749
    .local v14, childForLocationHint:Landroid/view/View;
    if-eqz v14, :cond_10

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 758
    .end local v14           #childForLocationHint:Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v23

    .line 759
    .local v23, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 761
    .local v15, height:I
    const/high16 v6, 0x4000

    move/from16 v0, v23

    move v1, v6

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/high16 v7, 0x4000

    invoke-static {v15, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    move-object/from16 v0, v24

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v8, v0

    iget v8, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v9, v0

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v24

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 771
    move-object/from16 v0, v24

    move-object v1, v5

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    .line 773
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->showActionBarView(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)V

    .line 775
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 5
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 1572
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->isActionBarOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    .line 1594
    :goto_0
    return v2

    .line 1578
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->isActionBarClosing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1579
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .line 1580
    .local v1, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    iget v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 1581
    iget v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    if-ne v2, p2, :cond_1

    iget-boolean v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAllowLeftToRightSweep:Z

    if-nez v2, :cond_2

    iget-boolean v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAllowLeftToRightSweep:Z

    if-eqz v2, :cond_1

    :cond_2
    move v2, v4

    .line 1582
    goto :goto_0

    .line 1590
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :cond_3
    iget-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mActionDownOnClickableDescendant:Z

    if-eqz v2, :cond_4

    move v2, v4

    .line 1591
    goto :goto_0

    .line 1594
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v2

    goto :goto_0
.end method

.method protected performLongPress(Landroid/view/View;IJ)Z
    .locals 3
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    const/4 v2, 0x0

    .line 1601
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v1

    .line 1602
    .local v1, superRet:Z
    if-eqz v1, :cond_0

    .line 1603
    invoke-direct {p0, p2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->findSweepActionViewInfo(I)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    move-result-object v0

    .line 1604
    .local v0, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    if-eqz v0, :cond_0

    .line 1605
    invoke-direct {p0, v0, v2, v2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->hideContextMenuView(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;ZZ)V

    .line 1609
    .end local v0           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :cond_0
    return v1
.end method

.method public setSweepActionBarCallback(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 563
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionBarCallback:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;

    .line 564
    return-void
.end method

.method public setSweepActionListener(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 581
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionListener:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;

    .line 582
    return-void
.end method

.method shouldShowSelector()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1182
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionBarCallback:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;

    if-nez v6, :cond_0

    .line 1183
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->shouldShowSelector()Z

    move-result v6

    .line 1220
    :goto_0
    return v6

    .line 1186
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->isInTouchMode()Z

    move-result v6

    if-nez v6, :cond_1

    move v6, v9

    goto :goto_0

    .line 1188
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->touchModeDrawsInPressedState()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1189
    const/4 v1, 0x0

    .line 1190
    .local v1, childAtMotionPositionIsPressed:Z
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionPosition:I

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mFirstPosition:I

    sub-int v0, v6, v7

    .line 1191
    .local v0, childAtMotionPositionIndex:I
    if-ltz v0, :cond_5

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildCount()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 1192
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_2

    move v6, v8

    goto :goto_0

    .line 1193
    :cond_2
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->isPressed()Z

    move-result v1

    .line 1199
    move v2, v1

    .line 1202
    .local v2, drawSelector:Z
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionPosition:I

    invoke-direct {p0, v6}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->findSweepActionViewInfo(I)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    move-result-object v4

    .line 1203
    .local v4, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    if-eqz v4, :cond_4

    iget v6, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    if-eq v6, v9, :cond_4

    .line 1204
    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$300(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)I

    move-result v6

    const/16 v7, 0x64

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float v3, v6, v7

    .line 1205
    .local v3, progress:F
    const/4 v5, 0x2

    .line 1206
    .local v5, sweepState:I
    iget v6, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 1207
    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    if-eqz v6, :cond_6

    .line 1208
    const/4 v5, 0x1

    .line 1213
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionBarCallback:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionPosition:I

    invoke-interface {v6, v7, v3, v5}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;->onListShouldDrawSelector(IFI)Z

    move-result v2

    .end local v3           #progress:F
    .end local v5           #sweepState:I
    :cond_4
    move v6, v2

    .line 1217
    goto :goto_0

    .end local v2           #drawSelector:Z
    .end local v4           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :cond_5
    move v6, v8

    .line 1195
    goto :goto_0

    .line 1210
    .restart local v2       #drawSelector:Z
    .restart local v3       #progress:F
    .restart local v4       #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    .restart local v5       #sweepState:I
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .end local v0           #childAtMotionPositionIndex:I
    .end local v1           #childAtMotionPositionIsPressed:Z
    .end local v2           #drawSelector:Z
    .end local v3           #progress:F
    .end local v4           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    .end local v5           #sweepState:I
    :cond_7
    move v6, v8

    .line 1220
    goto :goto_0
.end method
