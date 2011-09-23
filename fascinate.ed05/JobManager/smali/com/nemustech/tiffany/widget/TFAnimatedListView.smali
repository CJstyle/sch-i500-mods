.class public Lcom/nemustech/tiffany/widget/TFAnimatedListView;
.super Lcom/nemustech/tiffany/widget/TFListView;
.source "TFAnimatedListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFAnimatedListView$1;,
        Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;,
        Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;,
        Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;,
        Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteDrawCallback;,
        Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertDrawCallback;,
        Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;,
        Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;,
        Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;,
        Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    }
.end annotation


# static fields
.field private static final ITEM_ANIMATION_DURATION:I = 0x12c

.field public static final ITEM_ANIMATION_FADE:I = 0x4

.field public static final ITEM_ANIMATION_HORIZONTAL_SLIDE:I = 0x1

.field public static final ITEM_ANIMATION_MAX:I = 0x5

.field public static final ITEM_ANIMATION_NONE:I = 0x0

.field public static final ITEM_ANIMATION_VERTICAL_DROPDOWN:I = 0x3

.field public static final ITEM_ANIMATION_VERTICAL_SLIDE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TFAnimatedListView"

.field private static final TAG_ANI:Ljava/lang/String; = "TFAnimatedListView.ItemAnimation"


# instance fields
.field private DEBUG_ANIMATION:Z

.field private mAnimationDuration:I

.field private mAnimationMaxAlpha:I

.field private mAnimationMinAlpha:I

.field private mCurIds:[J

.field private mCustomItemDeleteDrawCallback:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteDrawCallback;

.field private mCustomItemInsertDrawCallback:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertDrawCallback;

.field private mDefaultAnimationType:I

.field private mDeleteAnimationDelay:I

.field private mDeleteAnimationDuration:I

.field private mDeleteItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawDeleteViewFront:Z

.field private mDrawInsertViewFront:Z

.field private mFloatingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIdsOffset:[I

.field private mInsertAnimationDelay:I

.field private mInsertAnimationDuration:I

.field private mIsAnimating:Z

.field private mItemAnimationListener:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;

.field protected mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

.field private mPrevFirstPosition:I

.field private mPrevIds:[J

.field private mTempRect:Landroid/graphics/Rect;

.field private mTranslateAnimationDelay:I

.field private mUseAnimationCache:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1130
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v4, 0xff

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1134
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    .line 1284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mFloatingViews:Ljava/util/ArrayList;

    .line 1297
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;-><init>(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    .line 1308
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mTempRect:Landroid/graphics/Rect;

    .line 1310
    iput-object v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    .line 1311
    iput-object v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    .line 1312
    iput-object v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    .line 1313
    iput-object v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    .line 1317
    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDrawDeleteViewFront:Z

    .line 1318
    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDrawInsertViewFront:Z

    .line 1319
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDefaultAnimationType:I

    .line 1320
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationMinAlpha:I

    .line 1321
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationMaxAlpha:I

    .line 1322
    const/16 v0, 0x12c

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationDuration:I

    .line 1324
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mInsertAnimationDelay:I

    .line 1325
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteAnimationDelay:I

    .line 1326
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mTranslateAnimationDelay:I

    .line 1328
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mInsertAnimationDuration:I

    .line 1329
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteAnimationDuration:I

    .line 1331
    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mUseAnimationCache:Z

    .line 1135
    return-void
.end method

.method static synthetic access$000(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertDrawCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCustomItemInsertDrawCallback:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertDrawCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteDrawCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteDrawCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mUseAnimationCache:Z

    return v0
.end method

.method static synthetic access$500(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIsAnimating:Z

    return v0
.end method

.method static synthetic access$502(Lcom/nemustech/tiffany/widget/TFAnimatedListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$600(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimationListener:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;

    return-object v0
.end method

.method private calculateItemPositionOffset()V
    .locals 12

    .prologue
    const v11, 0x7fffffff

    const/4 v10, 0x1

    .line 2435
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    if-eqz v6, :cond_c

    .line 2436
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    array-length v0, v6

    .line 2437
    .local v0, curLen:I
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    array-length v5, v6

    .line 2439
    .local v5, prevLen:I
    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mStackFromBottom:Z

    if-eqz v6, :cond_3

    .line 2440
    new-array v6, v0, [I

    iput-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    .line 2441
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_7

    .line 2442
    const/4 v4, 0x0

    .line 2443
    .local v4, match:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v5, :cond_0

    .line 2444
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    sub-int v7, v0, v10

    sub-int/2addr v7, v2

    aget-wide v6, v6, v7

    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    sub-int v9, v5, v10

    sub-int/2addr v9, v3

    aget-wide v8, v8, v9

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 2446
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    sub-int v7, v0, v10

    sub-int/2addr v7, v2

    sub-int v8, v2, v3

    aput v8, v6, v7

    .line 2447
    const/4 v4, 0x1

    .line 2453
    :cond_0
    if-nez v4, :cond_1

    .line 2454
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    sub-int v7, v0, v10

    sub-int/2addr v7, v2

    aput v11, v6, v7

    .line 2441
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2443
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2457
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #match:Z
    :cond_3
    new-array v6, v0, [I

    iput-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    .line 2458
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    if-ge v2, v0, :cond_7

    .line 2459
    const/4 v4, 0x0

    .line 2460
    .restart local v4       #match:Z
    const/4 v3, 0x0

    .restart local v3       #j:I
    :goto_3
    if-ge v3, v5, :cond_4

    .line 2461
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    aget-wide v6, v6, v2

    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    aget-wide v8, v8, v3

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 2463
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    sub-int v7, v2, v3

    aput v7, v6, v2

    .line 2464
    const/4 v4, 0x1

    .line 2470
    :cond_4
    if-nez v4, :cond_5

    .line 2471
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    aput v11, v6, v2

    .line 2458
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2460
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2476
    .end local v3           #j:I
    .end local v4           #match:Z
    :cond_7
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    if-nez v6, :cond_a

    .line 2477
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    .line 2481
    :goto_4
    const/4 v3, 0x0

    .restart local v3       #j:I
    :goto_5
    if-ge v3, v5, :cond_c

    .line 2482
    const/4 v1, 0x0

    .line 2483
    .local v1, exist:Z
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_8

    .line 2484
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    aget-wide v6, v6, v3

    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    aget-wide v8, v8, v2

    cmp-long v6, v6, v8

    if-nez v6, :cond_b

    .line 2485
    const/4 v1, 0x1

    .line 2490
    :cond_8
    if-nez v1, :cond_9

    .line 2491
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2481
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2479
    .end local v1           #exist:Z
    .end local v3           #j:I
    :cond_a
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_4

    .line 2483
    .restart local v1       #exist:Z
    .restart local v3       #j:I
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2494
    .end local v0           #curLen:I
    .end local v1           #exist:Z
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v5           #prevLen:I
    :cond_c
    return-void
.end method

.method private drawDeleteView(Landroid/graphics/Canvas;)V
    .locals 24
    .parameter "canvas"

    .prologue
    .line 1660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_5

    .line 1661
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationMaxAlpha:I

    move/from16 v19, v0

    .line 1662
    .local v19, maxAlpha:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationMinAlpha:I

    move/from16 v20, v0

    .line 1663
    .local v20, minAlpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v17, v5, v6

    .local v17, i:I
    :goto_0
    if-ltz v17, :cond_5

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1665
    .local v14, deletePos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    move-object v5, v0

    invoke-virtual {v5, v14}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->getDeleteItemAnimation(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v18

    .line 1666
    .local v18, ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    if-eqz v18, :cond_2

    .line 1667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object v5, v0

    invoke-virtual {v5, v14}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v13

    .line 1668
    .local v13, child:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getDrawingTime()J

    move-result-wide v15

    .line 1669
    .local v15, drawingTime:J
    if-eqz v13, :cond_2

    .line 1670
    invoke-virtual/range {v18 .. v18}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->getType()I

    move-result v5

    if-nez v5, :cond_4

    .line 1672
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v23

    .line 1675
    .local v23, save:I
    sub-int v5, v19, v20

    int-to-float v5, v5

    move-object/from16 v0, v18

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->getProgress()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int v10, v19, v5

    .line 1676
    .local v10, alpha:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mUseAnimationCache:Z

    move v5, v0

    if-eqz v5, :cond_3

    .line 1677
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move v5, v0

    if-eqz v5, :cond_1

    .line 1678
    move-object/from16 v0, v18

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move-object v12, v0

    .line 1679
    .local v12, ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    invoke-virtual {v12}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->getPaint()Landroid/graphics/Paint;

    move-result-object v21

    .line 1680
    .local v21, p:Landroid/graphics/Paint;
    if-nez v21, :cond_0

    .line 1681
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v12, v5}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->setPaint(Landroid/graphics/Paint;)V

    .line 1683
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDefaultAnimationType:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 1684
    invoke-virtual {v12}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->getPaint()Landroid/graphics/Paint;

    move-result-object v22

    .line 1685
    .local v22, pt:Landroid/graphics/Paint;
    if-eqz v22, :cond_1

    .line 1686
    move-object/from16 v0, v22

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1687
    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->setPaint(Landroid/graphics/Paint;)V

    .line 1698
    .end local v12           #ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    .end local v21           #p:Landroid/graphics/Paint;
    .end local v22           #pt:Landroid/graphics/Paint;
    :cond_1
    :goto_1
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1699
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move-wide v3, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onPostDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 1700
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1663
    .end local v10           #alpha:I
    .end local v13           #child:Landroid/view/View;
    .end local v15           #drawingTime:J
    .end local v23           #save:I
    :cond_2
    :goto_2
    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_0

    .line 1692
    .restart local v10       #alpha:I
    .restart local v13       #child:Landroid/view/View;
    .restart local v15       #drawingTime:J
    .restart local v23       #save:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDefaultAnimationType:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 1693
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getWidth()I

    move-result v5

    int-to-float v8, v5

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getHeight()I

    move-result v5

    int-to-float v9, v5

    const/16 v11, 0x14

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_1

    .line 1702
    .end local v10           #alpha:I
    .end local v23           #save:I
    :cond_4
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1703
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move-wide v3, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onPostDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto :goto_2

    .line 1709
    .end local v13           #child:Landroid/view/View;
    .end local v14           #deletePos:I
    .end local v15           #drawingTime:J
    .end local v17           #i:I
    .end local v18           #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v19           #maxAlpha:I
    .end local v20           #minAlpha:I
    :cond_5
    return-void
.end method

.method private drawInsertView(Landroid/graphics/Canvas;)V
    .locals 25
    .parameter "canvas"

    .prologue
    .line 1605
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mFirstPosition:I

    move/from16 v17, v0

    .line 1606
    .local v17, first:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildCount()I

    move-result v14

    .line 1607
    .local v14, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationMaxAlpha:I

    move/from16 v20, v0

    .line 1608
    .local v20, maxAlpha:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationMinAlpha:I

    move/from16 v21, v0

    .line 1609
    .local v21, minAlpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object v5, v0

    if-eqz v5, :cond_5

    .line 1610
    add-int v5, v17, v14

    const/4 v6, 0x1

    sub-int v18, v5, v6

    .local v18, i:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v17

    if-lt v0, v1, :cond_5

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object v5, v0

    aget v5, v5, v18

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_2

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v19

    .line 1613
    .local v19, ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    if-eqz v19, :cond_2

    .line 1614
    sub-int v5, v18, v17

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1615
    .local v13, child:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getDrawingTime()J

    move-result-wide v15

    .line 1616
    .local v15, drawingTime:J
    if-eqz v13, :cond_2

    .line 1617
    invoke-virtual/range {v19 .. v19}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->getType()I

    move-result v5

    if-nez v5, :cond_4

    .line 1619
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v24

    .line 1622
    .local v24, save:I
    sub-int v5, v20, v21

    int-to-float v5, v5

    move-object/from16 v0, v19

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->getProgress()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int v10, v21, v5

    .line 1623
    .local v10, alpha:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mUseAnimationCache:Z

    move v5, v0

    if-eqz v5, :cond_3

    .line 1624
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move v5, v0

    if-eqz v5, :cond_1

    .line 1625
    move-object/from16 v0, v19

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move-object v12, v0

    .line 1626
    .local v12, ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    invoke-virtual {v12}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->getPaint()Landroid/graphics/Paint;

    move-result-object v22

    .line 1627
    .local v22, p:Landroid/graphics/Paint;
    if-nez v22, :cond_0

    .line 1628
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v12, v5}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->setPaint(Landroid/graphics/Paint;)V

    .line 1630
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDefaultAnimationType:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 1631
    invoke-virtual {v12}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->getPaint()Landroid/graphics/Paint;

    move-result-object v23

    .line 1632
    .local v23, pt:Landroid/graphics/Paint;
    if-eqz v23, :cond_1

    .line 1633
    move-object/from16 v0, v23

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1634
    move-object v0, v12

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->setPaint(Landroid/graphics/Paint;)V

    .line 1645
    .end local v12           #ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    .end local v22           #p:Landroid/graphics/Paint;
    .end local v23           #pt:Landroid/graphics/Paint;
    :cond_1
    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1646
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move-wide v3, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onPostDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 1647
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1610
    .end local v10           #alpha:I
    .end local v13           #child:Landroid/view/View;
    .end local v15           #drawingTime:J
    .end local v19           #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v24           #save:I
    :cond_2
    :goto_2
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_0

    .line 1639
    .restart local v10       #alpha:I
    .restart local v13       #child:Landroid/view/View;
    .restart local v15       #drawingTime:J
    .restart local v19       #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .restart local v24       #save:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDefaultAnimationType:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 1640
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getWidth()I

    move-result v5

    int-to-float v8, v5

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getHeight()I

    move-result v5

    int-to-float v9, v5

    const/16 v11, 0x14

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_1

    .line 1649
    .end local v10           #alpha:I
    .end local v24           #save:I
    :cond_4
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1650
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move-wide v3, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onPostDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto :goto_2

    .line 1657
    .end local v13           #child:Landroid/view/View;
    .end local v15           #drawingTime:J
    .end local v18           #i:I
    .end local v19           #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    :cond_5
    return-void
.end method

.method private drawRetainView(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    .line 1590
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getDrawingTime()J

    move-result-wide v4

    .line 1591
    .local v4, drawingTime:J
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getRetainViewPositions()[Ljava/lang/Object;

    move-result-object v10

    .line 1592
    .local v10, pos:[Ljava/lang/Object;
    if-eqz v10, :cond_1

    array-length v0, v10

    if-lez v0, :cond_1

    .line 1593
    move-object v6, v10

    .local v6, arr$:[Ljava/lang/Object;
    array-length v8, v6

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v9, v6, v7

    .line 1594
    .local v9, obj:Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1595
    .local v2, position:I
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v3

    .line 1597
    .local v3, retainView:Landroid/view/View;
    if-eqz v3, :cond_0

    move-object v0, p0

    move-object v1, p1

    .line 1598
    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->drawRetainChild(Landroid/graphics/Canvas;ILandroid/view/View;J)Z

    .line 1593
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1602
    .end local v2           #position:I
    .end local v3           #retainView:Landroid/view/View;
    .end local v6           #arr$:[Ljava/lang/Object;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #obj:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private getCustomDeleteItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;J)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .locals 6
    .parameter "position"
    .parameter "data"
    .parameter "startTime"

    .prologue
    const-wide/16 v4, 0x0

    .line 2780
    if-eqz p2, :cond_2

    .line 2781
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;-><init>(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)V

    .line 2782
    .local v0, ca:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteDrawCallback;

    invoke-interface {v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteDrawCallback;->getDeleteAnimationDuration()J

    move-result-wide v1

    .line 2784
    .local v1, duration:J
    cmp-long v3, v1, v4

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationDuration:I

    int-to-long v1, v3

    .line 2786
    :cond_0
    cmp-long v3, p3, v4

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    .line 2788
    :cond_1
    long-to-int v3, v1

    invoke-virtual {v0, p3, p4, p1, v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;->start(JII)V

    move-object v3, v0

    .line 2792
    .end local v0           #ca:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;
    .end local v1           #duration:J
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getCustomInsertItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;J)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .locals 6
    .parameter "position"
    .parameter "data"
    .parameter "startTime"

    .prologue
    const-wide/16 v4, 0x0

    .line 2764
    if-eqz p2, :cond_2

    .line 2765
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;-><init>(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)V

    .line 2766
    .local v0, ca:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCustomItemInsertDrawCallback:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertDrawCallback;

    invoke-interface {v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertDrawCallback;->getInsertAnimationDuration()J

    move-result-wide v1

    .line 2768
    .local v1, duration:J
    cmp-long v3, v1, v4

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationDuration:I

    int-to-long v1, v3

    .line 2770
    :cond_0
    cmp-long v3, p3, v4

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    .line 2772
    :cond_1
    long-to-int v3, v1

    invoke-virtual {v0, p3, p4, p1, v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;->start(JII)V

    move-object v3, v0

    .line 2776
    .end local v0           #ca:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;
    .end local v1           #duration:J
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getDeleteAnimationData(III)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .locals 12
    .parameter "position"
    .parameter "delay"
    .parameter "duration"

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2612
    const/4 v5, 0x0

    .line 2614
    .local v5, ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteDrawCallback;

    if-eqz v8, :cond_1

    .line 2615
    new-instance v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .end local v5           #ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    invoke-direct {v5, p0, v11}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;-><init>(Lcom/nemustech/tiffany/widget/TFAnimatedListView;Lcom/nemustech/tiffany/widget/TFAnimatedListView$1;)V

    .line 2616
    .restart local v5       #ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    iput v9, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    .line 2617
    iput p3, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->duration:I

    .line 2721
    :cond_0
    :goto_0
    return-object v5

    .line 2620
    :cond_1
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v8, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v6

    .line 2621
    .local v6, retainView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getWidth()I

    move-result v0

    .line 2622
    .local v0, HORIZONTAL_TRANSLATE_DISTANCE:I
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mFirstPosition:I

    .line 2625
    .local v3, first:I
    if-eqz v6, :cond_0

    .line 2626
    new-instance v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .end local v5           #ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    invoke-direct {v5, p0, v11}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;-><init>(Lcom/nemustech/tiffany/widget/TFAnimatedListView;Lcom/nemustech/tiffany/widget/TFAnimatedListView$1;)V

    .line 2627
    .restart local v5       #ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    iput p2, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->delay:I

    .line 2628
    iput p3, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->duration:I

    .line 2630
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDefaultAnimationType:I

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 2632
    :pswitch_0
    iput v10, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    .line 2633
    iput v0, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->deltaX:I

    goto :goto_0

    .line 2637
    :pswitch_1
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 2638
    .local v7, slideHeight:I
    sub-int v4, p1, v9

    .local v4, i:I
    :goto_1
    if-lt v4, v3, :cond_3

    .line 2639
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2640
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v8, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v1

    .line 2641
    .local v1, delView:Landroid/view/View;
    if-eqz v1, :cond_3

    .line 2642
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 2638
    .end local v1           #delView:Landroid/view/View;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2648
    :cond_3
    add-int/lit8 v4, p1, 0x1

    :goto_2
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    array-length v8, v8

    if-ge v4, v8, :cond_5

    .line 2649
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2650
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v8, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v1

    .line 2651
    .restart local v1       #delView:Landroid/view/View;
    if-eqz v1, :cond_5

    .line 2652
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 2648
    .end local v1           #delView:Landroid/view/View;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2658
    :cond_5
    iput v10, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    .line 2659
    neg-int v8, v7

    iput v8, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->deltaY:I

    goto :goto_0

    .line 2696
    .end local v4           #i:I
    .end local v7           #slideHeight:I
    :pswitch_2
    const/4 v2, 0x0

    .line 2697
    .local v2, dropHeight:I
    if-eqz v6, :cond_7

    .line 2698
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2699
    sub-int v4, p1, v9

    .restart local v4       #i:I
    :goto_3
    if-lt v4, v3, :cond_7

    .line 2700
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2701
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v8, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v1

    .line 2702
    .restart local v1       #delView:Landroid/view/View;
    if-eqz v1, :cond_7

    .line 2703
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v2, v8

    .line 2699
    .end local v1           #delView:Landroid/view/View;
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 2710
    .end local v4           #i:I
    :cond_7
    iput v10, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    .line 2711
    neg-int v8, v2

    iput v8, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->deltaY:I

    goto/16 :goto_0

    .line 2715
    .end local v2           #dropHeight:I
    :pswitch_3
    iput v10, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    goto/16 :goto_0

    .line 2630
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getInsertItemAnimationData(III)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .locals 12
    .parameter "position"
    .parameter "delay"
    .parameter "duration"

    .prologue
    const/4 v11, 0x0

    const v10, 0x7fffffff

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2497
    const/4 v5, 0x0

    .line 2499
    .local v5, ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCustomItemInsertDrawCallback:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertDrawCallback;

    if-eqz v7, :cond_0

    .line 2501
    new-instance v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .end local v5           #ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    invoke-direct {v5, p0, v11}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;-><init>(Lcom/nemustech/tiffany/widget/TFAnimatedListView;Lcom/nemustech/tiffany/widget/TFAnimatedListView$1;)V

    .line 2502
    .restart local v5       #ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    iput v8, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    .line 2503
    iput p3, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->duration:I

    .line 2592
    :goto_0
    return-object v5

    .line 2506
    :cond_0
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mFirstPosition:I

    .line 2507
    .local v3, first:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildCount()I

    move-result v1

    .line 2508
    .local v1, childCount:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getWidth()I

    move-result v0

    .line 2510
    .local v0, HORIZONTAL_TRANSLATE_DISTANCE:I
    new-instance v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .end local v5           #ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    invoke-direct {v5, p0, v11}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;-><init>(Lcom/nemustech/tiffany/widget/TFAnimatedListView;Lcom/nemustech/tiffany/widget/TFAnimatedListView$1;)V

    .line 2511
    .restart local v5       #ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    iput p2, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->delay:I

    .line 2512
    iput p3, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->duration:I

    .line 2514
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDefaultAnimationType:I

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 2516
    :pswitch_0
    iput v9, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    .line 2517
    iput v0, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->startX:I

    .line 2518
    neg-int v7, v0

    iput v7, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->deltaX:I

    goto :goto_0

    .line 2522
    :pswitch_1
    sub-int v7, p1, v3

    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 2524
    .local v6, slideHeight:I
    sub-int v4, p1, v8

    .local v4, i:I
    :goto_1
    if-lt v4, v3, :cond_1

    .line 2525
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    aget v7, v7, v4

    if-ne v7, v10, :cond_1

    .line 2526
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    sub-int v8, v4, v3

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 2524
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2531
    :cond_1
    add-int/lit8 v4, p1, 0x1

    :goto_2
    add-int v7, v3, v1

    if-ge v4, v7, :cond_2

    .line 2532
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    aget v7, v7, v4

    if-ne v7, v10, :cond_2

    .line 2533
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    sub-int v8, v4, v3

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 2531
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2538
    :cond_2
    iput v9, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    .line 2539
    neg-int v7, v6

    iput v7, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->startY:I

    .line 2540
    iput v6, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->deltaY:I

    goto :goto_0

    .line 2572
    .end local v4           #i:I
    .end local v6           #slideHeight:I
    :pswitch_2
    sub-int v7, p1, v3

    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2574
    .local v2, dropHeight:I
    sub-int v4, p1, v8

    .restart local v4       #i:I
    :goto_3
    if-lt v4, v3, :cond_3

    .line 2575
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    aget v7, v7, v4

    if-ne v7, v10, :cond_3

    .line 2576
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    sub-int v8, v4, v3

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v2, v7

    .line 2574
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 2581
    :cond_3
    iput v9, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    .line 2582
    neg-int v7, v2

    iput v7, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->startY:I

    .line 2583
    iput v2, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->deltaY:I

    goto/16 :goto_0

    .line 2587
    .end local v2           #dropHeight:I
    .end local v4           #i:I
    :pswitch_3
    iput v9, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    goto/16 :goto_0

    .line 2514
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getItemAnimationData(III)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "delay"

    .prologue
    .line 2725
    const/4 v0, 0x0

    .line 2727
    .local v0, ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    if-eqz p2, :cond_0

    .line 2728
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .end local v0           #ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;-><init>(Lcom/nemustech/tiffany/widget/TFAnimatedListView;Lcom/nemustech/tiffany/widget/TFAnimatedListView$1;)V

    .line 2729
    .restart local v0       #ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    const/4 v1, 0x0

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    .line 2730
    neg-int v1, p1

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->startX:I

    .line 2731
    iput p1, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->deltaX:I

    .line 2732
    neg-int v1, p2

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->startY:I

    .line 2733
    iput p2, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->deltaY:I

    .line 2734
    iput p3, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->delay:I

    .line 2737
    :cond_0
    return-object v0
.end method

.method private getRetainItemAnimationData(IIIII)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .locals 2
    .parameter "startX"
    .parameter "deltaX"
    .parameter "startY"
    .parameter "deltaY"
    .parameter "delay"

    .prologue
    .line 2596
    const/4 v0, 0x0

    .line 2598
    .local v0, ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    if-nez p2, :cond_0

    if-eqz p4, :cond_1

    .line 2599
    :cond_0
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .end local v0           #ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;-><init>(Lcom/nemustech/tiffany/widget/TFAnimatedListView;Lcom/nemustech/tiffany/widget/TFAnimatedListView$1;)V

    .line 2600
    .restart local v0       #ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    const/4 v1, 0x0

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    .line 2601
    neg-int v1, p1

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->startX:I

    .line 2602
    iput p2, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->deltaX:I

    .line 2603
    neg-int v1, p3

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->startY:I

    .line 2604
    iput p4, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->deltaY:I

    .line 2605
    iput p5, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->delay:I

    .line 2608
    :cond_1
    return-object v0
.end method

.method private getTranslateItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;JLandroid/view/View;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .locals 5
    .parameter "data"
    .parameter "startTime"
    .parameter "child"

    .prologue
    .line 2741
    if-eqz p1, :cond_2

    .line 2742
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;-><init>(Z)V

    .line 2743
    .local v0, ta:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    iget v1, p1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->startX:I

    iget v2, p1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->deltaX:I

    iget v3, p1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->startY:I

    iget v4, p1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->deltaY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->translate(IIII)V

    .line 2744
    iget v1, p1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->duration:I

    if-nez v1, :cond_1

    .line 2745
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationDuration:I

    invoke-virtual {v0, p2, p3, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->start(JI)V

    .line 2749
    :goto_0
    iget v1, p1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorX:I

    iget v2, p1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorDeltaX:I

    iget v3, p1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorY:I

    iget v4, p1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorDeltaY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->move(IIII)V

    .line 2750
    iget v1, p1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->delay:I

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->delay(I)V

    .line 2752
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mUseAnimationCache:Z

    if-eqz v1, :cond_0

    .line 2753
    if-eqz p4, :cond_0

    .line 2754
    invoke-virtual {v0, p4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->createDrawingCache(Landroid/view/View;)V

    :cond_0
    move-object v1, v0

    .line 2760
    .end local v0           #ta:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    :goto_1
    return-object v1

    .line 2747
    .restart local v0       #ta:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    :cond_1
    iget v1, p1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->duration:I

    invoke-virtual {v0, p2, p3, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->start(JI)V

    goto :goto_0

    .line 2760
    .end local v0           #ta:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected addFloatingView(Landroid/view/View;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 2801
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 2803
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mFloatingViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2804
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mFloatingViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2805
    return-void
.end method

.method protected changeItemId(II)V
    .locals 7
    .parameter "from"
    .parameter "to"

    .prologue
    .line 1712
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    if-nez v4, :cond_1

    .line 1737
    :cond_0
    return-void

    .line 1715
    :cond_1
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    array-length v1, v4

    .line 1717
    .local v1, length:I
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v1, :cond_0

    .line 1720
    sub-int v2, p2, p1

    .line 1721
    .local v2, size:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [J

    .line 1722
    .local v3, tempIds:[J
    if-lez v2, :cond_3

    .line 1723
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 1724
    sub-int v4, v0, p1

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    add-int/lit8 v6, v0, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    .line 1723
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1725
    :cond_2
    sub-int v4, p2, p1

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    aget-wide v5, v5, p1

    aput-wide v5, v3, v4

    .line 1727
    move v0, p1

    :goto_1
    if-gt v0, p2, :cond_0

    .line 1728
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    sub-int v5, v0, p1

    aget-wide v5, v3, v5

    aput-wide v5, v4, v0

    .line 1727
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1730
    .end local v0           #i:I
    :cond_3
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    aget-wide v5, v5, p1

    aput-wide v5, v3, v4

    .line 1731
    add-int/lit8 v0, p2, 0x1

    .restart local v0       #i:I
    :goto_2
    if-gt v0, p1, :cond_4

    .line 1732
    sub-int v4, v0, p2

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    const/4 v6, 0x1

    sub-int v6, v0, v6

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    .line 1731
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1734
    :cond_4
    move v0, p2

    :goto_3
    if-gt v0, p1, :cond_0

    .line 1735
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    sub-int v5, v0, p2

    aget-wide v5, v3, v5

    aput-wide v5, v4, v0

    .line 1734
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 1569
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mShowAnimationOnDataChange:Z

    if-eqz v0, :cond_1

    .line 1570
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDrawDeleteViewFront:Z

    if-nez v0, :cond_0

    .line 1571
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->drawDeleteView(Landroid/graphics/Canvas;)V

    .line 1573
    :cond_0
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDrawInsertViewFront:Z

    if-nez v0, :cond_1

    .line 1574
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->drawInsertView(Landroid/graphics/Canvas;)V

    .line 1577
    :cond_1
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1578
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->drawRetainView(Landroid/graphics/Canvas;)V

    .line 1580
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mShowAnimationOnDataChange:Z

    if-eqz v0, :cond_3

    .line 1581
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDrawDeleteViewFront:Z

    if-eqz v0, :cond_2

    .line 1582
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->drawDeleteView(Landroid/graphics/Canvas;)V

    .line 1584
    :cond_2
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDrawInsertViewFront:Z

    if-eqz v0, :cond_3

    .line 1585
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->drawInsertView(Landroid/graphics/Canvas;)V

    .line 1587
    :cond_3
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    const/4 v7, 0x0

    .line 1454
    invoke-virtual {p0, p2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1455
    .local v1, index:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getFirstVisiblePosition()I

    move-result v5

    add-int v2, v1, v5

    .line 1457
    .local v2, pos:I
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v5, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v0

    .line 1458
    .local v0, ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    if-eqz v0, :cond_2

    .line 1459
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    aget v5, v5, v2

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_0

    move v5, v7

    .line 1480
    :goto_0
    return v5

    .line 1463
    :cond_0
    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->getType()I

    move-result v5

    if-nez v5, :cond_1

    .line 1465
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1468
    .local v4, save:I
    invoke-virtual {v0, p1, p2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1469
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onPostDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 1470
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move v5, v7

    .line 1471
    goto :goto_0

    .line 1473
    .end local v4           #save:I
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1474
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onPostDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    move v5, v7

    .line 1475
    goto :goto_0

    .line 1478
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    .line 1479
    .local v3, retVal:Z
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onPostDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    move v5, v3

    .line 1480
    goto :goto_0
.end method

.method protected drawRetainChild(Landroid/graphics/Canvas;ILandroid/view/View;J)Z
    .locals 7
    .parameter "canvas"
    .parameter "position"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    const/4 v6, 0x0

    .line 1485
    if-eqz p3, :cond_2

    .line 1486
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v5, p2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->getRetainItemAnimation(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v2

    .line 1488
    .local v2, ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    if-eqz v2, :cond_2

    .line 1489
    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->getType()I

    move-result v5

    if-nez v5, :cond_1

    .line 1491
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1495
    .local v4, save:I
    iget-boolean v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mUseAnimationCache:Z

    if-eqz v5, :cond_0

    .line 1496
    instance-of v5, v2, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    if-eqz v5, :cond_0

    .line 1497
    move-object v0, v2

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move-object v1, v0

    .line 1498
    .local v1, ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 1499
    .local v3, p:Landroid/graphics/Paint;
    if-nez v3, :cond_0

    .line 1500
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v5}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->setPaint(Landroid/graphics/Paint;)V

    .line 1504
    .end local v1           #ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    .end local v3           #p:Landroid/graphics/Paint;
    :cond_0
    invoke-virtual {v2, p1, p3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1505
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onPostDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 1506
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move v5, v6

    .line 1517
    .end local v2           #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v4           #save:I
    :goto_0
    return v5

    .line 1509
    .restart local v2       #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    :cond_1
    invoke-virtual {v2, p1, p3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1510
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onPostDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    move v5, v6

    .line 1511
    goto :goto_0

    .end local v2           #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    :cond_2
    move v5, v6

    .line 1517
    goto :goto_0
.end method

.method public getCustomItemDeleteDrawCallback()Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteDrawCallback;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteDrawCallback;

    return-object v0
.end method

.method public getCustomItemInsertDrawCallback()Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertDrawCallback;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCustomItemInsertDrawCallback:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertDrawCallback;

    return-object v0
.end method

.method public getDeleteAnimationDelay()I
    .locals 1

    .prologue
    .line 1368
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteAnimationDelay:I

    return v0
.end method

.method public getDeleteAnimationDuration()I
    .locals 1

    .prologue
    .line 1427
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteAnimationDuration:I

    return v0
.end method

.method protected getFloatingViewCount()I
    .locals 1

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mFloatingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getInsertAnimationDelay()I
    .locals 1

    .prologue
    .line 1349
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mInsertAnimationDelay:I

    return v0
.end method

.method public getInsertAnimationDuration()I
    .locals 1

    .prologue
    .line 1407
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mInsertAnimationDuration:I

    return v0
.end method

.method public getItemAnimationDuration()I
    .locals 1

    .prologue
    .line 1279
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationDuration:I

    return v0
.end method

.method public getItemAnimationListener()Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimationListener:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;

    return-object v0
.end method

.method public getItemAnimationType()I
    .locals 1

    .prologue
    .line 1212
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDefaultAnimationType:I

    return v0
.end method

.method public getTranslateAnimationDelay()I
    .locals 1

    .prologue
    .line 1387
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mTranslateAnimationDelay:I

    return v0
.end method

.method public isAnimationDrawingCacheEnable()Z
    .locals 1

    .prologue
    .line 1446
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mUseAnimationCache:Z

    return v0
.end method

.method public isAnimationOnDataChangeEnabled()Z
    .locals 1

    .prologue
    .line 1156
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mShowAnimationOnDataChange:Z

    return v0
.end method

.method public isDrawDeleteAnimationFront()Z
    .locals 1

    .prologue
    .line 1174
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDrawDeleteViewFront:Z

    return v0
.end method

.method public isDrawInsertAnimationFront()Z
    .locals 1

    .prologue
    .line 1192
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDrawInsertViewFront:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 68

    .prologue
    .line 1792
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDataChanged:Z

    move/from16 v21, v0

    .line 1794
    .local v21, dataChanged:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mFirstPosition:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevFirstPosition:I

    .line 1796
    invoke-super/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->layoutChildren()V

    .line 1798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    .line 1803
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mShowAnimationOnDataChange:Z

    move v5, v0

    if-eqz v5, :cond_5f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v5, v0

    if-eqz v5, :cond_5f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v5, v0

    invoke-interface {v5}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 1808
    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    move-object v5, v0

    if-nez v5, :cond_1

    .line 1809
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v5, v0

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v22

    .line 1810
    .local v22, dataCount:I
    move/from16 v0, v22

    new-array v0, v0, [J

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    .line 1812
    const/16 v37, 0x0

    .local v37, i:I
    :goto_0
    move/from16 v0, v37

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 1813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    aput-wide v6, v5, v37

    .line 1812
    add-int/lit8 v37, v37, 0x1

    goto :goto_0

    .line 1817
    .end local v22           #dataCount:I
    .end local v37           #i:I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getFirstVisiblePosition()I

    move-result v33

    .line 1818
    .local v33, first:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildCount()I

    move-result v15

    .line 1819
    .local v15, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevFirstPosition:I

    move/from16 v54, v0

    .line 1821
    .local v54, prevFirst:I
    if-eqz v21, :cond_5d

    .line 1822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    move-object v5, v0

    if-eqz v5, :cond_5d

    .line 1824
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 1827
    .local v13, animation:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;>;"
    new-instance v57, Landroid/util/SparseArray;

    invoke-direct/range {v57 .. v57}, Landroid/util/SparseArray;-><init>()V

    .line 1830
    .local v57, retainAnimation:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;>;"
    new-instance v25, Landroid/util/SparseArray;

    invoke-direct/range {v25 .. v25}, Landroid/util/SparseArray;-><init>()V

    .line 1832
    .local v25, deleteAnimation:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mInsertAnimationDelay:I

    move/from16 v40, v0

    .line 1833
    .local v40, insertDelay:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteAnimationDelay:I

    move/from16 v27, v0

    .line 1834
    .local v27, deleteDelay:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mTranslateAnimationDelay:I

    move v10, v0

    .line 1836
    .local v10, translateDelay:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteAnimationDuration:I

    move/from16 v28, v0

    .line 1837
    .local v28, deleteDuration:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mInsertAnimationDuration:I

    move/from16 v41, v0

    .line 1842
    .local v41, insertDuration:I
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->calculateItemPositionOffset()V

    .line 1845
    sub-int v34, v33, v54

    .line 1846
    .local v34, firstPositionOffset:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move v5, v0

    if-eqz v5, :cond_2

    .line 1847
    const-string v5, "TFAnimatedListView.ItemAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "firstPositionOffset is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    :cond_2
    move/from16 v37, v33

    .restart local v37       #i:I
    :goto_1
    add-int v5, v33, v15

    move/from16 v0, v37

    move v1, v5

    if-ge v0, v1, :cond_15

    .line 1853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object v5, v0

    aget v5, v5, v37

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_4

    .line 1857
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getInsertItemAnimationData(III)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    move-result-object v5

    move-object v0, v13

    move/from16 v1, v37

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1859
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move v5, v0

    if-eqz v5, :cond_3

    .line 1860
    const-string v5, "TFAnimatedListView.ItemAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add insert animation at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    :cond_3
    :goto_2
    add-int/lit8 v37, v37, 0x1

    goto :goto_1

    .line 1865
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object v5, v0

    aget v5, v5, v37

    sub-int v48, v5, v34

    .line 1866
    .local v48, offset:I
    const/4 v9, 0x0

    .line 1867
    .local v9, HEIGHT:I
    if-lez v48, :cond_d

    .line 1869
    if-nez v34, :cond_7

    .line 1871
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mStackFromBottom:Z

    move v5, v0

    if-eqz v5, :cond_6

    .line 1872
    move/from16 v66, v37

    .local v66, x:I
    :goto_3
    add-int v5, v33, v15

    move/from16 v0, v66

    move v1, v5

    if-ge v0, v1, :cond_7

    .line 1873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object v5, v0

    aget v5, v5, v66

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_5

    .line 1874
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    move v5, v0

    sub-int v6, v66, v33

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v9, v5

    .line 1872
    :cond_5
    add-int/lit8 v66, v66, 0x1

    goto :goto_3

    .line 1877
    .end local v66           #x:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object v5, v0

    sub-int v6, v37, v48

    invoke-virtual {v5, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v56

    .line 1878
    .local v56, prevView:Landroid/view/View;
    if-eqz v56, :cond_9

    .line 1879
    sub-int v5, v37, v33

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v56 .. v56}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v9, v5

    .line 1949
    .end local v56           #prevView:Landroid/view/View;
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move v5, v0

    if-eqz v5, :cond_8

    .line 1950
    const-string v5, "TFAnimatedListView.ItemAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Item at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has offset : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", HEIGHT : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    :cond_8
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v9

    move v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getItemAnimationData(III)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    move-result-object v5

    move-object v0, v13

    move/from16 v1, v37

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 1882
    .restart local v56       #prevView:Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object v5, v0

    aget v5, v5, v37

    sub-int v60, v33, v5

    .line 1883
    .local v60, screenOffset:I
    if-ltz v60, :cond_b

    move/from16 v0, v60

    move v1, v15

    if-ge v0, v1, :cond_b

    .line 1885
    move/from16 v66, v33

    .restart local v66       #x:I
    :goto_5
    move/from16 v0, v66

    move/from16 v1, v37

    if-ge v0, v1, :cond_7

    .line 1886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object v5, v0

    aget v5, v5, v66

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_a

    .line 1887
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    move v5, v0

    sub-int v6, v66, v33

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v9, v5

    .line 1885
    :cond_a
    add-int/lit8 v66, v66, 0x1

    goto :goto_5

    .line 1891
    .end local v66           #x:I
    :cond_b
    sub-int v5, v37, v33

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1892
    .local v16, childView:Landroid/view/View;
    if-lez v60, :cond_c

    .line 1894
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getHeight()I

    move-result v5

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v9, v5

    .line 1895
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v5

    mul-int v5, v5, v60

    sub-int/2addr v9, v5

    goto/16 :goto_4

    .line 1898
    :cond_c
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v9, v5

    .line 1899
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v5

    move/from16 v0, v60

    neg-int v0, v0

    move v6, v0

    mul-int/2addr v5, v6

    add-int/2addr v9, v5

    goto/16 :goto_4

    .line 1905
    .end local v16           #childView:Landroid/view/View;
    .end local v56           #prevView:Landroid/view/View;
    .end local v60           #screenOffset:I
    :cond_d
    if-gez v48, :cond_7

    .line 1907
    if-nez v34, :cond_13

    .line 1909
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mStackFromBottom:Z

    move v5, v0

    if-eqz v5, :cond_f

    .line 1910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .local v38, i$:Ljava/util/Iterator;
    :cond_e
    :goto_6
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Integer;

    .line 1911
    .local v52, position:Ljava/lang/Integer;
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v51

    .line 1912
    .local v51, pos:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getLastVisiblePosition()I

    move-result v5

    move/from16 v0, v51

    move v1, v5

    if-gt v0, v1, :cond_e

    move/from16 v0, v51

    move/from16 v1, v37

    if-le v0, v1, :cond_e

    .line 1913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v59

    .line 1914
    .local v59, retainView:Landroid/view/View;
    if-eqz v59, :cond_e

    .line 1915
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    move v5, v0

    invoke-virtual/range {v59 .. v59}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v9, v5

    goto :goto_6

    .line 1919
    .end local v38           #i$:Ljava/util/Iterator;
    .end local v51           #pos:I
    .end local v52           #position:Ljava/lang/Integer;
    .end local v59           #retainView:Landroid/view/View;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object v5, v0

    sub-int v6, v37, v48

    invoke-virtual {v5, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v56

    .line 1920
    .restart local v56       #prevView:Landroid/view/View;
    if-eqz v56, :cond_10

    .line 1921
    sub-int v5, v37, v33

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v56 .. v56}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v9, v5

    goto/16 :goto_4

    .line 1923
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_7

    .line 1924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v64

    .line 1925
    .local v64, v:Landroid/view/View;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v65

    .line 1926
    .local v65, v2:Landroid/view/View;
    if-eqz v64, :cond_11

    if-eqz v65, :cond_11

    .line 1927
    invoke-virtual/range {v65 .. v65}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v64 .. v64}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v9, v5

    .line 1929
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .restart local v38       #i$:Ljava/util/Iterator;
    :cond_12
    :goto_7
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Integer;

    .line 1930
    .restart local v52       #position:Ljava/lang/Integer;
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v51

    .line 1931
    .restart local v51       #pos:I
    move/from16 v0, v51

    move/from16 v1, v33

    if-lt v0, v1, :cond_12

    sub-int v5, v37, v48

    move/from16 v0, v51

    move v1, v5

    if-ge v0, v1, :cond_12

    .line 1932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v59

    .line 1933
    .restart local v59       #retainView:Landroid/view/View;
    if-eqz v59, :cond_12

    .line 1934
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    move v5, v0

    invoke-virtual/range {v59 .. v59}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v9, v5

    goto :goto_7

    .line 1942
    .end local v38           #i$:Ljava/util/Iterator;
    .end local v51           #pos:I
    .end local v52           #position:Ljava/lang/Integer;
    .end local v56           #prevView:Landroid/view/View;
    .end local v59           #retainView:Landroid/view/View;
    .end local v64           #v:Landroid/view/View;
    .end local v65           #v2:Landroid/view/View;
    :cond_13
    move/from16 v66, v37

    .restart local v66       #x:I
    :goto_8
    add-int v5, v33, v15

    move/from16 v0, v66

    move v1, v5

    if-ge v0, v1, :cond_7

    .line 1943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object v5, v0

    aget v5, v5, v66

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_14

    .line 1944
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    move v5, v0

    sub-int v6, v66, v33

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v9, v5

    .line 1942
    :cond_14
    add-int/lit8 v66, v66, 0x1

    goto :goto_8

    .line 1959
    .end local v9           #HEIGHT:I
    .end local v48           #offset:I
    .end local v66           #x:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getRetainViewPositions()[Ljava/lang/Object;

    move-result-object v47

    .line 1960
    .local v47, list:[Ljava/lang/Object;
    if-eqz v47, :cond_27

    .line 1961
    move-object/from16 v14, v47

    .local v14, arr$:[Ljava/lang/Object;
    move-object v0, v14

    array-length v0, v0

    move/from16 v46, v0

    .local v46, len$:I
    const/16 v38, 0x0

    .local v38, i$:I
    :goto_9
    move/from16 v0, v38

    move/from16 v1, v46

    if-ge v0, v1, :cond_20

    aget-object v43, v14, v38

    .line 1962
    .local v43, item:Ljava/lang/Object;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    .line 1963
    .local v58, retainPos:I
    const/16 v37, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    move-object v5, v0

    array-length v5, v5

    move/from16 v0, v37

    move v1, v5

    if-ge v0, v1, :cond_1a

    .line 1964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    move-object v5, v0

    aget-wide v5, v5, v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    move-object v7, v0

    aget-wide v7, v7, v37

    cmp-long v5, v5, v7

    if-nez v5, :cond_1f

    .line 1966
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move v5, v0

    if-eqz v5, :cond_16

    .line 1967
    const-string v5, "TFAnimatedListView.ItemAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "retainView["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] == mCurIds["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    move-object v7, v0

    aget-wide v7, v7, v37

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (retain view => "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v59

    .line 1971
    .restart local v59       #retainView:Landroid/view/View;
    if-eqz v59, :cond_1a

    .line 1972
    add-int v5, v33, v15

    move/from16 v0, v37

    move v1, v5

    if-lt v0, v1, :cond_1b

    .line 1974
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getHeight()I

    move-result v5

    invoke-virtual/range {v59 .. v59}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v9, v5, v6

    .line 1975
    .restart local v9       #HEIGHT:I
    add-int v66, v33, v15

    .restart local v66       #x:I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    move-object v5, v0

    array-length v5, v5

    move/from16 v0, v66

    move v1, v5

    if-ge v0, v1, :cond_18

    .line 1976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object v6, v0

    aget v6, v6, v66

    sub-int v6, v37, v6

    invoke-virtual {v5, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v36

    .line 1977
    .local v36, hiddenView:Landroid/view/View;
    if-eqz v36, :cond_17

    .line 1978
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v9, v5

    .line 1975
    :cond_17
    add-int/lit8 v66, v66, 0x1

    goto :goto_b

    .line 1981
    .end local v36           #hiddenView:Landroid/view/View;
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move v5, v0

    if-eqz v5, :cond_19

    .line 1982
    const-string v5, "TFAnimatedListView.ItemAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "retainPos : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", item HEIGHT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    :cond_19
    if-eqz v9, :cond_1a

    .line 1985
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getRetainItemAnimationData(IIIII)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    move-result-object v5

    move-object/from16 v0, v57

    move/from16 v1, v58

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1961
    .end local v9           #HEIGHT:I
    .end local v59           #retainView:Landroid/view/View;
    .end local v66           #x:I
    :cond_1a
    :goto_c
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_9

    .line 1986
    .restart local v59       #retainView:Landroid/view/View;
    :cond_1b
    move/from16 v0, v37

    move/from16 v1, v33

    if-ge v0, v1, :cond_1a

    .line 1988
    invoke-virtual/range {v59 .. v59}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v9, v5

    .line 1989
    .restart local v9       #HEIGHT:I
    move/from16 v66, v37

    .restart local v66       #x:I
    :goto_d
    move/from16 v0, v66

    move/from16 v1, v33

    if-ge v0, v1, :cond_1d

    .line 1990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object v6, v0

    aget v6, v6, v66

    sub-int v6, v37, v6

    invoke-virtual {v5, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v36

    .line 1991
    .restart local v36       #hiddenView:Landroid/view/View;
    if-eqz v36, :cond_1c

    .line 1992
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v9, v5

    .line 1989
    :cond_1c
    add-int/lit8 v66, v66, 0x1

    goto :goto_d

    .line 1995
    .end local v36           #hiddenView:Landroid/view/View;
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move v5, v0

    if-eqz v5, :cond_1e

    .line 1996
    const-string v5, "TFAnimatedListView.ItemAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "retainPos : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", item HEIGHT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    :cond_1e
    if-eqz v9, :cond_1a

    .line 1999
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getRetainItemAnimationData(IIIII)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    move-result-object v5

    move-object/from16 v0, v57

    move/from16 v1, v58

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_c

    .line 1963
    .end local v9           #HEIGHT:I
    .end local v59           #retainView:Landroid/view/View;
    .end local v66           #x:I
    :cond_1f
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_a

    .line 2007
    .end local v43           #item:Ljava/lang/Object;
    .end local v58           #retainPos:I
    :cond_20
    if-eqz v34, :cond_27

    .line 2008
    move-object/from16 v14, v47

    move-object v0, v14

    array-length v0, v0

    move/from16 v46, v0

    const/16 v38, 0x0

    :goto_e
    move/from16 v0, v38

    move/from16 v1, v46

    if-ge v0, v1, :cond_27

    aget-object v43, v14, v38

    .line 2009
    .restart local v43       #item:Ljava/lang/Object;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    .line 2010
    .restart local v58       #retainPos:I
    const/16 v31, 0x0

    .line 2013
    .local v31, exist:Z
    move/from16 v37, v33

    :goto_f
    add-int v5, v33, v15

    move/from16 v0, v37

    move v1, v5

    if-ge v0, v1, :cond_21

    .line 2014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    move-object v5, v0

    aget-wide v5, v5, v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    move-object v7, v0

    aget-wide v7, v7, v37

    cmp-long v5, v5, v7

    if-nez v5, :cond_23

    .line 2015
    const/16 v31, 0x1

    .line 2020
    :cond_21
    move/from16 v0, v58

    move/from16 v1, v33

    if-ge v0, v1, :cond_26

    if-nez v31, :cond_26

    .line 2021
    const/4 v9, 0x0

    .line 2022
    .restart local v9       #HEIGHT:I
    move/from16 v66, v58

    .restart local v66       #x:I
    :goto_10
    add-int v5, v33, v15

    move/from16 v0, v66

    move v1, v5

    if-ge v0, v1, :cond_24

    .line 2023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object v5, v0

    aget v5, v5, v66

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_22

    .line 2024
    sub-int v5, v66, v33

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 2025
    .local v18, currentView:Landroid/view/View;
    if-eqz v18, :cond_22

    .line 2026
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    move v5, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v9, v5

    .line 2022
    .end local v18           #currentView:Landroid/view/View;
    :cond_22
    add-int/lit8 v66, v66, 0x1

    goto :goto_10

    .line 2013
    .end local v9           #HEIGHT:I
    .end local v66           #x:I
    :cond_23
    add-int/lit8 v37, v37, 0x1

    goto :goto_f

    .line 2030
    .restart local v9       #HEIGHT:I
    .restart local v66       #x:I
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move v5, v0

    if-eqz v5, :cond_25

    .line 2031
    const-string v5, "TFAnimatedListView.ItemAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "firstPositionOffset : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " retainPos : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " item HEIGHT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    :cond_25
    if-eqz v9, :cond_26

    .line 2035
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getRetainItemAnimationData(IIIII)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    move-result-object v5

    move-object/from16 v0, v57

    move/from16 v1, v58

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2008
    .end local v9           #HEIGHT:I
    .end local v66           #x:I
    :cond_26
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_e

    .line 2044
    .end local v14           #arr$:[Ljava/lang/Object;
    .end local v31           #exist:Z
    .end local v38           #i$:I
    .end local v43           #item:Ljava/lang/Object;
    .end local v46           #len$:I
    .end local v58           #retainPos:I
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_29

    .line 2045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .local v38, i$:Ljava/util/Iterator;
    :cond_28
    :goto_11
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Integer;

    .line 2046
    .restart local v52       #position:Ljava/lang/Integer;
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v51

    .line 2047
    .restart local v51       #pos:I
    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getDeleteAnimationData(III)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    move-result-object v5

    move-object/from16 v0, v25

    move/from16 v1, v51

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2049
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move v5, v0

    if-eqz v5, :cond_28

    .line 2050
    const-string v5, "TFAnimatedListView.ItemAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete animation added at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 2058
    .end local v38           #i$:Ljava/util/Iterator;
    .end local v51           #pos:I
    .end local v52           #position:Ljava/lang/Integer;
    :cond_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mStackFromBottom:Z

    move v5, v0

    if-eqz v5, :cond_2d

    .line 2059
    if-nez v34, :cond_2c

    .line 2060
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move v5, v0

    if-eqz v5, :cond_2a

    .line 2061
    const-string v5, "TFAnimatedListView.ItemAnimation"

    const-string v6, "[stack bottom] no first position changed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    :cond_2a
    :goto_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v62

    .line 2356
    .local v62, time:J
    const/16 v37, 0x0

    :goto_13
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v37

    move v1, v5

    if-ge v0, v1, :cond_57

    .line 2357
    move-object v0, v13

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    .line 2358
    .local v45, key:I
    const/4 v5, 0x0

    move-object v0, v13

    move/from16 v1, v45

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .line 2359
    .local v20, data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    if-eqz v20, :cond_2b

    .line 2360
    move-object/from16 v0, v20

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    move v5, v0

    packed-switch v5, :pswitch_data_0

    .line 2356
    :cond_2b
    :goto_14
    add-int/lit8 v37, v37, 0x1

    goto :goto_13

    .line 2063
    .end local v20           #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .end local v45           #key:I
    .end local v62           #time:J
    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move v5, v0

    if-eqz v5, :cond_2a

    .line 2064
    const-string v5, "TFAnimatedListView.ItemAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[stack bottom] first position changed as "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 2067
    :cond_2d
    if-nez v34, :cond_33

    .line 2068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v64

    .line 2069
    .restart local v64       #v:Landroid/view/View;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v65

    .line 2070
    .restart local v65       #v2:Landroid/view/View;
    if-eqz v64, :cond_2a

    if-eqz v65, :cond_2a

    .line 2071
    invoke-virtual/range {v65 .. v65}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v64 .. v64}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v49, v5, v6

    .line 2072
    .local v49, offsetY:I
    if-eqz v49, :cond_2a

    .line 2074
    move/from16 v44, v33

    .local v44, k:I
    :goto_15
    add-int v5, v33, v15

    move/from16 v0, v44

    move v1, v5

    if-ge v0, v1, :cond_30

    .line 2075
    const/4 v5, 0x0

    move-object v0, v13

    move/from16 v1, v44

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .line 2076
    .restart local v20       #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    if-nez v20, :cond_2f

    .line 2077
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move v5, v0

    if-eqz v5, :cond_2e

    .line 2078
    const-string v5, "TFAnimatedListView.ItemAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no first position changed but offset Y slide as "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    :cond_2e
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, v49

    move v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getItemAnimationData(III)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    move-result-object v5

    move-object v0, v13

    move/from16 v1, v44

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2074
    :cond_2f
    add-int/lit8 v44, v44, 0x1

    goto :goto_15

    .line 2089
    .end local v20           #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    :cond_30
    const/16 v44, 0x0

    :goto_16
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v44

    move v1, v5

    if-ge v0, v1, :cond_2a

    .line 2090
    move-object/from16 v0, v25

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v24

    .line 2091
    .local v24, delPos:I
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .line 2092
    .local v23, delData:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    if-eqz v23, :cond_31

    .line 2093
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDefaultAnimationType:I

    move v5, v0

    packed-switch v5, :pswitch_data_1

    .line 2089
    :cond_31
    :goto_17
    add-int/lit8 v44, v44, 0x1

    goto :goto_16

    .line 2097
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move v5, v0

    if-eqz v5, :cond_32

    .line 2098
    const-string v5, "TFAnimatedListView.ItemAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "firstPositionOffset don\'t changed.\nanimation type ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDefaultAnimationType:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "have anchor move Y as "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    :cond_32
    move/from16 v0, v49

    move-object/from16 v1, v23

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorDeltaY:I

    goto :goto_17

    .line 2110
    .end local v23           #delData:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .end local v24           #delPos:I
    .end local v44           #k:I
    .end local v49           #offsetY:I
    .end local v64           #v:Landroid/view/View;
    .end local v65           #v2:Landroid/view/View;
    :cond_33
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move v5, v0

    if-eqz v5, :cond_34

    .line 2111
    const-string v5, "TFAnimatedListView.ItemAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "first position offset changed as "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    :cond_34
    const/16 v30, 0x0

    .line 2115
    .local v30, distortion:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v55

    .line 2116
    .local v55, prevFirstView:Landroid/view/View;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 2117
    .local v17, curFirstView:Landroid/view/View;
    if-eqz v55, :cond_35

    if-eqz v17, :cond_35

    .line 2118
    invoke-virtual/range {v55 .. v55}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v30, v5, v6

    .line 2120
    :cond_35
    move/from16 v67, v33

    .local v67, z:I
    :goto_18
    add-int v5, v33, v15

    move/from16 v0, v67

    move v1, v5

    if-ge v0, v1, :cond_3f

    .line 2121
    if-eqz v47, :cond_3e

    .line 2122
    const/16 v35, 0x0

    .line 2125
    .local v35, found:Z
    move-object/from16 v14, v47

    .restart local v14       #arr$:[Ljava/lang/Object;
    move-object v0, v14

    array-length v0, v0

    move/from16 v46, v0

    .restart local v46       #len$:I
    const/16 v38, 0x0

    .local v38, i$:I
    :goto_19
    move/from16 v0, v38

    move/from16 v1, v46

    if-ge v0, v1, :cond_37

    aget-object v43, v14, v38

    .line 2126
    .restart local v43       #item:Ljava/lang/Object;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    .line 2127
    .restart local v58       #retainPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    move-object v5, v0

    aget-wide v5, v5, v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    move-object v7, v0

    aget-wide v7, v7, v67

    cmp-long v5, v5, v7

    if-nez v5, :cond_39

    .line 2128
    const/16 v35, 0x1

    .line 2130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v59

    .line 2131
    .restart local v59       #retainView:Landroid/view/View;
    sub-int v5, v67, v33

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 2132
    .restart local v18       #currentView:Landroid/view/View;
    if-eqz v59, :cond_37

    if-eqz v18, :cond_37

    .line 2133
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v59 .. v59}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v61, v5, v6

    .line 2135
    .local v61, slideOffsetY:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move v5, v0

    if-eqz v5, :cond_36

    .line 2136
    const-string v5, "TFAnimatedListView.ItemAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Item "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " was on screen. slideOffsetY : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    :cond_36
    if-eqz v61, :cond_37

    .line 2139
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, v61

    move v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getItemAnimationData(III)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    move-result-object v5

    move-object v0, v13

    move/from16 v1, v67

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2145
    .end local v18           #currentView:Landroid/view/View;
    .end local v43           #item:Ljava/lang/Object;
    .end local v58           #retainPos:I
    .end local v59           #retainView:Landroid/view/View;
    .end local v61           #slideOffsetY:I
    :cond_37
    if-nez v35, :cond_3e

    .line 2147
    const/16 v48, 0x0

    .line 2148
    .restart local v48       #offset:I
    const/16 v66, 0x0

    .restart local v66       #x:I
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    move-object v5, v0

    array-length v5, v5

    move/from16 v0, v66

    move v1, v5

    if-ge v0, v1, :cond_38

    .line 2149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    move-object v5, v0

    aget-wide v5, v5, v66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    move-object v7, v0

    aget-wide v7, v7, v67

    cmp-long v5, v5, v7

    if-nez v5, :cond_3a

    .line 2150
    sub-int v5, v67, v33

    sub-int v6, v66, v54

    sub-int v48, v5, v6

    .line 2155
    :cond_38
    if-eqz v48, :cond_3e

    .line 2156
    move/from16 v0, v30

    neg-int v0, v0

    move v9, v0

    .line 2157
    .restart local v9       #HEIGHT:I
    if-lez v48, :cond_3b

    .line 2158
    const/16 v44, 0x0

    .restart local v44       #k:I
    :goto_1b
    move v0, v15

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    move/from16 v0, v44

    move v1, v5

    if-ge v0, v1, :cond_3c

    .line 2159
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    move v5, v0

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v9, v5

    .line 2158
    add-int/lit8 v44, v44, 0x1

    goto :goto_1b

    .line 2125
    .end local v9           #HEIGHT:I
    .end local v44           #k:I
    .end local v48           #offset:I
    .end local v66           #x:I
    .restart local v43       #item:Ljava/lang/Object;
    .restart local v58       #retainPos:I
    :cond_39
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_19

    .line 2148
    .end local v43           #item:Ljava/lang/Object;
    .end local v58           #retainPos:I
    .restart local v48       #offset:I
    .restart local v66       #x:I
    :cond_3a
    add-int/lit8 v66, v66, 0x1

    goto :goto_1a

    .line 2161
    .restart local v9       #HEIGHT:I
    :cond_3b
    const/16 v44, 0x0

    .restart local v44       #k:I
    :goto_1c
    move/from16 v0, v48

    neg-int v0, v0

    move v5, v0

    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move/from16 v0, v44

    move v1, v5

    if-ge v0, v1, :cond_3c

    .line 2162
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v6, v15, v6

    sub-int v6, v6, v44

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v9, v5

    .line 2161
    add-int/lit8 v44, v44, 0x1

    goto :goto_1c

    .line 2165
    :cond_3c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move v5, v0

    if-eqz v5, :cond_3d

    .line 2166
    const-string v5, "TFAnimatedListView.ItemAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Item "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " was not on screen. HEIGHT : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    :cond_3d
    if-eqz v9, :cond_3e

    .line 2169
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v9

    move v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getItemAnimationData(III)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    move-result-object v5

    move-object v0, v13

    move/from16 v1, v67

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2120
    .end local v9           #HEIGHT:I
    .end local v14           #arr$:[Ljava/lang/Object;
    .end local v35           #found:Z
    .end local v38           #i$:I
    .end local v44           #k:I
    .end local v46           #len$:I
    .end local v48           #offset:I
    .end local v66           #x:I
    :cond_3e
    add-int/lit8 v67, v67, 0x1

    goto/16 :goto_18

    .line 2176
    :cond_3f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDefaultAnimationType:I

    move v5, v0

    packed-switch v5, :pswitch_data_2

    goto/16 :goto_12

    .line 2179
    :pswitch_1
    const/16 v19, 0x0

    .local v19, d:I
    :goto_1d
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v19

    move v1, v5

    if-ge v0, v1, :cond_45

    .line 2180
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    .line 2181
    .restart local v45       #key:I
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v45

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .line 2182
    .restart local v20       #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    if-eqz v20, :cond_43

    .line 2183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v59

    .line 2186
    .restart local v59       #retainView:Landroid/view/View;
    const/4 v5, 0x1

    sub-int v11, v45, v5

    .line 2187
    .local v11, anchorPos:I
    const/4 v5, 0x1

    sub-int v32, v45, v5

    .local v32, f:I
    :goto_1e
    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_40

    .line 2188
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v32

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_40

    .line 2189
    add-int/lit8 v11, v11, -0x1

    .line 2187
    add-int/lit8 v32, v32, -0x1

    goto :goto_1e

    .line 2194
    :cond_40
    if-eqz v59, :cond_42

    .line 2196
    sub-int v5, v11, v33

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2197
    .local v12, anchorView:Landroid/view/View;
    const/16 v53, 0x0

    .line 2198
    .local v53, prevAnchorView:Landroid/view/View;
    move/from16 v50, v54

    .local v50, p:I
    :goto_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    move-object v5, v0

    array-length v5, v5

    move/from16 v0, v50

    move v1, v5

    if-ge v0, v1, :cond_41

    .line 2199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    move-object v5, v0

    aget-wide v5, v5, v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    move-object v7, v0

    aget-wide v7, v7, v11

    cmp-long v5, v5, v7

    if-nez v5, :cond_44

    .line 2200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v53

    .line 2205
    :cond_41
    if-eqz v12, :cond_42

    if-eqz v53, :cond_42

    .line 2206
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v53 .. v53}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v48, v5, v6

    .line 2207
    .restart local v48       #offset:I
    move/from16 v0, v48

    move-object/from16 v1, v20

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorDeltaY:I

    .line 2211
    .end local v12           #anchorView:Landroid/view/View;
    .end local v48           #offset:I
    .end local v50           #p:I
    .end local v53           #prevAnchorView:Landroid/view/View;
    :cond_42
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move v5, v0

    if-eqz v5, :cond_43

    .line 2212
    const-string v5, "TFAnimatedListView.ItemAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDefaultAnimationType:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Delete item at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " have offset Y to anchor View : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorDeltaY:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    .end local v11           #anchorPos:I
    .end local v32           #f:I
    .end local v59           #retainView:Landroid/view/View;
    :cond_43
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1d

    .line 2198
    .restart local v11       #anchorPos:I
    .restart local v12       #anchorView:Landroid/view/View;
    .restart local v32       #f:I
    .restart local v50       #p:I
    .restart local v53       #prevAnchorView:Landroid/view/View;
    .restart local v59       #retainView:Landroid/view/View;
    :cond_44
    add-int/lit8 v50, v50, 0x1

    goto/16 :goto_1f

    .line 2218
    .end local v11           #anchorPos:I
    .end local v12           #anchorView:Landroid/view/View;
    .end local v20           #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .end local v32           #f:I
    .end local v45           #key:I
    .end local v50           #p:I
    .end local v53           #prevAnchorView:Landroid/view/View;
    .end local v59           #retainView:Landroid/view/View;
    :cond_45
    const/16 v19, 0x0

    :goto_20
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v19

    move v1, v5

    if-ge v0, v1, :cond_2a

    .line 2219
    move-object v0, v13

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    .line 2220
    .restart local v45       #key:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object v5, v0

    aget v5, v5, v45

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_48

    .line 2221
    const/4 v5, 0x0

    move-object v0, v13

    move/from16 v1, v45

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .line 2222
    .restart local v20       #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    if-eqz v20, :cond_48

    .line 2223
    if-lez v34, :cond_48

    .line 2224
    sub-int v5, v45, v33

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 2225
    .local v42, insertView:Landroid/view/View;
    if-eqz v42, :cond_47

    .line 2227
    const/4 v5, 0x1

    sub-int v11, v45, v5

    .line 2228
    .restart local v11       #anchorPos:I
    const/4 v5, 0x1

    sub-int v32, v45, v5

    .restart local v32       #f:I
    :goto_21
    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_46

    .line 2229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object v5, v0

    aget v5, v5, v32

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_46

    .line 2230
    add-int/lit8 v11, v11, -0x1

    .line 2228
    add-int/lit8 v32, v32, -0x1

    goto :goto_21

    .line 2236
    :cond_46
    move v0, v11

    move/from16 v1, v33

    if-ge v0, v1, :cond_49

    .line 2237
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v5, v5

    move v0, v5

    move-object/from16 v1, v20

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorDeltaY:I

    .line 2256
    .end local v11           #anchorPos:I
    .end local v32           #f:I
    :cond_47
    :goto_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move v5, v0

    if-eqz v5, :cond_48

    .line 2257
    const-string v5, "TFAnimatedListView.ItemAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDefaultAnimationType:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Inserted item at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " have offset Y to anchor View : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorDeltaY:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    .end local v20           #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .end local v42           #insertView:Landroid/view/View;
    :cond_48
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_20

    .line 2239
    .restart local v11       #anchorPos:I
    .restart local v20       #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .restart local v32       #f:I
    .restart local v42       #insertView:Landroid/view/View;
    :cond_49
    add-int/lit8 v5, v11, 0x1

    sub-int v5, v5, v33

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    .line 2240
    .local v39, insertBaseView:Landroid/view/View;
    const/4 v12, 0x0

    .line 2241
    .restart local v12       #anchorView:Landroid/view/View;
    move/from16 v64, v54

    .local v64, v:I
    :goto_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    move-object v5, v0

    array-length v5, v5

    move/from16 v0, v64

    move v1, v5

    if-ge v0, v1, :cond_4a

    .line 2242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    move-object v5, v0

    aget-wide v5, v5, v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    move-object v7, v0

    aget-wide v7, v7, v11

    cmp-long v5, v5, v7

    if-nez v5, :cond_4b

    .line 2243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v12

    .line 2248
    :cond_4a
    if-eqz v12, :cond_47

    if-eqz v39, :cond_47

    .line 2249
    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v29, v5, v6

    .line 2250
    .local v29, delta:I
    move/from16 v0, v29

    neg-int v0, v0

    move v5, v0

    move v0, v5

    move-object/from16 v1, v20

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorY:I

    .line 2251
    move/from16 v0, v29

    move-object/from16 v1, v20

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorDeltaY:I

    goto/16 :goto_22

    .line 2241
    .end local v29           #delta:I
    :cond_4b
    add-int/lit8 v64, v64, 0x1

    goto :goto_23

    .line 2267
    .end local v11           #anchorPos:I
    .end local v12           #anchorView:Landroid/view/View;
    .end local v19           #d:I
    .end local v20           #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .end local v32           #f:I
    .end local v39           #insertBaseView:Landroid/view/View;
    .end local v42           #insertView:Landroid/view/View;
    .end local v45           #key:I
    .end local v64           #v:I
    :pswitch_2
    const/16 v19, 0x0

    .restart local v19       #d:I
    :goto_24
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v19

    move v1, v5

    if-ge v0, v1, :cond_50

    .line 2268
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    .line 2269
    .restart local v45       #key:I
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v45

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .line 2270
    .restart local v20       #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    if-eqz v20, :cond_4e

    .line 2271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v59

    .line 2272
    .restart local v59       #retainView:Landroid/view/View;
    if-eqz v59, :cond_4d

    .line 2274
    const/4 v5, 0x1

    sub-int v11, v45, v5

    .line 2275
    .restart local v11       #anchorPos:I
    const/4 v5, 0x1

    sub-int v32, v45, v5

    .restart local v32       #f:I
    :goto_25
    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_4c

    .line 2276
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v32

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4c

    .line 2277
    add-int/lit8 v11, v11, -0x1

    .line 2275
    add-int/lit8 v32, v32, -0x1

    goto :goto_25

    .line 2283
    :cond_4c
    move v0, v11

    move/from16 v1, v33

    if-ge v0, v1, :cond_4f

    .line 2284
    invoke-virtual/range {v59 .. v59}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v5, v5

    move v0, v5

    move-object/from16 v1, v20

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorDeltaY:I

    .line 2293
    .end local v11           #anchorPos:I
    .end local v32           #f:I
    :cond_4d
    :goto_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move v5, v0

    if-eqz v5, :cond_4e

    .line 2294
    const-string v5, "TFAnimatedListView.ItemAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDefaultAnimationType:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Delete item at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " have offset Y to anchor View : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorDeltaY:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    .end local v59           #retainView:Landroid/view/View;
    :cond_4e
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_24

    .line 2286
    .restart local v11       #anchorPos:I
    .restart local v32       #f:I
    .restart local v59       #retainView:Landroid/view/View;
    :cond_4f
    sub-int v5, v11, v33

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2287
    .restart local v12       #anchorView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object v5, v0

    add-int/lit8 v6, v11, 0x1

    invoke-virtual {v5, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v26

    .line 2288
    .local v26, deleteBaseView:Landroid/view/View;
    if-eqz v12, :cond_4d

    if-eqz v26, :cond_4d

    .line 2289
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v20

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorDeltaY:I

    goto :goto_26

    .line 2300
    .end local v11           #anchorPos:I
    .end local v12           #anchorView:Landroid/view/View;
    .end local v20           #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .end local v26           #deleteBaseView:Landroid/view/View;
    .end local v32           #f:I
    .end local v45           #key:I
    .end local v59           #retainView:Landroid/view/View;
    :cond_50
    const/16 v19, 0x0

    :goto_27
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v19

    move v1, v5

    if-ge v0, v1, :cond_2a

    .line 2301
    move-object v0, v13

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    .line 2302
    .restart local v45       #key:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object v5, v0

    aget v5, v5, v45

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_53

    .line 2303
    const/4 v5, 0x0

    move-object v0, v13

    move/from16 v1, v45

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .line 2304
    .restart local v20       #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    if-eqz v20, :cond_53

    .line 2305
    if-lez v34, :cond_53

    .line 2306
    sub-int v5, v45, v33

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 2307
    .restart local v42       #insertView:Landroid/view/View;
    if-eqz v42, :cond_52

    .line 2309
    const/4 v5, 0x1

    sub-int v11, v45, v5

    .line 2310
    .restart local v11       #anchorPos:I
    const/4 v5, 0x1

    sub-int v32, v45, v5

    .restart local v32       #f:I
    :goto_28
    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_51

    .line 2311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object v5, v0

    aget v5, v5, v32

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_51

    .line 2312
    add-int/lit8 v11, v11, -0x1

    .line 2310
    add-int/lit8 v32, v32, -0x1

    goto :goto_28

    .line 2318
    :cond_51
    move v0, v11

    move/from16 v1, v33

    if-ge v0, v1, :cond_54

    .line 2319
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v5, v5

    move v0, v5

    move-object/from16 v1, v20

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorDeltaY:I

    .line 2338
    .end local v11           #anchorPos:I
    .end local v32           #f:I
    :cond_52
    :goto_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move v5, v0

    if-eqz v5, :cond_53

    .line 2339
    const-string v5, "TFAnimatedListView.ItemAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDefaultAnimationType:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Inserted item at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " have offset Y to anchor View : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorDeltaY:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    .end local v20           #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .end local v42           #insertView:Landroid/view/View;
    :cond_53
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_27

    .line 2321
    .restart local v11       #anchorPos:I
    .restart local v20       #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .restart local v32       #f:I
    .restart local v42       #insertView:Landroid/view/View;
    :cond_54
    add-int/lit8 v5, v11, 0x1

    sub-int v5, v5, v33

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    .line 2322
    .restart local v39       #insertBaseView:Landroid/view/View;
    const/4 v12, 0x0

    .line 2323
    .restart local v12       #anchorView:Landroid/view/View;
    move/from16 v64, v54

    .restart local v64       #v:I
    :goto_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    move-object v5, v0

    array-length v5, v5

    move/from16 v0, v64

    move v1, v5

    if-ge v0, v1, :cond_55

    .line 2324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    move-object v5, v0

    aget-wide v5, v5, v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    move-object v7, v0

    aget-wide v7, v7, v11

    cmp-long v5, v5, v7

    if-nez v5, :cond_56

    .line 2325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v12

    .line 2330
    :cond_55
    if-eqz v12, :cond_52

    if-eqz v39, :cond_52

    .line 2331
    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v29, v5, v6

    .line 2332
    .restart local v29       #delta:I
    move/from16 v0, v29

    neg-int v0, v0

    move v5, v0

    move v0, v5

    move-object/from16 v1, v20

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorY:I

    .line 2333
    move/from16 v0, v29

    move-object/from16 v1, v20

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorDeltaY:I

    goto/16 :goto_29

    .line 2323
    .end local v29           #delta:I
    :cond_56
    add-int/lit8 v64, v64, 0x1

    goto :goto_2a

    .line 2362
    .end local v11           #anchorPos:I
    .end local v12           #anchorView:Landroid/view/View;
    .end local v17           #curFirstView:Landroid/view/View;
    .end local v19           #d:I
    .end local v30           #distortion:I
    .end local v32           #f:I
    .end local v39           #insertBaseView:Landroid/view/View;
    .end local v42           #insertView:Landroid/view/View;
    .end local v55           #prevFirstView:Landroid/view/View;
    .end local v64           #v:I
    .end local v67           #z:I
    .restart local v62       #time:J
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    move-object v5, v0

    sub-int v6, v45, v33

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v62

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getTranslateItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;JLandroid/view/View;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v6

    move-object v0, v5

    move/from16 v1, v45

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    goto/16 :goto_14

    .line 2366
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    move-object v5, v0

    move-object/from16 v0, p0

    move/from16 v1, v45

    move-object/from16 v2, v20

    move-wide/from16 v3, v62

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getCustomInsertItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;J)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v6

    move-object v0, v5

    move/from16 v1, v45

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    goto/16 :goto_14

    .line 2373
    .end local v20           #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .end local v45           #key:I
    :cond_57
    const/16 v37, 0x0

    :goto_2b
    invoke-virtual/range {v57 .. v57}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v37

    move v1, v5

    if-ge v0, v1, :cond_5a

    .line 2374
    move-object/from16 v0, v57

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    .line 2375
    .restart local v45       #key:I
    const/4 v5, 0x0

    move-object/from16 v0, v57

    move/from16 v1, v45

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .line 2376
    .restart local v20       #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    if-eqz v20, :cond_58

    .line 2377
    move-object/from16 v0, v20

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    move v5, v0

    packed-switch v5, :pswitch_data_3

    .line 2373
    :cond_58
    :goto_2c
    add-int/lit8 v37, v37, 0x1

    goto :goto_2b

    .line 2379
    :pswitch_5
    move/from16 v0, v45

    move/from16 v1, v33

    if-ge v0, v1, :cond_59

    .line 2380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v62

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getTranslateItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;JLandroid/view/View;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v6

    move-object v0, v5

    move/from16 v1, v45

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putRetainItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    goto :goto_2c

    .line 2382
    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    move-object v5, v0

    sub-int v6, v45, v33

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v62

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getTranslateItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;JLandroid/view/View;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v6

    move-object v0, v5

    move/from16 v1, v45

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putRetainItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    goto :goto_2c

    .line 2386
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    move-object v5, v0

    move-object/from16 v0, p0

    move/from16 v1, v45

    move-object/from16 v2, v20

    move-wide/from16 v3, v62

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getCustomInsertItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;J)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v6

    move-object v0, v5

    move/from16 v1, v45

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putRetainItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    goto :goto_2c

    .line 2393
    .end local v20           #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .end local v45           #key:I
    :cond_5a
    const/16 v37, 0x0

    :goto_2d
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v37

    move v1, v5

    if-ge v0, v1, :cond_5c

    .line 2394
    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    .line 2395
    .restart local v45       #key:I
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v45

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .line 2396
    .restart local v20       #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    if-eqz v20, :cond_5b

    .line 2397
    move-object/from16 v0, v20

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    move v5, v0

    packed-switch v5, :pswitch_data_4

    .line 2393
    :cond_5b
    :goto_2e
    add-int/lit8 v37, v37, 0x1

    goto :goto_2d

    .line 2399
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v62

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getTranslateItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;JLandroid/view/View;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v6

    move-object v0, v5

    move/from16 v1, v45

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putDeleteItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    goto :goto_2e

    .line 2403
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    move-object v5, v0

    move-object/from16 v0, p0

    move/from16 v1, v45

    move-object/from16 v2, v20

    move-wide/from16 v3, v62

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getCustomDeleteItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;J)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v6

    move-object v0, v5

    move/from16 v1, v45

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putDeleteItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    goto :goto_2e

    .line 2409
    .end local v20           #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .end local v45           #key:I
    :cond_5c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->start()V

    .line 2427
    .end local v10           #translateDelay:I
    .end local v13           #animation:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;>;"
    .end local v15           #childCount:I
    .end local v25           #deleteAnimation:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;>;"
    .end local v27           #deleteDelay:I
    .end local v28           #deleteDuration:I
    .end local v33           #first:I
    .end local v34           #firstPositionOffset:I
    .end local v37           #i:I
    .end local v40           #insertDelay:I
    .end local v41           #insertDuration:I
    .end local v47           #list:[Ljava/lang/Object;
    .end local v54           #prevFirst:I
    .end local v57           #retainAnimation:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;>;"
    .end local v62           #time:J
    :cond_5d
    :goto_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mFloatingViews:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .local v38, i$:Ljava/util/Iterator;
    :cond_5e
    :goto_30
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_62

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Landroid/view/View;

    .line 2428
    .local v64, v:Landroid/view/View;
    invoke-virtual/range {v64 .. v64}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_5e

    .line 2429
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move v2, v5

    move-object v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto :goto_30

    .line 2413
    .end local v38           #i$:Ljava/util/Iterator;
    .end local v64           #v:Landroid/view/View;
    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    move-object v5, v0

    if-eqz v5, :cond_60

    .line 2414
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    .line 2416
    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    move-object v5, v0

    if-eqz v5, :cond_61

    .line 2417
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    .line 2419
    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object v5, v0

    if-eqz v5, :cond_5d

    .line 2420
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    goto :goto_2f

    .line 2432
    .restart local v38       #i$:Ljava/util/Iterator;
    :cond_62
    return-void

    .line 2360
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2093
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2176
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2377
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 2397
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 1535
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIsAnimating:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1536
    const/4 v0, 0x1

    .line 1538
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1551
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIsAnimating:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1553
    const/4 v0, 0x1

    .line 1555
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1560
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIsAnimating:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1562
    const/4 v0, 0x1

    .line 1564
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPostDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 0
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 1531
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 1543
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIsAnimating:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1544
    const/4 v0, 0x1

    .line 1546
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected removeFloatingView(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 2812
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->removeViewInLayout(Landroid/view/View;)V

    .line 2814
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mFloatingViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2815
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    const/4 v1, 0x0

    .line 1746
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->forceFinish()V

    .line 1748
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    if-eqz v0, :cond_0

    .line 1749
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    .line 1751
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    if-eqz v0, :cond_1

    .line 1752
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    .line 1754
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    if-eqz v0, :cond_2

    .line 1755
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    .line 1758
    :cond_2
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1759
    return-void
.end method

.method public setAnimationAlpha(II)V
    .locals 1
    .parameter "minAlpha"
    .parameter "maxAlpha"

    .prologue
    const/16 v0, 0xff

    .line 1250
    if-lt p2, p1, :cond_1

    .line 1251
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 1252
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationMinAlpha:I

    .line 1255
    :cond_0
    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    .line 1256
    iput p2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationMaxAlpha:I

    .line 1259
    :cond_1
    return-void
.end method

.method public setAnimationDrawingCacheEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1437
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mUseAnimationCache:Z

    .line 1438
    return-void
.end method

.method public setAnimationMaxAlpha(I)V
    .locals 1
    .parameter "maxAlpha"

    .prologue
    .line 1236
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationMinAlpha:I

    if-lt p1, v0, :cond_0

    .line 1237
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationMaxAlpha:I

    .line 1239
    :cond_0
    return-void
.end method

.method public setAnimationMinAlpha(I)V
    .locals 1
    .parameter "minAlpha"

    .prologue
    .line 1223
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 1224
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationMinAlpha:I

    .line 1226
    :cond_0
    return-void
.end method

.method public setAnimationOnDataChangeEnabled(Z)V
    .locals 0
    .parameter "enableAnimation"

    .prologue
    .line 1147
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mShowAnimationOnDataChange:Z

    .line 1148
    return-void
.end method

.method public setCustomItemDeleteDrawCallback(Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteDrawCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 655
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteDrawCallback;

    .line 656
    return-void
.end method

.method public setCustomItemInsertDrawCallback(Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertDrawCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 617
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCustomItemInsertDrawCallback:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertDrawCallback;

    .line 618
    return-void
.end method

.method public setDeleteAnimationDelay(I)V
    .locals 0
    .parameter "delay"

    .prologue
    .line 1358
    if-ltz p1, :cond_0

    .line 1359
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteAnimationDelay:I

    .line 1360
    :cond_0
    return-void
.end method

.method public setDeleteAnimationDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 1417
    if-lez p1, :cond_0

    .line 1418
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteAnimationDuration:I

    .line 1419
    :cond_0
    return-void
.end method

.method public setDrawDeleteAnimationFront(Z)V
    .locals 0
    .parameter "drawFront"

    .prologue
    .line 1165
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDrawDeleteViewFront:Z

    .line 1166
    return-void
.end method

.method public setDrawInsertAnimationFront(Z)V
    .locals 0
    .parameter "drawFront"

    .prologue
    .line 1183
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDrawInsertViewFront:Z

    .line 1184
    return-void
.end method

.method public setInsertAnimationDelay(I)V
    .locals 0
    .parameter "delay"

    .prologue
    .line 1339
    if-ltz p1, :cond_0

    .line 1340
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mInsertAnimationDelay:I

    .line 1341
    :cond_0
    return-void
.end method

.method public setInsertAnimationDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 1397
    if-lez p1, :cond_0

    .line 1398
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mInsertAnimationDuration:I

    .line 1399
    :cond_0
    return-void
.end method

.method public setItemAnimationDuration(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 1267
    if-nez p1, :cond_0

    .line 1268
    const/16 v0, 0x12c

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationDuration:I

    .line 1271
    :goto_0
    return-void

    .line 1270
    :cond_0
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationDuration:I

    goto :goto_0
.end method

.method public setItemAnimationListener(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 694
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimationListener:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;

    .line 695
    return-void
.end method

.method public setItemAnimationType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 1201
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    .line 1203
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDefaultAnimationType:I

    .line 1204
    :cond_0
    return-void
.end method

.method public setTranslateAnimationDelay(I)V
    .locals 0
    .parameter "delay"

    .prologue
    .line 1377
    if-ltz p1, :cond_0

    .line 1378
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mTranslateAnimationDelay:I

    .line 1379
    :cond_0
    return-void
.end method
