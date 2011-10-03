.class public Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;
.super Lcom/nemustech/tiffany/widget/TFScrollView;
.source "TFDndLinearScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;,
        Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;,
        Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFDndListener;
    }
.end annotation


# static fields
.field private static final DND_EDGE_AUTO_DRAG_AREA_MAX_HEIGHT:I = 0x32

.field private static final DND_EDGE_AUTO_DRAG_DELAY_CONTINUOUS:I = 0x32

.field private static final DND_EDGE_AUTO_DRAG_DELAY_INITIAL:I = 0x190

.field private static final DND_EDGE_AUTO_DRAG_SCROLL_DELTA:I = 0xa

.field private static final DND_EDGE_HITTEST_BOTTOM:I = 0x2

.field private static final DND_EDGE_HITTEST_NONE:I = 0x0

.field private static final DND_EDGE_HITTEST_TOP:I = 0x1

.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "TFDndLinearScrollView"


# instance fields
.field private mAddAnimation:Landroid/view/animation/Animation;

.field private mDensityScale:F

.field private mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

.field private mDragItem:Landroid/view/View;

.field private mDragItemCache:Landroid/graphics/Bitmap;

.field private mDragItemDestinationPosition:I

.field private mDragItemOriginalPosition:I

.field private mDragItemTouchX:I

.field private mDragItemTouchY:I

.field private mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;

.field private mPaintItemCache:Landroid/graphics/Paint;

.field private mRemoveAniRunnable:Ljava/lang/Runnable;

.field private mRemoveAnimation:Landroid/view/animation/Animation;

.field private mRemoveViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTFDndListener:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFDndListener;

.field private mTempRect:Landroid/graphics/Rect;

.field private mUserDragItem:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFScrollView;-><init>(Landroid/content/Context;)V

    .line 61
    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mIsDragging:Z

    .line 63
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mLastMotionX:F

    .line 64
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mLastMotionY:F

    .line 66
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemOriginalPosition:I

    .line 67
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemDestinationPosition:I

    .line 68
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemTouchX:I

    .line 69
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemTouchY:I

    .line 72
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemCache:Landroid/graphics/Bitmap;

    .line 73
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mUserDragItem:Landroid/graphics/Bitmap;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;

    invoke-direct {v0, p0, v1}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$1;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mPaintItemCache:Landroid/graphics/Paint;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mRemoveViews:Ljava/util/ArrayList;

    .line 628
    new-instance v0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$1;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$1;-><init>(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mRemoveAniRunnable:Ljava/lang/Runnable;

    .line 128
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->init()V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mIsDragging:Z

    .line 63
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mLastMotionX:F

    .line 64
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mLastMotionY:F

    .line 66
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemOriginalPosition:I

    .line 67
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemDestinationPosition:I

    .line 68
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemTouchX:I

    .line 69
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemTouchY:I

    .line 72
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemCache:Landroid/graphics/Bitmap;

    .line 73
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mUserDragItem:Landroid/graphics/Bitmap;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;

    invoke-direct {v0, p0, v1}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$1;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mPaintItemCache:Landroid/graphics/Paint;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mRemoveViews:Ljava/util/ArrayList;

    .line 628
    new-instance v0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$1;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$1;-><init>(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mRemoveAniRunnable:Ljava/lang/Runnable;

    .line 133
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->init()V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mIsDragging:Z

    .line 63
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mLastMotionX:F

    .line 64
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mLastMotionY:F

    .line 66
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemOriginalPosition:I

    .line 67
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemDestinationPosition:I

    .line 68
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemTouchX:I

    .line 69
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemTouchY:I

    .line 72
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemCache:Landroid/graphics/Bitmap;

    .line 73
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mUserDragItem:Landroid/graphics/Bitmap;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;

    invoke-direct {v0, p0, v1}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$1;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mPaintItemCache:Landroid/graphics/Paint;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mRemoveViews:Ljava/util/ArrayList;

    .line 628
    new-instance v0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$1;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$1;-><init>(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mRemoveAniRunnable:Ljava/lang/Runnable;

    .line 139
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->init()V

    .line 140
    return-void
.end method

.method static synthetic access$100(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;)Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mRemoveViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mIsDragging:Z

    return v0
.end method

.method static synthetic access$400(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDensityScale:F

    return v0
.end method

.method static synthetic access$500(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    return v0
.end method

.method static synthetic access$600(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mLastMotionX:F

    return v0
.end method

.method static synthetic access$700(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->doDrag(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    return v0
.end method

.method static synthetic access$900(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mLastMotionY:F

    return v0
.end method

.method private doDrag(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 412
    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mIsDragging:Z

    if-nez v3, :cond_0

    .line 413
    const-string v3, "TFDndLinearScrollView"

    const-string v4, "doDrag(int) - no dragging item"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :goto_0
    return-void

    .line 417
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->findDropDestinationPosition(II)I

    move-result v0

    .line 418
    .local v0, destPos:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemDestinationPosition:I

    if-eq v0, v3, :cond_1

    .line 419
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;

    .line 420
    .local v2, mainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemDestinationPosition:I

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 421
    .local v1, dragView:Landroid/view/View;
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemDestinationPosition:I

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;->removeViewAt(I)V

    .line 422
    invoke-virtual {v2, v1, v0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;->addView(Landroid/view/View;I)V

    .line 423
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemDestinationPosition:I

    .line 426
    .end local v1           #dragView:Landroid/view/View;
    .end local v2           #mainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->invalidate()V

    goto :goto_0
.end method

.method private findDropDestinationPosition(II)I
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 469
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;

    .line 470
    .local v2, mainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;
    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;->getChildCount()I

    move-result v0

    .line 471
    .local v0, childCount:I
    if-lez v0, :cond_2

    .line 472
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->getOrientation()I

    move-result v4

    .line 473
    .local v4, orientation:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 474
    invoke-virtual {v2, v1}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;->getChildRect(I)Landroid/graphics/Rect;

    move-result-object v5

    .line 476
    .local v5, r:Landroid/graphics/Rect;
    if-nez v4, :cond_0

    .line 477
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v3, v6, 0x5

    .line 479
    .local v3, offset:I
    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    if-ge v6, p1, :cond_1

    iget v6, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v3

    if-le v6, p1, :cond_1

    move v6, v1

    .line 492
    .end local v1           #i:I
    .end local v3           #offset:I
    .end local v4           #orientation:I
    .end local v5           #r:Landroid/graphics/Rect;
    :goto_1
    return v6

    .line 483
    .restart local v1       #i:I
    .restart local v4       #orientation:I
    .restart local v5       #r:Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v3, v6, 0x5

    .line 485
    .restart local v3       #offset:I
    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v3

    if-ge v6, p2, :cond_1

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v3

    if-le v6, p2, :cond_1

    move v6, v1

    .line 486
    goto :goto_1

    .line 473
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 492
    .end local v1           #i:I
    .end local v3           #offset:I
    .end local v4           #orientation:I
    .end local v5           #r:Landroid/graphics/Rect;
    :cond_2
    const/4 v6, -0x1

    goto :goto_1
.end method

.method private hittestAutoDragEdge(II)I
    .locals 5
    .parameter "hit"
    .parameter "orientation"

    .prologue
    .line 646
    const/4 v1, 0x0

    .line 647
    .local v1, length:I
    const/4 v0, 0x0

    .line 648
    .local v0, edgeArea:I
    if-nez p2, :cond_0

    .line 649
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->getWidth()I

    move-result v1

    .line 653
    :goto_0
    div-int/lit8 v2, v1, 0x3

    int-to-float v2, v2

    const/high16 v3, 0x4248

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDensityScale:F

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v0, v2

    .line 656
    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 657
    const/4 v2, 0x1

    .line 661
    :goto_1
    return v2

    .line 651
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->getHeight()I

    move-result v1

    goto :goto_0

    .line 658
    :cond_1
    sub-int v2, v1, v0

    if-le p1, v2, :cond_2

    if-ge p1, v1, :cond_2

    .line 659
    const/4 v2, 0x2

    goto :goto_1

    .line 661
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 143
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 144
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;

    invoke-direct {v1, p0, v0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;-><init>(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;

    .line 145
    .local v1, mainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    invoke-virtual {v1, v5}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;->setAnimationFromParent(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;->setOrientation(I)V

    .line 149
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->addView(Landroid/view/View;)V

    .line 151
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDensityScale:F

    .line 153
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->setFillViewport(Z)V

    .line 154
    return-void
.end method


# virtual methods
.method public addItem(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 568
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->addItem(Landroid/view/View;I)V

    .line 569
    return-void
.end method

.method public addItem(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "index"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;

    invoke-virtual {v0, p1, p2}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;->addView(Landroid/view/View;I)V

    .line 579
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mAddAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mAddAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 582
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 185
    iget-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mIsDragging:Z

    if-eqz v2, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, left:F
    const/4 v1, 0x0

    .line 189
    .local v1, top:F
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->getOrientation()I

    move-result v2

    if-nez v2, :cond_1

    .line 190
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mLastMotionX:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemTouchX:I

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 195
    :goto_0
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mUserDragItem:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 196
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mUserDragItem:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mPaintItemCache:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 200
    .end local v0           #left:F
    .end local v1           #top:F
    :cond_0
    :goto_1
    return-void

    .line 192
    .restart local v0       #left:F
    .restart local v1       #top:F
    :cond_1
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mLastMotionY:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemTouchY:I

    int-to-float v3, v3

    sub-float v1, v2, v3

    goto :goto_0

    .line 197
    :cond_2
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemCache:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemCache:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mPaintItemCache:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .parameter "canvas"
    .parameter "view"
    .parameter "uptime"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItem:Landroid/view/View;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x1

    .line 207
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFScrollView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0
.end method

.method public drop(I)V
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 435
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mIsDragging:Z

    if-nez v0, :cond_0

    .line 436
    const-string v0, "TFDndLinearScrollView"

    const-string v1, "drop(int) - no dragging item"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :goto_0
    return-void

    .line 440
    :cond_0
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mIsDragging:Z

    .line 441
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItem:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 442
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItem:Landroid/view/View;

    .line 443
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 445
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemCache:Landroid/graphics/Bitmap;

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mUserDragItem:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 449
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mUserDragItem:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 450
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mUserDragItem:Landroid/graphics/Bitmap;

    .line 453
    :cond_2
    if-eq p1, v3, :cond_3

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemOriginalPosition:I

    invoke-interface {v0, v1, p1}, Lcom/nemustech/tiffany/widget/TFDndController;->allowDrop(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 455
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemDestinationPosition:I

    .line 457
    :cond_3
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemOriginalPosition:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemDestinationPosition:I

    invoke-interface {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFDndController;->dropDone(II)V

    .line 459
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemOriginalPosition:I

    .line 460
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemDestinationPosition:I

    .line 462
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mTFDndListener:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFDndListener;

    if-eqz v0, :cond_4

    .line 463
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mTFDndListener:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFDndListener;

    invoke-interface {v0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFDndListener;->OnDragAndDropStop()V

    .line 465
    :cond_4
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->invalidate()V

    goto :goto_0
.end method

.method public getAddAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mAddAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getDndAnimationDuration()I
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;->getAnimationDuration()I

    move-result v0

    return v0
.end method

.method public getDragView()Landroid/view/View;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItem:Landroid/view/View;

    return-object v0
.end method

.method public getRemoveAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mRemoveAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getTFDndListener()Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFDndListener;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mTFDndListener:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFDndListener;

    return-object v0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mIsDragging:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 214
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 215
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 216
    .local v2, y:F
    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mIsDragging:Z

    if-eqz v3, :cond_2

    .line 217
    if-eq v0, v4, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 219
    :cond_0
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemDestinationPosition:I

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->drop(I)V

    .line 221
    :cond_1
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mLastMotionX:F

    .line 222
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mLastMotionY:F

    move v3, v4

    .line 228
    :goto_0
    return v3

    .line 225
    :cond_2
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mLastMotionX:F

    .line 226
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mLastMotionY:F

    .line 228
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    .line 169
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    .line 170
    .local v0, oldScrollX:I
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    .line 171
    .local v1, oldScrollY:I
    invoke-super/range {p0 .. p5}, Lcom/nemustech/tiffany/widget/TFScrollView;->onLayout(ZIIII)V

    .line 172
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;

    if-eqz v2, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->getOrientation()I

    move-result v2

    if-nez v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;->onAnimationLayout(II)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v4, v3}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;->onAnimationLayout(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const-wide/16 v12, 0x190

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 235
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 236
    .local v6, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 237
    .local v7, y:F
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->getOrientation()I

    move-result v3

    .line 239
    .local v3, orientation:I
    packed-switch v0, :pswitch_data_0

    .line 299
    :cond_0
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :goto_0
    return v8

    .line 241
    :pswitch_0
    iget-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mIsDragging:Z

    if-eqz v8, :cond_0

    .line 242
    iput v6, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mLastMotionX:F

    .line 243
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mLastMotionY:F

    .line 244
    const/4 v1, 0x0

    .line 245
    .local v1, hit:F
    if-nez v3, :cond_2

    .line 246
    move v1, v6

    .line 250
    :goto_1
    float-to-int v8, v1

    invoke-direct {p0, v8, v3}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->hittestAutoDragEdge(II)I

    move-result v2

    .line 251
    .local v2, hitTestResult:I
    if-lez v2, :cond_1

    .line 252
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;

    invoke-virtual {v8, v2}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;->setDirection(I)V

    .line 253
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;

    invoke-virtual {p0, v8, v12, v13}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    move v8, v10

    .line 255
    goto :goto_0

    .line 248
    .end local v2           #hitTestResult:I
    :cond_2
    move v1, v7

    goto :goto_1

    .line 259
    .end local v1           #hit:F
    :pswitch_1
    iget-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mIsDragging:Z

    if-eqz v8, :cond_0

    .line 261
    const/4 v1, 0x0

    .line 262
    .restart local v1       #hit:F
    const/4 v4, 0x0

    .line 263
    .local v4, prevHit:F
    if-nez v3, :cond_4

    .line 264
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    float-to-int v9, v6

    add-int/2addr v8, v9

    invoke-direct {p0, v8, v11}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->doDrag(II)V

    .line 265
    move v1, v6

    .line 266
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mLastMotionX:F

    .line 272
    :goto_2
    float-to-int v8, v1

    invoke-direct {p0, v8, v3}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->hittestAutoDragEdge(II)I

    move-result v2

    .line 273
    .restart local v2       #hitTestResult:I
    float-to-int v8, v4

    invoke-direct {p0, v8, v3}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->hittestAutoDragEdge(II)I

    move-result v5

    .line 275
    .local v5, prevHitTestResult:I
    if-eq v2, v5, :cond_3

    .line 276
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 279
    if-lez v2, :cond_3

    .line 280
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;

    invoke-virtual {v8, v2}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;->setDirection(I)V

    .line 281
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;

    invoke-virtual {p0, v8, v12, v13}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 285
    :cond_3
    iput v6, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mLastMotionX:F

    .line 286
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mLastMotionY:F

    move v8, v10

    .line 287
    goto :goto_0

    .line 268
    .end local v2           #hitTestResult:I
    .end local v5           #prevHitTestResult:I
    :cond_4
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    float-to-int v9, v7

    add-int/2addr v8, v9

    invoke-direct {p0, v11, v8}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->doDrag(II)V

    .line 269
    move v1, v7

    .line 270
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mLastMotionY:F

    goto :goto_2

    .line 292
    .end local v1           #hit:F
    .end local v4           #prevHit:F
    :pswitch_2
    iget-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mIsDragging:Z

    if-eqz v8, :cond_0

    .line 293
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemDestinationPosition:I

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->drop(I)V

    move v8, v10

    .line 294
    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public removeAllItems()V
    .locals 4

    .prologue
    .line 618
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mRemoveAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_0

    .line 619
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->getChildCount()I

    move-result v0

    .line 620
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 621
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mRemoveAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 620
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 625
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;

    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;->removeAllViews()V

    .line 626
    return-void
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->removeItem(Landroid/view/View;)V

    .line 612
    return-void
.end method

.method public removeItem(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 591
    const-wide/16 v1, 0x0

    .line 592
    .local v1, startOffset:J
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mRemoveAnimation:Landroid/view/animation/Animation;

    .line 593
    .local v0, ani:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v1

    .line 595
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 596
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 598
    :cond_0
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 600
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mRemoveViews:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mRemoveAniRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 602
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mRemoveAniRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1, v2}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 603
    return-void
.end method

.method public setAddAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 532
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mAddAnimation:Landroid/view/animation/Animation;

    .line 533
    return-void
.end method

.method public setDndAnimationDuration(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 514
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;->setAnimationDuration(I)V

    .line 515
    return-void
.end method

.method public setDndController(Lcom/nemustech/tiffany/widget/TFDndController;)V
    .locals 1
    .parameter "dndController"

    .prologue
    .line 501
    if-nez p1, :cond_0

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

    .line 506
    :goto_0
    return-void

    .line 505
    :cond_0
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

    goto :goto_0
.end method

.method public setDragItemBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mUserDragItem:Landroid/graphics/Bitmap;

    .line 319
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFScrollView;->setOrientation(I)V

    .line 162
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;->setOrientation(I)V

    .line 165
    :cond_0
    return-void
.end method

.method public setRemoveAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 550
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mRemoveAnimation:Landroid/view/animation/Animation;

    .line 551
    return-void
.end method

.method public setTFDndListener(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFDndListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mTFDndListener:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFDndListener;

    .line 99
    return-void
.end method

.method public startDrag(I)V
    .locals 11
    .parameter "position"

    .prologue
    const/4 v9, 0x0

    .line 346
    iget-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mIsDragging:Z

    if-eqz v8, :cond_1

    .line 347
    const-string v8, "TFDndLinearScrollView"

    const-string v9, "drag(int) - already dragging item"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

    if-nez v8, :cond_2

    .line 352
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "setDndController() must be called before startDrag(int)"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 355
    :cond_2
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

    invoke-interface {v8, p1}, Lcom/nemustech/tiffany/widget/TFDndController;->allowDrag(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 357
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;

    invoke-virtual {v8, p1}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItem:Landroid/view/View;

    .line 358
    .local v6, v:Landroid/view/View;
    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 360
    invoke-virtual {v6}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v7

    .line 361
    .local v7, willNotCache:Z
    invoke-virtual {v6, v9}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 365
    invoke-virtual {v6}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v1

    .line 366
    .local v1, color:I
    invoke-virtual {v6, v9}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 367
    invoke-virtual {v6, v9}, Landroid/view/View;->setPressed(Z)V

    .line 368
    invoke-virtual {v6, v9}, Landroid/view/View;->setSelected(Z)V

    .line 370
    if-eqz v1, :cond_3

    .line 371
    invoke-virtual {v6}, Landroid/view/View;->destroyDrawingCache()V

    .line 373
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->buildDrawingCache()V

    .line 374
    invoke-virtual {v6}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 375
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 376
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemCache:Landroid/graphics/Bitmap;

    .line 377
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mIsDragging:Z

    .line 378
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemOriginalPosition:I

    .line 379
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemDestinationPosition:I

    .line 381
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 382
    .local v5, r:Landroid/graphics/Rect;
    invoke-virtual {v6, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 384
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mLastMotionX:F

    float-to-int v9, v9

    add-int/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemTouchX:I

    .line 385
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mLastMotionY:F

    float-to-int v9, v9

    add-int/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mDragItemTouchY:I

    .line 388
    .end local v5           #r:Landroid/graphics/Rect;
    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->destroyDrawingCache()V

    .line 389
    invoke-virtual {v6, v7}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 390
    invoke-virtual {v6, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 392
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mTFDndListener:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFDndListener;

    if-eqz v8, :cond_5

    .line 393
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mTFDndListener:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFDndListener;

    invoke-interface {v8}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFDndListener;->OnDragAndDropStart()V

    .line 395
    :cond_5
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->getOrientation()I

    move-result v4

    .line 396
    .local v4, orientation:I
    const/4 v2, 0x0

    .line 397
    .local v2, hit:F
    if-nez v4, :cond_7

    .line 398
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mLastMotionX:F

    .line 402
    :goto_1
    float-to-int v8, v2

    invoke-direct {p0, v8, v4}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->hittestAutoDragEdge(II)I

    move-result v3

    .line 403
    .local v3, hitTestResult:I
    if-lez v3, :cond_6

    .line 404
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;

    invoke-virtual {v8, v3}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;->setDirection(I)V

    .line 405
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;

    const-wide/16 v9, 0x190

    invoke-virtual {p0, v8, v9, v10}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 408
    :cond_6
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->invalidate()V

    goto/16 :goto_0

    .line 400
    .end local v3           #hitTestResult:I
    :cond_7
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mLastMotionY:F

    goto :goto_1
.end method

.method public startDrag(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->startDrag(I)V

    .line 337
    return-void
.end method
