.class public Lcom/android/music/list/view/MpListReorderView;
.super Landroid/widget/ListView;
.source "MpListReorderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/list/view/MpListReorderView$RemoveListener;,
        Lcom/android/music/list/view/MpListReorderView$DropListener;,
        Lcom/android/music/list/view/MpListReorderView$DragListener;
    }
.end annotation


# static fields
.field private static final FLING:I = 0x0

.field private static final SLIDE:I = 0x1


# instance fields
.field private mAdapter:Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;

.field private mContext:Landroid/content/Context;

.field private mCoordOffset:I

.field private mCursor:Landroid/database/Cursor;

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragListener:Lcom/android/music/list/view/MpListReorderView$DragListener;

.field private mDragPoint:I

.field private mDragPos:I

.field private mDragView:Landroid/widget/ImageView;

.field private mDropListener:Lcom/android/music/list/view/MpListReorderView$DropListener;

.field private mFilter:Lcom/android/music/common/data/MpListFilter;

.field public mFinishHandler:Landroid/os/Handler;

.field private mFirstDragPos:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHeight:I

.field private mItemHeightExpanded:I

.field private mItemHeightNormal:I

.field private mListType:I

.field private mLowerBound:I

.field private mRemoveListener:Lcom/android/music/list/view/MpListReorderView$RemoveListener;

.field private mRemoveMode:I

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mUpperBound:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "listType"
    .parameter "con"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/music/list/view/MpListReorderView;->mRemoveMode:I

    .line 60
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/music/list/view/MpListReorderView;->mTempRect:Landroid/graphics/Rect;

    .line 126
    new-instance v1, Lcom/android/music/list/view/MpListReorderView$1;

    invoke-direct {v1, p0}, Lcom/android/music/list/view/MpListReorderView$1;-><init>(Lcom/android/music/list/view/MpListReorderView;)V

    iput-object v1, p0, Lcom/android/music/list/view/MpListReorderView;->mFinishHandler:Landroid/os/Handler;

    .line 447
    new-instance v1, Lcom/android/music/list/view/MpListReorderView$3;

    invoke-direct {v1, p0}, Lcom/android/music/list/view/MpListReorderView$3;-><init>(Lcom/android/music/list/view/MpListReorderView;)V

    iput-object v1, p0, Lcom/android/music/list/view/MpListReorderView;->mDropListener:Lcom/android/music/list/view/MpListReorderView$DropListener;

    .line 472
    new-instance v1, Lcom/android/music/list/view/MpListReorderView$4;

    invoke-direct {v1, p0}, Lcom/android/music/list/view/MpListReorderView$4;-><init>(Lcom/android/music/list/view/MpListReorderView;)V

    iput-object v1, p0, Lcom/android/music/list/view/MpListReorderView;->mRemoveListener:Lcom/android/music/list/view/MpListReorderView$RemoveListener;

    .line 75
    iput-object p1, p0, Lcom/android/music/list/view/MpListReorderView;->mContext:Landroid/content/Context;

    .line 76
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/music/list/view/MpListReorderView;->mTouchSlop:I

    .line 77
    invoke-virtual {p0}, Lcom/android/music/list/view/MpListReorderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    .local v0, res:Landroid/content/res/Resources;
    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/music/list/view/MpListReorderView;->mItemHeightNormal:I

    .line 79
    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/music/list/view/MpListReorderView;->mItemHeightExpanded:I

    .line 81
    iget-object v1, p0, Lcom/android/music/list/view/MpListReorderView;->mDropListener:Lcom/android/music/list/view/MpListReorderView$DropListener;

    invoke-virtual {p0, v1}, Lcom/android/music/list/view/MpListReorderView;->setDropListener(Lcom/android/music/list/view/MpListReorderView$DropListener;)V

    .line 82
    iget-object v1, p0, Lcom/android/music/list/view/MpListReorderView;->mRemoveListener:Lcom/android/music/list/view/MpListReorderView$RemoveListener;

    invoke-virtual {p0, v1}, Lcom/android/music/list/view/MpListReorderView;->setRemoveListener(Lcom/android/music/list/view/MpListReorderView$RemoveListener;)V

    .line 84
    new-instance v1, Lcom/android/music/common/data/MpListFilter;

    invoke-direct {v1, p2, v7}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    iput-object v1, p0, Lcom/android/music/list/view/MpListReorderView;->mFilter:Lcom/android/music/common/data/MpListFilter;

    .line 85
    aget-object v1, p3, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/music/list/view/MpListReorderView;->mFilter:Lcom/android/music/common/data/MpListFilter;

    iget-object v1, v1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    iget-object v3, p0, Lcom/android/music/list/view/MpListReorderView;->mFilter:Lcom/android/music/common/data/MpListFilter;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v4, p3, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v2, v1, v6

    .line 93
    :goto_0
    iput p2, p0, Lcom/android/music/list/view/MpListReorderView;->mListType:I

    .line 94
    invoke-direct {p0}, Lcom/android/music/list/view/MpListReorderView;->initCursor()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/view/MpListReorderView;->mCursor:Landroid/database/Cursor;

    .line 96
    iget-object v1, p0, Lcom/android/music/list/view/MpListReorderView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/music/list/view/MpListReorderView;->initAdapter(Landroid/content/Context;)V

    .line 97
    const/high16 v1, 0x100

    invoke-virtual {p0, v1}, Lcom/android/music/list/view/MpListReorderView;->setScrollBarStyle(I)V

    .line 100
    return-void

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/android/music/list/view/MpListReorderView;->mFilter:Lcom/android/music/common/data/MpListFilter;

    iget-object v1, v1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    iget-object v3, p0, Lcom/android/music/list/view/MpListReorderView;->mFilter:Lcom/android/music/common/data/MpListFilter;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v4, p3, v7

    invoke-direct {v2, v3, v6, v6, v4}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v2, v1, v6

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/music/list/view/MpListReorderView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/music/list/view/MpListReorderView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/list/view/MpListReorderView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/music/list/view/MpListReorderView;->mDragView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/list/view/MpListReorderView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/music/list/view/MpListReorderView;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/music/list/view/MpListReorderView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/music/list/view/MpListReorderView;->stopDragging()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/music/list/view/MpListReorderView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/music/list/view/MpListReorderView;->mFirstDragPos:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/music/list/view/MpListReorderView;)Lcom/android/music/list/view/MpListReorderView$RemoveListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/music/list/view/MpListReorderView;->mRemoveListener:Lcom/android/music/list/view/MpListReorderView$RemoveListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/music/list/view/MpListReorderView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/music/list/view/MpListReorderView;->unExpandViews(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/music/list/view/MpListReorderView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/music/list/view/MpListReorderView;->removePlaylistItem(I)V

    return-void
.end method

.method private adjustScrollBounds(I)V
    .locals 1
    .parameter "y"

    .prologue
    .line 231
    iget v0, p0, Lcom/android/music/list/view/MpListReorderView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_0

    .line 232
    iget v0, p0, Lcom/android/music/list/view/MpListReorderView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/music/list/view/MpListReorderView;->mUpperBound:I

    .line 234
    :cond_0
    iget v0, p0, Lcom/android/music/list/view/MpListReorderView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1

    .line 235
    iget v0, p0, Lcom/android/music/list/view/MpListReorderView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/music/list/view/MpListReorderView;->mLowerBound:I

    .line 237
    :cond_1
    return-void
.end method

.method private doExpansion()V
    .locals 10

    .prologue
    .line 280
    iget v7, p0, Lcom/android/music/list/view/MpListReorderView;->mDragPos:I

    invoke-virtual {p0}, Lcom/android/music/list/view/MpListReorderView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v0, v7, v8

    .line 281
    .local v0, childnum:I
    iget v7, p0, Lcom/android/music/list/view/MpListReorderView;->mDragPos:I

    iget v8, p0, Lcom/android/music/list/view/MpListReorderView;->mFirstDragPos:I

    if-le v7, v8, :cond_0

    .line 282
    add-int/lit8 v0, v0, 0x1

    .line 285
    :cond_0
    iget v7, p0, Lcom/android/music/list/view/MpListReorderView;->mFirstDragPos:I

    invoke-virtual {p0}, Lcom/android/music/list/view/MpListReorderView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/android/music/list/view/MpListReorderView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 287
    .local v1, first:Landroid/view/View;
    const/4 v3, 0x0

    .line 288
    .local v3, i:I
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/music/list/view/MpListReorderView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 289
    .local v6, vv:Landroid/view/View;
    if-nez v6, :cond_1

    .line 313
    return-void

    .line 292
    :cond_1
    iget v2, p0, Lcom/android/music/list/view/MpListReorderView;->mItemHeightNormal:I

    .line 293
    .local v2, height:I
    const/4 v5, 0x0

    .line 294
    .local v5, visibility:I
    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 296
    iget v7, p0, Lcom/android/music/list/view/MpListReorderView;->mDragPos:I

    iget v8, p0, Lcom/android/music/list/view/MpListReorderView;->mFirstDragPos:I

    if-ne v7, v8, :cond_3

    .line 298
    const/4 v5, 0x4

    .line 308
    :cond_2
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 309
    .local v4, params:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 310
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 287
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 301
    .end local v4           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 303
    :cond_4
    if-ne v3, v0, :cond_2

    .line 304
    iget v7, p0, Lcom/android/music/list/view/MpListReorderView;->mDragPos:I

    invoke-virtual {p0}, Lcom/android/music/list/view/MpListReorderView;->getCount()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_2

    .line 305
    iget v2, p0, Lcom/android/music/list/view/MpListReorderView;->mItemHeightExpanded:I

    goto :goto_1
.end method

.method private dragView(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 415
    iget v2, p0, Lcom/android/music/list/view/MpListReorderView;->mRemoveMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 416
    const/high16 v0, 0x3f80

    .line 417
    .local v0, alpha:F
    iget-object v2, p0, Lcom/android/music/list/view/MpListReorderView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 418
    .local v1, width:I
    div-int/lit8 v2, v1, 0x2

    if-le p1, v2, :cond_0

    .line 419
    sub-int v2, v1, p1

    int-to-float v2, v2

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 421
    :cond_0
    iget-object v2, p0, Lcom/android/music/list/view/MpListReorderView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 423
    .end local v0           #alpha:F
    .end local v1           #width:I
    :cond_1
    iget-object v2, p0, Lcom/android/music/list/view/MpListReorderView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/music/list/view/MpListReorderView;->mDragPoint:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/android/music/list/view/MpListReorderView;->mCoordOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 424
    iget-object v2, p0, Lcom/android/music/list/view/MpListReorderView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/music/list/view/MpListReorderView;->mDragView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/music/list/view/MpListReorderView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    return-void
.end method

.method private getColumn()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 109
    .local v0, strings:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    .line 110
    const/4 v1, 0x1

    const-string v2, "artist"

    aput-object v2, v0, v1

    .line 111
    return-object v0
.end method

.method private getItemForPosition(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 218
    iget v2, p0, Lcom/android/music/list/view/MpListReorderView;->mDragPoint:I

    sub-int v2, p1, v2

    const/16 v3, 0x20

    sub-int v0, v2, v3

    .line 219
    .local v0, adjustedy:I
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/music/list/view/MpListReorderView;->myPointToPosition(II)I

    move-result v1

    .line 220
    .local v1, pos:I
    if-ltz v1, :cond_1

    .line 221
    iget v2, p0, Lcom/android/music/list/view/MpListReorderView;->mFirstDragPos:I

    if-gt v1, v2, :cond_0

    .line 222
    add-int/lit8 v1, v1, 0x1

    .line 227
    :cond_0
    :goto_0
    return v1

    .line 224
    :cond_1
    if-gez v0, :cond_0

    .line 225
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initAdapter(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 116
    new-instance v0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;

    iget-object v1, p0, Lcom/android/music/list/view/MpListReorderView;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0}, Lcom/android/music/list/view/MpListReorderView;->getColumn()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/music/list/view/MpListReorderView;->mAdapter:Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;

    .line 118
    iget-object v0, p0, Lcom/android/music/list/view/MpListReorderView;->mAdapter:Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/list/view/MpListReorderView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    return-void
.end method

.method private initCursor()Landroid/database/Cursor;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 103
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->getInstance()Lcom/android/music/common/data/MusicDB;

    move-result-object v0

    .line 104
    .local v0, musicDB:Lcom/android/music/common/data/MusicDB;
    iget v1, p0, Lcom/android/music/list/view/MpListReorderView;->mListType:I

    iget-object v2, p0, Lcom/android/music/list/view/MpListReorderView;->mFilter:Lcom/android/music/common/data/MpListFilter;

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/music/common/data/MusicDB;->getMusicListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private myPointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 205
    iget-object v2, p0, Lcom/android/music/list/view/MpListReorderView;->mTempRect:Landroid/graphics/Rect;

    .line 206
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/music/list/view/MpListReorderView;->getChildCount()I

    move-result v1

    .line 207
    .local v1, count:I
    const/4 v4, 0x1

    sub-int v3, v1, v4

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    .line 208
    invoke-virtual {p0, v3}, Lcom/android/music/list/view/MpListReorderView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 209
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 210
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/android/music/list/view/MpListReorderView;->getFirstVisiblePosition()I

    move-result v4

    add-int/2addr v4, v3

    .line 214
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 207
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 214
    .end local v0           #child:Landroid/view/View;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private removePlaylistItem(I)V
    .locals 8
    .parameter "which"

    .prologue
    const/4 v7, 0x0

    .line 479
    invoke-virtual {p0}, Lcom/android/music/list/view/MpListReorderView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/android/music/list/view/MpListReorderView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 481
    .local v4, v:Landroid/view/View;
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 482
    invoke-virtual {p0}, Lcom/android/music/list/view/MpListReorderView;->invalidateViews()V

    .line 484
    iget-object v5, p0, Lcom/android/music/list/view/MpListReorderView;->mCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/android/music/list/view/MpListReorderView;->mListType:I

    invoke-static {v6}, Lcom/android/music/common/util/ListType;->getAudioIdColumn(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 486
    .local v0, colidx:I
    iget-object v5, p0, Lcom/android/music/list/view/MpListReorderView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 487
    iget-object v5, p0, Lcom/android/music/list/view/MpListReorderView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 489
    .local v1, id:J
    const/16 v5, 0xd

    iget v6, p0, Lcom/android/music/list/view/MpListReorderView;->mListType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v3

    .line 490
    .local v3, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/music/list/view/MpListReorderView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 492
    return-void
.end method

.method private startDragging(Landroid/graphics/Bitmap;I)V
    .locals 7
    .parameter "bm"
    .parameter "y"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 386
    const-string v2, "@@@"

    const-string v3, "startDragging"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-direct {p0}, Lcom/android/music/list/view/MpListReorderView;->stopDragging()V

    .line 389
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/android/music/list/view/MpListReorderView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 390
    iget-object v2, p0, Lcom/android/music/list/view/MpListReorderView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x30

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 391
    iget-object v2, p0, Lcom/android/music/list/view/MpListReorderView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 392
    iget-object v2, p0, Lcom/android/music/list/view/MpListReorderView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/music/list/view/MpListReorderView;->mDragPoint:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/android/music/list/view/MpListReorderView;->mCoordOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 394
    iget-object v2, p0, Lcom/android/music/list/view/MpListReorderView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 395
    iget-object v2, p0, Lcom/android/music/list/view/MpListReorderView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 396
    iget-object v2, p0, Lcom/android/music/list/view/MpListReorderView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x198

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 400
    iget-object v2, p0, Lcom/android/music/list/view/MpListReorderView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 401
    iget-object v2, p0, Lcom/android/music/list/view/MpListReorderView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 403
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/music/list/view/MpListReorderView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 404
    .local v1, v:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/music/list/view/MpListReorderView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 405
    .local v0, backGroundColor:I
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 406
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 407
    iput-object p1, p0, Lcom/android/music/list/view/MpListReorderView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 409
    iget-object v2, p0, Lcom/android/music/list/view/MpListReorderView;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/music/list/view/MpListReorderView;->mWindowManager:Landroid/view/WindowManager;

    .line 410
    iget-object v2, p0, Lcom/android/music/list/view/MpListReorderView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/music/list/view/MpListReorderView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    iput-object v1, p0, Lcom/android/music/list/view/MpListReorderView;->mDragView:Landroid/widget/ImageView;

    .line 412
    return-void
.end method

.method private stopDragging()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 428
    iget-object v1, p0, Lcom/android/music/list/view/MpListReorderView;->mDragView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/android/music/list/view/MpListReorderView;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 430
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/music/list/view/MpListReorderView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 431
    iget-object v1, p0, Lcom/android/music/list/view/MpListReorderView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 432
    iput-object v3, p0, Lcom/android/music/list/view/MpListReorderView;->mDragView:Landroid/widget/ImageView;

    .line 434
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_0
    iget-object v1, p0, Lcom/android/music/list/view/MpListReorderView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/android/music/list/view/MpListReorderView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 436
    iput-object v3, p0, Lcom/android/music/list/view/MpListReorderView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 438
    :cond_1
    return-void
.end method

.method private unExpandViews(Z)V
    .locals 7
    .parameter "deletion"

    .prologue
    const/4 v6, 0x0

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, i:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/music/list/view/MpListReorderView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 245
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_1

    .line 246
    if-eqz p1, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/android/music/list/view/MpListReorderView;->getFirstVisiblePosition()I

    move-result v2

    .line 249
    .local v2, position:I
    invoke-virtual {p0, v6}, Lcom/android/music/list/view/MpListReorderView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 250
    .local v4, y:I
    invoke-virtual {p0}, Lcom/android/music/list/view/MpListReorderView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/music/list/view/MpListReorderView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 251
    invoke-virtual {p0, v2, v4}, Lcom/android/music/list/view/MpListReorderView;->setSelectionFromTop(II)V

    .line 254
    .end local v2           #position:I
    .end local v4           #y:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/list/view/MpListReorderView;->layoutChildren()V

    .line 255
    invoke-virtual {p0, v0}, Lcom/android/music/list/view/MpListReorderView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 256
    if-nez v3, :cond_1

    .line 265
    return-void

    .line 260
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 261
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lcom/android/music/list/view/MpListReorderView;->mItemHeightNormal:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 262
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    .line 137
    iget-object v8, p0, Lcom/android/music/list/view/MpListReorderView;->mRemoveListener:Lcom/android/music/list/view/MpListReorderView$RemoveListener;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/music/list/view/MpListReorderView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v8, :cond_0

    .line 138
    iget v8, p0, Lcom/android/music/list/view/MpListReorderView;->mRemoveMode:I

    if-nez v8, :cond_0

    .line 139
    new-instance v8, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/music/list/view/MpListReorderView;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/android/music/list/view/MpListReorderView$2;

    invoke-direct {v10, p0}, Lcom/android/music/list/view/MpListReorderView$2;-><init>(Lcom/android/music/list/view/MpListReorderView;)V

    invoke-direct {v8, v9, v10}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v8, p0, Lcom/android/music/list/view/MpListReorderView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 162
    :cond_0
    iget-object v8, p0, Lcom/android/music/list/view/MpListReorderView;->mDragListener:Lcom/android/music/list/view/MpListReorderView$DragListener;

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/music/list/view/MpListReorderView;->mDropListener:Lcom/android/music/list/view/MpListReorderView$DropListener;

    if-eqz v8, :cond_2

    .line 163
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 197
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :goto_1
    return v8

    .line 165
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 166
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 167
    .local v7, y:I
    invoke-virtual {p0, v6, v7}, Lcom/android/music/list/view/MpListReorderView;->pointToPosition(II)I

    move-result v3

    .line 168
    .local v3, itemnum:I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_2

    .line 171
    invoke-virtual {p0}, Lcom/android/music/list/view/MpListReorderView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v3, v8

    invoke-virtual {p0, v8}, Lcom/android/music/list/view/MpListReorderView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 173
    .local v2, item:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    sub-int v8, v7, v8

    iput v8, p0, Lcom/android/music/list/view/MpListReorderView;->mDragPoint:I

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v8, v7

    iput v8, p0, Lcom/android/music/list/view/MpListReorderView;->mCoordOffset:I

    .line 175
    const v8, 0x7f0c0049

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 176
    .local v1, dragger:Landroid/view/View;
    iget-object v4, p0, Lcom/android/music/list/view/MpListReorderView;->mTempRect:Landroid/graphics/Rect;

    .line 177
    .local v4, r:Landroid/graphics/Rect;
    invoke-virtual {v1, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 179
    iget v8, v4, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v8, v8, 0x2

    if-ge v6, v8, :cond_3

    .line 180
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 183
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v7}, Lcom/android/music/list/view/MpListReorderView;->startDragging(Landroid/graphics/Bitmap;I)V

    .line 185
    iput v3, p0, Lcom/android/music/list/view/MpListReorderView;->mDragPos:I

    .line 186
    iget v8, p0, Lcom/android/music/list/view/MpListReorderView;->mDragPos:I

    iput v8, p0, Lcom/android/music/list/view/MpListReorderView;->mFirstDragPos:I

    .line 187
    invoke-virtual {p0}, Lcom/android/music/list/view/MpListReorderView;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/android/music/list/view/MpListReorderView;->mHeight:I

    .line 188
    iget v5, p0, Lcom/android/music/list/view/MpListReorderView;->mTouchSlop:I

    .line 189
    .local v5, touchSlop:I
    sub-int v8, v7, v5

    iget v9, p0, Lcom/android/music/list/view/MpListReorderView;->mHeight:I

    div-int/lit8 v9, v9, 0x3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/android/music/list/view/MpListReorderView;->mUpperBound:I

    .line 190
    add-int v8, v7, v5

    iget v9, p0, Lcom/android/music/list/view/MpListReorderView;->mHeight:I

    mul-int/lit8 v9, v9, 0x2

    div-int/lit8 v9, v9, 0x3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/android/music/list/view/MpListReorderView;->mLowerBound:I

    .line 191
    const/4 v8, 0x0

    goto :goto_1

    .line 193
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #touchSlop:I
    :cond_3
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/music/list/view/MpListReorderView;->mDragView:Landroid/widget/ImageView;

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 317
    iget-object v9, p0, Lcom/android/music/list/view/MpListReorderView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v9, :cond_0

    .line 318
    iget-object v9, p0, Lcom/android/music/list/view/MpListReorderView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v9, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 320
    :cond_0
    iget-object v9, p0, Lcom/android/music/list/view/MpListReorderView;->mDragListener:Lcom/android/music/list/view/MpListReorderView$DragListener;

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/music/list/view/MpListReorderView;->mDropListener:Lcom/android/music/list/view/MpListReorderView$DropListener;

    if-eqz v9, :cond_e

    :cond_1
    iget-object v9, p0, Lcom/android/music/list/view/MpListReorderView;->mDragView:Landroid/widget/ImageView;

    if-eqz v9, :cond_e

    .line 321
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 322
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_0
    move v9, v13

    .line 381
    .end local v0           #action:I
    :goto_1
    return v9

    .line 325
    .restart local v0       #action:I
    :pswitch_0
    iget-object v3, p0, Lcom/android/music/list/view/MpListReorderView;->mTempRect:Landroid/graphics/Rect;

    .line 326
    .local v3, r:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/music/list/view/MpListReorderView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 327
    invoke-direct {p0}, Lcom/android/music/list/view/MpListReorderView;->stopDragging()V

    .line 328
    iget v9, p0, Lcom/android/music/list/view/MpListReorderView;->mRemoveMode:I

    if-ne v9, v13, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, v3, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v10, v10, 0x3

    div-int/lit8 v10, v10, 0x4

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    .line 329
    iget-object v9, p0, Lcom/android/music/list/view/MpListReorderView;->mRemoveListener:Lcom/android/music/list/view/MpListReorderView$RemoveListener;

    if-eqz v9, :cond_3

    .line 330
    iget-object v9, p0, Lcom/android/music/list/view/MpListReorderView;->mRemoveListener:Lcom/android/music/list/view/MpListReorderView$RemoveListener;

    iget v10, p0, Lcom/android/music/list/view/MpListReorderView;->mFirstDragPos:I

    invoke-interface {v9, v10}, Lcom/android/music/list/view/MpListReorderView$RemoveListener;->remove(I)V

    .line 332
    :cond_3
    invoke-direct {p0, v13}, Lcom/android/music/list/view/MpListReorderView;->unExpandViews(Z)V

    goto :goto_0

    .line 334
    :cond_4
    iget-object v9, p0, Lcom/android/music/list/view/MpListReorderView;->mDropListener:Lcom/android/music/list/view/MpListReorderView$DropListener;

    if-eqz v9, :cond_5

    iget v9, p0, Lcom/android/music/list/view/MpListReorderView;->mDragPos:I

    if-ltz v9, :cond_5

    iget v9, p0, Lcom/android/music/list/view/MpListReorderView;->mDragPos:I

    invoke-virtual {p0}, Lcom/android/music/list/view/MpListReorderView;->getCount()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 335
    iget-object v9, p0, Lcom/android/music/list/view/MpListReorderView;->mDropListener:Lcom/android/music/list/view/MpListReorderView$DropListener;

    iget v10, p0, Lcom/android/music/list/view/MpListReorderView;->mFirstDragPos:I

    iget v11, p0, Lcom/android/music/list/view/MpListReorderView;->mDragPos:I

    invoke-interface {v9, v10, v11}, Lcom/android/music/list/view/MpListReorderView$DropListener;->drop(II)V

    .line 337
    :cond_5
    invoke-direct {p0, v12}, Lcom/android/music/list/view/MpListReorderView;->unExpandViews(Z)V

    goto :goto_0

    .line 343
    .end local v3           #r:Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 344
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 345
    .local v8, y:I
    invoke-direct {p0, v7, v8}, Lcom/android/music/list/view/MpListReorderView;->dragView(II)V

    .line 346
    invoke-direct {p0, v8}, Lcom/android/music/list/view/MpListReorderView;->getItemForPosition(I)I

    move-result v1

    .line 347
    .local v1, itemnum:I
    if-ltz v1, :cond_2

    .line 348
    if-eqz v0, :cond_6

    iget v9, p0, Lcom/android/music/list/view/MpListReorderView;->mDragPos:I

    if-eq v1, v9, :cond_8

    .line 349
    :cond_6
    iget-object v9, p0, Lcom/android/music/list/view/MpListReorderView;->mDragListener:Lcom/android/music/list/view/MpListReorderView$DragListener;

    if-eqz v9, :cond_7

    .line 350
    iget-object v9, p0, Lcom/android/music/list/view/MpListReorderView;->mDragListener:Lcom/android/music/list/view/MpListReorderView$DragListener;

    iget v10, p0, Lcom/android/music/list/view/MpListReorderView;->mDragPos:I

    invoke-interface {v9, v10, v1}, Lcom/android/music/list/view/MpListReorderView$DragListener;->drag(II)V

    .line 352
    :cond_7
    iput v1, p0, Lcom/android/music/list/view/MpListReorderView;->mDragPos:I

    .line 353
    invoke-direct {p0}, Lcom/android/music/list/view/MpListReorderView;->doExpansion()V

    .line 355
    :cond_8
    const/4 v5, 0x0

    .line 356
    .local v5, speed:I
    invoke-direct {p0, v8}, Lcom/android/music/list/view/MpListReorderView;->adjustScrollBounds(I)V

    .line 357
    iget v9, p0, Lcom/android/music/list/view/MpListReorderView;->mLowerBound:I

    if-le v8, v9, :cond_c

    .line 359
    iget v9, p0, Lcom/android/music/list/view/MpListReorderView;->mHeight:I

    iget v10, p0, Lcom/android/music/list/view/MpListReorderView;->mLowerBound:I

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    if-le v8, v9, :cond_b

    const/16 v9, 0x10

    move v5, v9

    .line 364
    :cond_9
    :goto_2
    if-eqz v5, :cond_2

    .line 365
    iget v9, p0, Lcom/android/music/list/view/MpListReorderView;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0, v12, v9}, Lcom/android/music/list/view/MpListReorderView;->pointToPosition(II)I

    move-result v4

    .line 366
    .local v4, ref:I
    const/4 v9, -0x1

    if-ne v4, v9, :cond_a

    .line 368
    iget v9, p0, Lcom/android/music/list/view/MpListReorderView;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0}, Lcom/android/music/list/view/MpListReorderView;->getDividerHeight()I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x40

    invoke-virtual {p0, v12, v9}, Lcom/android/music/list/view/MpListReorderView;->pointToPosition(II)I

    move-result v4

    .line 370
    :cond_a
    invoke-virtual {p0}, Lcom/android/music/list/view/MpListReorderView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p0, v9}, Lcom/android/music/list/view/MpListReorderView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 371
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_2

    .line 372
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    .line 373
    .local v2, pos:I
    sub-int v9, v2, v5

    invoke-virtual {p0, v4, v9}, Lcom/android/music/list/view/MpListReorderView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 359
    .end local v2           #pos:I
    .end local v4           #ref:I
    .end local v6           #v:Landroid/view/View;
    :cond_b
    const/4 v9, 0x4

    move v5, v9

    goto :goto_2

    .line 360
    :cond_c
    iget v9, p0, Lcom/android/music/list/view/MpListReorderView;->mUpperBound:I

    if-ge v8, v9, :cond_9

    .line 362
    iget v9, p0, Lcom/android/music/list/view/MpListReorderView;->mUpperBound:I

    div-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_d

    const/16 v9, -0x10

    move v5, v9

    :goto_3
    goto :goto_2

    :cond_d
    const/4 v9, -0x4

    move v5, v9

    goto :goto_3

    .line 381
    .end local v0           #action:I
    .end local v1           #itemnum:I
    .end local v5           #speed:I
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_1

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public saveData()V
    .locals 4

    .prologue
    .line 441
    new-instance v0, Lcom/android/music/common/data/MpListFilter;

    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 442
    .local v0, filter:Lcom/android/music/common/data/MpListFilter;
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->getInstance()Lcom/android/music/common/data/MusicDB;

    move-result-object v1

    .line 444
    .local v1, musicDB:Lcom/android/music/common/data/MusicDB;
    return-void
.end method

.method public setDragListener(Lcom/android/music/list/view/MpListReorderView$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/music/list/view/MpListReorderView;->mDragListener:Lcom/android/music/list/view/MpListReorderView$DragListener;

    .line 496
    return-void
.end method

.method public setDropListener(Lcom/android/music/list/view/MpListReorderView$DropListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/music/list/view/MpListReorderView;->mDropListener:Lcom/android/music/list/view/MpListReorderView$DropListener;

    .line 500
    return-void
.end method

.method public setRemoveListener(Lcom/android/music/list/view/MpListReorderView$RemoveListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/music/list/view/MpListReorderView;->mRemoveListener:Lcom/android/music/list/view/MpListReorderView$RemoveListener;

    .line 504
    return-void
.end method

.method public submitReorder()V
    .locals 3

    .prologue
    .line 122
    new-instance v0, Lcom/android/music/list/data/MpListReorderThread;

    iget-object v1, p0, Lcom/android/music/list/view/MpListReorderView;->mAdapter:Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;

    invoke-virtual {v1}, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->getArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/list/view/MpListReorderView;->mFilter:Lcom/android/music/common/data/MpListFilter;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/music/list/data/MpListReorderThread;-><init>(Ljava/util/ArrayList;Lcom/android/music/common/data/MpListFilter;Lcom/android/music/list/view/MpListReorderView;)V

    .line 123
    .local v0, thread:Lcom/android/music/list/data/MpListReorderThread;
    invoke-virtual {v0}, Lcom/android/music/list/data/MpListReorderThread;->start()V

    .line 124
    return-void
.end method
