.class public Lcom/sec/android/app/twlauncher/DragLayer;
.super Landroid/widget/FrameLayout;
.source "DragLayer.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DragController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;
    }
.end annotation


# static fields
.field private static final ANIMATION_SCALE_UP_DURATION:I = 0x64

.field private static final ANIMATION_STATE_DONE:I = 0x3

.field private static final ANIMATION_STATE_RUNNING:I = 0x2

.field private static final ANIMATION_STATE_STARTING:I = 0x1

.field private static final ANIMATION_TYPE_SCALE:I = 0x1

.field private static final DEBUG:Z = false

.field private static final DRAG_SCALE:F = 1.1f

.field private static final DRAG_SCALE_WIDGET:F = 1.05f

.field private static final LOG_TAG:Ljava/lang/String; = "Launcher.DragLayer"

.field private static final PROFILE_DRAWING_DURING_DRAG:Z = false

.field private static final SCROLL_DELAY:I = 0x258

.field private static final SCROLL_LEFT:I = 0x0

.field private static final SCROLL_OUTSIDE_ZONE:I = 0x0

.field private static final SCROLL_RIGHT:I = 0x1

.field private static final SCROLL_WAITING_IN_ZONE:I = 0x1

.field static final SCROLL_ZONE:I = 0x32

.field private static final VIBRATE_DURATION:I = 0x23


# instance fields
.field private mAnimationDuration:I

.field private mAnimationFrom:F

.field private mAnimationStartTime:J

.field private mAnimationState:I

.field private mAnimationTo:F

.field private mAnimationType:I

.field private mBitmapOffsetX:I

.field private mBitmapOffsetY:I

.field private final mDimPaint:Landroid/graphics/Paint;

.field private mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragInfo:Ljava/lang/Object;

.field private mDragMenuScroller:Lcom/sec/android/app/twlauncher/DragScroller;

.field private mDragPaint:Landroid/graphics/Paint;

.field private mDragRect:Landroid/graphics/Rect;

.field private mDragRegion:Landroid/graphics/RectF;

.field private mDragScroller:Lcom/sec/android/app/twlauncher/DragScroller;

.field private mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

.field private mDragging:Z

.field private final mDropCoordinates:[I

.field private mEnteredRegion:Z

.field private mIgnoredDropTarget:Landroid/view/View;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsDragAnimation:Z

.field private mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

.field private mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

.field private mOriginator:Landroid/view/View;

.field private final mRect:Landroid/graphics/Rect;

.field private final mScrollPaint:Landroid/graphics/Paint;

.field private mScrollPaintColor:I

.field private mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

.field private mScrollState:I

.field private mShouldDrop:Z

.field private mSrcColor1:I

.field private mSrcColor2:I

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F

.field private final mTrashPaint:Landroid/graphics/Paint;

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x0

    .line 157
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    .line 66
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 85
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRect:Landroid/graphics/Rect;

    .line 97
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mRect:Landroid/graphics/Rect;

    .line 98
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDropCoordinates:[I

    .line 100
    new-instance v2, Landroid/os/Vibrator;

    invoke-direct {v2}, Landroid/os/Vibrator;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVibrator:Landroid/os/Vibrator;

    .line 114
    iput v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollState:I

    .line 116
    new-instance v2, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;-><init>(Lcom/sec/android/app/twlauncher/DragLayer;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    .line 123
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDimPaint:Landroid/graphics/Paint;

    .line 124
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTrashPaint:Landroid/graphics/Paint;

    .line 125
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollPaint:Landroid/graphics/Paint;

    .line 139
    iput v6, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mSrcColor1:I

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mSrcColor2:I

    .line 161
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTrashPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget v4, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mSrcColor1:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 165
    .local v1, snagColor:I
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 166
    .local v0, estimatedPaint:Landroid/graphics/Paint;
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    const/high16 v2, 0x4040

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 168
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 170
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDimPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v4, 0x7f00

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollPaintColor:I

    .line 173
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget v4, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollPaintColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 175
    new-array v2, v6, [Lcom/sec/android/app/twlauncher/DragAnimation;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/DragLayer;)Lcom/sec/android/app/twlauncher/DragScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragScroller:Lcom/sec/android/app/twlauncher/DragScroller;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/DragLayer;)Lcom/sec/android/app/twlauncher/DragController$DragListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/DragLayer;)Lcom/sec/android/app/twlauncher/DragScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragMenuScroller:Lcom/sec/android/app/twlauncher/DragScroller;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/twlauncher/DragLayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollState:I

    return p1
.end method

.method private drop(FF)Z
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 571
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    .line 573
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDropCoordinates:[I

    .line 574
    .local v7, coordinates:[I
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {p0, v1, v2, v7}, Lcom/sec/android/app/twlauncher/DragLayer;->findDropTarget(II[I)Lcom/sec/android/app/twlauncher/DropTarget;

    move-result-object v0

    .line 575
    .local v0, dropTarget:Lcom/sec/android/app/twlauncher/DropTarget;
    if-eqz v0, :cond_1

    .line 576
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    aget v2, v7, v8

    aget v3, v7, v9

    iget v4, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/DropTarget;->onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 578
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    aget v2, v7, v8

    aget v3, v7, v9

    iget v4, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/DropTarget;->acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    aget v2, v7, v8

    aget v3, v7, v9

    iget v4, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/DropTarget;->onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 582
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    check-cast v0, Landroid/view/View;

    .end local v0           #dropTarget:Lcom/sec/android/app/twlauncher/DropTarget;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface {v1, v0, v9, v2}, Lcom/sec/android/app/twlauncher/DragSource;->onDropCompleted(Landroid/view/View;ZLjava/lang/Object;)V

    move v1, v9

    .line 591
    :goto_0
    return v1

    .line 585
    .restart local v0       #dropTarget:Lcom/sec/android/app/twlauncher/DropTarget;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    check-cast v0, Landroid/view/View;

    .end local v0           #dropTarget:Lcom/sec/android/app/twlauncher/DropTarget;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface {v1, v0, v8, v2}, Lcom/sec/android/app/twlauncher/DragSource;->onDropCompleted(Landroid/view/View;ZLjava/lang/Object;)V

    move v1, v9

    .line 586
    goto :goto_0

    .line 589
    .restart local v0       #dropTarget:Lcom/sec/android/app/twlauncher/DropTarget;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    check-cast v0, Landroid/view/View;

    .end local v0           #dropTarget:Lcom/sec/android/app/twlauncher/DropTarget;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface {v1, v0, v8, v2}, Lcom/sec/android/app/twlauncher/DragSource;->onDropCompleted(Landroid/view/View;ZLjava/lang/Object;)V

    move v1, v8

    .line 591
    goto :goto_0
.end method

.method private endDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 390
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    if-eqz v0, :cond_2

    .line 391
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mOriginator:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mOriginator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/DragController$DragListener;->onDragEnd()V

    .line 402
    :cond_2
    return-void
.end method

.method private findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/sec/android/app/twlauncher/DropTarget;
    .locals 20
    .parameter "container"
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .line 600
    .local v16, r:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    .line 601
    .local v13, count:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v6

    add-int v17, p2, v6

    .line 602
    .local v17, scrolledX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v6

    add-int v18, p3, v6

    .line 603
    .local v18, scrolledY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mIgnoredDropTarget:Landroid/view/View;

    move-object v15, v0

    .line 605
    .local v15, ignoredDropTarget:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    move-object v6, v0

    if-eqz v6, :cond_0

    const/4 v15, 0x0

    .line 607
    :cond_0
    const/4 v6, 0x1

    sub-int v14, v13, v6

    .end local v13           #count:I
    .local v14, i:I
    :goto_0
    if-ltz v14, :cond_5

    .line 608
    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 609
    .local v12, child:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    if-eq v12, v15, :cond_4

    .line 610
    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 611
    invoke-virtual/range {v16 .. v18}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 612
    const/16 v19, 0x0

    .line 613
    .local v19, target:Lcom/sec/android/app/twlauncher/DropTarget;
    instance-of v6, v12, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    .line 614
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int p2, v17, v6

    .line 615
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int p3, v18, v6

    .line 616
    move-object v0, v12

    check-cast v0, Landroid/view/ViewGroup;

    move-object v13, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/DragLayer;->findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/sec/android/app/twlauncher/DropTarget;

    move-result-object v19

    .line 618
    :cond_1
    if-nez v19, :cond_3

    .line 619
    instance-of v6, v12, Lcom/sec/android/app/twlauncher/DropTarget;

    if-eqz v6, :cond_4

    .line 621
    move-object v0, v12

    check-cast v0, Lcom/sec/android/app/twlauncher/DropTarget;

    move-object v5, v0

    .line 622
    .local v5, childTarget:Lcom/sec/android/app/twlauncher/DropTarget;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    move-object v6, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v11, v0

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-interface/range {v5 .. v11}, Lcom/sec/android/app/twlauncher/DropTarget;->acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 623
    const/4 v6, 0x0

    aput p2, p4, v6

    .line 624
    const/4 v6, 0x1

    aput p3, p4, v6

    .line 625
    check-cast v12, Lcom/sec/android/app/twlauncher/DropTarget;

    .end local v12           #child:Landroid/view/View;
    move-object v6, v12

    .line 637
    .end local v5           #childTarget:Lcom/sec/android/app/twlauncher/DropTarget;
    .end local v19           #target:Lcom/sec/android/app/twlauncher/DropTarget;
    :goto_1
    return-object v6

    .line 627
    .restart local v5       #childTarget:Lcom/sec/android/app/twlauncher/DropTarget;
    .restart local v12       #child:Landroid/view/View;
    .restart local v19       #target:Lcom/sec/android/app/twlauncher/DropTarget;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .end local v5           #childTarget:Lcom/sec/android/app/twlauncher/DropTarget;
    :cond_3
    move-object/from16 v6, v19

    .line 631
    goto :goto_1

    .line 607
    .end local v19           #target:Lcom/sec/android/app/twlauncher/DropTarget;
    :cond_4
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    .line 637
    .end local v12           #child:Landroid/view/View;
    :cond_5
    const/4 v6, 0x0

    goto :goto_1
.end method


# virtual methods
.method public cancelDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 738
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 739
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShouldDrop:Z

    if-eqz v0, :cond_0

    .line 740
    iget v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    iget v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->drop(FF)Z

    .line 741
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShouldDrop:Z

    .line 744
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    if-eqz v0, :cond_3

    .line 745
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    .line 746
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 747
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 749
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mOriginator:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 750
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mOriginator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 752
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-eqz v0, :cond_3

    .line 753
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/DragController$DragListener;->onDragEnd()V

    .line 756
    :cond_3
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .parameter "canvas"

    .prologue
    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 308
    .local v11, time:J
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 310
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    .line 311
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 312
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationStartTime:J

    .line 313
    const/16 v16, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    .line 316
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 317
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationStartTime:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationDuration:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v9, v16, v17

    .line 319
    .local v9, normalized:F
    const/high16 v16, 0x3f80

    cmpl-float v16, v9, v16

    if-ltz v16, :cond_1

    .line 320
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationType:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 321
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    .line 326
    :cond_1
    :goto_0
    const/high16 v16, 0x3f80

    move v0, v9

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 327
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationFrom:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationTo:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationFrom:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    mul-float v17, v17, v9

    add-float v14, v16, v17

    .line 329
    .local v14, value:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationType:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 343
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    .line 344
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 345
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationTo:F

    move v13, v0

    .line 346
    .local v13, to:F
    const/high16 v16, 0x3f80

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationTo:F

    .line 347
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationFrom:F

    .line 349
    .end local v13           #to:F
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DragLayer;->postInvalidate()V

    .line 359
    .end local v9           #normalized:F
    .end local v14           #value:F
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mIsDragAnimation:Z

    move/from16 v16, v0

    if-eqz v16, :cond_a

    .line 360
    const/4 v6, 0x0

    .line 361
    .local v6, animate:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move v10, v0

    .line 362
    .local v10, size:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    if-ge v8, v10, :cond_9

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

    move-object/from16 v16, v0

    aget-object v5, v16, v8

    .line 364
    .local v5, ani:Lcom/sec/android/app/twlauncher/DragAnimation;
    if-eqz v5, :cond_5

    .line 365
    const/4 v15, 0x0

    .line 366
    .local v15, xOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    move-object/from16 v16, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Lcom/sec/android/app/twlauncher/DragController$DragListener;->getDragAnimationXOffset(Landroid/view/View;)I

    move-result v15

    .line 369
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 370
    move-object v0, v5

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragAnimation;->mXOffset:F

    move/from16 v16, v0

    move v0, v15

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v16, v17

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 371
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DragAnimation;->draw(Landroid/graphics/Canvas;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 372
    const/4 v6, 0x1

    .line 376
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 362
    .end local v15           #xOffset:I
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 323
    .end local v5           #ani:Lcom/sec/android/app/twlauncher/DragAnimation;
    .end local v6           #animate:Z
    .end local v8           #i:I
    .end local v10           #size:I
    .restart local v9       #normalized:F
    :cond_6
    const/16 v16, 0x3

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    goto/16 :goto_0

    .line 331
    .restart local v14       #value:F
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    move-object v7, v0

    .line 332
    .local v7, dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 333
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollX:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    move/from16 v17, v0

    add-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetX:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    move/from16 v18, v0

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 335
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x3f80

    sub-float v17, v17, v14

    mul-float v16, v16, v17

    const/high16 v17, 0x4000

    div-float v16, v16, v17

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f80

    sub-float v18, v18, v14

    mul-float v17, v17, v18

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 337
    move-object/from16 v0, p1

    move v1, v14

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 338
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object v1, v7

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 339
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1

    .line 353
    .end local v7           #dragBitmap:Landroid/graphics/Bitmap;
    .end local v9           #normalized:F
    .end local v14           #value:F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollX:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    move/from16 v18, v0

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetY:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 374
    .restart local v5       #ani:Lcom/sec/android/app/twlauncher/DragAnimation;
    .restart local v6       #animate:Z
    .restart local v8       #i:I
    .restart local v10       #size:I
    .restart local v15       #xOffset:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v17, v16, v8

    goto/16 :goto_4

    .line 379
    .end local v5           #ani:Lcom/sec/android/app/twlauncher/DragAnimation;
    .end local v15           #xOffset:I
    :cond_9
    if-eqz v6, :cond_b

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DragLayer;->postInvalidate()V

    .line 387
    .end local v6           #animate:Z
    .end local v8           #i:I
    .end local v10           #size:I
    :cond_a
    :goto_5
    return-void

    .line 382
    .restart local v6       #animate:Z
    .restart local v8       #i:I
    .restart local v10       #size:I
    :cond_b
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mIsDragAnimation:Z

    goto :goto_5

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method findDropTarget(II[I)Lcom/sec/android/app/twlauncher/DropTarget;
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    .line 595
    invoke-direct {p0, p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/DragLayer;->findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/sec/android/app/twlauncher/DropTarget;

    move-result-object v0

    return-object v0
.end method

.method getOriginator()Landroid/view/View;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mOriginator:Landroid/view/View;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 406
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 408
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 409
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 411
    .local v2, y:F
    packed-switch v0, :pswitch_data_0

    .line 431
    :goto_0
    :pswitch_0
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    return v3

    .line 417
    :pswitch_1
    iput v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    .line 418
    iput v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    .line 419
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    goto :goto_0

    .line 424
    :pswitch_2
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShouldDrop:Z

    if-eqz v3, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->drop(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 425
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShouldDrop:Z

    .line 427
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->endDrag()V

    goto :goto_0

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 32
    .parameter "ev"

    .prologue
    .line 436
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    move v6, v0

    if-nez v6, :cond_0

    .line 437
    const/4 v6, 0x0

    .line 567
    :goto_0
    return v6

    .line 440
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    .line 441
    .local v13, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v30

    .line 442
    .local v30, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    .line 444
    .local v31, y:F
    packed-switch v13, :pswitch_data_0

    .line 567
    :cond_1
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 448
    :pswitch_0
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    .line 449
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    .line 451
    const/high16 v6, 0x4248

    cmpg-float v6, v30, v6

    if-ltz v6, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getWidth()I

    move-result v6

    const/16 v7, 0x32

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v6, v30, v6

    if-lez v6, :cond_3

    .line 452
    :cond_2
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollState:I

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    move-object v6, v0

    const-wide/16 v7, 0x258

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 455
    :cond_3
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollState:I

    goto :goto_1

    .line 460
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollX:I

    move/from16 v24, v0

    .line 461
    .local v24, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollY:I

    move/from16 v25, v0

    .line 463
    .local v25, scrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    move/from16 v27, v0

    .line 464
    .local v27, touchX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    move/from16 v28, v0

    .line 466
    .local v28, touchY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetX:I

    move/from16 v20, v0

    .line 467
    .local v20, offsetX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetY:I

    move/from16 v21, v0

    .line 469
    .local v21, offsetY:I
    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    move v7, v0

    add-float/2addr v6, v7

    sub-float v6, v6, v27

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    sub-float/2addr v6, v7

    move v0, v6

    float-to-int v0, v0

    move/from16 v19, v0

    .line 470
    .local v19, left:I
    move/from16 v0, v25

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    move v7, v0

    add-float/2addr v6, v7

    sub-float v6, v6, v28

    move/from16 v0, v21

    int-to-float v0, v0

    move v7, v0

    sub-float/2addr v6, v7

    move v0, v6

    float-to-int v0, v0

    move/from16 v26, v0

    .line 472
    .local v26, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    move-object v15, v0

    .line 473
    .local v15, dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    .line 474
    .local v29, width:I
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 476
    .local v16, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    .line 477
    .local v22, rect:Landroid/graphics/Rect;
    const/4 v6, 0x1

    sub-int v6, v19, v6

    const/4 v7, 0x1

    sub-int v7, v26, v7

    add-int v8, v19, v29

    add-int/lit8 v8, v8, 0x1

    add-int v9, v26, v16

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v22

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 479
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    .line 480
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    .line 482
    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    add-float v6, v6, v30

    sub-float v6, v6, v27

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    sub-float/2addr v6, v7

    move v0, v6

    float-to-int v0, v0

    move/from16 v19, v0

    .line 483
    move/from16 v0, v25

    int-to-float v0, v0

    move v6, v0

    add-float v6, v6, v31

    sub-float v6, v6, v28

    move/from16 v0, v21

    int-to-float v0, v0

    move v7, v0

    sub-float/2addr v6, v7

    move v0, v6

    float-to-int v0, v0

    move/from16 v26, v0

    .line 486
    const/4 v6, 0x1

    sub-int v6, v19, v6

    const/4 v7, 0x1

    sub-int v7, v26, v7

    add-int v8, v19, v29

    add-int/lit8 v8, v8, 0x1

    add-int v9, v26, v16

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v22

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDropCoordinates:[I

    move-object v14, v0

    .line 489
    .local v14, coordinates:[I
    move/from16 v0, v30

    float-to-int v0, v0

    move v6, v0

    move/from16 v0, v31

    float-to-int v0, v0

    move v7, v0

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->findDropTarget(II[I)Lcom/sec/android/app/twlauncher/DropTarget;

    move-result-object v5

    .line 490
    .local v5, dropTarget:Lcom/sec/android/app/twlauncher/DropTarget;
    if-eqz v5, :cond_8

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    move-object v6, v0

    if-ne v6, v5, :cond_6

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    move-object v6, v0

    const/4 v7, 0x0

    aget v7, v14, v7

    const/4 v8, 0x1

    aget v8, v14, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    move v9, v0

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    move v10, v0

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v11, v0

    invoke-interface/range {v5 .. v11}, Lcom/sec/android/app/twlauncher/DropTarget;->onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 509
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate(Landroid/graphics/Rect;)V

    .line 511
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    .line 513
    const/16 v17, 0x0

    .line 514
    .local v17, inDragRegion:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRegion:Landroid/graphics/RectF;

    move-object v6, v0

    if-eqz v6, :cond_5

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRegion:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    .line 516
    .local v23, region:Landroid/graphics/RectF;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    move-object/from16 v0, v23

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v18

    .line 517
    .local v18, inRegion:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mEnteredRegion:Z

    move v6, v0

    if-nez v6, :cond_9

    if-eqz v18, :cond_9

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTrashPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    .line 519
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mEnteredRegion:Z

    .line 520
    const/16 v17, 0x1

    .line 527
    .end local v18           #inRegion:Z
    .end local v23           #region:Landroid/graphics/RectF;
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mEnteredRegion:Z

    move v6, v0

    if-nez v6, :cond_1

    .line 528
    if-nez v17, :cond_a

    const/high16 v6, 0x4248

    cmpg-float v6, v30, v6

    if-gez v6, :cond_a

    .line 529
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollState:I

    move v6, v0

    if-nez v6, :cond_1

    .line 530
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollState:I

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->setDirection(I)V

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    move-object v6, v0

    const-wide/16 v7, 0x258

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    goto/16 :goto_1

    .line 495
    .end local v17           #inDragRegion:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    move-object v6, v0

    if-eqz v6, :cond_7

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    move-object v7, v0

    const/4 v8, 0x0

    aget v8, v14, v8

    const/4 v9, 0x1

    aget v9, v14, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    move v10, v0

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    move v11, v0

    float-to-int v11, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v12, v0

    invoke-interface/range {v6 .. v12}, Lcom/sec/android/app/twlauncher/DropTarget;->onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 499
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    move-object v6, v0

    const/4 v7, 0x0

    aget v7, v14, v7

    const/4 v8, 0x1

    aget v8, v14, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    move v9, v0

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    move v10, v0

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v11, v0

    invoke-interface/range {v5 .. v11}, Lcom/sec/android/app/twlauncher/DropTarget;->onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    goto/16 :goto_2

    .line 503
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    move-object v6, v0

    if-eqz v6, :cond_4

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    move-object v7, v0

    const/4 v8, 0x0

    aget v8, v14, v8

    const/4 v9, 0x1

    aget v9, v14, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    move v10, v0

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    move v11, v0

    float-to-int v11, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v12, v0

    invoke-interface/range {v6 .. v12}, Lcom/sec/android/app/twlauncher/DropTarget;->onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    goto/16 :goto_2

    .line 521
    .restart local v17       #inDragRegion:Z
    .restart local v18       #inRegion:Z
    .restart local v23       #region:Landroid/graphics/RectF;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mEnteredRegion:Z

    move v6, v0

    if-eqz v6, :cond_5

    if-nez v18, :cond_5

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDimPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    .line 523
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mEnteredRegion:Z

    goto/16 :goto_3

    .line 535
    .end local v18           #inRegion:Z
    .end local v23           #region:Landroid/graphics/RectF;
    :cond_a
    if-nez v17, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getWidth()I

    move-result v6

    const/16 v7, 0x32

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v6, v30, v6

    if-lez v6, :cond_b

    .line 536
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollState:I

    move v6, v0

    if-nez v6, :cond_1

    .line 537
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollState:I

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->setDirection(I)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    move-object v6, v0

    const-wide/16 v7, 0x258

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    goto/16 :goto_1

    .line 543
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollState:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_c

    .line 544
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollState:I

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->setDirection(I)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 547
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mEnteredRegion:Z

    move v6, v0

    if-nez v6, :cond_1

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDimPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    goto/16 :goto_1

    .line 555
    .end local v5           #dropTarget:Lcom/sec/android/app/twlauncher/DropTarget;
    .end local v14           #coordinates:[I
    .end local v15           #dragBitmap:Landroid/graphics/Bitmap;
    .end local v16           #height:I
    .end local v17           #inDragRegion:Z
    .end local v19           #left:I
    .end local v20           #offsetX:I
    .end local v21           #offsetY:I
    .end local v22           #rect:Landroid/graphics/Rect;
    .end local v24           #scrollX:I
    .end local v25           #scrollY:I
    .end local v26           #top:I
    .end local v27           #touchX:F
    .end local v28           #touchY:F
    .end local v29           #width:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 556
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mShouldDrop:Z

    move v6, v0

    if-eqz v6, :cond_d

    .line 557
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->drop(FF)Z

    .line 558
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mShouldDrop:Z

    .line 560
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DragLayer;->endDrag()V

    goto/16 :goto_1

    .line 564
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DragLayer;->endDrag()V

    goto/16 :goto_1

    .line 444
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public removeDragListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 658
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    .line 659
    return-void
.end method

.method setDeleteRegion(Landroid/graphics/RectF;)V
    .locals 0
    .parameter "region"

    .prologue
    .line 677
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRegion:Landroid/graphics/RectF;

    .line 678
    return-void
.end method

.method public setDragListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 649
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    .line 650
    return-void
.end method

.method public setDragMenuListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 653
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    .line 654
    return-void
.end method

.method public setDragMenuScoller(Lcom/sec/android/app/twlauncher/DragScroller;)V
    .locals 0
    .parameter "scroller"

    .prologue
    .line 645
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragMenuScroller:Lcom/sec/android/app/twlauncher/DragScroller;

    .line 646
    return-void
.end method

.method public setDragScoller(Lcom/sec/android/app/twlauncher/DragScroller;)V
    .locals 0
    .parameter "scroller"

    .prologue
    .line 641
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragScroller:Lcom/sec/android/app/twlauncher/DragScroller;

    .line 642
    return-void
.end method

.method setIgnoredDropTarget(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 668
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mIgnoredDropTarget:Landroid/view/View;

    .line 669
    return-void
.end method

.method public setTrashPaint(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 729
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 730
    iget v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mSrcColor2:I

    .line 734
    .local v0, srcColor:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTrashPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 735
    return-void

    .line 732
    .end local v0           #srcColor:I
    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mSrcColor1:I

    .restart local v0       #srcColor:I
    goto :goto_0
.end method

.method public startAnimation(Landroid/view/View;FFFFFFI)V
    .locals 11
    .parameter "v"
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "duration"

    .prologue
    .line 715
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

    array-length v10, v1

    .line 716
    .local v10, size:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 717
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

    aget-object v1, v1, v9

    if-nez v1, :cond_1

    .line 718
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

    new-instance v0, Lcom/sec/android/app/twlauncher/DragAnimation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v2}, Lcom/sec/android/app/twlauncher/DragAnimation;-><init>(Landroid/view/animation/Interpolator;)V

    aput-object v0, v1, v9

    .local v0, ani:Lcom/sec/android/app/twlauncher/DragAnimation;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 719
    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/twlauncher/DragAnimation;->setAnimation(Landroid/view/View;FFFFFFI)V

    .line 720
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mIsDragAnimation:Z

    .line 721
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    .line 725
    .end local v0           #ani:Lcom/sec/android/app/twlauncher/DragAnimation;
    :cond_0
    return-void

    .line 716
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public startDrag(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V
    .locals 18
    .parameter "v"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"

    .prologue
    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object v14, v0

    if-nez v14, :cond_0

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "input_method"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 188
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object v14, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    move-object v14, v0

    if-eqz v14, :cond_5

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    move-object v14, v0

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/DragController$DragListener;->onDragStart(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .line 198
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRect:Landroid/graphics/Rect;

    move-object v9, v0

    .line 199
    .local v9, r:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v0, v9

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 201
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 202
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    move v14, v0

    iget v15, v9, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    .line 203
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    move v14, v0

    iget v15, v9, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    .line 205
    const/4 v14, 0x2

    move/from16 v0, p4

    move v1, v14

    if-ne v0, v1, :cond_2

    .line 206
    const v14, 0x7f06000a

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 207
    .local v5, child:Landroid/view/View;
    if-eqz v5, :cond_6

    .line 208
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    .line 209
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    .line 216
    .end local v5           #child:Landroid/view/View;
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->clearFocus()V

    .line 217
    const/4 v14, 0x0

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 219
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v13

    .line 220
    .local v13, willNotCache:Z
    const/4 v14, 0x0

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v6

    .line 225
    .local v6, color:I
    const/4 v14, 0x0

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 227
    if-eqz v6, :cond_3

    .line 228
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 230
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->buildDrawingCache()V

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 232
    .local v11, viewBitmap:Landroid/graphics/Bitmap;
    if-nez v11, :cond_7

    .line 233
    const-string v14, "Launcher.DragLayer"

    const-string v15, "startDrag().. drawing cache is a null"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "Failed to initialize dragging for the widget"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 236
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 237
    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 238
    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    move-object v14, v0

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    move-object v14, v0

    if-eqz v14, :cond_4

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    move-object v14, v0

    invoke-interface {v14}, Lcom/sec/android/app/twlauncher/DragController$DragListener;->onDragEnd()V

    .line 297
    :cond_4
    :goto_2
    return-void

    .line 193
    .end local v6           #color:I
    .end local v9           #r:Landroid/graphics/Rect;
    .end local v11           #viewBitmap:Landroid/graphics/Bitmap;
    .end local v13           #willNotCache:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    move-object v14, v0

    if-eqz v14, :cond_1

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    move-object v14, v0

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/DragController$DragListener;->onDragStart(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 211
    .restart local v5       #child:Landroid/view/View;
    .restart local v9       #r:Landroid/graphics/Rect;
    :cond_6
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    .line 212
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    goto/16 :goto_1

    .line 246
    .end local v5           #child:Landroid/view/View;
    .restart local v6       #color:I
    .restart local v11       #viewBitmap:Landroid/graphics/Bitmap;
    .restart local v13       #willNotCache:Z
    :cond_7
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 247
    .local v12, width:I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 249
    .local v8, height:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    .line 250
    .local v10, tag:Ljava/lang/Object;
    if-eqz v10, :cond_a

    instance-of v14, v10, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    if-nez v14, :cond_8

    instance-of v14, v10, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v14, :cond_a

    .line 252
    :cond_8
    const v14, 0x3f866666

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationTo:F

    .line 256
    :goto_3
    const/high16 v14, 0x3f80

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationFrom:F

    .line 257
    const/16 v14, 0x64

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationDuration:I

    .line 258
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    .line 259
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationType:I

    .line 261
    invoke-static {v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 262
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 263
    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 264
    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    move-object v7, v0

    .line 267
    .local v7, dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    sub-int/2addr v14, v12

    div-int/lit8 v14, v14, 0x2

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetX:I

    .line 268
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sub-int/2addr v14, v8

    div-int/lit8 v14, v14, 0x2

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetY:I

    .line 270
    if-nez p4, :cond_9

    .line 271
    const/4 v14, 0x4

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDimPaint:Landroid/graphics/Paint;

    move-object v14, v0

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    .line 275
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    .line 276
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mShouldDrop:Z

    .line 277
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mOriginator:Landroid/view/View;

    .line 278
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    .line 279
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mVibrator:Landroid/os/Vibrator;

    move-object v14, v0

    const-wide/16 v15, 0x23

    invoke-virtual/range {v14 .. v16}, Landroid/os/Vibrator;->vibrate(J)V

    .line 283
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mEnteredRegion:Z

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    goto/16 :goto_2

    .line 254
    .end local v7           #dragBitmap:Landroid/graphics/Bitmap;
    :cond_a
    const v14, 0x3f8ccccd

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationTo:F

    goto/16 :goto_3
.end method
