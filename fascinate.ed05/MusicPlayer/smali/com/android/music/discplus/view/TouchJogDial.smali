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
.field private static final INVALIDATE:I = 0x1

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
    .line 40
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

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mContext:Landroid/content/Context;

    .line 45
    iput v5, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusDataType:I

    .line 46
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    .line 47
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    .line 48
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 49
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCycleCursorDrawable:Landroid/graphics/drawable/Drawable;

    .line 50
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCycleTextBitmap:Landroid/graphics/Bitmap;

    .line 51
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCyclePartBitmap:Landroid/graphics/Bitmap;

    .line 53
    iput v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBGViewWidth:I

    .line 54
    iput v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBGViewHeight:I

    .line 55
    iput v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCCViewWidth:I

    .line 56
    iput v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCCViewHeight:I

    .line 57
    iput v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterX:I

    .line 58
    iput v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterY:I

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mLastDegree:D

    .line 61
    iput v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mAllowMaxRadius:I

    .line 62
    iput v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mAllowMinRadius:I

    .line 64
    iput v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextRadiusX:F

    .line 65
    iput v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextRadiusY:F

    .line 66
    iput v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextSize:F

    .line 67
    iput v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextHeight:F

    .line 68
    iput v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArcX:F

    .line 69
    iput v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArcY:F

    .line 70
    iput v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mStrokWidth:F

    .line 71
    iput v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCycleRadius:F

    .line 73
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTextPaint:Landroid/graphics/Paint;

    .line 74
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedTextPaint:Landroid/graphics/Paint;

    .line 75
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArcPaint:Landroid/graphics/Paint;

    .line 76
    iput v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mNowInfoListIndex:I

    .line 78
    const v0, -0xffff01

    iput v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTwColor81:I

    .line 79
    iput v5, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTwColor87:I

    .line 81
    iput-boolean v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mIsDataChange:Z

    .line 696
    new-instance v0, Lcom/android/music/discplus/view/TouchJogDial$1;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/view/TouchJogDial$1;-><init>(Lcom/android/music/discplus/view/TouchJogDial;)V

    iput-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mHandler:Landroid/os/Handler;

    .line 707
    new-instance v0, Lcom/android/music/discplus/view/TouchJogDial$2;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/view/TouchJogDial$2;-><init>(Lcom/android/music/discplus/view/TouchJogDial;)V

    iput-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mIndexCycleCursorDataSet:Ljava/lang/Runnable;

    .line 925
    iput v5, p0, Lcom/android/music/discplus/view/TouchJogDial;->mSyncNowPosition:I

    .line 926
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTopView:Lcom/android/music/discplus/view/TopView;

    .line 927
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedIndexTV:Landroid/widget/TextView;

    .line 928
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mItemTitleTV:Landroid/widget/TextView;

    .line 929
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArtistNameTV:Landroid/widget/TextView;

    .line 930
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mNoItem:Landroid/widget/TextView;

    .line 947
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    .line 948
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPlayBtn:Landroid/widget/ImageView;

    .line 966
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    .line 84
    iput-object p1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTwColor81:I

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTwColor87:I

    .line 91
    invoke-direct {p0}, Lcom/android/music/discplus/view/TouchJogDial;->initTouchJogDial()V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/discplus/view/TouchJogDial;)Lcom/android/music/discplus/data/DiscPlusData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/discplus/view/TouchJogDial;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/discplus/view/TouchJogDial;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mNowInfoListIndex:I

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
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
    .line 39
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
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/music/discplus/view/TouchJogDial;->setDiscIndexCycleCursorData(ILandroid/database/Cursor;Ljava/lang/String;)V

    return-void
.end method

.method private drawDiscIndexCycleCursor(Landroid/graphics/Canvas;II)V
    .locals 8
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 519
    iget-object v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCycleCursorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 529
    :goto_0
    return-void

    .line 522
    :cond_0
    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mLastDegree:D

    double-to-int v4, v4

    const/16 v5, 0x5a

    sub-int/2addr v4, v5

    sub-int v0, v3, v4

    .line 523
    .local v0, degree:I
    iget v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCycleRadius:F

    int-to-float v4, v0

    invoke-static {v4}, Lcom/android/music/discplus/util/TriangleTable;->getCos(F)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    shr-int/lit8 v4, p2, 0x1

    add-int v1, v3, v4

    .line 524
    .local v1, x:I
    shr-int/lit8 v3, p3, 0x1

    iget v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCycleRadius:F

    int-to-float v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/util/TriangleTable;->getSin(F)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int v2, v3, v4

    .line 527
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

    .line 528
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
    .line 391
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCyclePartBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 397
    :goto_0
    return-void

    .line 396
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
    .line 401
    const/16 v27, 0x10e

    .line 402
    .local v27, zeroSetDegree:I
    const/16 v22, 0x0

    .line 403
    .local v22, startAngle:F
    const/4 v8, 0x0

    .line 405
    .local v8, angle:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object v5, v0

    if-nez v5, :cond_2

    const/4 v5, 0x0

    move/from16 v21, v5

    .line 406
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

    .line 407
    const/16 v24, 0x0

    .line 409
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

    .line 416
    :goto_2
    if-nez v24, :cond_4

    .line 509
    .end local v24           #typeIndexDataInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    .end local p2
    :cond_1
    :goto_3
    return-void

    .line 405
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

    .line 409
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

    .line 411
    :catch_0
    move-exception v5

    move-object v15, v5

    .line 412
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

    .line 413
    const/16 v24, 0x0

    goto :goto_2

    .line 420
    .end local v15           #e:Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mStartDegree:F

    move/from16 v23, v0

    .line 421
    .local v23, startDegree:F
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mEndDegree:F

    move/from16 v16, v0

    .line 422
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

    .line 423
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mDrawStartDegree:F

    move v14, v0

    .line 424
    .local v14, drawStartDegree:F
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mDrawEndDegree:F

    move v12, v0

    .line 425
    .local v12, drawEndDegree:F
    move/from16 v22, v14

    .line 426
    sub-float v8, v12, v14

    .line 428
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/TouchJogDial;->mNowInfoListIndex:I

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mIndexCycleCursorDataSet:Ljava/lang/Runnable;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mIndexCycleCursorDataSet:Ljava/lang/Runnable;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 436
    .end local v12           #drawEndDegree:F
    .end local v14           #drawStartDegree:F
    .end local v16           #endDegree:F
    .end local v23           #startDegree:F
    .end local v24           #typeIndexDataInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    :cond_5
    shr-int/lit8 v19, p2, 0x1

    .line 437
    .local v19, halfWidth:I
    shr-int/lit8 v18, p3, 0x1

    .line 439
    .local v18, halfHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArcPaint:Landroid/graphics/Paint;

    move-object v5, v0

    if-nez v5, :cond_6

    .line 440
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/TouchJogDial;->mArcPaint:Landroid/graphics/Paint;

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArcPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mTwColor81:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArcPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mStrokWidth:F

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArcPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 446
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

    .line 451
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

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedTextPaint:Landroid/graphics/Paint;

    move-object v5, v0

    if-nez v5, :cond_7

    .line 459
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedTextPaint:Landroid/graphics/Paint;

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedTextPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mTwColor81:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedTextPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextSize:F

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 464
    :cond_7
    const/16 v24, 0x0

    .line 466
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

    .line 473
    .end local p2
    :goto_4
    if-eqz v24, :cond_1

    .line 477
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mDrawPosition:I

    move v13, v0

    .line 478
    .local v13, drawPostion:I
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mDrawStartDegree:F

    move v14, v0

    .line 480
    .restart local v14       #drawStartDegree:F
    const/16 v17, 0x0

    .line 481
    .local v17, focuedIndex:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mNowInfoListIndex:I

    move v5, v0

    if-ne v13, v5, :cond_c

    .line 482
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mFocusedIndex:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 491
    :goto_5
    if-eqz v17, :cond_1

    .line 492
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

    .line 493
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

    .line 494
    .local v26, y:I
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/music/discplus/view/TouchJogDial;->getDegree(II)F

    move-result v11

    .line 496
    .local v11, degree:F
    const/4 v5, 0x0

    cmpl-float v5, v11, v5

    if-lez v5, :cond_d

    const/high16 v5, 0x4334

    cmpg-float v5, v11, v5

    if-gez v5, :cond_d

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedTextPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 504
    :goto_6
    const/high16 v5, 0x42b4

    cmpl-float v5, v11, v5

    if-lez v5, :cond_9

    const/high16 v5, 0x4387

    cmpg-float v5, v11, v5

    if-gez v5, :cond_9

    .line 505
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

    .line 508
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

    .line 406
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

    .line 452
    .end local v16           #endDegree:F
    .end local v23           #startDegree:F
    .end local v24           #typeIndexDataInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    .restart local v18       #halfHeight:I
    .restart local v19       #halfWidth:I
    :catch_1
    move-exception v5

    move-object v15, v5

    .line 453
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

    .line 466
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

    .line 468
    :catch_2
    move-exception v5

    move-object v15, v5

    .line 469
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

    .line 470
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 484
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

    .line 485
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

    .line 498
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

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedTextPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_6

    .line 501
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

    .line 374
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCycleTextBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCycleTextBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 379
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

    .line 384
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0}, Lcom/android/music/discplus/view/TouchJogDial;->setDiscIndexCycleText()V

    .line 385
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCycleTextBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCycleTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getDegree(II)F
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingRight()I

    move-result v10

    sub-int v8, v9, v10

    .line 227
    .local v8, width:I
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingTop()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingBottom()I

    move-result v10

    sub-int v3, v9, v10

    .line 228
    .local v3, height:I
    shr-int/lit8 v2, v8, 0x1

    .line 229
    .local v2, hWidth:I
    shr-int/lit8 v1, v3, 0x1

    .line 230
    .local v1, hHeight:I
    sub-int v4, p1, v2

    .line 231
    .local v4, lx:I
    const/4 v9, 0x0

    sub-int v10, p2, v1

    sub-int v5, v9, v10

    .line 232
    .local v5, ly:I
    int-to-double v9, v4

    int-to-double v11, v5

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    .line 233
    .local v6, r:D
    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    double-to-float v0, v9

    .line 236
    .local v0, degree:F
    const/4 v9, 0x0

    cmpg-float v9, v0, v9

    if-gez v9, :cond_0

    .line 237
    const/high16 v9, 0x43b4

    add-float/2addr v0, v9

    .line 240
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
    .line 810
    sub-int v5, p3, p2

    add-int/lit8 v4, v5, 0x1

    .line 811
    .local v4, range:I
    sub-float v0, p5, p4

    .line 812
    .local v0, inDegreeRate:F
    iget-wide v5, p0, Lcom/android/music/discplus/view/TouchJogDial;->mLastDegree:D

    float-to-double v7, p4

    sub-double/2addr v5, v7

    double-to-float v2, v5

    .line 813
    .local v2, nowDegreeRate:F
    int-to-float v5, v4

    mul-float/2addr v5, v2

    div-float/2addr v5, v0

    float-to-int v1, v5

    .line 814
    .local v1, inPosition:I
    if-lt v1, v4, :cond_0

    move v3, p3

    .line 816
    .local v3, outPosition:I
    :goto_0
    if-lt v3, p1, :cond_1

    sub-int v5, v3, p1

    :goto_1
    return v5

    .line 814
    .end local v3           #outPosition:I
    :cond_0
    add-int v5, v1, p2

    move v3, v5

    goto :goto_0

    .restart local v3       #outPosition:I
    :cond_1
    move v5, v3

    .line 816
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

    .line 167
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 169
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBGViewWidth:I

    .line 170
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBGViewHeight:I

    .line 171
    iget v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBGViewWidth:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterX:I

    .line 172
    iget v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBGViewHeight:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterY:I

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCycleCursorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCycleCursorDrawable:Landroid/graphics/drawable/Drawable;

    .line 177
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCycleCursorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCCViewWidth:I

    .line 178
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCycleCursorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCCViewHeight:I

    .line 179
    iget v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterX:I

    iget v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCCViewWidth:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterX:I

    iget v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCCViewWidth:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mAllowMaxRadius:I

    .line 180
    iget v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterX:I

    iget v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCCViewWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterX:I

    iget v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCCViewWidth:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mAllowMinRadius:I

    .line 183
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

    .line 184
    .local v0, isWQVAG:Z
    :goto_0
    iget v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterX:I

    if-eqz v0, :cond_6

    move v2, v8

    :goto_1
    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextRadiusX:F

    .line 185
    iget v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterY:I

    if-eqz v0, :cond_7

    move v2, v8

    :goto_2
    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextRadiusY:F

    .line 186
    if-eqz v0, :cond_8

    const/16 v1, 0x16

    :goto_3
    int-to-float v1, v1

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextSize:F

    .line 187
    iget v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterX:I

    int-to-float v1, v1

    if-eqz v0, :cond_9

    move v2, v6

    :goto_4
    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArcX:F

    .line 188
    iget v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterY:I

    int-to-float v1, v1

    if-eqz v0, :cond_a

    move v2, v6

    :goto_5
    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArcY:F

    .line 189
    if-eqz v0, :cond_b

    const/high16 v1, 0x4160

    :goto_6
    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mStrokWidth:F

    .line 190
    iget v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterX:I

    if-eqz v0, :cond_c

    const/16 v2, 0x16

    :goto_7
    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCycleRadius:F

    .line 193
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTextPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_2

    .line 194
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTextPaint:Landroid/graphics/Paint;

    .line 195
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTwColor87:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 197
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

    .line 200
    :cond_2
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedTextPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_3

    .line 201
    new-instance v1, Landroid/graphics/Paint;

    const/16 v2, 0x101

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedTextPaint:Landroid/graphics/Paint;

    .line 202
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTwColor81:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 204
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

    .line 207
    :cond_3
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArcPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_4

    .line 208
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArcPaint:Landroid/graphics/Paint;

    .line 209
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArcPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTwColor81:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArcPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mStrokWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 211
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArcPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 213
    :cond_4
    return-void

    .line 183
    .end local v0           #isWQVAG:Z
    :cond_5
    const/4 v1, 0x0

    move v0, v1

    goto/16 :goto_0

    .restart local v0       #isWQVAG:Z
    :cond_6
    move v2, v7

    .line 184
    goto/16 :goto_1

    :cond_7
    move v2, v7

    .line 185
    goto/16 :goto_2

    .line 186
    :cond_8
    const/16 v1, 0xb

    goto/16 :goto_3

    :cond_9
    move v2, v5

    .line 187
    goto/16 :goto_4

    :cond_a
    move v2, v5

    .line 188
    goto/16 :goto_5

    .line 189
    :cond_b
    const/high16 v1, 0x40f0

    goto/16 :goto_6

    .line 190
    :cond_c
    const/16 v2, 0xb

    goto/16 :goto_7
.end method

.method private isDrawPosition(II)Z
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    .line 827
    const/4 v3, 0x0

    .line 828
    .local v3, isDraw:Z
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingRight()I

    move-result v11

    sub-int v9, v10, v11

    .line 829
    .local v9, width:I
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingBottom()I

    move-result v11

    sub-int v2, v10, v11

    .line 830
    .local v2, height:I
    shr-int/lit8 v1, v9, 0x1

    .line 831
    .local v1, hWidth:I
    shr-int/lit8 v0, v2, 0x1

    .line 832
    .local v0, hHeight:I
    sub-int v4, p1, v1

    .line 833
    .local v4, lx:I
    const/4 v10, 0x0

    sub-int v11, p2, v0

    sub-int v6, v10, v11

    .line 838
    .local v6, ly:I
    mul-int v5, v4, v4

    .line 839
    .local v5, lx2:I
    mul-int v7, v6, v6

    .line 840
    .local v7, ly2:I
    add-int v8, v5, v7

    .line 842
    .local v8, radius:I
    iget v10, p0, Lcom/android/music/discplus/view/TouchJogDial;->mAllowMaxRadius:I

    if-gt v8, v10, :cond_0

    iget v10, p0, Lcom/android/music/discplus/view/TouchJogDial;->mAllowMinRadius:I

    if-lt v8, v10, :cond_0

    .line 843
    const/4 v3, 0x1

    .line 846
    :cond_0
    return v3
.end method

.method private setDiscIndexCycleCursorData(ILandroid/database/Cursor;Ljava/lang/String;)V
    .locals 11
    .parameter "nowPosition"
    .parameter "cursor"
    .parameter "focusedIndexTitle"

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedIndexTV:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mItemTitleTV:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArtistNameTV:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 753
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->invisibleCycleCursorIndexData()V

    .line 807
    :cond_1
    :goto_0
    return-void

    .line 757
    :cond_2
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    if-eqz v0, :cond_1

    .line 758
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

    .line 761
    .local v8, discIndexCycleCursorData:Lcom/android/music/discplus/data/DiscPlusListInfoInData;
    if-nez v8, :cond_4

    .line 762
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->invisibleCycleCursorIndexData()V

    goto :goto_0

    .line 758
    .end local v8           #discIndexCycleCursorData:Lcom/android/music/discplus/data/DiscPlusListInfoInData;
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move v6, v2

    goto :goto_1

    .line 766
    .restart local v8       #discIndexCycleCursorData:Lcom/android/music/discplus/data/DiscPlusListInfoInData;
    :cond_4
    iget-object v9, v8, Lcom/android/music/discplus/data/DiscPlusListInfoInData;->mFocusedIndex:Ljava/lang/String;

    .line 767
    .local v9, focusedIndex:Ljava/lang/String;
    iget-object v10, v8, Lcom/android/music/discplus/data/DiscPlusListInfoInData;->mItemTitle:Ljava/lang/String;

    .line 768
    .local v10, itemTitle:Ljava/lang/String;
    iget-object v7, v8, Lcom/android/music/discplus/data/DiscPlusListInfoInData;->mArtistName:Ljava/lang/String;

    .line 769
    .local v7, artistName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPlayBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 770
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    invoke-virtual {v0}, Lcom/android/music/discplus/data/DiscPlusData;->getAudioItemCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 771
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPlayBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 777
    :cond_5
    :goto_2
    iget v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mSyncNowPosition:I

    if-eq v0, p1, :cond_1

    .line 778
    iput p1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mSyncNowPosition:I

    .line 779
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 780
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedIndexTV:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedIndexTV:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 782
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedIndexTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 787
    :goto_3
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 788
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mItemTitleTV:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mItemTitleTV:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 790
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mItemTitleTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 795
    :goto_4
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 796
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArtistNameTV:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 797
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArtistNameTV:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 798
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArtistNameTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 803
    :goto_5
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTopView:Lcom/android/music/discplus/view/TopView;

    if-eqz v0, :cond_1

    .line 804
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTopView:Lcom/android/music/discplus/view/TopView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/TopView;->resetRenderMode()V

    goto/16 :goto_0

    .line 773
    :cond_6
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPlayBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 784
    :cond_7
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedIndexTV:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 792
    :cond_8
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mItemTitleTV:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 800
    :cond_9
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArtistNameTV:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5
.end method

.method private setDiscIndexCyclePart()V
    .locals 14

    .prologue
    .line 625
    const/4 v6, 0x0

    .line 627
    .local v6, orgPartBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v11, p0, Lcom/android/music/discplus/view/TouchJogDial;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f020087

    invoke-static {v11, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 636
    if-nez v6, :cond_1

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 628
    :catch_0
    move-exception v11

    move-object v3, v11

    .line 629
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

    .line 631
    .end local v3           #error:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v11

    move-object v2, v11

    .line 632
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

    .line 640
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v11, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCyclePartBitmap:Landroid/graphics/Bitmap;

    if-nez v11, :cond_5

    .line 642
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

    .line 654
    :goto_1
    const/4 v7, 0x0

    .line 655
    .local v7, overlayCanvas:Landroid/graphics/Canvas;
    iget-object v11, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCyclePartBitmap:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_2

    .line 656
    new-instance v7, Landroid/graphics/Canvas;

    .end local v7           #overlayCanvas:Landroid/graphics/Canvas;
    iget-object v11, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCyclePartBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v7, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 659
    .restart local v7       #overlayCanvas:Landroid/graphics/Canvas;
    :cond_2
    if-eqz v7, :cond_4

    .line 660
    iget-object v11, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCyclePartBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    shr-int/lit8 v11, v11, 0x1

    int-to-float v8, v11

    .line 661
    .local v8, px:F
    iget-object v11, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCyclePartBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    shr-int/lit8 v11, v11, 0x1

    int-to-float v9, v11

    .line 663
    .local v9, py:F
    iget-object v11, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-nez v11, :cond_6

    const/4 v11, 0x0

    move v5, v11

    .line 664
    .local v5, loopCount:I
    :goto_2
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v5, :cond_4

    iget-boolean v11, p0, Lcom/android/music/discplus/view/TouchJogDial;->mIsDataChange:Z

    if-nez v11, :cond_4

    .line 665
    const/4 v10, 0x0

    .line 667
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

    .line 674
    :goto_4
    if-nez v10, :cond_8

    .line 690
    .end local v4           #i:I
    .end local v5           #loopCount:I
    .end local v8           #px:F
    .end local v9           #py:F
    .end local v10           #typeIndexDataInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    :cond_4
    if-eqz v6, :cond_0

    .line 691
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 692
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 643
    .end local v7           #overlayCanvas:Landroid/graphics/Canvas;
    :catch_2
    move-exception v11

    move-object v3, v11

    .line 644
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

    .line 646
    .end local v3           #error:Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v11

    move-object v2, v11

    .line 647
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

    .line 651
    .end local v2           #e:Ljava/lang/Exception;
    :cond_5
    iget-object v11, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCyclePartBitmap:Landroid/graphics/Bitmap;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto/16 :goto_1

    .line 663
    .restart local v7       #overlayCanvas:Landroid/graphics/Canvas;
    .restart local v8       #px:F
    .restart local v9       #py:F
    :cond_6
    iget-object v11, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v5, v11

    goto :goto_2

    .line 667
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

    .line 669
    :catch_4
    move-exception v11

    move-object v2, v11

    .line 670
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

    .line 671
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 678
    .end local v2           #e:Ljava/lang/Exception;
    :cond_8
    iget v1, v10, Lcom/android/music/discplus/data/DiscPlusListInfo;->mDrawPosition:I

    .line 679
    .local v1, drawPosition:I
    if-ne v1, v4, :cond_9

    .line 680
    iget v0, v10, Lcom/android/music/discplus/data/DiscPlusListInfo;->mDrawStartDegree:F

    .line 682
    .local v0, degree:F
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 683
    invoke-virtual {v7, v0, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 684
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v7, v6, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 685
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 664
    .end local v0           #degree:F
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3
.end method

.method private setDiscIndexCycleText()V
    .locals 27

    .prologue
    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingLeft()I

    move-result v18

    .line 533
    .local v18, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingTop()I

    move-result v19

    .line 534
    .local v19, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/discplus/view/TouchJogDial;->getWidth()I

    move-result v24

    sub-int v24, v24, v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingRight()I

    move-result v25

    sub-int v21, v24, v25

    .line 535
    .local v21, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/discplus/view/TouchJogDial;->getHeight()I

    move-result v24

    sub-int v24, v24, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingBottom()I

    move-result v25

    sub-int v13, v24, v25

    .line 537
    .local v13, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    .line 538
    new-instance v24, Landroid/graphics/Paint;

    const/16 v25, 0x1

    invoke-direct/range {v24 .. v25}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/TouchJogDial;->mTextPaint:Landroid/graphics/Paint;

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mTwColor87:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setColor(I)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mPaintTextSize:F

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 543
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCycleTextBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    if-nez v24, :cond_4

    .line 544
    if-lez v21, :cond_3

    if-lez v13, :cond_3

    .line 546
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

    .line 561
    :goto_0
    const/16 v17, 0x0

    .line 562
    .local v17, overlayCanvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCycleTextBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 563
    new-instance v17, Landroid/graphics/Canvas;

    .end local v17           #overlayCanvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCycleTextBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 564
    .restart local v17       #overlayCanvas:Landroid/graphics/Canvas;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Canvas;->save()I

    .line 567
    :cond_1
    if-eqz v17, :cond_3

    .line 568
    const/4 v15, 0x0

    .line 569
    .local v15, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    if-nez v24, :cond_5

    const/16 v24, 0x0

    move/from16 v16, v24

    .line 570
    .local v16, infosSize:I
    :goto_1
    shr-int/lit8 v12, v21, 0x1

    .line 571
    .local v12, hWidth:I
    shr-int/lit8 v11, v13, 0x1

    .line 572
    .local v11, hHeight:I
    const/4 v14, 0x0

    .local v14, i:F
    :goto_2
    const/high16 v24, 0x43b4

    cmpg-float v24, v14, v24

    if-gez v24, :cond_2

    .line 573
    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mIsDataChange:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 618
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Canvas;->restore()V

    .line 620
    .end local v11           #hHeight:I
    .end local v12           #hWidth:I
    .end local v14           #i:F
    .end local v15           #index:I
    .end local v16           #infosSize:I
    .end local v17           #overlayCanvas:Landroid/graphics/Canvas;
    :cond_3
    :goto_3
    return-void

    .line 547
    :catch_0
    move-exception v24

    move-object/from16 v9, v24

    .line 548
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

    .line 550
    .end local v9           #error:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v24

    move-object/from16 v8, v24

    .line 551
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

    .line 558
    .end local v8           #e:Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCycleTextBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto/16 :goto_0

    .line 569
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

    .line 577
    .restart local v11       #hHeight:I
    .restart local v12       #hWidth:I
    .restart local v14       #i:F
    .restart local v16       #infosSize:I
    :cond_6
    const/16 v20, 0x0

    .line 579
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

    .line 586
    :goto_4
    if-eqz v20, :cond_2

    .line 590
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mDrawPosition:I

    move v7, v0

    .line 591
    .local v7, drawPostion:I
    if-ne v7, v15, :cond_9

    .line 592
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mFocusedIndex:Ljava/lang/String;

    move-object v10, v0

    .line 593
    .local v10, focuedIndex:Ljava/lang/String;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mDrawEndDegree:F

    move v6, v0

    .line 595
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

    .line 596
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

    .line 597
    .local v23, y:I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/music/discplus/view/TouchJogDial;->getDegree(II)F

    move-result v5

    .line 599
    .local v5, degree:F
    const/16 v24, 0x0

    cmpl-float v24, v5, v24

    if-lez v24, :cond_b

    const/high16 v24, 0x4334

    cmpg-float v24, v5, v24

    if-gez v24, :cond_b

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    sget-object v25, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 607
    :goto_5
    const/high16 v24, 0x42b4

    cmpl-float v24, v5, v24

    if-lez v24, :cond_8

    const/high16 v24, 0x4387

    cmpg-float v24, v5, v24

    if-gez v24, :cond_8

    .line 608
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

    .line 611
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

    .line 612
    move v14, v6

    .line 615
    .end local v5           #degree:F
    .end local v6           #drawEndDegree:F
    .end local v10           #focuedIndex:Ljava/lang/String;
    .end local v22           #x:I
    .end local v23           #y:I
    :cond_9
    add-int/lit8 v15, v15, 0x1

    .line 616
    goto/16 :goto_2

    .line 579
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

    .line 581
    :catch_2
    move-exception v24

    move-object/from16 v8, v24

    .line 582
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

    .line 583
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 601
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

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    sget-object v25, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_5

    .line 604
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

    .line 95
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 96
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCycleCursorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 100
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCycleCursorDrawable:Landroid/graphics/drawable/Drawable;

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCycleTextBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCycleTextBitmap:Landroid/graphics/Bitmap;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCycleTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 106
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCycleTextBitmap:Landroid/graphics/Bitmap;

    .line 107
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCyclePartBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCyclePartBitmap:Landroid/graphics/Bitmap;

    monitor-enter v0

    .line 112
    :try_start_1
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCyclePartBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscIndexCyclePartBitmap:Landroid/graphics/Bitmap;

    .line 114
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 118
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mIndexCycleCursorDataSet:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mIndexCycleCursorDataSet:Ljava/lang/Runnable;

    .line 120
    iput-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mHandler:Landroid/os/Handler;

    .line 122
    :cond_4
    return-void

    .line 107
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 114
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

    .line 969
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedIndexTV:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 970
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArtistNameTV:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 971
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mItemTitleTV:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 972
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 973
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mSyncNowPosition:I

    .line 975
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    move-object v0, v2

    .line 976
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

    .line 978
    :cond_0
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mNoItem:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 980
    if-nez v0, :cond_4

    move v1, v4

    .line 981
    .local v1, cursorCount:I
    :goto_1
    iget-boolean v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mIsDataChange:Z

    if-nez v2, :cond_5

    if-eqz v0, :cond_1

    if-gtz v1, :cond_5

    .line 982
    :cond_1
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mNoItem:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x205005b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 983
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mNoItem:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusDataType:I

    invoke-static {v3, v4}, Lcom/android/music/common/util/ListUtil;->getNoItemString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 989
    .end local v1           #cursorCount:I
    :cond_2
    :goto_2
    return-void

    .line 975
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_3
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    iget-object v2, v2, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    move-object v0, v2

    goto :goto_0

    .line 980
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move v1, v2

    goto :goto_1

    .line 985
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

    .line 986
    iget-object v2, p0, Lcom/android/music/discplus/view/TouchJogDial;->mNoItem:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00b4

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
    .line 850
    const/4 v3, 0x0

    .line 851
    .local v3, isArrowUp:Z
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingRight()I

    move-result v11

    sub-int v9, v10, v11

    .line 852
    .local v9, width:I
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingBottom()I

    move-result v11

    sub-int v2, v10, v11

    .line 853
    .local v2, height:I
    shr-int/lit8 v1, v9, 0x1

    .line 854
    .local v1, hWidth:I
    shr-int/lit8 v0, v2, 0x1

    .line 855
    .local v0, hHeight:I
    sub-int v4, p1, v1

    .line 856
    .local v4, lx:I
    const/4 v10, 0x0

    sub-int v11, p2, v0

    sub-int v6, v10, v11

    .line 861
    .local v6, ly:I
    mul-int v5, v4, v4

    .line 862
    .local v5, lx2:I
    mul-int v7, v6, v6

    .line 863
    .local v7, ly2:I
    add-int v8, v5, v7

    .line 865
    .local v8, radius:I
    iget v10, p0, Lcom/android/music/discplus/view/TouchJogDial;->mAllowMinRadius:I

    if-ge v8, v10, :cond_0

    .line 866
    const/4 v3, 0x1

    .line 869
    :cond_0
    return v3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 142
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

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->invisibleCycleCursorIndexData()V

    .line 164
    :goto_0
    return-void

    .line 147
    :cond_2
    iget-object v4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mNoItem:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingLeft()I

    move-result v1

    .line 151
    .local v1, paddingLeft:I
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingTop()I

    move-result v2

    .line 152
    .local v2, paddingTop:I
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingRight()I

    move-result v5

    sub-int v3, v4, v5

    .line 153
    .local v3, width:I
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 155
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 156
    int-to-float v4, v1

    int-to-float v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 157
    invoke-direct {p0, p1, v3, v0}, Lcom/android/music/discplus/view/TouchJogDial;->drawDiscIndexCyclePart(Landroid/graphics/Canvas;II)V

    .line 158
    invoke-direct {p0, p1, v3, v0}, Lcom/android/music/discplus/view/TouchJogDial;->drawDiscIndexCycleText(Landroid/graphics/Canvas;II)V

    .line 159
    invoke-direct {p0, p1, v3, v0}, Lcom/android/music/discplus/view/TouchJogDial;->drawDiscIndexCyclePartFocus(Landroid/graphics/Canvas;II)V

    .line 160
    invoke-direct {p0, p1, v3, v0}, Lcom/android/music/discplus/view/TouchJogDial;->drawDiscIndexCycleCursor(Landroid/graphics/Canvas;II)V

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 163
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 129
    iget v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBGViewWidth:I

    iget v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mBGViewHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/music/discplus/view/TouchJogDial;->setMeasuredDimension(II)V

    .line 130
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 131
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .parameter "event"

    .prologue
    .line 249
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    .line 250
    .local v10, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    move v0, v5

    float-to-int v0, v0

    move/from16 v16, v0

    .line 251
    .local v16, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    move v0, v5

    float-to-int v0, v0

    move/from16 v17, v0

    .line 253
    .local v17, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mTopView:Lcom/android/music/discplus/view/TopView;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mTopView:Lcom/android/music/discplus/view/TopView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/music/discplus/view/TopView;->closeTypeSelect()V

    .line 257
    :cond_0
    if-eqz v10, :cond_1

    const/4 v5, 0x2

    if-ne v10, v5, :cond_2

    .line 258
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/music/discplus/view/TouchJogDial;->isDrawPosition(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 259
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/music/discplus/view/TouchJogDial;->getDegree(II)F

    move-result v5

    float-to-double v13, v5

    .line 260
    .local v13, degree:D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mLastDegree:D

    move-wide v5, v0

    sub-double/2addr v5, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_2

    .line 261
    move-wide v0, v13

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/music/discplus/view/TouchJogDial;->mLastDegree:D

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 269
    .end local v13           #degree:D
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusDataType:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    move v11, v5

    .line 270
    .local v11, bIsPlayAction:Z
    :goto_0
    if-nez v10, :cond_7

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->arrow:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    const/16 v7, 0x1e

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v6, 0x1e

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    const/16 v7, 0x14

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;->rc:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    const/16 v7, 0x28

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;->rc:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v6, 0x28

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;->rc:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    const/16 v7, 0xa0

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;->rc:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 281
    if-nez v11, :cond_6

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;->rc:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;->rc:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;->rc:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 289
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    move-object v0, v5

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->pressed:Z

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->arrow:Landroid/widget/ImageView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->flickup:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 348
    .end local p1
    :cond_4
    :goto_2
    const/4 v5, 0x1

    return v5

    .line 269
    .end local v11           #bIsPlayAction:Z
    .restart local p1
    :cond_5
    const/4 v5, 0x0

    move v11, v5

    goto/16 :goto_0

    .line 285
    .restart local v11       #bIsPlayAction:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;->rc:Landroid/graphics/Rect;

    move-object v0, v5

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;->pressed:Z

    goto :goto_1

    .line 294
    :cond_7
    const/4 v5, 0x2

    if-ne v10, v5, :cond_9

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->pressed:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    move-object v0, v5

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->arrow:Landroid/widget/ImageView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->flickup:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 300
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->arrow:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->flickup:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 304
    :cond_9
    const/4 v5, 0x1

    if-ne v10, v5, :cond_4

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;->pressed:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;->rc:Landroid/graphics/Rect;

    move-object v0, v5

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 307
    if-eqz v11, :cond_e

    .line 309
    const/4 v4, 0x0

    .line 310
    .local v4, audioID:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_b

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    monitor-enter v5

    .line 312
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    iget-object v12, v6, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    .line 313
    .local v12, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    iget v6, v6, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusNowPosition:I

    invoke-interface {v12, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 314
    const/4 v6, 0x0

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 315
    :cond_a
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    .end local v12           #c:Landroid/database/Cursor;
    :cond_b
    if-lez v4, :cond_c

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mContext:Landroid/content/Context;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/music/discplus/activity/DiscPlus;

    invoke-virtual/range {p1 .. p1}, Lcom/android/music/discplus/activity/DiscPlus;->getCorePlayer()Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v3

    .line 322
    .local v3, player:Lcom/android/music/player/service/ICorePlayerService;
    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    :try_start_1
    invoke-interface/range {v3 .. v9}, Lcom/android/music/player/service/ICorePlayerService;->setPlayIterator(IIILjava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 326
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v5

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/music/discplus/data/DiscPlusData;->mIsPlayed:Z

    .line 335
    .end local v3           #player:Lcom/android/music/player/service/ICorePlayerService;
    .end local v4           #audioID:I
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->pressed:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    move-object v0, v5

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mTopView:Lcom/android/music/discplus/view/TopView;

    move-object v5, v0

    if-eqz v5, :cond_d

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mTopView:Lcom/android/music/discplus/view/TopView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/music/discplus/view/TopView;->changeDiscView()V

    .line 342
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;->pressed:Z

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->pressed:Z

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->arrow:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->flickup:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 315
    .restart local v4       #audioID:I
    .restart local p1
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 323
    .end local p1
    .restart local v3       #player:Lcom/android/music/player/service/ICorePlayerService;
    :catch_0
    move-exception v15

    .line 324
    .local v15, e:Landroid/os/RemoteException;
    sget-object v5, Lcom/android/music/discplus/view/TouchJogDial;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 329
    .end local v3           #player:Lcom/android/music/player/service/ICorePlayerService;
    .end local v4           #audioID:I
    .end local v15           #e:Landroid/os/RemoteException;
    .restart local p1
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mTopView:Lcom/android/music/discplus/view/TopView;

    move-object v5, v0

    if-eqz v5, :cond_c

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mTopView:Lcom/android/music/discplus/view/TopView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/music/discplus/view/TopView;->changeDiscView()V

    goto/16 :goto_4
.end method

.method public setArrowUp(Landroid/widget/RelativeLayout;)V
    .locals 2
    .parameter "relativeLayout"

    .prologue
    .line 950
    new-instance v0, Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    invoke-direct {v0}, Lcom/android/music/discplus/view/TouchJogDial$Arrow;-><init>()V

    iput-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    .line 951
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->pressed:Z

    .line 952
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->rc:Landroid/graphics/Rect;

    .line 953
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    const v0, 0x7f0c0133

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->arrow:Landroid/widget/ImageView;

    .line 954
    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArrowUp:Lcom/android/music/discplus/view/TouchJogDial$Arrow;

    const v0, 0x7f0c012d

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/music/discplus/view/TouchJogDial$Arrow;->flickup:Landroid/widget/ImageView;

    .line 955
    const v0, 0x7f0c0135

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mPlayBtn:Landroid/widget/ImageView;

    .line 957
    new-instance v0, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    invoke-direct {v0}, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;-><init>()V

    iput-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    .line 958
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mCenterArea:Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/music/discplus/view/TouchJogDial$CenterTouchArea;->rc:Landroid/graphics/Rect;

    .line 959
    return-void
.end method

.method public setCycleCursorIndexData(Lcom/android/music/discplus/view/TopView;Landroid/widget/RelativeLayout;)V
    .locals 1
    .parameter "topView"
    .parameter "relativeLayout"

    .prologue
    .line 933
    iput-object p1, p0, Lcom/android/music/discplus/view/TouchJogDial;->mTopView:Lcom/android/music/discplus/view/TopView;

    .line 934
    const v0, 0x7f0c012f

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mFocusedIndexTV:Landroid/widget/TextView;

    .line 935
    const v0, 0x7f0c0130

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mItemTitleTV:Landroid/widget/TextView;

    .line 936
    const v0, 0x7f0c0132

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mArtistNameTV:Landroid/widget/TextView;

    .line 937
    const v0, 0x7f0c0131

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mNoItem:Landroid/widget/TextView;

    .line 938
    return-void
.end method

.method public setNowDegree()V
    .locals 29

    .prologue
    .line 873
    const-wide/16 v7, 0x0

    .line 875
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

    .line 876
    .local v17, loopCount:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6

    if-lez v17, :cond_6

    .line 877
    const/16 v23, 0x0

    .line 878
    .local v23, startDegree:F
    const/4 v12, 0x0

    .line 879
    .local v12, endDegree:F
    const/4 v15, 0x0

    .line 880
    .local v15, inPostion:I
    const/4 v3, 0x1

    .line 882
    .local v3, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusNowPosition:I

    move/from16 v22, v0

    .line 883
    .local v22, nowPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 884
    .local v4, cursorCount:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 885
    const/4 v10, 0x0

    .line 887
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

    .line 894
    :goto_2
    if-nez v10, :cond_4

    .line 922
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

    .line 875
    .end local v17           #loopCount:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v17, v25

    goto :goto_0

    .line 887
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

    .line 889
    :catch_0
    move-exception v25

    move-object/from16 v11, v25

    .line 890
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

    .line 891
    const/4 v10, 0x0

    goto :goto_2

    .line 898
    .end local v11           #e:Ljava/lang/Exception;
    :cond_4
    if-eqz v10, :cond_a

    .line 899
    iget v6, v10, Lcom/android/music/discplus/data/DiscPlusListInfo;->mCursorStartPosition:I

    .line 900
    .local v6, cursorStartPositon:I
    iget v5, v10, Lcom/android/music/discplus/data/DiscPlusListInfo;->mCursorEndPosition:I

    .line 901
    .local v5, cursorEndPosition:I
    if-lt v5, v4, :cond_7

    move/from16 v0, v22

    move v1, v6

    if-ge v0, v1, :cond_7

    const/16 v25, 0x1

    move/from16 v16, v25

    .line 902
    .local v16, isOutRange:Z
    :goto_4
    if-eqz v16, :cond_8

    add-int v25, v22, v4

    move/from16 v24, v25

    .line 903
    .local v24, startPosition:I
    :goto_5
    if-eqz v16, :cond_9

    sub-int v25, v5, v4

    move/from16 v13, v25

    .line 905
    .local v13, endPosition:I
    :goto_6
    move/from16 v0, v22

    move v1, v13

    if-gt v0, v1, :cond_a

    move v0, v6

    move/from16 v1, v24

    if-gt v0, v1, :cond_a

    .line 906
    move-object v0, v10

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mStartDegree:F

    move/from16 v23, v0

    .line 907
    iget v12, v10, Lcom/android/music/discplus/data/DiscPlusListInfo;->mEndDegree:F

    .line 908
    sub-int v15, v24, v6

    .line 909
    sub-int v25, v5, v6

    add-int/lit8 v3, v25, 0x1

    .line 915
    .end local v5           #cursorEndPosition:I
    .end local v6           #cursorStartPositon:I
    .end local v10           #discPlusListInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    .end local v13           #endPosition:I
    .end local v16           #isOutRange:Z
    .end local v24           #startPosition:I
    :cond_5
    sub-float v9, v12, v23

    .line 916
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

    .line 917
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

    .line 918
    .local v18, nextDegree:D
    add-double v25, v20, v18

    const-wide/high16 v27, 0x4000

    div-double v7, v25, v27

    .line 921
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

    .line 901
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

    .line 902
    goto :goto_5

    .restart local v24       #startPosition:I
    :cond_9
    move v13, v5

    .line 903
    goto :goto_6

    .line 884
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

    .line 921
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
    .line 353
    .local p5, typeIndexDataInfosList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/discplus/data/DiscPlusListInfo;>;"
    iput p3, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusDataType:I

    .line 354
    iput-object p4, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    .line 355
    iput-object p5, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusListInfos:Ljava/util/ArrayList;

    .line 356
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mNowInfoListIndex:I

    .line 357
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mSyncNowPosition:I

    .line 359
    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    .line 360
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;

    invoke-virtual {v0, p2}, Lcom/android/music/discplus/data/DiscPlusData;->setDiscPlusNowPosition(I)V

    .line 361
    invoke-virtual {p0}, Lcom/android/music/discplus/view/TouchJogDial;->setNowDegree()V

    .line 367
    :goto_0
    invoke-direct {p0}, Lcom/android/music/discplus/view/TouchJogDial;->setDiscIndexCycleText()V

    .line 368
    invoke-direct {p0}, Lcom/android/music/discplus/view/TouchJogDial;->setDiscIndexCyclePart()V

    .line 370
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 371
    :cond_0
    return-void

    .line 363
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/music/discplus/view/TouchJogDial;->mLastDegree:D

    goto :goto_0
.end method
