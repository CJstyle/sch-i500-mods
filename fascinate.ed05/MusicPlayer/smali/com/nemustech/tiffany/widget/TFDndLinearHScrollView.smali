.class public Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;
.super Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;
.source "TFDndLinearHScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;,
        Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;,
        Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFLinearHScrollListener;
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

.field private static final TAG:Ljava/lang/String; = "TFDndHorizontalScrollView"


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

.field private mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;

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

.field private mTFLinearHScrollListener:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFLinearHScrollListener;

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

    .line 129
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 62
    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mIsDragging:Z

    .line 64
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mLastMotionX:F

    .line 65
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mLastMotionY:F

    .line 67
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemOriginalPosition:I

    .line 68
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemDestinationPosition:I

    .line 69
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemTouchX:I

    .line 71
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemTouchY:I

    .line 74
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemCache:Landroid/graphics/Bitmap;

    .line 75
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mUserDragItem:Landroid/graphics/Bitmap;

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;

    invoke-direct {v0, p0, v1}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$1;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mPaintItemCache:Landroid/graphics/Paint;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mRemoveViews:Ljava/util/ArrayList;

    .line 564
    new-instance v0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$1;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$1;-><init>(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mRemoveAniRunnable:Ljava/lang/Runnable;

    .line 130
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->init()V

    .line 131
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

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mIsDragging:Z

    .line 64
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mLastMotionX:F

    .line 65
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mLastMotionY:F

    .line 67
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemOriginalPosition:I

    .line 68
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemDestinationPosition:I

    .line 69
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemTouchX:I

    .line 71
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemTouchY:I

    .line 74
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemCache:Landroid/graphics/Bitmap;

    .line 75
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mUserDragItem:Landroid/graphics/Bitmap;

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;

    invoke-direct {v0, p0, v1}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$1;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mPaintItemCache:Landroid/graphics/Paint;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mRemoveViews:Ljava/util/ArrayList;

    .line 564
    new-instance v0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$1;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$1;-><init>(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mRemoveAniRunnable:Ljava/lang/Runnable;

    .line 135
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->init()V

    .line 136
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

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mIsDragging:Z

    .line 64
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mLastMotionX:F

    .line 65
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mLastMotionY:F

    .line 67
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemOriginalPosition:I

    .line 68
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemDestinationPosition:I

    .line 69
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemTouchX:I

    .line 71
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemTouchY:I

    .line 74
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemCache:Landroid/graphics/Bitmap;

    .line 75
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mUserDragItem:Landroid/graphics/Bitmap;

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;

    invoke-direct {v0, p0, v1}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$1;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mPaintItemCache:Landroid/graphics/Paint;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mRemoveViews:Ljava/util/ArrayList;

    .line 564
    new-instance v0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$1;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$1;-><init>(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mRemoveAniRunnable:Ljava/lang/Runnable;

    .line 141
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->init()V

    .line 142
    return-void
.end method

.method static synthetic access$100(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;)Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mRemoveViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mIsDragging:Z

    return v0
.end method

.method static synthetic access$400(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDensityScale:F

    return v0
.end method

.method static synthetic access$500(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mScrollX:I

    return v0
.end method

.method static synthetic access$600(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mLastMotionX:F

    return v0
.end method

.method static synthetic access$700(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->doDrag(I)V

    return-void
.end method

.method private doDrag(I)V
    .locals 5
    .parameter "x"

    .prologue
    .line 358
    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mIsDragging:Z

    if-nez v3, :cond_0

    .line 359
    const-string v3, "TFDndHorizontalScrollView"

    const-string v4, "doDrag(int) - no dragging item"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->findDropDestinationPosition(I)I

    move-result v0

    .line 364
    .local v0, destPos:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemDestinationPosition:I

    if-eq v0, v3, :cond_1

    .line 365
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;

    .line 366
    .local v2, mainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemDestinationPosition:I

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 367
    .local v1, dragView:Landroid/view/View;
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemDestinationPosition:I

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->removeViewAt(I)V

    .line 368
    invoke-virtual {v2, v1, v0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->addView(Landroid/view/View;I)V

    .line 369
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemDestinationPosition:I

    .line 372
    .end local v1           #dragView:Landroid/view/View;
    .end local v2           #mainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->invalidate()V

    goto :goto_0
.end method

.method private findDropDestinationPosition(I)I
    .locals 6
    .parameter "x"

    .prologue
    .line 415
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;

    .line 416
    .local v2, mainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;
    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->getChildCount()I

    move-result v0

    .line 417
    .local v0, childCount:I
    if-lez v0, :cond_1

    .line 418
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 419
    invoke-virtual {v2, v1}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->getChildRect(I)Landroid/graphics/Rect;

    move-result-object v4

    .line 421
    .local v4, r:Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v3, v5, 0x5

    .line 423
    .local v3, offset:I
    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    if-ge v5, p1, :cond_0

    iget v5, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    if-le v5, p1, :cond_0

    move v5, v1

    .line 428
    .end local v1           #i:I
    .end local v3           #offset:I
    .end local v4           #r:Landroid/graphics/Rect;
    :goto_1
    return v5

    .line 418
    .restart local v1       #i:I
    .restart local v3       #offset:I
    .restart local v4       #r:Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    .end local v1           #i:I
    .end local v3           #offset:I
    .end local v4           #r:Landroid/graphics/Rect;
    :cond_1
    const/4 v5, -0x1

    goto :goto_1
.end method

.method private hittestAutoDragEdge(I)I
    .locals 5
    .parameter "x"

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->getWidth()I

    move-result v1

    .line 584
    .local v1, width:I
    div-int/lit8 v2, v1, 0x3

    int-to-float v2, v2

    const/high16 v3, 0x4248

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDensityScale:F

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v0, v2

    .line 587
    .local v0, edgeAreaHeight:I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 588
    const/4 v2, 0x1

    .line 592
    :goto_0
    return v2

    .line 589
    :cond_0
    sub-int v2, v1, v0

    if-le p1, v2, :cond_1

    if-ge p1, v1, :cond_1

    .line 590
    const/4 v2, 0x2

    goto :goto_0

    .line 592
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 145
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 146
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;

    invoke-direct {v1, p0, v0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;-><init>(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;

    .line 147
    .local v1, mainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    invoke-virtual {v1, v5}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->setAnimationFromParent(Z)V

    .line 150
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->addView(Landroid/view/View;)V

    .line 152
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDensityScale:F

    .line 154
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->setFillViewport(Z)V

    .line 155
    return-void
.end method


# virtual methods
.method public addItem(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 504
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->addItem(Landroid/view/View;I)V

    .line 505
    return-void
.end method

.method public addItem(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "index"

    .prologue
    .line 514
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;

    invoke-virtual {v0, p1, p2}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->addView(Landroid/view/View;I)V

    .line 515
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mAddAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mAddAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 518
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 170
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mUserDragItem:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mUserDragItem:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mScrollX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mLastMotionX:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemTouchX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mScrollY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mPaintItemCache:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemCache:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mScrollX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mLastMotionX:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemTouchX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mScrollY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mPaintItemCache:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .parameter "canvas"
    .parameter "view"
    .parameter "uptime"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItem:Landroid/view/View;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

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

    .line 381
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mIsDragging:Z

    if-nez v0, :cond_0

    .line 382
    const-string v0, "TFDndHorizontalScrollView"

    const-string v1, "drop(int) - no dragging item"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :goto_0
    return-void

    .line 386
    :cond_0
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mIsDragging:Z

    .line 387
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItem:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 388
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItem:Landroid/view/View;

    .line 389
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 391
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemCache:Landroid/graphics/Bitmap;

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mUserDragItem:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 395
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mUserDragItem:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 396
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mUserDragItem:Landroid/graphics/Bitmap;

    .line 399
    :cond_2
    if-eq p1, v3, :cond_3

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemOriginalPosition:I

    invoke-interface {v0, v1, p1}, Lcom/nemustech/tiffany/widget/TFDndController;->allowDrop(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 401
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemDestinationPosition:I

    .line 403
    :cond_3
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemOriginalPosition:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemDestinationPosition:I

    invoke-interface {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFDndController;->dropDone(II)V

    .line 405
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemOriginalPosition:I

    .line 406
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemDestinationPosition:I

    .line 408
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mTFLinearHScrollListener:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFLinearHScrollListener;

    if-eqz v0, :cond_4

    .line 409
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mTFLinearHScrollListener:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFLinearHScrollListener;

    invoke-interface {v0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFLinearHScrollListener;->OnDragAndDropStop()V

    .line 411
    :cond_4
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->invalidate()V

    goto :goto_0
.end method

.method public getAddAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mAddAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getDndAnimationDuration()I
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->getAnimationDuration()I

    move-result v0

    return v0
.end method

.method public getDragView()Landroid/view/View;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItem:Landroid/view/View;

    return-object v0
.end method

.method public getRemoveAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mRemoveAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getTFLinearHScrollListener()Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFLinearHScrollListener;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mTFLinearHScrollListener:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFLinearHScrollListener;

    return-object v0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mIsDragging:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 190
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 191
    .local v1, x:F
    iget-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mIsDragging:Z

    if-eqz v2, :cond_2

    .line 192
    if-eq v0, v3, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 194
    :cond_0
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemDestinationPosition:I

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->drop(I)V

    .line 196
    :cond_1
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mLastMotionX:F

    move v2, v3

    .line 201
    :goto_0
    return v2

    .line 199
    :cond_2
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mLastMotionX:F

    .line 201
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 159
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mScrollX:I

    .line 160
    .local v0, oldScrollX:I
    invoke-super/range {p0 .. p5}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->onLayout(ZIIII)V

    .line 161
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mScrollX:I

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->onAnimationLayout(II)V

    .line 164
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const-wide/16 v7, 0x190

    const/4 v6, 0x1

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 208
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 209
    .local v3, x:F
    packed-switch v0, :pswitch_data_0

    .line 252
    :cond_0
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :goto_0
    return v4

    .line 211
    :pswitch_0
    iget-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mIsDragging:Z

    if-eqz v4, :cond_0

    .line 212
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mLastMotionX:F

    .line 214
    float-to-int v4, v3

    invoke-direct {p0, v4}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->hittestAutoDragEdge(I)I

    move-result v1

    .line 215
    .local v1, hitTestResult:I
    if-lez v1, :cond_1

    .line 216
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;

    invoke-virtual {v4, v1}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;->setDirection(I)V

    .line 217
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;

    invoke-virtual {p0, v4, v7, v8}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    move v4, v6

    .line 219
    goto :goto_0

    .line 223
    .end local v1           #hitTestResult:I
    :pswitch_1
    iget-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mIsDragging:Z

    if-eqz v4, :cond_0

    .line 224
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mScrollX:I

    float-to-int v5, v3

    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->doDrag(I)V

    .line 226
    float-to-int v4, v3

    invoke-direct {p0, v4}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->hittestAutoDragEdge(I)I

    move-result v1

    .line 227
    .restart local v1       #hitTestResult:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mLastMotionX:F

    float-to-int v4, v4

    invoke-direct {p0, v4}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->hittestAutoDragEdge(I)I

    move-result v2

    .line 229
    .local v2, prevHitTestResult:I
    if-eq v1, v2, :cond_2

    .line 230
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;

    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 233
    if-lez v1, :cond_2

    .line 234
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;

    invoke-virtual {v4, v1}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;->setDirection(I)V

    .line 235
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;

    invoke-virtual {p0, v4, v7, v8}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 239
    :cond_2
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mLastMotionX:F

    move v4, v6

    .line 240
    goto :goto_0

    .line 245
    .end local v1           #hitTestResult:I
    .end local v2           #prevHitTestResult:I
    :pswitch_2
    iget-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mIsDragging:Z

    if-eqz v4, :cond_0

    .line 246
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemDestinationPosition:I

    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->drop(I)V

    move v4, v6

    .line 247
    goto :goto_0

    .line 209
    nop

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
    .line 554
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mRemoveAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->getChildCount()I

    move-result v0

    .line 556
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 557
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mRemoveAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 556
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 561
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;

    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->removeAllViews()V

    .line 562
    return-void
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->removeItem(Landroid/view/View;)V

    .line 548
    return-void
.end method

.method public removeItem(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 527
    const-wide/16 v1, 0x0

    .line 528
    .local v1, startOffset:J
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mRemoveAnimation:Landroid/view/animation/Animation;

    .line 529
    .local v0, ani:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v1

    .line 531
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 532
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 534
    :cond_0
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 536
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mRemoveViews:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mRemoveAniRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 538
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mRemoveAniRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1, v2}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 539
    return-void
.end method

.method public setAddAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 468
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mAddAnimation:Landroid/view/animation/Animation;

    .line 469
    return-void
.end method

.method public setDndAnimationDuration(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->setAnimationDuration(I)V

    .line 451
    return-void
.end method

.method public setDndController(Lcom/nemustech/tiffany/widget/TFDndController;)V
    .locals 1
    .parameter "dndController"

    .prologue
    .line 437
    if-nez p1, :cond_0

    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

    .line 442
    :goto_0
    return-void

    .line 441
    :cond_0
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

    goto :goto_0
.end method

.method public setDragItemBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 271
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mUserDragItem:Landroid/graphics/Bitmap;

    .line 272
    return-void
.end method

.method public setRemoveAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 486
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mRemoveAnimation:Landroid/view/animation/Animation;

    .line 487
    return-void
.end method

.method public setTFLinearHScrollListener(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFLinearHScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mTFLinearHScrollListener:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFLinearHScrollListener;

    .line 101
    return-void
.end method

.method public startDrag(I)V
    .locals 9
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    .line 299
    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mIsDragging:Z

    if-eqz v6, :cond_1

    .line 300
    const-string v6, "TFDndHorizontalScrollView"

    const-string v7, "drag(int) - already dragging item"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

    if-nez v6, :cond_2

    .line 305
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "setDndController() must be called before startDrag(int)"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 308
    :cond_2
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

    invoke-interface {v6, p1}, Lcom/nemustech/tiffany/widget/TFDndController;->allowDrag(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 310
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;

    invoke-virtual {v6, p1}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItem:Landroid/view/View;

    .line 311
    .local v4, v:Landroid/view/View;
    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 313
    invoke-virtual {v4}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v5

    .line 314
    .local v5, willNotCache:Z
    invoke-virtual {v4, v7}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 318
    invoke-virtual {v4}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v1

    .line 319
    .local v1, color:I
    invoke-virtual {v4, v7}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 320
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 321
    invoke-virtual {v4, v7}, Landroid/view/View;->setSelected(Z)V

    .line 323
    if-eqz v1, :cond_3

    .line 324
    invoke-virtual {v4}, Landroid/view/View;->destroyDrawingCache()V

    .line 326
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->buildDrawingCache()V

    .line 327
    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 328
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 329
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemCache:Landroid/graphics/Bitmap;

    .line 330
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mIsDragging:Z

    .line 331
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemOriginalPosition:I

    .line 332
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemDestinationPosition:I

    .line 334
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 335
    .local v3, r:Landroid/graphics/Rect;
    invoke-virtual {v4, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 337
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mScrollX:I

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mLastMotionX:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemTouchX:I

    .line 338
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mScrollY:I

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mLastMotionY:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget v7, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mDragItemTouchY:I

    .line 341
    .end local v3           #r:Landroid/graphics/Rect;
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->destroyDrawingCache()V

    .line 342
    invoke-virtual {v4, v5}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 343
    invoke-virtual {v4, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 345
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mTFLinearHScrollListener:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFLinearHScrollListener;

    if-eqz v6, :cond_5

    .line 346
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mTFLinearHScrollListener:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFLinearHScrollListener;

    invoke-interface {v6}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFLinearHScrollListener;->OnDragAndDropStart()V

    .line 348
    :cond_5
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mLastMotionX:F

    float-to-int v6, v6

    invoke-direct {p0, v6}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->hittestAutoDragEdge(I)I

    move-result v2

    .line 349
    .local v2, hitTestResult:I
    if-lez v2, :cond_6

    .line 350
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;

    invoke-virtual {v6, v2}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;->setDirection(I)V

    .line 351
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;

    const-wide/16 v7, 0x190

    invoke-virtual {p0, v6, v7, v8}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 354
    :cond_6
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->invalidate()V

    goto/16 :goto_0
.end method

.method public startDrag(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->mMainLayout:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->startDrag(I)V

    .line 290
    return-void
.end method
