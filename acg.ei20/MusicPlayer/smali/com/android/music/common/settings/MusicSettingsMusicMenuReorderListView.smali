.class public Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;
.super Landroid/widget/ListView;
.source "MusicSettingsMusicMenuReorderListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$RemoveListener;,
        Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$DropListener;,
        Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$DragListener;
    }
.end annotation


# instance fields
.field private dndViewId:I

.field private dragImageX:I

.field private isDnd:Z

.field protected mAdapter:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;

.field private mContext:Landroid/content/Context;

.field private mCoordOffset:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragListener:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$DragListener;

.field private mDragPoint:I

.field private mDragPos:I

.field private mDragView:Landroid/widget/ImageView;

.field protected mDropListener:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$DropListener;

.field public mFinishHandler:Landroid/os/Handler;

.field private mFirstDragPos:I

.field private mHeight:I

.field private mItemHeightExpanded:I

.field private mItemHeightNormal:I

.field private mLowerBound:I

.field protected mRemoveListener:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$RemoveListener;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mUpperBound:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mTempRect:Landroid/graphics/Rect;

    .line 71
    iput v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->dragImageX:I

    .line 117
    new-instance v1, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$1;

    invoke-direct {v1, p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$1;-><init>(Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;)V

    iput-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mFinishHandler:Landroid/os/Handler;

    .line 457
    iput-boolean v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->isDnd:Z

    .line 458
    new-instance v1, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$2;

    invoke-direct {v1, p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$2;-><init>(Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;)V

    iput-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragListener:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$DragListener;

    .line 470
    new-instance v1, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$3;

    invoke-direct {v1, p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$3;-><init>(Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;)V

    iput-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDropListener:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$DropListener;

    .line 509
    new-instance v1, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$4;

    invoke-direct {v1, p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$4;-><init>(Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;)V

    iput-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mRemoveListener:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$RemoveListener;

    .line 79
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mTouchSlop:I

    .line 81
    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    .local v0, res:Landroid/content/res/Resources;
    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mItemHeightNormal:I

    .line 83
    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mItemHeightExpanded:I

    .line 84
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDropListener:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$DropListener;

    invoke-virtual {p0, v1}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->setDropListener(Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$DropListener;)V

    .line 85
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mRemoveListener:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$RemoveListener;

    invoke-virtual {p0, v1}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->setRemoveListener(Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$RemoveListener;)V

    .line 87
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->initAdapter(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->isDnd:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->isDnd:Z

    return p1
.end method

.method private adjustScrollBounds(I)V
    .locals 1
    .parameter "y"

    .prologue
    .line 225
    iget v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_0

    .line 226
    iget v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mUpperBound:I

    .line 228
    :cond_0
    iget v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1

    .line 229
    iget v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mLowerBound:I

    .line 231
    :cond_1
    return-void
.end method

.method private doExpansion()V
    .locals 9

    .prologue
    .line 276
    iget v7, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v0, v7, v8

    .line 277
    .local v0, childnum:I
    iget v7, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPos:I

    iget v8, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mFirstDragPos:I

    if-le v7, v8, :cond_0

    .line 278
    add-int/lit8 v0, v0, 0x1

    .line 281
    :cond_0
    iget v7, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mFirstDragPos:I

    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 283
    .local v1, first:Landroid/view/View;
    const/4 v3, 0x0

    .line 284
    .local v3, i:I
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 285
    .local v6, vv:Landroid/view/View;
    if-nez v6, :cond_1

    .line 312
    return-void

    .line 288
    :cond_1
    iget v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mItemHeightNormal:I

    .line 289
    .local v2, height:I
    const/4 v5, 0x0

    .line 291
    .local v5, visibility:I
    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 293
    iget v7, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPos:I

    iget v8, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mFirstDragPos:I

    if-ne v7, v8, :cond_3

    .line 294
    const/4 v5, 0x4

    .line 306
    :cond_2
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 307
    .local v4, params:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 309
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 283
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 296
    .end local v4           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 299
    :cond_4
    if-ne v3, v0, :cond_2

    .line 301
    iget v7, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->getCount()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 303
    iget v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mItemHeightExpanded:I

    goto :goto_1
.end method

.method private dragView(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 431
    const-string v0, "Reorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DragView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPoint:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mCoordOffset:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 435
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private getItemForPosition(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 212
    iget v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPoint:I

    sub-int v2, p1, v2

    const/16 v3, 0x20

    sub-int v0, v2, v3

    .line 213
    .local v0, adjustedy:I
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->myPointToPosition(II)I

    move-result v1

    .line 214
    .local v1, pos:I
    if-ltz v1, :cond_1

    .line 215
    iget v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mFirstDragPos:I

    if-gt v1, v2, :cond_0

    .line 216
    add-int/lit8 v1, v1, 0x1

    .line 221
    :cond_0
    :goto_0
    return v1

    .line 218
    :cond_1
    if-gez v0, :cond_0

    .line 219
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private myPointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 199
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mTempRect:Landroid/graphics/Rect;

    .line 200
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->getChildCount()I

    move-result v1

    .line 201
    .local v1, count:I
    const/4 v4, 0x1

    sub-int v3, v1, v4

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    .line 202
    invoke-virtual {p0, v3}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 203
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 204
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->getFirstVisiblePosition()I

    move-result v4

    add-int/2addr v4, v3

    .line 208
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 201
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 208
    .end local v0           #child:Landroid/view/View;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private startDragging(Landroid/graphics/Bitmap;I)V
    .locals 5
    .parameter "bm"
    .parameter "y"

    .prologue
    const/4 v4, -0x2

    .line 399
    const-string v1, "Reorder"

    const-string v2, "StartDragging"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->stopDragging()V

    .line 402
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 403
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x35

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 404
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->dragImageX:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 405
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPoint:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mCoordOffset:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 407
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 408
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 409
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x198

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 413
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 414
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 416
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 420
    .local v0, v:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 421
    const/16 v1, 0xaa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 422
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 424
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowManager:Landroid/view/WindowManager;

    .line 426
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragView:Landroid/widget/ImageView;

    .line 428
    return-void
.end method

.method private stopDragging()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 439
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 441
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 442
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 443
    iput-object v3, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragView:Landroid/widget/ImageView;

    .line 445
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_0
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 446
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 447
    iput-object v3, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 449
    :cond_1
    return-void
.end method

.method private unExpandViews(Z)V
    .locals 7
    .parameter "deletion"

    .prologue
    const/4 v6, 0x0

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, i:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 239
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_1

    .line 240
    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->getFirstVisiblePosition()I

    move-result v2

    .line 242
    .local v2, position:I
    invoke-virtual {p0, v6}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 243
    .local v4, y:I
    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 244
    invoke-virtual {p0, v2, v4}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->setSelectionFromTop(II)V

    .line 246
    .end local v2           #position:I
    .end local v4           #y:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->layoutChildren()V

    .line 247
    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 248
    if-nez v3, :cond_1

    .line 261
    return-void

    .line 254
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 255
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    const/4 v5, -0x2

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 256
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected initAdapter(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 94
    new-instance v0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;

    invoke-direct {v0, p1, p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;-><init>(Landroid/content/Context;Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;)V

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mAdapter:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;

    .line 96
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mAdapter:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, 0x0

    const-string v11, "Reorder"

    .line 137
    const-string v9, "Reorder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onInterceptTouchEvent "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragListener:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$DragListener;

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDropListener:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$DropListener;

    if-eqz v9, :cond_1

    .line 139
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 184
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 185
    .local v5, returnV:Z
    const-string v9, "Reorder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Return : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v5

    .line 186
    .end local v5           #returnV:Z
    :goto_1
    return v9

    .line 141
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v7, v9

    .line 142
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v9, v9

    const/16 v10, 0x64

    sub-int v8, v9, v10

    .line 144
    .local v8, y:I
    invoke-virtual {p0, v7, v8}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->pointToPosition(II)I

    move-result v3

    .line 145
    .local v3, itemnum:I
    const/4 v9, -0x1

    if-eq v3, v9, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v3, v9

    invoke-virtual {p0, v9}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 150
    .local v2, item:Landroid/view/View;
    const v9, 0x7f0c00f1

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v7, :cond_2

    .line 151
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto :goto_1

    .line 153
    :cond_2
    const-string v9, "Reorder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "item : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    iput v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mItemHeightNormal:I

    .line 155
    iget v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mItemHeightNormal:I

    mul-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mItemHeightExpanded:I

    .line 156
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v8, v9

    iput v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPoint:I

    .line 157
    const/16 v9, 0x32

    iput v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mCoordOffset:I

    .line 158
    iget v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->dndViewId:I

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 159
    .local v1, dragger:Landroid/view/View;
    if-nez v1, :cond_3

    .line 160
    move-object v1, v2

    .line 161
    :cond_3
    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mTempRect:Landroid/graphics/Rect;

    .line 162
    .local v4, r:Landroid/graphics/Rect;
    invoke-virtual {v1, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 163
    iget v9, v4, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v9, v9, 0x2

    if-ge v7, v9, :cond_4

    .line 164
    invoke-virtual {v2, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 165
    invoke-virtual {v2}, Landroid/view/View;->refreshDrawableState()V

    .line 166
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 168
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 169
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v8}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->startDragging(Landroid/graphics/Bitmap;I)V

    .line 170
    iput v3, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPos:I

    .line 171
    iget v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPos:I

    iput v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mFirstDragPos:I

    .line 172
    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->getHeight()I

    move-result v9

    iput v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mHeight:I

    .line 174
    iget v6, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mTouchSlop:I

    .line 175
    .local v6, touchSlop:I
    sub-int v9, v8, v6

    iget v10, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mHeight:I

    div-int/lit8 v10, v10, 0x3

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mUpperBound:I

    .line 176
    add-int v9, v8, v6

    iget v10, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mHeight:I

    mul-int/lit8 v10, v10, 0x2

    div-int/lit8 v10, v10, 0x3

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mLowerBound:I

    .line 177
    const-string v9, "Reorder"

    const-string v9, "Return false"

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v12

    .line 178
    goto/16 :goto_1

    .line 180
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #touchSlop:I
    :cond_4
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragView:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    .line 316
    const-string v9, "Reorder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onTouchEvent 1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragListener:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$DragListener;

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDropListener:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$DropListener;

    if-eqz v9, :cond_b

    :cond_0
    iget-object v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v9, :cond_b

    .line 318
    const-string v9, "Reorder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onTouchEvent 2"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 320
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 393
    :cond_1
    :goto_0
    const/4 v9, 0x1

    .line 395
    .end local v0           #action:I
    :goto_1
    return v9

    .line 323
    .restart local v0       #action:I
    :pswitch_0
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mTempRect:Landroid/graphics/Rect;

    .line 324
    .local v3, r:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 325
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->stopDragging()V

    .line 326
    iget-object v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDropListener:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$DropListener;

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPos:I

    if-ltz v9, :cond_2

    iget v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->getCount()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 327
    iget-object v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDropListener:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$DropListener;

    iget v10, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mFirstDragPos:I

    iget v11, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPos:I

    invoke-interface {v9, v10, v11}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$DropListener;->drop(II)V

    .line 329
    :cond_2
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->unExpandViews(Z)V

    goto :goto_0

    .line 342
    .end local v3           #r:Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 343
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 347
    .local v8, y:I
    const/16 v9, 0x32

    iput v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mCoordOffset:I

    .line 348
    invoke-direct {p0, v7, v8}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->dragView(II)V

    .line 350
    invoke-direct {p0, v8}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->getItemForPosition(I)I

    move-result v1

    .line 351
    .local v1, itemnum:I
    const-string v9, "Reroder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "X : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Y : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ItemNum : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    if-ltz v1, :cond_1

    .line 353
    if-eqz v0, :cond_3

    iget v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPos:I

    if-eq v1, v9, :cond_5

    .line 354
    :cond_3
    iget-object v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragListener:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$DragListener;

    if-eqz v9, :cond_4

    .line 355
    iget-object v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragListener:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$DragListener;

    iget v10, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPos:I

    invoke-interface {v9, v10, v1}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$DragListener;->drag(II)V

    .line 357
    :cond_4
    iput v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPos:I

    .line 366
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->doExpansion()V

    .line 368
    :cond_5
    const/4 v5, 0x0

    .line 369
    .local v5, speed:I
    invoke-direct {p0, v8}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->adjustScrollBounds(I)V

    .line 370
    iget v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mLowerBound:I

    add-int/lit8 v9, v9, 0x32

    if-le v8, v9, :cond_9

    .line 372
    iget v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mHeight:I

    iget v10, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mLowerBound:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x32

    div-int/lit8 v9, v9, 0x2

    if-le v8, v9, :cond_8

    const/16 v9, 0x32

    move v5, v9

    .line 377
    :cond_6
    :goto_2
    if-eqz v5, :cond_1

    .line 378
    const/4 v9, 0x0

    iget v10, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mHeight:I

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {p0, v9, v10}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->pointToPosition(II)I

    move-result v4

    .line 379
    .local v4, ref:I
    const/4 v9, -0x1

    if-ne v4, v9, :cond_7

    .line 381
    const/4 v9, 0x0

    iget v10, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mHeight:I

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->getDividerHeight()I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x40

    invoke-virtual {p0, v9, v10}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->pointToPosition(II)I

    move-result v4

    .line 383
    :cond_7
    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p0, v9}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 384
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    .line 386
    .local v2, pos:I
    sub-int v9, v2, v5

    invoke-virtual {p0, v4, v9}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 372
    .end local v2           #pos:I
    .end local v4           #ref:I
    .end local v6           #v:Landroid/view/View;
    :cond_8
    const/16 v9, 0x14

    move v5, v9

    goto :goto_2

    .line 373
    :cond_9
    iget v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mUpperBound:I

    const/16 v10, 0x64

    sub-int/2addr v9, v10

    if-ge v8, v9, :cond_6

    .line 375
    iget v9, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mUpperBound:I

    div-int/lit8 v9, v9, 0x2

    const/16 v10, 0x64

    sub-int/2addr v9, v10

    if-ge v8, v9, :cond_a

    const/16 v9, -0x32

    move v5, v9

    :goto_3
    goto :goto_2

    :cond_a
    const/16 v9, -0x14

    move v5, v9

    goto :goto_3

    .line 395
    .end local v0           #action:I
    .end local v1           #itemnum:I
    .end local v5           #speed:I
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_b
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_1

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDropListener(Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$DropListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDropListener:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$DropListener;

    .line 534
    return-void
.end method

.method public setRemoveListener(Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$RemoveListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mRemoveListener:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$RemoveListener;

    .line 543
    return-void
.end method

.method public submitReorder()V
    .locals 5

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;

    invoke-virtual {v3}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 106
    .local v0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;>;"
    const-string v2, ""

    .line 108
    .local v2, temp:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;

    iget v3, v3, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;->mId:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_0
    invoke-static {v2}, Lcom/android/music/common/util/MusicValueSaveController;->setMusicMenuOrder(Ljava/lang/String;)V

    .line 113
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/music/common/util/MusicValueSaveController;->saveSettingValue(Landroid/content/Context;)V

    .line 115
    return-void
.end method
