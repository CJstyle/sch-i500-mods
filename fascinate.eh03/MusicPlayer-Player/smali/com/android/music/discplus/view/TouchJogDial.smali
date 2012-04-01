.class public Lcom/android/music/discplus/view/TouchJogDial;
.super Landroid/view/View;
.source "TouchJogDial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;,
        Lcom/android/music/discplus/view/TouchJogDial$Arrow;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAllowMaxRadius:I

.field private mAllowMinRadius:I

.field private mArcPaint:Landroid/graphics/Paint;

.field private mArcX:F

.field private mArcY:F

.field private mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

.field private mArtistNameTV:Landroid/widget/TextView;

.field private mBGViewHeight:I

.field private mBGViewWidth:I

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mCCViewHeight:I

.field private mCCViewWidth:I

.field private mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

.field private mCenterX:I

.field private mCenterY:I

.field private mContext:Landroid/content/Context;

.field private mCycleCursorDrawable:Landroid/graphics/drawable/Drawable;

.field private mCycleRadius:F

.field private mDiscIndexCyclePartBitmap:Landroid/graphics/Bitmap;

.field private mDiscIndexCycleTextBitmap:Landroid/graphics/Bitmap;

.field private mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

.field private mDiscPlusDataType:I

.field private mDiscPlusListInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/discplus/data/DiscPlusListInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusedIndexTV:Landroid/widget/TextView;

.field private mFocusedTextPaint:Landroid/graphics/Paint;

.field private mHandler:Landroid/os/Handler;

.field private mIndexCycleCursorDataSet:Ljava/lang/Runnable;

.field public mIsDataChange:Z

.field private mItemTitleTV:Landroid/widget/TextView;

.field private mLastDegree:D

.field private mNoItem:Landroid/widget/TextView;

.field private mNowInfoListIndex:I

.field private mPaintTextHeight:F

.field private mPaintTextRadiusX:F

.field private mPaintTextRadiusY:F

.field private mPaintTextSize:F

.field private mPlayBtn:Landroid/widget/ImageView;

.field private mStrokWidth:F

.field private mSyncNowPosition:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTopView:Lcom/android/music/discplus/view/TopView;

.field private mTwColor81:I

.field private mTwColor87:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/android/music/discplus/view/TouchJogDial;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/discplus/view/TouchJogDial;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mContext:Landroid/content/Context;

    .line 62
    iput v5, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusDataType:I

    .line 63
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    .line 64
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    .line 65
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 66
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCycleCursorDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCycleTextBitmap:Landroid/graphics/Bitmap;

    .line 68
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCyclePartBitmap:Landroid/graphics/Bitmap;

    .line 70
    iput v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBGViewWidth:I

    .line 71
    iput v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBGViewHeight:I

    .line 72
    iput v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCCViewWidth:I

    .line 73
    iput v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCCViewHeight:I

    .line 74
    iput v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterX:I

    .line 75
    iput v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterY:I

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mLastDegree:D

    .line 78
    iput v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mAllowMaxRadius:I

    .line 79
    iput v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mAllowMinRadius:I

    .line 81
    iput v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextRadiusX:F

    .line 82
    iput v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextRadiusY:F

    .line 83
    iput v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextSize:F

    .line 84
    iput v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextHeight:F

    .line 85
    iput v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArcX:F

    .line 86
    iput v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArcY:F

    .line 87
    iput v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mStrokWidth:F

    .line 88
    iput v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCycleRadius:F

    .line 90
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTextPaint:Landroid/graphics/Paint;

    .line 91
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedTextPaint:Landroid/graphics/Paint;

    .line 92
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArcPaint:Landroid/graphics/Paint;

    .line 93
    iput v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mNowInfoListIndex:I

    .line 95
    const v0, -0xffff01

    iput v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTwColor81:I

    .line 96
    iput v5, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTwColor87:I

    .line 98
    iput-boolean v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mIsDataChange:Z

    .line 714
    new-instance v0, Lcom/android/music/discplus/view/TouchJogDial$1;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/view/TouchJogDial$1;-><init>(Lcom/android/music/discplus/view/TouchJogDial;)V

    iput-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mHandler:Landroid/os/Handler;

    .line 725
    new-instance v0, Lcom/android/music/discplus/view/TouchJogDial$2;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/view/TouchJogDial$2;-><init>(Lcom/android/music/discplus/view/TouchJogDial;)V

    iput-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mIndexCycleCursorDataSet:Ljava/lang/Runnable;

    .line 943
    iput v5, p0, Lcom/android/music/discplus/view/TouchJogDial;->mSyncNowPosition:I

    .line 944
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTopView:Lcom/android/music/discplus/view/TopView;

    .line 945
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedIndexTV:Landroid/widget/TextView;

    .line 946
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mItemTitleTV:Landroid/widget/TextView;

    .line 947
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArtistNameTV:Landroid/widget/TextView;

    .line 948
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mNoItem:Landroid/widget/TextView;

    .line 965
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    .line 966
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPlayBtn:Landroid/widget/ImageView;

    .line 984
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    .line 101
    iput-object p1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTwColor81:I

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTwColor87:I

    .line 108
    invoke-direct {p0}, Lcom/android/music/discplus/view/TouchJogDial;->initTouchJogDial()V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/discplus/view/TouchJogDial;)Lcom/android/music/discplus/data/DiscPlusData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/discplus/view/TouchJogDial;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/discplus/view/TouchJogDial;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mNowInfoListIndex:I

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/music/discplus/view/TouchJogDial;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/music/discplus/view/TouchJogDial;IIIFF)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/android/music/discplus/view/TouchJogDial;->getNowPosition(IIIFF)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/music/discplus/view/TouchJogDial;ILandroid/database/Cursor;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/music/discplus/view/TouchJogDial;->setDiscIndexCycleCursorData(ILandroid/database/Cursor;Ljava/lang/String;)V

    return-void
.end method

.method private drawDiscIndexCycleCursor(Landroid/graphics/Canvas;II)V
    .locals 8
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 537
    iget-object v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCycleCursorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 547
    :goto_0
    return-void

    .line 540
    :cond_0
    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mLastDegree:D

    double-to-int v4, v4

    const/16 v5, 0x5a

    sub-int/2addr v4, v5

    sub-int v0, v3, v4

    .line 541
    .local v0, degree:I
    iget v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCycleRadius:F

    int-to-float v4, v0

    invoke-static {v4}, Lcom/android/music/discplus/util/TriangleTable;->getCos(F)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    shr-int/lit8 v4, p2, 0x1

    add-int v1, v3, v4

    .line 542
    .local v1, x:I
    shr-int/lit8 v3, p3, 0x1

    iget v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCycleRadius:F

    int-to-float v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/util/TriangleTable;->getSin(F)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int v2, v3, v4

    .line 545
    .local v2, y:I
    iget-object v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCycleCursorDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCCViewWidth:I

    sub-int v4, v1, v4

    iget v5, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCCViewHeight:I

    sub-int v5, v2, v5

    iget v6, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCCViewWidth:I

    add-int/2addr v6, v1

    iget v7, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCCViewHeight:I

    add-int/2addr v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 546
    iget-object v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCycleCursorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawDiscIndexCyclePart(Landroid/graphics/Canvas;II)V
    .locals 1
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCyclePartBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 415
    :goto_0
    return-void

    .line 414
    :cond_0
    invoke-direct {p0}, Lcom/android/music/discplus/view/TouchJogDial;->setDiscIndexCyclePart()V

    goto :goto_0
.end method

.method private drawDiscIndexCyclePartFocus(Landroid/graphics/Canvas;II)V
    .locals 28
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 419
    const/16 v27, 0x10e

    .line 420
    .local v27, zeroSetDegree:I
    const/16 v22, 0x0

    .line 421
    .local v22, startAngle:F
    const/4 v8, 0x0

    .line 423
    .local v8, angle:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object v5, v0

    if-nez v5, :cond_2

    const/4 v5, 0x0

    move/from16 v21, v5

    .line 424
    .local v21, loopCount:I
    :goto_0
    const/16 v20, 0x0

    .local v20, i:I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mIsDataChange:Z

    move v5, v0

    if-nez v5, :cond_5

    .line 425
    const/16 v24, 0x0

    .line 427
    .local v24, typeIndexDataInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mIsDataChange:Z

    move v5, v0

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_0

    if-ltz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v0, v5

    move/from16 v1, v20

    if-gt v0, v1, :cond_3

    :cond_0
    const/4 v5, 0x0

    move-object/from16 v24, v5

    .line 434
    :goto_2
    if-nez v24, :cond_4

    .line 527
    .end local v24           #typeIndexDataInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    .end local p2
    :cond_1
    :goto_3
    return-void

    .line 423
    .end local v20           #i:I
    .end local v21           #loopCount:I
    .restart local p2
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v21, v5

    goto :goto_0

    .line 427
    .restart local v20       #i:I
    .restart local v21       #loopCount:I
    .restart local v24       #typeIndexDataInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/discplus/data/DiscPlusListInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v24, v5

    goto :goto_2

    .line 429
    :catch_0
    move-exception v5

    move-object v15, v5

    .line 430
    .local v15, e:Ljava/lang/Exception;
    sget-object v5, Lcom/android/music/discplus/view/TouchJogDial;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drawDiscIndexCyclePartFocus1 Execption : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/16 v24, 0x0

    goto :goto_2

    .line 438
    .end local v15           #e:Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mStartDegree:F

    move/from16 v23, v0

    .line 439
    .local v23, startDegree:F
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mEndDegree:F

    move/from16 v16, v0

    .line 440
    .local v16, endDegree:F
    move/from16 v0, v23

    float-to-double v0, v0

    move-wide v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mLastDegree:D

    move-wide v9, v0

    cmpg-double v5, v5, v9

    if-gtz v5, :cond_a

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mLastDegree:D

    move-wide v9, v0

    cmpl-double v5, v5, v9

    if-ltz v5, :cond_a

    .line 441
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mDrawStartDegree:F

    move v14, v0

    .line 442
    .local v14, drawStartDegree:F
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mDrawEndDegree:F

    move v12, v0

    .line 443
    .local v12, drawEndDegree:F
    move/from16 v22, v14

    .line 444
    sub-float v8, v12, v14

    .line 446
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/TouchJogDial;->mNowInfoListIndex:I

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mIndexCycleCursorDataSet:Ljava/lang/Runnable;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mIndexCycleCursorDataSet:Ljava/lang/Runnable;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 454
    .end local v12           #drawEndDegree:F
    .end local v14           #drawStartDegree:F
    .end local v16           #endDegree:F
    .end local v23           #startDegree:F
    .end local v24           #typeIndexDataInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    :cond_5
    shr-int/lit8 v19, p2, 0x1

    .line 455
    .local v19, halfWidth:I
    shr-int/lit8 v18, p3, 0x1

    .line 457
    .local v18, halfHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArcPaint:Landroid/graphics/Paint;

    move-object v5, v0

    if-nez v5, :cond_6

    .line 458
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/TouchJogDial;->mArcPaint:Landroid/graphics/Paint;

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArcPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mTwColor81:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArcPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mStrokWidth:F

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArcPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 464
    :cond_6
    new-instance v6, Landroid/graphics/RectF;

    move/from16 v0, v19

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArcX:F

    move v7, v0

    sub-float/2addr v5, v7

    move/from16 v0, v18

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArcY:F

    move v9, v0

    sub-float/2addr v7, v9

    move/from16 v0, v19

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArcX:F

    move v10, v0

    add-float/2addr v9, v10

    move/from16 v0, v18

    int-to-float v0, v0

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArcY:F

    move v11, v0

    add-float/2addr v10, v11

    invoke-direct {v6, v5, v7, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v5, 0x4387

    add-float v7, v5, v22

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArcPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 469
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCyclePartBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterX:I

    move v6, v0

    sub-int v6, v19, v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterY:I

    move v7, v0

    sub-int v7, v18, v7

    int-to-float v7, v7

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedTextPaint:Landroid/graphics/Paint;

    move-object v5, v0

    if-nez v5, :cond_7

    .line 477
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedTextPaint:Landroid/graphics/Paint;

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedTextPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mTwColor81:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedTextPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextSize:F

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 482
    :cond_7
    const/16 v24, 0x0

    .line 484
    .restart local v24       #typeIndexDataInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mIsDataChange:Z

    move v5, v0

    if-nez v5, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mNowInfoListIndex:I

    move v5, v0

    if-ltz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mNowInfoListIndex:I

    move v6, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-gt v5, v6, :cond_b

    :cond_8
    const/4 v5, 0x0

    move-object/from16 v24, v5

    .line 491
    .end local p2
    :goto_4
    if-eqz v24, :cond_1

    .line 495
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mDrawPosition:I

    move v13, v0

    .line 496
    .local v13, drawPostion:I
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mDrawStartDegree:F

    move v14, v0

    .line 498
    .restart local v14       #drawStartDegree:F
    const/16 v17, 0x0

    .line 499
    .local v17, focuedIndex:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mNowInfoListIndex:I

    move v5, v0

    if-ne v13, v5, :cond_c

    .line 500
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mFocusedIndex:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 509
    :goto_5
    if-eqz v17, :cond_1

    .line 510
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextRadiusX:F

    move v5, v0

    invoke-static {v14}, Lcom/android/music/discplus/util/TriangleTable;->getSin(F)F

    move-result v6

    mul-float/2addr v5, v6

    move/from16 v0, v19

    int-to-float v0, v0

    move v6, v0

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move v0, v5

    float-to-int v0, v0

    move/from16 v25, v0

    .line 511
    .local v25, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextRadiusY:F

    move v5, v0

    invoke-static {v14}, Lcom/android/music/discplus/util/TriangleTable;->getCos(F)F

    move-result v6

    mul-float/2addr v5, v6

    move/from16 v0, v18

    int-to-float v0, v0

    move v6, v0

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move v0, v5

    float-to-int v0, v0

    move/from16 v26, v0

    .line 512
    .local v26, y:I
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/music/discplus/view/TouchJogDial;->getDegree(II)F

    move-result v11

    .line 514
    .local v11, degree:F
    const/4 v5, 0x0

    cmpl-float v5, v11, v5

    if-lez v5, :cond_d

    const/high16 v5, 0x4334

    cmpg-float v5, v11, v5

    if-gez v5, :cond_d

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedTextPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 522
    :goto_6
    const/high16 v5, 0x42b4

    cmpl-float v5, v11, v5

    if-lez v5, :cond_9

    const/high16 v5, 0x4387

    cmpg-float v5, v11, v5

    if-gez v5, :cond_9

    .line 523
    move/from16 v0, v26

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextHeight:F

    move v6, v0

    add-float/2addr v5, v6

    move v0, v5

    float-to-int v0, v0

    move/from16 v26, v0

    .line 526
    :cond_9
    move/from16 v0, v25

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedTextPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move v2, v5

    move v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 424
    .end local v11           #degree:F
    .end local v13           #drawPostion:I
    .end local v14           #drawStartDegree:F
    .end local v17           #focuedIndex:Ljava/lang/String;
    .end local v18           #halfHeight:I
    .end local v19           #halfWidth:I
    .end local v25           #x:I
    .end local v26           #y:I
    .restart local v16       #endDegree:F
    .restart local v23       #startDegree:F
    .restart local p2
    :cond_a
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 470
    .end local v16           #endDegree:F
    .end local v23           #startDegree:F
    .end local v24           #typeIndexDataInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    .restart local v18       #halfHeight:I
    .restart local v19       #halfWidth:I
    :catch_1
    move-exception v5

    move-object v15, v5

    .line 471
    .restart local v15       #e:Ljava/lang/Exception;
    sget-object v5, Lcom/android/music/discplus/view/TouchJogDial;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drawDiscIndexCyclePartFocus2 Execption : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 484
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v24       #typeIndexDataInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mNowInfoListIndex:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/android/music/discplus/data/DiscPlusListInfo;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v24, p2

    goto/16 :goto_4

    .line 486
    :catch_2
    move-exception v5

    move-object v15, v5

    .line 487
    .restart local v15       #e:Ljava/lang/Exception;
    sget-object v5, Lcom/android/music/discplus/view/TouchJogDial;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drawDiscIndexCyclePartFocus3 Execption : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 502
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v13       #drawPostion:I
    .restart local v14       #drawStartDegree:F
    .restart local v17       #focuedIndex:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v13, :cond_1

    if-ltz v13, :cond_1

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/music/discplus/data/DiscPlusListInfo;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mFocusedIndex:Ljava/lang/String;

    move-object/from16 v17, v0

    goto/16 :goto_5

    .line 516
    .restart local v11       #degree:F
    .restart local v25       #x:I
    .restart local v26       #y:I
    :cond_d
    const/high16 v5, 0x4334

    cmpl-float v5, v11, v5

    if-lez v5, :cond_e

    const/high16 v5, 0x43b4

    cmpg-float v5, v11, v5

    if-gez v5, :cond_e

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedTextPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_6

    .line 519
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedTextPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_6
.end method

.method private drawDiscIndexCycleText(Landroid/graphics/Canvas;II)V
    .locals 5
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 392
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCycleTextBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCycleTextBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 396
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 397
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/music/discplus/view/TouchJogDial;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawDiscIndexCycleText Execption : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 402
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0}, Lcom/android/music/discplus/view/TouchJogDial;->setDiscIndexCycleText()V

    .line 403
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCycleTextBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCycleTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getDegree(II)F
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingRight()I

    move-result v10

    sub-int v8, v9, v10

    .line 244
    .local v8, width:I
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingTop()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingBottom()I

    move-result v10

    sub-int v3, v9, v10

    .line 245
    .local v3, height:I
    shr-int/lit8 v2, v8, 0x1

    .line 246
    .local v2, hWidth:I
    shr-int/lit8 v1, v3, 0x1

    .line 247
    .local v1, hHeight:I
    sub-int v4, p1, v2

    .line 248
    .local v4, lx:I
    const/4 v9, 0x0

    sub-int v10, p2, v1

    sub-int v5, v9, v10

    .line 249
    .local v5, ly:I
    int-to-double v9, v4

    int-to-double v11, v5

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    .line 250
    .local v6, r:D
    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    double-to-float v0, v9

    .line 253
    .local v0, degree:F
    const/4 v9, 0x0

    cmpg-float v9, v0, v9

    if-gez v9, :cond_0

    .line 254
    const/high16 v9, 0x43b4

    add-float/2addr v0, v9

    .line 257
    :cond_0
    return v0
.end method

.method private getNowPosition(IIIFF)I
    .locals 9
    .parameter "totalCount"
    .parameter "cursorStartPosition"
    .parameter "cursorEndPosition"
    .parameter "startDegree"
    .parameter "endDegree"

    .prologue
    .line 828
    sub-int v5, p3, p2

    add-int/lit8 v4, v5, 0x1

    .line 829
    .local v4, range:I
    sub-float v0, p5, p4

    .line 830
    .local v0, inDegreeRate:F
    iget-wide v5, p0, Lcom/android/music/discplus/view/TouchJogDial;->mLastDegree:D

    float-to-double v7, p4

    sub-double/2addr v5, v7

    double-to-float v2, v5

    .line 831
    .local v2, nowDegreeRate:F
    int-to-float v5, v4

    mul-float/2addr v5, v2

    div-float/2addr v5, v0

    float-to-int v1, v5

    .line 832
    .local v1, inPosition:I
    if-lt v1, v4, :cond_0

    move v3, p3

    .line 834
    .local v3, outPosition:I
    :goto_0
    if-lt v3, p1, :cond_1

    sub-int v5, v3, p1

    :goto_1
    return v5

    .line 832
    .end local v3           #outPosition:I
    :cond_0
    add-int v5, v1, p2

    move v3, v5

    goto :goto_0

    .restart local v3       #outPosition:I
    :cond_1
    move v5, v3

    .line 834
    goto :goto_1
.end method

.method private initTouchJogDial()V
    .locals 9

    .prologue
    const/16 v8, 0x9

    const/4 v7, 0x3

    const/high16 v6, 0x4188

    const/high16 v5, 0x4108

    const/4 v4, 0x1

    .line 184
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 186
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBGViewWidth:I

    .line 187
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBGViewHeight:I

    .line 188
    iget v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBGViewWidth:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterX:I

    .line 189
    iget v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBGViewHeight:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterY:I

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCycleCursorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCycleCursorDrawable:Landroid/graphics/drawable/Drawable;

    .line 194
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCycleCursorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCCViewWidth:I

    .line 195
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCycleCursorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCCViewHeight:I

    .line 196
    iget v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterX:I

    iget v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCCViewWidth:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterX:I

    iget v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCCViewWidth:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mAllowMaxRadius:I

    .line 197
    iget v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterX:I

    iget v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCCViewWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterX:I

    iget v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCCViewWidth:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mAllowMinRadius:I

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_5

    move v0, v4

    .line 201
    .local v0, isWQVAG:Z
    :goto_0
    iget v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterX:I

    if-eqz v0, :cond_6

    move v2, v8

    :goto_1
    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextRadiusX:F

    .line 202
    iget v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterY:I

    if-eqz v0, :cond_7

    move v2, v8

    :goto_2
    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextRadiusY:F

    .line 203
    if-eqz v0, :cond_8

    const/16 v1, 0x16

    :goto_3
    int-to-float v1, v1

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextSize:F

    .line 204
    iget v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterX:I

    int-to-float v1, v1

    if-eqz v0, :cond_9

    move v2, v6

    :goto_4
    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArcX:F

    .line 205
    iget v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterY:I

    int-to-float v1, v1

    if-eqz v0, :cond_a

    move v2, v6

    :goto_5
    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArcY:F

    .line 206
    if-eqz v0, :cond_b

    const/high16 v1, 0x4160

    :goto_6
    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mStrokWidth:F

    .line 207
    iget v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterX:I

    if-eqz v0, :cond_c

    const/16 v2, 0x16

    :goto_7
    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCycleRadius:F

    .line 210
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTextPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_2

    .line 211
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTextPaint:Landroid/graphics/Paint;

    .line 212
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTwColor87:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 214
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextHeight:F

    .line 217
    :cond_2
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedTextPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_3

    .line 218
    new-instance v1, Landroid/graphics/Paint;

    const/16 v2, 0x101

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedTextPaint:Landroid/graphics/Paint;

    .line 219
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTwColor81:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 221
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextHeight:F

    .line 224
    :cond_3
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArcPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_4

    .line 225
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArcPaint:Landroid/graphics/Paint;

    .line 226
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArcPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTwColor81:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArcPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mStrokWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 228
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArcPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 230
    :cond_4
    return-void

    .line 200
    .end local v0           #isWQVAG:Z
    :cond_5
    const/4 v1, 0x0

    move v0, v1

    goto/16 :goto_0

    .restart local v0       #isWQVAG:Z
    :cond_6
    move v2, v7

    .line 201
    goto/16 :goto_1

    :cond_7
    move v2, v7

    .line 202
    goto/16 :goto_2

    .line 203
    :cond_8
    const/16 v1, 0xb

    goto/16 :goto_3

    :cond_9
    move v2, v5

    .line 204
    goto/16 :goto_4

    :cond_a
    move v2, v5

    .line 205
    goto/16 :goto_5

    .line 206
    :cond_b
    const/high16 v1, 0x40f0

    goto/16 :goto_6

    .line 207
    :cond_c
    const/16 v2, 0xb

    goto/16 :goto_7
.end method

.method private isDrawPosition(II)Z
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    .line 845
    const/4 v3, 0x0

    .line 846
    .local v3, isDraw:Z
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingRight()I

    move-result v11

    sub-int v9, v10, v11

    .line 847
    .local v9, width:I
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingBottom()I

    move-result v11

    sub-int v2, v10, v11

    .line 848
    .local v2, height:I
    shr-int/lit8 v1, v9, 0x1

    .line 849
    .local v1, hWidth:I
    shr-int/lit8 v0, v2, 0x1

    .line 850
    .local v0, hHeight:I
    sub-int v4, p1, v1

    .line 851
    .local v4, lx:I
    const/4 v10, 0x0

    sub-int v11, p2, v0

    sub-int v6, v10, v11

    .line 856
    .local v6, ly:I
    mul-int v5, v4, v4

    .line 857
    .local v5, lx2:I
    mul-int v7, v6, v6

    .line 858
    .local v7, ly2:I
    add-int v8, v5, v7

    .line 860
    .local v8, radius:I
    iget v10, p0, Lcom/android/music/discplus/view/TouchJogDial;->mAllowMaxRadius:I

    if-gt v8, v10, :cond_0

    iget v10, p0, Lcom/android/music/discplus/view/TouchJogDial;->mAllowMinRadius:I

    if-lt v8, v10, :cond_0

    .line 861
    const/4 v3, 0x1

    .line 864
    :cond_0
    return v3
.end method

.method private setDiscIndexCycleCursorData(ILandroid/database/Cursor;Ljava/lang/String;)V
    .locals 11
    .parameter "nowPosition"
    .parameter "cursor"
    .parameter "focusedIndexTitle"

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedIndexTV:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mItemTitleTV:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArtistNameTV:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 771
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->invisibleCycleCursorIndexData()V

    .line 825
    :cond_1
    :goto_0
    return-void

    .line 775
    :cond_2
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    const/4 v1, 0x1

    iget v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusDataType:I

    if-nez p2, :cond_3

    const/4 v2, 0x0

    move v6, v2

    :goto_1
    move v2, p1

    move-object v3, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/music/discplus/data/DiscPlusData;->getDiscPlusListInfo(ZILjava/lang/String;ILandroid/database/Cursor;I)Lcom/android/music/discplus/data/DiscPlusListInfoInData;

    move-result-object v8

    .line 779
    .local v8, discIndexCycleCursorData:Lcom/android/music/discplus/data/DiscPlusListInfoInData;
    if-nez v8, :cond_4

    .line 780
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->invisibleCycleCursorIndexData()V

    goto :goto_0

    .line 776
    .end local v8           #discIndexCycleCursorData:Lcom/android/music/discplus/data/DiscPlusListInfoInData;
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move v6, v2

    goto :goto_1

    .line 784
    .restart local v8       #discIndexCycleCursorData:Lcom/android/music/discplus/data/DiscPlusListInfoInData;
    :cond_4
    iget-object v9, v8, Lcom/android/music/discplus/data/DiscPlusListInfoInData;->mFocusedIndex:Ljava/lang/String;

    .line 785
    .local v9, focusedIndex:Ljava/lang/String;
    iget-object v10, v8, Lcom/android/music/discplus/data/DiscPlusListInfoInData;->mItemTitle:Ljava/lang/String;

    .line 786
    .local v10, itemTitle:Ljava/lang/String;
    iget-object v7, v8, Lcom/android/music/discplus/data/DiscPlusListInfoInData;->mArtistName:Ljava/lang/String;

    .line 787
    .local v7, artistName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPlayBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 788
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    invoke-virtual {v0}, Lcom/android/music/discplus/data/DiscPlusData;->getAudioItemCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 789
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPlayBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 795
    :cond_5
    :goto_2
    iget v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mSyncNowPosition:I

    if-eq v0, p1, :cond_1

    .line 796
    iput p1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mSyncNowPosition:I

    .line 797
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 798
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedIndexTV:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedIndexTV:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 800
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedIndexTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 805
    :goto_3
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 806
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mItemTitleTV:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 807
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mItemTitleTV:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 808
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mItemTitleTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 813
    :goto_4
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 814
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArtistNameTV:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArtistNameTV:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 816
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArtistNameTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 821
    :goto_5
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTopView:Lcom/android/music/discplus/view/TopView;

    if-eqz v0, :cond_1

    .line 822
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTopView:Lcom/android/music/discplus/view/TopView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/TopView;->resetRenderMode()V

    goto/16 :goto_0

    .line 791
    :cond_6
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPlayBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 802
    :cond_7
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedIndexTV:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 810
    :cond_8
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mItemTitleTV:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 818
    :cond_9
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArtistNameTV:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5
.end method

.method private setDiscIndexCyclePart()V
    .locals 14

    .prologue
    .line 643
    const/4 v6, 0x0

    .line 645
    .local v6, orgPartBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v11, p0, Lcom/android/music/discplus/view/TouchJogDial;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f020084

    invoke-static {v11, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 654
    if-nez v6, :cond_1

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 646
    :catch_0
    move-exception v11

    move-object v3, v11

    .line 647
    .local v3, error:Ljava/lang/OutOfMemoryError;
    sget-object v11, Lcom/android/music/discplus/view/TouchJogDial;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setDiscIndexCyclePart OutOfMemoryError : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 649
    .end local v3           #error:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v11

    move-object v2, v11

    .line 650
    .local v2, e:Ljava/lang/Exception;
    sget-object v11, Lcom/android/music/discplus/view/TouchJogDial;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setDiscIndexCyclePart Execption : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 658
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v11, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCyclePartBitmap:Landroid/graphics/Bitmap;

    if-nez v11, :cond_5

    .line 660
    :try_start_1
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    iput-object v11, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCyclePartBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 672
    :goto_1
    const/4 v7, 0x0

    .line 673
    .local v7, overlayCanvas:Landroid/graphics/Canvas;
    iget-object v11, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCyclePartBitmap:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_2

    .line 674
    new-instance v7, Landroid/graphics/Canvas;

    .end local v7           #overlayCanvas:Landroid/graphics/Canvas;
    iget-object v11, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCyclePartBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v7, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 677
    .restart local v7       #overlayCanvas:Landroid/graphics/Canvas;
    :cond_2
    if-eqz v7, :cond_4

    .line 678
    iget-object v11, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCyclePartBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    shr-int/lit8 v11, v11, 0x1

    int-to-float v8, v11

    .line 679
    .local v8, px:F
    iget-object v11, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCyclePartBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    shr-int/lit8 v11, v11, 0x1

    int-to-float v9, v11

    .line 681
    .local v9, py:F
    iget-object v11, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-nez v11, :cond_6

    const/4 v11, 0x0

    move v5, v11

    .line 682
    .local v5, loopCount:I
    :goto_2
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v5, :cond_4

    iget-boolean v11, p0, Lcom/android/music/discplus/view/TouchJogDial;->mIsDataChange:Z

    if-nez v11, :cond_4

    .line 683
    const/4 v10, 0x0

    .line 685
    .local v10, typeIndexDataInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    :try_start_2
    iget-boolean v11, p0, Lcom/android/music/discplus/view/TouchJogDial;->mIsDataChange:Z

    if-nez v11, :cond_3

    iget-object v11, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v11, :cond_3

    if-ltz v4, :cond_3

    iget-object v11, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result v11

    if-gt v11, v4, :cond_7

    :cond_3
    const/4 v11, 0x0

    move-object v10, v11

    .line 692
    :goto_4
    if-nez v10, :cond_8

    .line 708
    .end local v4           #i:I
    .end local v5           #loopCount:I
    .end local v8           #px:F
    .end local v9           #py:F
    .end local v10           #typeIndexDataInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    :cond_4
    if-eqz v6, :cond_0

    .line 709
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 710
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 661
    .end local v7           #overlayCanvas:Landroid/graphics/Canvas;
    :catch_2
    move-exception v11

    move-object v3, v11

    .line 662
    .restart local v3       #error:Ljava/lang/OutOfMemoryError;
    sget-object v11, Lcom/android/music/discplus/view/TouchJogDial;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setDiscIndexCyclePart OutOfMemoryError : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 664
    .end local v3           #error:Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v11

    move-object v2, v11

    .line 665
    .restart local v2       #e:Ljava/lang/Exception;
    sget-object v11, Lcom/android/music/discplus/view/TouchJogDial;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setDiscIndexCyclePart1 Execption : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 669
    .end local v2           #e:Ljava/lang/Exception;
    :cond_5
    iget-object v11, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCyclePartBitmap:Landroid/graphics/Bitmap;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto/16 :goto_1

    .line 681
    .restart local v7       #overlayCanvas:Landroid/graphics/Canvas;
    .restart local v8       #px:F
    .restart local v9       #py:F
    :cond_6
    iget-object v11, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v5, v11

    goto :goto_2

    .line 685
    .restart local v4       #i:I
    .restart local v5       #loopCount:I
    .restart local v10       #typeIndexDataInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    :cond_7
    :try_start_3
    iget-object v11, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/discplus/data/DiscPlusListInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object v10, v0

    goto :goto_4

    .line 687
    :catch_4
    move-exception v11

    move-object v2, v11

    .line 688
    .restart local v2       #e:Ljava/lang/Exception;
    sget-object v11, Lcom/android/music/discplus/view/TouchJogDial;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setDiscIndexCyclePart2 Execption : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 696
    .end local v2           #e:Ljava/lang/Exception;
    :cond_8
    iget v1, v10, Lcom/android/music/discplus/data/DiscPlusListInfo;->mDrawPosition:I

    .line 697
    .local v1, drawPosition:I
    if-ne v1, v4, :cond_9

    .line 698
    iget v0, v10, Lcom/android/music/discplus/data/DiscPlusListInfo;->mDrawStartDegree:F

    .line 700
    .local v0, degree:F
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 701
    invoke-virtual {v7, v0, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 702
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v7, v6, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 703
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 682
    .end local v0           #degree:F
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3
.end method

.method private setDiscIndexCycleText()V
    .locals 27

    .prologue
    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingLeft()I

    move-result v18

    .line 551
    .local v18, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingTop()I

    move-result v19

    .line 552
    .local v19, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/discplus/view/TouchJogDial;->getWidth()I

    move-result v24

    sub-int v24, v24, v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingRight()I

    move-result v25

    sub-int v21, v24, v25

    .line 553
    .local v21, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/discplus/view/TouchJogDial;->getHeight()I

    move-result v24

    sub-int v24, v24, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingBottom()I

    move-result v25

    sub-int v13, v24, v25

    .line 555
    .local v13, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    .line 556
    new-instance v24, Landroid/graphics/Paint;

    const/16 v25, 0x1

    invoke-direct/range {v24 .. v25}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/TouchJogDial;->mTextPaint:Landroid/graphics/Paint;

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mTwColor87:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setColor(I)V

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextSize:F

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 561
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCycleTextBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    if-nez v24, :cond_4

    .line 562
    if-lez v21, :cond_3

    if-lez v13, :cond_3

    .line 564
    :try_start_0
    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v21

    move v1, v13

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCycleTextBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 579
    :goto_0
    const/16 v17, 0x0

    .line 580
    .local v17, overlayCanvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCycleTextBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 581
    new-instance v17, Landroid/graphics/Canvas;

    .end local v17           #overlayCanvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCycleTextBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 582
    .restart local v17       #overlayCanvas:Landroid/graphics/Canvas;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Canvas;->save()I

    .line 585
    :cond_1
    if-eqz v17, :cond_3

    .line 586
    const/4 v15, 0x0

    .line 587
    .local v15, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    if-nez v24, :cond_5

    const/16 v24, 0x0

    move/from16 v16, v24

    .line 588
    .local v16, infosSize:I
    :goto_1
    shr-int/lit8 v12, v21, 0x1

    .line 589
    .local v12, hWidth:I
    shr-int/lit8 v11, v13, 0x1

    .line 590
    .local v11, hHeight:I
    const/4 v14, 0x0

    .local v14, i:F
    :goto_2
    const/high16 v24, 0x43b4

    cmpg-float v24, v14, v24

    if-gez v24, :cond_2

    .line 591
    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mIsDataChange:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 636
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Canvas;->restore()V

    .line 638
    .end local v11           #hHeight:I
    .end local v12           #hWidth:I
    .end local v14           #i:F
    .end local v15           #index:I
    .end local v16           #infosSize:I
    .end local v17           #overlayCanvas:Landroid/graphics/Canvas;
    :cond_3
    :goto_3
    return-void

    .line 565
    :catch_0
    move-exception v24

    move-object/from16 v9, v24

    .line 566
    .local v9, error:Ljava/lang/OutOfMemoryError;
    sget-object v24, Lcom/android/music/discplus/view/TouchJogDial;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "setDiscIndexCycleText OutOfMemoryError : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v9}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 568
    .end local v9           #error:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v24

    move-object/from16 v8, v24

    .line 569
    .local v8, e:Ljava/lang/Exception;
    sget-object v24, Lcom/android/music/discplus/view/TouchJogDial;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "setDiscIndexCycleText1 Execption : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 576
    .end local v8           #e:Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCycleTextBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto/16 :goto_0

    .line 587
    .restart local v15       #index:I
    .restart local v17       #overlayCanvas:Landroid/graphics/Canvas;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v16, v24

    goto :goto_1

    .line 595
    .restart local v11       #hHeight:I
    .restart local v12       #hWidth:I
    .restart local v14       #i:F
    .restart local v16       #infosSize:I
    :cond_6
    const/16 v20, 0x0

    .line 597
    .local v20, typeIndexDataInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mIsDataChange:Z

    move/from16 v24, v0

    if-nez v24, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    if-ltz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v24

    move/from16 v0, v24

    move v1, v15

    if-gt v0, v1, :cond_a

    :cond_7
    const/16 v24, 0x0

    move-object/from16 v20, v24

    .line 604
    :goto_4
    if-eqz v20, :cond_2

    .line 608
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mDrawPosition:I

    move v7, v0

    .line 609
    .local v7, drawPostion:I
    if-ne v7, v15, :cond_9

    .line 610
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mFocusedIndex:Ljava/lang/String;

    move-object v10, v0

    .line 611
    .local v10, focuedIndex:Ljava/lang/String;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mDrawEndDegree:F

    move v6, v0

    .line 613
    .local v6, drawEndDegree:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextRadiusX:F

    move/from16 v24, v0

    invoke-static {v14}, Lcom/android/music/discplus/util/TriangleTable;->getSin(F)F

    move-result v25

    mul-float v24, v24, v25

    move v0, v12

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v22, v0

    .line 614
    .local v22, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextRadiusY:F

    move/from16 v24, v0

    invoke-static {v14}, Lcom/android/music/discplus/util/TriangleTable;->getCos(F)F

    move-result v25

    mul-float v24, v24, v25

    move v0, v11

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v23, v0

    .line 615
    .local v23, y:I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/music/discplus/view/TouchJogDial;->getDegree(II)F

    move-result v5

    .line 617
    .local v5, degree:F
    const/16 v24, 0x0

    cmpl-float v24, v5, v24

    if-lez v24, :cond_b

    const/high16 v24, 0x4334

    cmpg-float v24, v5, v24

    if-gez v24, :cond_b

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    sget-object v25, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 625
    :goto_5
    const/high16 v24, 0x42b4

    cmpl-float v24, v5, v24

    if-lez v24, :cond_8

    const/high16 v24, 0x4387

    cmpg-float v24, v5, v24

    if-gez v24, :cond_8

    .line 626
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextHeight:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v23, v0

    .line 629
    :cond_8
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    move-object v1, v10

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 630
    move v14, v6

    .line 633
    .end local v5           #degree:F
    .end local v6           #drawEndDegree:F
    .end local v10           #focuedIndex:Ljava/lang/String;
    .end local v22           #x:I
    .end local v23           #y:I
    :cond_9
    add-int/lit8 v15, v15, 0x1

    .line 634
    goto/16 :goto_2

    .line 597
    .end local v7           #drawPostion:I
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/discplus/data/DiscPlusListInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v20, v5

    goto/16 :goto_4

    .line 599
    :catch_2
    move-exception v24

    move-object/from16 v8, v24

    .line 600
    .restart local v8       #e:Ljava/lang/Exception;
    sget-object v24, Lcom/android/music/discplus/view/TouchJogDial;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "setDiscIndexCycleText2 Execption : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 619
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v5       #degree:F
    .restart local v6       #drawEndDegree:F
    .restart local v7       #drawPostion:I
    .restart local v10       #focuedIndex:Ljava/lang/String;
    .restart local v22       #x:I
    .restart local v23       #y:I
    :cond_b
    const/high16 v24, 0x4334

    cmpl-float v24, v5, v24

    if-lez v24, :cond_c

    const/high16 v24, 0x43b4

    cmpg-float v24, v5, v24

    if-gez v24, :cond_c

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    sget-object v25, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_5

    .line 622
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    sget-object v25, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_5
.end method


# virtual methods
.method public clearTouchJogDial()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 113
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCycleCursorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 117
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCycleCursorDrawable:Landroid/graphics/drawable/Drawable;

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCycleTextBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCycleTextBitmap:Landroid/graphics/Bitmap;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCycleTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 123
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCycleTextBitmap:Landroid/graphics/Bitmap;

    .line 124
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCyclePartBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCyclePartBitmap:Landroid/graphics/Bitmap;

    monitor-enter v0

    .line 129
    :try_start_1
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCyclePartBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 130
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCyclePartBitmap:Landroid/graphics/Bitmap;

    .line 131
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 135
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mIndexCycleCursorDataSet:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 136
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mIndexCycleCursorDataSet:Ljava/lang/Runnable;

    .line 137
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mHandler:Landroid/os/Handler;

    .line 139
    :cond_4
    return-void

    .line 124
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 131
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public invisibleCycleCursorIndexData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 987
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedIndexTV:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 988
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArtistNameTV:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 989
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mItemTitleTV:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 990
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 991
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mSyncNowPosition:I

    .line 993
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    move-object v0, v2

    .line 994
    .local v0, cursor:Landroid/database/Cursor;
    :goto_0
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 996
    :cond_0
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mNoItem:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 998
    if-nez v0, :cond_4

    move v1, v4

    .line 999
    .local v1, cursorCount:I
    :goto_1
    iget-boolean v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mIsDataChange:Z

    if-nez v2, :cond_5

    if-eqz v0, :cond_1

    if-gtz v1, :cond_5

    .line 1000
    :cond_1
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mNoItem:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x205005b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1001
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mNoItem:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusDataType:I

    invoke-static {v3, v4}, Lcom/android/music/common/util/ListUtil;->getNoItemString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1007
    .end local v1           #cursorCount:I
    :cond_2
    :goto_2
    return-void

    .line 993
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_3
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    iget-object v2, v2, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    move-object v0, v2

    goto :goto_0

    .line 998
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move v1, v2

    goto :goto_1

    .line 1003
    .restart local v1       #cursorCount:I
    :cond_5
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mNoItem:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x205

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1004
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mNoItem:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public isMoveUpPosition(II)Z
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    .line 868
    const/4 v3, 0x0

    .line 869
    .local v3, isArrowUp:Z
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingRight()I

    move-result v11

    sub-int v9, v10, v11

    .line 870
    .local v9, width:I
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingBottom()I

    move-result v11

    sub-int v2, v10, v11

    .line 871
    .local v2, height:I
    shr-int/lit8 v1, v9, 0x1

    .line 872
    .local v1, hWidth:I
    shr-int/lit8 v0, v2, 0x1

    .line 873
    .local v0, hHeight:I
    sub-int v4, p1, v1

    .line 874
    .local v4, lx:I
    const/4 v10, 0x0

    sub-int v11, p2, v0

    sub-int v6, v10, v11

    .line 879
    .local v6, ly:I
    mul-int v5, v4, v4

    .line 880
    .local v5, lx2:I
    mul-int v7, v6, v6

    .line 881
    .local v7, ly2:I
    add-int v8, v5, v7

    .line 883
    .local v8, radius:I
    iget v10, p0, Lcom/android/music/discplus/view/TouchJogDial;->mAllowMinRadius:I

    if-ge v8, v10, :cond_0

    .line 884
    const/4 v3, 0x1

    .line 887
    :cond_0
    return v3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 159
    iget-object v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    iget-object v4, v4, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->invisibleCycleCursorIndexData()V

    .line 181
    :goto_0
    return-void

    .line 164
    :cond_2
    iget-object v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mNoItem:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingLeft()I

    move-result v1

    .line 168
    .local v1, paddingLeft:I
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingTop()I

    move-result v2

    .line 169
    .local v2, paddingTop:I
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingRight()I

    move-result v5

    sub-int v3, v4, v5

    .line 170
    .local v3, width:I
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 172
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 173
    int-to-float v4, v1

    int-to-float v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 174
    invoke-direct {p0, p1, v3, v0}, Lcom/android/music/discplus/view/TouchJogDial;->drawDiscIndexCyclePart(Landroid/graphics/Canvas;II)V

    .line 175
    invoke-direct {p0, p1, v3, v0}, Lcom/android/music/discplus/view/TouchJogDial;->drawDiscIndexCycleText(Landroid/graphics/Canvas;II)V

    .line 176
    invoke-direct {p0, p1, v3, v0}, Lcom/android/music/discplus/view/TouchJogDial;->drawDiscIndexCyclePartFocus(Landroid/graphics/Canvas;II)V

    .line 177
    invoke-direct {p0, p1, v3, v0}, Lcom/android/music/discplus/view/TouchJogDial;->drawDiscIndexCycleCursor(Landroid/graphics/Canvas;II)V

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 180
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 146
    iget v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBGViewWidth:I

    iget v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBGViewHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/music/discplus/view/TouchJogDial;->setMeasuredDimension(II)V

    .line 147
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 148
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15
    .parameter "event"

    .prologue
    .line 266
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 267
    .local v7, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v13, v2

    .line 268
    .local v13, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v14, v2

    .line 270
    .local v14, y:I
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTopView:Lcom/android/music/discplus/view/TopView;

    if-eqz v2, :cond_0

    .line 271
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTopView:Lcom/android/music/discplus/view/TopView;

    invoke-virtual {v2}, Lcom/android/music/discplus/view/TopView;->closeTypeSelect()V

    .line 274
    :cond_0
    if-eqz v7, :cond_1

    const/4 v2, 0x2

    if-ne v7, v2, :cond_2

    .line 275
    :cond_1
    invoke-direct {p0, v13, v14}, Lcom/android/music/discplus/view/TouchJogDial;->isDrawPosition(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 276
    invoke-direct {p0, v13, v14}, Lcom/android/music/discplus/view/TouchJogDial;->getDegree(II)F

    move-result v2

    float-to-double v10, v2

    .line 277
    .local v10, degree:D
    iget-wide v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mLastDegree:D

    sub-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_2

    .line 278
    iput-wide v10, p0, Lcom/android/music/discplus/view/TouchJogDial;->mLastDegree:D

    .line 279
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 286
    .end local v10           #degree:D
    :cond_2
    iget v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusDataType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    move v8, v2

    .line 287
    .local v8, bIsPlayAction:Z
    :goto_0
    if-nez v7, :cond_7

    .line 288
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    iget-object v2, v2, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->arrow:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    iget-object v3, v3, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 289
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    iget-object v2, v2, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    const/16 v4, 0x1e

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 290
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    iget-object v2, v2, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0x1e

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 291
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    iget-object v2, v2, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    const/16 v4, 0x14

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 293
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    iget-object v2, v2, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;->rc:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    iget-object v3, v3, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    const/16 v4, 0x28

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 294
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    iget-object v2, v2, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;->rc:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    iget-object v3, v3, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0x28

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 295
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    iget-object v2, v2, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;->rc:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    iget-object v3, v3, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    const/16 v4, 0xa0

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 296
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    iget-object v2, v2, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;->rc:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    iget-object v3, v3, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 298
    if-nez v8, :cond_6

    .line 299
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    iget-object v2, v2, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    iget-object v3, v3, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;->rc:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 300
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    iget-object v2, v2, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    iget-object v3, v3, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;->rc:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 301
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    iget-object v2, v2, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    iget-object v3, v3, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;->rc:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 306
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    iget-object v2, v2, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    invoke-virtual {v2, v13, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 307
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->pressed:Z

    .line 308
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    iget-object v2, v2, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->arrow:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 309
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    iget-object v2, v2, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->flickup:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 366
    :cond_4
    :goto_2
    const/4 v2, 0x1

    return v2

    .line 286
    .end local v8           #bIsPlayAction:Z
    :cond_5
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_0

    .line 302
    .restart local v8       #bIsPlayAction:Z
    :cond_6
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    iget-object v2, v2, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;->rc:Landroid/graphics/Rect;

    invoke-virtual {v2, v13, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 303
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;->pressed:Z

    goto :goto_1

    .line 311
    :cond_7
    const/4 v2, 0x2

    if-ne v7, v2, :cond_9

    .line 312
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    iget-boolean v2, v2, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->pressed:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 313
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    iget-object v2, v2, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    invoke-virtual {v2, v13, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 314
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    iget-object v2, v2, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->arrow:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 315
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    iget-object v2, v2, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->flickup:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 317
    :cond_8
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    iget-object v2, v2, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->arrow:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 318
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    iget-object v2, v2, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->flickup:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 321
    :cond_9
    const/4 v2, 0x1

    if-ne v7, v2, :cond_4

    .line 322
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    iget-boolean v2, v2, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;->pressed:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 323
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    iget-object v2, v2, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;->rc:Landroid/graphics/Rect;

    invoke-virtual {v2, v13, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 324
    if-eqz v8, :cond_e

    .line 326
    const/4 v1, 0x0

    .line 327
    .local v1, audioID:I
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    iget-object v2, v2, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_b

    .line 328
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    iget-object v2, v2, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    monitor-enter v2

    .line 329
    :try_start_0
    iget-object v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    iget-object v9, v3, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    .line 330
    .local v9, c:Landroid/database/Cursor;
    iget-object v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    iget v3, v3, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusNowPosition:I

    invoke-interface {v9, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 331
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 332
    :cond_a
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    .end local v9           #c:Landroid/database/Cursor;
    :cond_b
    if-lez v1, :cond_c

    .line 338
    sget-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    .line 340
    .local v0, player:Lcom/android/music/player/service/ICorePlayerService;
    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    :try_start_1
    invoke-interface/range {v0 .. v6}, Lcom/android/music/player/service/ICorePlayerService;->setPlayIterator(IIILjava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 344
    :goto_3
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/music/discplus/data/DiscPlusData;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/music/discplus/data/DiscPlusData;->mIsPlayed:Z

    .line 353
    .end local v0           #player:Lcom/android/music/player/service/ICorePlayerService;
    .end local v1           #audioID:I
    :cond_c
    :goto_4
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    iget-boolean v2, v2, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->pressed:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 354
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    iget-object v2, v2, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    invoke-virtual {v2, v13, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 355
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTopView:Lcom/android/music/discplus/view/TopView;

    if-eqz v2, :cond_d

    .line 356
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTopView:Lcom/android/music/discplus/view/TopView;

    invoke-virtual {v2}, Lcom/android/music/discplus/view/TopView;->changeDiscView()V

    .line 360
    :cond_d
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;->pressed:Z

    .line 361
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->pressed:Z

    .line 362
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    iget-object v2, v2, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->arrow:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 363
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    iget-object v2, v2, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->flickup:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 332
    .restart local v1       #audioID:I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 341
    .restart local v0       #player:Lcom/android/music/player/service/ICorePlayerService;
    :catch_0
    move-exception v12

    .line 342
    .local v12, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/music/discplus/view/TouchJogDial;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 347
    .end local v0           #player:Lcom/android/music/player/service/ICorePlayerService;
    .end local v1           #audioID:I
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_e
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTopView:Lcom/android/music/discplus/view/TopView;

    if-eqz v2, :cond_c

    .line 348
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTopView:Lcom/android/music/discplus/view/TopView;

    invoke-virtual {v2}, Lcom/android/music/discplus/view/TopView;->changeDiscView()V

    goto :goto_4
.end method

.method public setArrowUp(Landroid/widget/RelativeLayout;)V
    .locals 2
    .parameter "relativeLayout"

    .prologue
    .line 968
    new-instance v0, Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    invoke-direct {v0}, Lcom/android/music/discplus/view/TouchJogDial$Arrow;-><init>()V

    iput-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    .line 969
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->pressed:Z

    .line 970
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    .line 971
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    const v0, 0x7f0c014c

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->arrow:Landroid/widget/ImageView;

    .line 972
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    const v0, 0x7f0c0146

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->flickup:Landroid/widget/ImageView;

    .line 973
    const v0, 0x7f0c014e

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPlayBtn:Landroid/widget/ImageView;

    .line 975
    new-instance v0, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    invoke-direct {v0}, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;-><init>()V

    iput-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    .line 976
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;->rc:Landroid/graphics/Rect;

    .line 977
    return-void
.end method

.method public setCycleCursorIndexData(Lcom/android/music/discplus/view/TopView;Landroid/widget/RelativeLayout;)V
    .locals 1
    .parameter "topView"
    .parameter "relativeLayout"

    .prologue
    .line 951
    iput-object p1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTopView:Lcom/android/music/discplus/view/TopView;

    .line 952
    const v0, 0x7f0c0148

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedIndexTV:Landroid/widget/TextView;

    .line 953
    const v0, 0x7f0c0149

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mItemTitleTV:Landroid/widget/TextView;

    .line 954
    const v0, 0x7f0c014b

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArtistNameTV:Landroid/widget/TextView;

    .line 955
    const v0, 0x7f0c014a

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mNoItem:Landroid/widget/TextView;

    .line 956
    return-void
.end method

.method public setNowDegree()V
    .locals 29

    .prologue
    .line 891
    const-wide/16 v7, 0x0

    .line 893
    .local v7, degree:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mIsDataChange:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2

    :cond_0
    const/16 v25, 0x0

    move/from16 v17, v25

    .line 894
    .local v17, loopCount:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6

    if-lez v17, :cond_6

    .line 895
    const/16 v23, 0x0

    .line 896
    .local v23, startDegree:F
    const/4 v12, 0x0

    .line 897
    .local v12, endDegree:F
    const/4 v15, 0x0

    .line 898
    .local v15, inPostion:I
    const/4 v3, 0x1

    .line 900
    .local v3, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusNowPosition:I

    move/from16 v22, v0

    .line 901
    .local v22, nowPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 902
    .local v4, cursorCount:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 903
    const/4 v10, 0x0

    .line 905
    .local v10, discPlusListInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mIsDataChange:Z

    move/from16 v25, v0

    if-nez v25, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1

    if-ltz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v25

    move/from16 v0, v25

    move v1, v14

    if-gt v0, v1, :cond_3

    :cond_1
    const/16 v25, 0x0

    move-object/from16 v10, v25

    .line 912
    :goto_2
    if-nez v10, :cond_4

    .line 940
    .end local v3           #count:I
    .end local v4           #cursorCount:I
    .end local v10           #discPlusListInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    .end local v12           #endDegree:F
    .end local v14           #i:I
    .end local v15           #inPostion:I
    .end local v22           #nowPosition:I
    .end local v23           #startDegree:F
    :goto_3
    return-void

    .line 893
    .end local v17           #loopCount:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v17, v25

    goto :goto_0

    .line 905
    .restart local v3       #count:I
    .restart local v4       #cursorCount:I
    .restart local v10       #discPlusListInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    .restart local v12       #endDegree:F
    .restart local v14       #i:I
    .restart local v15       #inPostion:I
    .restart local v17       #loopCount:I
    .restart local v22       #nowPosition:I
    .restart local v23       #startDegree:F
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/discplus/data/DiscPlusListInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v10, v5

    goto :goto_2

    .line 907
    :catch_0
    move-exception v25

    move-object/from16 v11, v25

    .line 908
    .local v11, e:Ljava/lang/Exception;
    sget-object v25, Lcom/android/music/discplus/view/TouchJogDial;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "setNowDegree Execption : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const/4 v10, 0x0

    goto :goto_2

    .line 916
    .end local v11           #e:Ljava/lang/Exception;
    :cond_4
    if-eqz v10, :cond_a

    .line 917
    iget v6, v10, Lcom/android/music/discplus/data/DiscPlusListInfo;->mCursorStartPosition:I

    .line 918
    .local v6, cursorStartPositon:I
    iget v5, v10, Lcom/android/music/discplus/data/DiscPlusListInfo;->mCursorEndPosition:I

    .line 919
    .local v5, cursorEndPosition:I
    if-lt v5, v4, :cond_7

    move/from16 v0, v22

    move v1, v6

    if-ge v0, v1, :cond_7

    const/16 v25, 0x1

    move/from16 v16, v25

    .line 920
    .local v16, isOutRange:Z
    :goto_4
    if-eqz v16, :cond_8

    add-int v25, v22, v4

    move/from16 v24, v25

    .line 921
    .local v24, startPosition:I
    :goto_5
    if-eqz v16, :cond_9

    sub-int v25, v5, v4

    move/from16 v13, v25

    .line 923
    .local v13, endPosition:I
    :goto_6
    move/from16 v0, v22

    move v1, v13

    if-gt v0, v1, :cond_a

    move v0, v6

    move/from16 v1, v24

    if-gt v0, v1, :cond_a

    .line 924
    move-object v0, v10

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mStartDegree:F

    move/from16 v23, v0

    .line 925
    iget v12, v10, Lcom/android/music/discplus/data/DiscPlusListInfo;->mEndDegree:F

    .line 926
    sub-int v15, v24, v6

    .line 927
    sub-int v25, v5, v6

    add-int/lit8 v3, v25, 0x1

    .line 933
    .end local v5           #cursorEndPosition:I
    .end local v6           #cursorStartPositon:I
    .end local v10           #discPlusListInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    .end local v13           #endPosition:I
    .end local v16           #isOutRange:Z
    .end local v24           #startPosition:I
    :cond_5
    sub-float v9, v12, v23

    .line 934
    .local v9, diffDegree:F
    move v0, v15

    int-to-float v0, v0

    move/from16 v25, v0

    move v0, v3

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    mul-float v25, v25, v9

    add-float v25, v25, v23

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v20, v0

    .line 935
    .local v20, nowDegree:D
    add-int/lit8 v25, v15, 0x1

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move v0, v3

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    mul-float v25, v25, v9

    add-float v25, v25, v23

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v18, v0

    .line 936
    .local v18, nextDegree:D
    add-double v25, v20, v18

    const-wide/high16 v27, 0x4000

    div-double v7, v25, v27

    .line 939
    .end local v3           #count:I
    .end local v4           #cursorCount:I
    .end local v9           #diffDegree:F
    .end local v12           #endDegree:F
    .end local v14           #i:I
    .end local v15           #inPostion:I
    .end local v18           #nextDegree:D
    .end local v20           #nowDegree:D
    .end local v22           #nowPosition:I
    .end local v23           #startDegree:F
    :cond_6
    const-wide v25, 0x4076800000000000L

    cmpl-double v25, v7, v25

    if-ltz v25, :cond_b

    const-wide v25, 0x4076800000000000L

    :goto_7
    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/music/discplus/view/TouchJogDial;->mLastDegree:D

    goto/16 :goto_3

    .line 919
    .restart local v3       #count:I
    .restart local v4       #cursorCount:I
    .restart local v5       #cursorEndPosition:I
    .restart local v6       #cursorStartPositon:I
    .restart local v10       #discPlusListInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    .restart local v12       #endDegree:F
    .restart local v14       #i:I
    .restart local v15       #inPostion:I
    .restart local v22       #nowPosition:I
    .restart local v23       #startDegree:F
    :cond_7
    const/16 v25, 0x0

    move/from16 v16, v25

    goto :goto_4

    .restart local v16       #isOutRange:Z
    :cond_8
    move/from16 v24, v22

    .line 920
    goto :goto_5

    .restart local v24       #startPosition:I
    :cond_9
    move v13, v5

    .line 921
    goto :goto_6

    .line 902
    .end local v5           #cursorEndPosition:I
    .end local v6           #cursorStartPositon:I
    .end local v16           #isOutRange:Z
    .end local v24           #startPosition:I
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .end local v3           #count:I
    .end local v4           #cursorCount:I
    .end local v10           #discPlusListInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    .end local v12           #endDegree:F
    .end local v14           #i:I
    .end local v15           #inPostion:I
    .end local v22           #nowPosition:I
    .end local v23           #startDegree:F
    :cond_b
    move-wide/from16 v25, v7

    .line 939
    goto :goto_7
.end method

.method public setTypeIndexDataInfos(ZIILcom/android/music/discplus/data/DiscPlusData;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "isDataThreadStop"
    .parameter "oldNowPosition"
    .parameter "dataType"
    .parameter "topViewData"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Lcom/android/music/discplus/data/DiscPlusData;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/discplus/data/DiscPlusListInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p5, typeIndexDataInfosList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/discplus/data/DiscPlusListInfo;>;"
    iput p3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusDataType:I

    .line 372
    iput-object p4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    .line 373
    iput-object p5, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    .line 374
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mNowInfoListIndex:I

    .line 375
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mSyncNowPosition:I

    .line 377
    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    .line 378
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    invoke-virtual {v0, p2}, Lcom/android/music/discplus/data/DiscPlusData;->setDiscPlusNowPosition(I)V

    .line 379
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->setNowDegree()V

    .line 385
    :goto_0
    invoke-direct {p0}, Lcom/android/music/discplus/view/TouchJogDial;->setDiscIndexCycleText()V

    .line 386
    invoke-direct {p0}, Lcom/android/music/discplus/view/TouchJogDial;->setDiscIndexCyclePart()V

    .line 388
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 389
    :cond_0
    return-void

    .line 381
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mLastDegree:D

    goto :goto_0
.end method
