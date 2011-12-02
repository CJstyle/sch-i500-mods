.class Lcom/android/music/discplus/view/DiscRenderer;
.super Ljava/lang/Object;
.source "DiscRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/discplus/view/DiscRenderer$1;,
        Lcom/android/music/discplus/view/DiscRenderer$CDRange;
    }
.end annotation


# static fields
.field private static final ANIMATION_FRAME:I = 0xc

.field private static final COORDINATEMAX:I = 0x3

.field private static final COORDINATEX:I = 0x0

.field private static final COORDINATEY:I = 0x1

.field private static final COORDINATEZ:I = 0x2

.field private static final DISC_CENTER_INDEX:C = '\u0003'

.field private static final DISC_COEFFICIENT_ANGLE:C = '\u0002'

.field private static final DISC_DEGREE_INFO:[[I = null

.field private static final DISC_DIVIDE_DEGREE:C = '\u0000'

.field public static final DISC_LEFT:I = 0x1

.field public static final DISC_NONE:I = 0x0

.field public static final DISC_RIGHT:I = 0x2

.field private static final DISC_START_ANGLE:C = '\u0001'

.field private static final FOCUS_DISC_SCALE:F = 1.68f

.field private static final FRAMETIME:J = 0x17d7840L

.field private static final HEIGHT:F = 1.62f

.field private static final INVALID_TEXTURE:I = -0x80000000

.field private static final MAX_DISC_COUNT:I = 0xf

.field private static final MAX_DISC_SCALE:F = 1.32f

.field private static final MIN_DISC_SCALE:F = 0.5f

.field private static final NANOTIME:J = 0xf4240L

.field private static final RADIUS_MAX:F = 3.1f

.field private static final TRACK180DEGREE:I = 0x168

.field private static final TRACK_COUNT:I = 0x2d0

.field private static final XANGLE:F = 20.0f

.field private static final ZFAR:F = -4.0f

.field private static final ZNEAR:F = 4.0f


# instance fields
.field public allover_Angle:I

.field private mAllowSwitchMove:Z

.field private mCurrentIndex:I

.field private mCurrentMovingMode:I

.field private mDiscView:Lcom/android/music/discplus/view/DiscView;

.field private mDiscXAngle:F

.field private mDiscYAngle:F

.field private mDiscZAngle:F

.field private mFrameCount:I

.field private mHeight:F

.field private mInitCreate:Z

.field private mLastFrameTime:J

.field private mMainXAngle:F

.field private mNextFrameTime:J

.field private mOnAnimationStop:Z

.field private mOnTouchReadRange:Z

.field private mProjector:Lcom/android/music/discplus/util/Projector;

.field public mRollingAngle:I

.field public mRollingExtraAngle:I

.field private mSetDragMode:Z

.field private mSetMovingDegree:I

.field private mSetMovingMode:I

.field private mSortedIdx:[I

.field private mTargetDegree:[I

.field private mTargetIdx:[I

.field private mTargetScale:[F

.field private mTargetX:[F

.field private mTargetY:[F

.field private mTargetZ:[F

.field private mTextureIds:[I

.field private mTextureLoaded:Z

.field private mTextureMask:[I

.field private mTextureNItem:[I

.field private mTextureTop:[I

.field private mTexturesRange:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/discplus/view/DiscRenderer$CDRange;",
            ">;"
        }
    .end annotation
.end field

.field private mTexturesToDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTopScale:F

.field private mTrackCoordinates:[[F

.field private mTrackCoordinatesAniRadius:[[[F

.field private mTrackCoordinatesAniXRatio:[[[F

.field private mTrackCoordinatesOrg:[[F

.field private mTrackScale:[F

.field private mTrackScaleAni:[[F

.field private mTrackScaleOrg:[F

.field private mTransAngle:I

.field private mTransferDISC:I

.field private mTransferFloatData:[F

.field private mTransferIntData:[I

.field private mYDegree:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 103
    const/16 v0, 0x14

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/music/discplus/view/DiscRenderer;->DISC_DEGREE_INFO:[[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x68t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0xf0t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0xb4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x90t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x78t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x66t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x5at 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x50t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x48t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x42t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0xfdt 0xfft 0xfft 0xfft
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x3ct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x38t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0x33t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0x30t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    :array_f
    .array-data 0x4
        0x2dt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_10
    .array-data 0x4
        0x2at 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_11
    .array-data 0x4
        0x28t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data

    :array_12
    .array-data 0x4
        0x26t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x9t 0x0t 0x0t 0x0t
    .end array-data

    :array_13
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/music/discplus/view/DiscView;)V
    .locals 6
    .parameter "discView"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/16 v3, 0x2d0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    .line 131
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureNItem:[I

    .line 132
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureMask:[I

    .line 133
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureTop:[I

    .line 641
    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    .line 654
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    .line 655
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetIdx:[I

    .line 656
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetX:[F

    .line 657
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetY:[F

    .line 658
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetZ:[F

    .line 659
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetScale:[F

    .line 660
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetDegree:[I

    .line 662
    new-instance v0, Lcom/android/music/discplus/util/Projector;

    invoke-direct {v0}, Lcom/android/music/discplus/util/Projector;-><init>()V

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mProjector:Lcom/android/music/discplus/util/Projector;

    .line 664
    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 665
    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    .line 666
    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->allover_Angle:I

    .line 667
    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTransAngle:I

    .line 677
    const/4 v0, 0x7

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferFloatData:[F

    .line 678
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    .line 680
    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentIndex:I

    .line 690
    iput-boolean v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mOnTouchReadRange:Z

    .line 691
    iput-boolean v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mOnAnimationStop:Z

    .line 692
    iput-boolean v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mInitCreate:Z

    .line 693
    iput-boolean v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureLoaded:Z

    .line 694
    iput-boolean v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mAllowSwitchMove:Z

    .line 697
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesToDelete:Ljava/util/ArrayList;

    .line 698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesRange:Ljava/util/ArrayList;

    .line 1444
    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentMovingMode:I

    .line 1445
    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingMode:I

    .line 1446
    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingDegree:I

    .line 1447
    iput-boolean v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetDragMode:Z

    .line 1448
    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferDISC:I

    .line 1383
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    .line 1384
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTopScale:F

    .line 1385
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mMainXAngle:F

    .line 1386
    const/high16 v0, -0x3e60

    iput v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscXAngle:F

    .line 1387
    iput v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscYAngle:F

    .line 1388
    iput v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscZAngle:F

    .line 1389
    const v0, 0x3fcf5c29

    iput v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mHeight:F

    .line 1390
    iput v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mYDegree:F

    .line 1391
    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 1392
    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    .line 1401
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesRange:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1402
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1403
    iput-boolean v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mOnAnimationStop:Z

    .line 1404
    iput-boolean v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mInitCreate:Z

    .line 1405
    iput-boolean v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureLoaded:Z

    .line 1407
    filled-new-array {v3, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    .line 1408
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    .line 1416
    filled-new-array {v3, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesOrg:[[F

    .line 1417
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScaleOrg:[F

    .line 1419
    const/16 v0, 0xc

    filled-new-array {v0, v3, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[F

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesAniXRatio:[[[F

    .line 1420
    const/16 v0, 0xc

    filled-new-array {v0, v3, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[F

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesAniRadius:[[[F

    .line 1421
    const/16 v0, 0xd

    filled-new-array {v0, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScaleAni:[[F

    .line 1423
    invoke-direct {p0}, Lcom/android/music/discplus/view/DiscRenderer;->calcAnimationTrackPos()V

    .line 1424
    invoke-direct {p0}, Lcom/android/music/discplus/view/DiscRenderer;->calcTrackPos()V

    .line 1428
    return-void
.end method

.method private calcAnimationTrackPos()V
    .locals 19

    .prologue
    .line 763
    const/4 v6, 0x0

    .line 764
    .local v6, ANIMATION_START_XRATIO:F
    const/high16 v3, 0x3f80

    .line 766
    .local v3, ANIMATION_END_XRATIO:F
    const v4, 0x3fcccccd

    .line 767
    .local v4, ANIMATION_START_RADIOUS:F
    const v1, 0x40466666

    .line 769
    .local v1, ANIMATION_END_RADIOUS:F
    const/high16 v5, 0x3f00

    .line 770
    .local v5, ANIMATION_START_SCALE:F
    const/high16 v2, 0x3f80

    .line 772
    .local v2, ANIMATION_END_SCALE:F
    const/4 v9, 0x0

    .local v9, frame:I
    :goto_0
    const/16 v14, 0xc

    if-ge v9, v14, :cond_2

    .line 773
    const/4 v7, 0x0

    .line 775
    .local v7, count:I
    const/4 v14, 0x0

    const/high16 v15, 0x3f80

    move v0, v9

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    const/high16 v16, 0x4140

    div-float v15, v15, v16

    add-float v13, v14, v15

    .line 777
    .local v13, xratio:F
    const v14, 0x3fcccccd

    const v15, 0x3fbfffff

    move v0, v9

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    const/high16 v16, 0x4140

    div-float v15, v15, v16

    add-float v11, v14, v15

    .line 779
    .local v11, radius:F
    const/high16 v14, 0x3f00

    const/high16 v15, 0x3f00

    move v0, v9

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    const/high16 v16, 0x4140

    div-float v15, v15, v16

    add-float v12, v14, v15

    .line 782
    .local v12, scale:F
    const/16 v10, -0xb4

    .local v10, i:I
    :goto_1
    if-gez v10, :cond_0

    .line 783
    const/4 v14, 0x0

    sub-int v8, v14, v10

    .line 784
    .local v8, degree:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesAniXRatio:[[[F

    move-object v14, v0

    aget-object v14, v14, v9

    aget-object v14, v14, v7

    const/4 v15, 0x0

    sget-object v16, Lcom/android/music/discplus/util/TriangleTable;->sincosTable:[[F

    aget-object v16, v16, v8

    const/16 v17, 0x1

    aget v16, v16, v17

    const v17, 0x40466666

    mul-float v16, v16, v17

    mul-float v16, v16, v13

    aput v16, v14, v15

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesAniXRatio:[[[F

    move-object v14, v0

    aget-object v14, v14, v9

    aget-object v14, v14, v7

    const/4 v15, 0x2

    const/16 v16, 0x0

    sget-object v17, Lcom/android/music/discplus/util/TriangleTable;->sincosTable:[[F

    aget-object v17, v17, v8

    const/16 v18, 0x0

    aget v17, v17, v18

    sub-float v16, v16, v17

    const v17, 0x40466666

    mul-float v16, v16, v17

    aput v16, v14, v15

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesAniXRatio:[[[F

    move-object v14, v0

    aget-object v14, v14, v9

    aget-object v14, v14, v7

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesAniRadius:[[[F

    move-object v14, v0

    aget-object v14, v14, v9

    aget-object v14, v14, v7

    const/4 v15, 0x0

    sget-object v16, Lcom/android/music/discplus/util/TriangleTable;->sincosTable:[[F

    aget-object v16, v16, v8

    const/16 v17, 0x1

    aget v16, v16, v17

    mul-float v16, v16, v11

    aput v16, v14, v15

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesAniRadius:[[[F

    move-object v14, v0

    aget-object v14, v14, v9

    aget-object v14, v14, v7

    const/4 v15, 0x2

    const/16 v16, 0x0

    sget-object v17, Lcom/android/music/discplus/util/TriangleTable;->sincosTable:[[F

    aget-object v17, v17, v8

    const/16 v18, 0x0

    aget v17, v17, v18

    sub-float v16, v16, v17

    mul-float v16, v16, v11

    aput v16, v14, v15

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesAniRadius:[[[F

    move-object v14, v0

    aget-object v14, v14, v9

    aget-object v14, v14, v7

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScaleAni:[[F

    move-object v14, v0

    aget-object v14, v14, v9

    aput v12, v14, v7

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScaleAni:[[F

    move-object v14, v0

    const/16 v15, 0xc

    aget-object v14, v14, v15

    const/4 v15, 0x0

    aput v15, v14, v7

    .line 794
    add-int/lit8 v7, v7, 0x1

    .line 782
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 797
    .end local v8           #degree:I
    :cond_0
    const/4 v10, 0x0

    :goto_2
    const/16 v14, 0x21c

    if-ge v10, v14, :cond_1

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesAniXRatio:[[[F

    move-object v14, v0

    aget-object v14, v14, v9

    aget-object v14, v14, v7

    const/4 v15, 0x0

    sget-object v16, Lcom/android/music/discplus/util/TriangleTable;->sincosTable:[[F

    aget-object v16, v16, v10

    const/16 v17, 0x1

    aget v16, v16, v17

    const v17, 0x40466666

    mul-float v16, v16, v17

    mul-float v16, v16, v13

    aput v16, v14, v15

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesAniXRatio:[[[F

    move-object v14, v0

    aget-object v14, v14, v9

    aget-object v14, v14, v7

    const/4 v15, 0x2

    sget-object v16, Lcom/android/music/discplus/util/TriangleTable;->sincosTable:[[F

    aget-object v16, v16, v10

    const/16 v17, 0x0

    aget v16, v16, v17

    const v17, 0x40466666

    mul-float v16, v16, v17

    aput v16, v14, v15

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesAniXRatio:[[[F

    move-object v14, v0

    aget-object v14, v14, v9

    aget-object v14, v14, v7

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesAniRadius:[[[F

    move-object v14, v0

    aget-object v14, v14, v9

    aget-object v14, v14, v7

    const/4 v15, 0x0

    sget-object v16, Lcom/android/music/discplus/util/TriangleTable;->sincosTable:[[F

    aget-object v16, v16, v10

    const/16 v17, 0x1

    aget v16, v16, v17

    mul-float v16, v16, v11

    aput v16, v14, v15

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesAniRadius:[[[F

    move-object v14, v0

    aget-object v14, v14, v9

    aget-object v14, v14, v7

    const/4 v15, 0x2

    sget-object v16, Lcom/android/music/discplus/util/TriangleTable;->sincosTable:[[F

    aget-object v16, v16, v10

    const/16 v17, 0x0

    aget v16, v16, v17

    mul-float v16, v16, v11

    aput v16, v14, v15

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesAniRadius:[[[F

    move-object v14, v0

    aget-object v14, v14, v9

    aget-object v14, v14, v7

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScaleAni:[[F

    move-object v14, v0

    aget-object v14, v14, v9

    aput v12, v14, v7

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScaleAni:[[F

    move-object v14, v0

    const/16 v15, 0xc

    aget-object v14, v14, v15

    const/4 v15, 0x0

    aput v15, v14, v7

    .line 808
    add-int/lit8 v7, v7, 0x1

    .line 797
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 772
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 811
    .end local v7           #count:I
    .end local v10           #i:I
    .end local v11           #radius:F
    .end local v12           #scale:F
    .end local v13           #xratio:F
    :cond_2
    return-void
.end method

.method private calcTrackPos()V
    .locals 13

    .prologue
    const v12, 0x3fa8f5c3

    const/4 v11, 0x0

    const/4 v10, 0x1

    const v9, 0x40466666

    const/4 v8, 0x0

    .line 736
    const/4 v0, 0x0

    .line 737
    .local v0, count:I
    const v4, 0x3b1546c6

    .line 738
    .local v4, sRange:F
    const/16 v3, -0xb4

    .local v3, i:I
    :goto_0
    if-gez v3, :cond_0

    .line 739
    sub-int v1, v8, v3

    .line 740
    .local v1, degree:I
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesOrg:[[F

    aget-object v5, v5, v0

    sget-object v6, Lcom/android/music/discplus/util/TriangleTable;->sincosTable:[[F

    aget-object v6, v6, v1

    aget v6, v6, v10

    mul-float/2addr v6, v9

    aput v6, v5, v8

    .line 741
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesOrg:[[F

    aget-object v5, v5, v0

    const/4 v6, 0x2

    sget-object v7, Lcom/android/music/discplus/util/TriangleTable;->sincosTable:[[F

    aget-object v7, v7, v1

    aget v7, v7, v8

    sub-float v7, v11, v7

    mul-float/2addr v7, v9

    aput v7, v5, v6

    .line 742
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesOrg:[[F

    aget-object v5, v5, v0

    aput v11, v5, v10

    .line 743
    const/16 v5, 0x168

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 744
    .local v2, distance:I
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScaleOrg:[F

    int-to-float v6, v2

    mul-float/2addr v6, v4

    sub-float v6, v12, v6

    aput v6, v5, v0

    .line 745
    add-int/lit8 v0, v0, 0x1

    .line 738
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 748
    .end local v1           #degree:I
    .end local v2           #distance:I
    :cond_0
    const/4 v3, 0x0

    :goto_1
    const/16 v5, 0x21c

    if-ge v3, v5, :cond_1

    .line 749
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesOrg:[[F

    aget-object v5, v5, v0

    sget-object v6, Lcom/android/music/discplus/util/TriangleTable;->sincosTable:[[F

    aget-object v6, v6, v3

    aget v6, v6, v10

    mul-float/2addr v6, v9

    aput v6, v5, v8

    .line 750
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesOrg:[[F

    aget-object v5, v5, v0

    const/4 v6, 0x2

    sget-object v7, Lcom/android/music/discplus/util/TriangleTable;->sincosTable:[[F

    aget-object v7, v7, v3

    aget v7, v7, v8

    mul-float/2addr v7, v9

    aput v7, v5, v6

    .line 751
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesOrg:[[F

    aget-object v5, v5, v0

    aput v11, v5, v10

    .line 752
    const/16 v5, 0x168

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 753
    .restart local v2       #distance:I
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScaleOrg:[F

    int-to-float v6, v2

    mul-float/2addr v6, v4

    sub-float v6, v12, v6

    aput v6, v5, v0

    .line 754
    add-int/lit8 v0, v0, 0x1

    .line 748
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 757
    .end local v2           #distance:I
    :cond_1
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesOrg:[[F

    iput-object v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    .line 758
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScaleOrg:[F

    iput-object v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    .line 759
    return-void
.end method

.method public static native deleteTextures([II)V
.end method

.method private execAnimationEffect(Lcom/android/music/discplus/view/DiscView$AniMationEffect;I)Z
    .locals 37
    .parameter "effectType"
    .parameter "dataCount"

    .prologue
    .line 1116
    const/16 v30, 0x0

    .line 1118
    .local v30, animationDone:Z
    sget-object v34, Lcom/android/music/discplus/view/DiscRenderer$1;->$SwitchMap$com$android$music$discplus$view$DiscView$AniMationEffect:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ordinal()I

    move-result v35

    aget v34, v34, v35

    packed-switch v34, :pswitch_data_0

    .line 1378
    :cond_0
    :goto_0
    return v30

    .line 1121
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    const v36, 0x3fa8f5c3

    aput v36, v34, v35

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesOrg:[[F

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    .line 1124
    const/16 v34, 0xb

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    .line 1125
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mOnAnimationStop:Z

    .line 1126
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v34, v0

    const/16 v35, 0xb

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesOrg:[[F

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    .line 1128
    const/16 v30, 0x1

    goto :goto_0

    .line 1133
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/music/discplus/view/DiscView;->getCurrentView()Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-result-object v34

    sget-object v35, Lcom/android/music/discplus/view/DiscView$CurrentView;->DISC_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_1

    .line 1134
    const v15, 0x3fd70a3d

    .line 1135
    .local v15, ANIMATION_DISMISS_START_CURSEL_SCALE:F
    const v14, 0x3fa8f5c3

    .line 1137
    .local v14, ANIMATION_DISMISS_END_CURSEL_SCALE:F
    const v34, 0x3fd70a3d

    const v35, -0x4147ae18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v35, v35, v36

    const/high16 v36, 0x4140

    div-float v35, v35, v36

    add-float v31, v34, v35

    .line 1141
    .local v31, scale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    aput v31, v34, v35

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesAniXRatio:[[[F

    move-object/from16 v34, v0

    const/16 v35, 0xb

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    aget-object v34, v34, v35

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    .line 1144
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v34, v0

    const/16 v35, 0xb

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    const v36, 0x3fa8f5c3

    aput v36, v34, v35

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesAniXRatio:[[[F

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aget-object v34, v34, v35

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    .line 1147
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 1150
    .end local v14           #ANIMATION_DISMISS_END_CURSEL_SCALE:F
    .end local v15           #ANIMATION_DISMISS_START_CURSEL_SCALE:F
    .end local v31           #scale:F
    :cond_1
    const/16 v30, 0x1

    .line 1153
    goto/16 :goto_0

    .line 1155
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/music/discplus/view/DiscView;->getCurrentView()Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-result-object v34

    sget-object v35, Lcom/android/music/discplus/view/DiscView$CurrentView;->DISC_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mOnAnimationStop:Z

    move/from16 v34, v0

    if-eqz v34, :cond_3

    .line 1156
    const v23, 0x3fa8f5c3

    .line 1157
    .local v23, ANIMATION_LOADING_START_CURSEL_SCALE:F
    const v22, 0x3fd70a3d

    .line 1158
    .local v22, ANIMATION_LOADING_END_CURSEL_SCALE:F
    const v34, 0x3fa8f5c3

    const v35, 0x3eb851e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v35, v35, v36

    const/high16 v36, 0x4140

    div-float v35, v35, v36

    add-float v31, v34, v35

    .line 1162
    .restart local v31       #scale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    aput v31, v34, v35

    .line 1163
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v34, v0

    const/16 v35, 0xb

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_2

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    const v36, 0x3fd70a3d

    aput v36, v34, v35

    .line 1165
    const/16 v30, 0x1

    .line 1166
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mInitCreate:Z

    .line 1172
    .end local v22           #ANIMATION_LOADING_END_CURSEL_SCALE:F
    .end local v23           #ANIMATION_LOADING_START_CURSEL_SCALE:F
    .end local v31           #scale:F
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    goto/16 :goto_0

    .line 1169
    :cond_3
    const/16 v30, 0x1

    .line 1170
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mInitCreate:Z

    goto :goto_1

    .line 1177
    :pswitch_3
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mOnAnimationStop:Z

    .line 1178
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mDiscZAngle:F

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    const v36, 0x3fa8f5c3

    aput v36, v34, v35

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    aget-object v34, v34, v35

    const/16 v35, 0x2

    const v36, 0x40466666

    aput v36, v34, v35

    goto/16 :goto_0

    .line 1185
    :pswitch_4
    const v27, 0x3ff33333

    .line 1186
    .local v27, ANIMATION_TOPVIEW_DISC_INDEXCYCLE_START_SCALE:F
    const/high16 v26, 0x3f00

    .line 1188
    .local v26, ANIMATION_TOPVIEW_DISC_INDEXCYCLE_END_SCALE:F
    const/high16 v29, 0x42b4

    .line 1189
    .local v29, ANIMATION_TOPVIEW_DISC_START_X_ANGLE:F
    const/high16 v25, 0x41a0

    .line 1191
    .local v25, ANIMATION_TOPVIEW_DISC_END_X_ANGLE:F
    const/16 v28, 0x0

    .line 1192
    .local v28, ANIMATION_TOPVIEW_DISC_START_HEIGHT:F
    const v24, 0x3fcf5c29

    .line 1194
    .local v24, ANIMATION_TOPVIEW_DISC_END_HEIGHT:F
    const/16 v13, 0x64

    .line 1195
    .local v13, ANIMATION_DISC_TOPVIEW_START_YDEGREE:I
    const/4 v8, 0x0

    .line 1197
    .local v8, ANIMATION_DISC_TOPVIEW_END_YDEGREE:I
    const/high16 v34, 0x42b4

    const/high16 v35, -0x3d74

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v35, v35, v36

    const/high16 v36, 0x4140

    div-float v35, v35, v36

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mMainXAngle:F

    .line 1201
    const v34, 0x3ff33333

    const v35, -0x404ccccd

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v35, v35, v36

    const/high16 v36, 0x4140

    div-float v35, v35, v36

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTopScale:F

    .line 1205
    const/16 v34, 0x0

    const v35, 0x3fcf5c29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v35, v35, v36

    const/high16 v36, 0x4140

    div-float v35, v35, v36

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mHeight:F

    .line 1209
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v34, v0

    mul-int/lit8 v34, v34, -0x64

    div-int/lit8 v34, v34, 0xc

    add-int/lit8 v34, v34, 0x64

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mYDegree:F

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesAniRadius:[[[F

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v35, v0

    aget-object v34, v34, v35

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScaleAni:[[F

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v35, v0

    aget-object v34, v34, v35

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    .line 1216
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mOnAnimationStop:Z

    .line 1217
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v34, v0

    const/16 v35, 0xb

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    .line 1218
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 1219
    const/high16 v34, 0x3f00

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTopScale:F

    .line 1220
    const/high16 v34, 0x41a0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mMainXAngle:F

    .line 1221
    const v34, 0x3fcf5c29

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mHeight:F

    .line 1222
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mYDegree:F

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesOrg:[[F

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScaleOrg:[F

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    const v36, 0x3fa8f5c3

    aput v36, v34, v35

    .line 1226
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 1232
    .end local v8           #ANIMATION_DISC_TOPVIEW_END_YDEGREE:I
    .end local v13           #ANIMATION_DISC_TOPVIEW_START_YDEGREE:I
    .end local v24           #ANIMATION_TOPVIEW_DISC_END_HEIGHT:F
    .end local v25           #ANIMATION_TOPVIEW_DISC_END_X_ANGLE:F
    .end local v26           #ANIMATION_TOPVIEW_DISC_INDEXCYCLE_END_SCALE:F
    .end local v27           #ANIMATION_TOPVIEW_DISC_INDEXCYCLE_START_SCALE:F
    .end local v28           #ANIMATION_TOPVIEW_DISC_START_HEIGHT:F
    .end local v29           #ANIMATION_TOPVIEW_DISC_START_X_ANGLE:F
    :pswitch_5
    const/high16 v10, 0x3f00

    .line 1233
    .local v10, ANIMATION_DISC_TOPVIEW_INDEXCYCLE_START_SCALE:F
    const v9, 0x3ff33333

    .line 1235
    .local v9, ANIMATION_DISC_TOPVIEW_INDEXCYCLE_END_SCLAE:F
    const/high16 v12, 0x41a0

    .line 1236
    .local v12, ANIMATION_DISC_TOPVIEW_START_X_ANGLE:F
    const/high16 v7, 0x42b4

    .line 1238
    .local v7, ANIMATION_DISC_TOPVIEW_END_X_ANGLE:F
    const v11, 0x3fcf5c29

    .line 1239
    .local v11, ANIMATION_DISC_TOPVIEW_START_HEIGHT:F
    const/4 v6, 0x0

    .line 1241
    .local v6, ANIMATION_DISC_TOPVIEW_END_HEIGHT:F
    const/4 v13, 0x0

    .line 1242
    .restart local v13       #ANIMATION_DISC_TOPVIEW_START_YDEGREE:I
    const/16 v8, 0x64

    .line 1244
    .restart local v8       #ANIMATION_DISC_TOPVIEW_END_YDEGREE:I
    const/high16 v34, 0x3f00

    const v35, 0x3fb33333

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v35, v35, v36

    const/high16 v36, 0x4140

    div-float v35, v35, v36

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTopScale:F

    .line 1248
    const/high16 v34, 0x41a0

    const/high16 v35, 0x428c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v35, v35, v36

    const/high16 v36, 0x4140

    div-float v35, v35, v36

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mMainXAngle:F

    .line 1252
    const v34, 0x3fcf5c29

    const v35, -0x4030a3d7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v35, v35, v36

    const/high16 v36, 0x4140

    div-float v35, v35, v36

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mHeight:F

    .line 1256
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v34, v0

    mul-int/lit8 v34, v34, 0x64

    div-int/lit8 v34, v34, 0xc

    add-int/lit8 v34, v34, 0x0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mYDegree:F

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesAniRadius:[[[F

    move-object/from16 v34, v0

    const/16 v35, 0xb

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    aget-object v34, v34, v35

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScaleAni:[[F

    move-object/from16 v34, v0

    const/16 v35, 0xb

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    aget-object v34, v34, v35

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    .line 1263
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mOnAnimationStop:Z

    .line 1264
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v34, v0

    const/16 v35, 0xb

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    .line 1265
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 1266
    const v34, 0x3ff33333

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTopScale:F

    .line 1267
    const/high16 v34, 0x42b4

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mMainXAngle:F

    .line 1268
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mHeight:F

    .line 1269
    const/high16 v34, 0x42c8

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mYDegree:F

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesAniRadius:[[[F

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aget-object v34, v34, v35

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScaleAni:[[F

    move-object/from16 v34, v0

    const/16 v35, 0xc

    aget-object v34, v34, v35

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    .line 1273
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 1279
    .end local v6           #ANIMATION_DISC_TOPVIEW_END_HEIGHT:F
    .end local v7           #ANIMATION_DISC_TOPVIEW_END_X_ANGLE:F
    .end local v8           #ANIMATION_DISC_TOPVIEW_END_YDEGREE:I
    .end local v9           #ANIMATION_DISC_TOPVIEW_INDEXCYCLE_END_SCLAE:F
    .end local v10           #ANIMATION_DISC_TOPVIEW_INDEXCYCLE_START_SCALE:F
    .end local v11           #ANIMATION_DISC_TOPVIEW_START_HEIGHT:F
    .end local v12           #ANIMATION_DISC_TOPVIEW_START_X_ANGLE:F
    .end local v13           #ANIMATION_DISC_TOPVIEW_START_YDEGREE:I
    :pswitch_6
    const/16 v34, 0x1

    move/from16 v0, p2

    move/from16 v1, v34

    if-le v0, v1, :cond_4

    .line 1280
    const/16 v17, 0x168

    .line 1281
    .local v17, ANIMATION_FADE_OUT_START_ANGLE:I
    const/16 v16, 0x0

    .line 1283
    .local v16, ANIMATION_FADE_OUT_END_ANGLE:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v34, v0

    move/from16 v0, v34

    mul-int/lit16 v0, v0, -0x168

    move/from16 v34, v0

    div-int/lit8 v34, v34, 0xc

    move/from16 v0, v34

    add-int/lit16 v0, v0, 0x168

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTransAngle:I

    .line 1286
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mOnAnimationStop:Z

    .line 1287
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v34, v0

    const/16 v35, 0xb

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    .line 1288
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTransAngle:I

    .line 1289
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 1292
    .end local v16           #ANIMATION_FADE_OUT_END_ANGLE:I
    .end local v17           #ANIMATION_FADE_OUT_START_ANGLE:I
    :cond_4
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTransAngle:I

    .line 1293
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mOnAnimationStop:Z

    .line 1294
    const/16 v30, 0x1

    .line 1297
    goto/16 :goto_0

    .line 1300
    :pswitch_7
    const/16 v34, 0x1

    move/from16 v0, p2

    move/from16 v1, v34

    if-le v0, v1, :cond_5

    .line 1301
    const/16 v17, 0x0

    .line 1302
    .restart local v17       #ANIMATION_FADE_OUT_START_ANGLE:I
    const/16 v16, 0x168

    .line 1304
    .restart local v16       #ANIMATION_FADE_OUT_END_ANGLE:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v34, v0

    move/from16 v0, v34

    mul-int/lit16 v0, v0, 0x168

    move/from16 v34, v0

    div-int/lit8 v34, v34, 0xc

    add-int/lit8 v34, v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTransAngle:I

    .line 1307
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mOnAnimationStop:Z

    .line 1308
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v34, v0

    const/16 v35, 0xb

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    .line 1309
    const/16 v34, 0x168

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTransAngle:I

    .line 1310
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 1313
    .end local v16           #ANIMATION_FADE_OUT_END_ANGLE:I
    .end local v17           #ANIMATION_FADE_OUT_START_ANGLE:I
    :cond_5
    const/16 v34, 0x168

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTransAngle:I

    .line 1314
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mOnAnimationStop:Z

    .line 1315
    const/16 v30, 0x1

    .line 1318
    goto/16 :goto_0

    .line 1321
    :pswitch_8
    const/4 v5, 0x0

    .line 1322
    .local v5, ANIMATION_DISC_LISTVIEW_START_Z_ANGLE:F
    const/high16 v3, 0x43b4

    .line 1324
    .local v3, ANIMATION_DISC_LISTVIEW_END_Z_ANGLE:F
    const/4 v4, 0x0

    .line 1325
    .local v4, ANIMATION_DISC_LISTVIEW_START_X_POS:F
    const/high16 v2, -0x4000

    .line 1327
    .local v2, ANIMATION_DISC_LISTVIEW_END_X_POS:F
    const/16 v34, 0x0

    const/high16 v35, 0x43b4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v35, v35, v36

    const/high16 v36, 0x4140

    div-float v35, v35, v36

    add-float v33, v34, v35

    .line 1331
    .local v33, zAngle:F
    const/16 v34, 0x0

    const/high16 v35, -0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v35, v35, v36

    const/high16 v36, 0x4140

    div-float v35, v35, v36

    add-float v32, v34, v35

    .line 1334
    .local v32, xPos:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/music/discplus/view/DiscView;->runOnChangeListViewStart()V

    .line 1335
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mDiscZAngle:F

    .line 1336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    const v36, 0x3fd70a3d

    aput v36, v34, v35

    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    aget-object v34, v34, v35

    const/16 v35, 0x0

    aput v32, v34, v35

    .line 1339
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mOnAnimationStop:Z

    .line 1340
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v34, v0

    const/16 v35, 0xb

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    .line 1341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    const v36, 0x3fd70a3d

    aput v36, v34, v35

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    aget-object v34, v34, v35

    const/16 v35, 0x0

    const/high16 v36, -0x4000

    aput v36, v34, v35

    .line 1343
    const/high16 v34, 0x43b4

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mDiscZAngle:F

    .line 1344
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 1350
    .end local v2           #ANIMATION_DISC_LISTVIEW_END_X_POS:F
    .end local v3           #ANIMATION_DISC_LISTVIEW_END_Z_ANGLE:F
    .end local v4           #ANIMATION_DISC_LISTVIEW_START_X_POS:F
    .end local v5           #ANIMATION_DISC_LISTVIEW_START_Z_ANGLE:F
    .end local v32           #xPos:F
    .end local v33           #zAngle:F
    :pswitch_9
    const/high16 v21, 0x43b4

    .line 1351
    .local v21, ANIMATION_LIST_DISCVIEW_START_Z_ANGLE:F
    const/16 v19, 0x0

    .line 1353
    .local v19, ANIMATION_LIST_DISCVIEW_END_Z_ANGLE:F
    const/high16 v20, -0x4000

    .line 1354
    .local v20, ANIMATION_LIST_DISCVIEW_START_X_POS:F
    const/16 v18, 0x0

    .line 1356
    .local v18, ANIMATION_LIST_DISCVIEW_END_X_POS:F
    const/high16 v34, 0x43b4

    const/high16 v35, -0x3c4c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v35, v35, v36

    const/high16 v36, 0x4140

    div-float v35, v35, v36

    add-float v33, v34, v35

    .line 1360
    .restart local v33       #zAngle:F
    const/high16 v34, -0x4000

    const/high16 v35, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v35, v35, v36

    const/high16 v36, 0x4140

    div-float v35, v35, v36

    add-float v32, v34, v35

    .line 1364
    .restart local v32       #xPos:F
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mDiscZAngle:F

    .line 1365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    const v36, 0x3fd70a3d

    aput v36, v34, v35

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    aget-object v34, v34, v35

    const/16 v35, 0x0

    aput v32, v34, v35

    .line 1367
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mOnAnimationStop:Z

    .line 1368
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v34, v0

    const/16 v35, 0xb

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    const v36, 0x3fd70a3d

    aput v36, v34, v35

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    aget-object v34, v34, v35

    const/16 v35, 0x0

    const/16 v36, 0x0

    aput v36, v34, v35

    .line 1371
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mDiscZAngle:F

    .line 1372
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 1118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static native freeHardwareVBO()V
.end method

.method public static native genHardwareVBO()V
.end method

.method public static native genTextures([IILandroid/graphics/Bitmap;)V
.end method

.method private getObjectRect()Landroid/graphics/Rect;
    .locals 8

    .prologue
    .line 2612
    const/16 v3, 0xc

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    .line 2618
    .local v2, vertices:[F
    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v4, v2, v4

    const/4 v5, 0x2

    aget v5, v2, v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/music/discplus/view/DiscRenderer;->getWindow2World(FFF)Landroid/graphics/Point;

    move-result-object v0

    .line 2619
    .local v0, lTop:Landroid/graphics/Point;
    const/4 v3, 0x6

    aget v3, v2, v3

    const/4 v4, 0x7

    aget v4, v2, v4

    const/16 v5, 0x8

    aget v5, v2, v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/music/discplus/view/DiscRenderer;->getWindow2World(FFF)Landroid/graphics/Point;

    move-result-object v1

    .line 2620
    .local v1, rBottom:Landroid/graphics/Point;
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v7, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3

    .line 2612
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private getWindow2World(FFF)Landroid/graphics/Point;
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2624
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 2626
    .local v1, ret:Landroid/graphics/Point;
    const/4 v3, 0x4

    new-array v0, v3, [F

    aput p1, v0, v4

    aput p2, v0, v5

    const/4 v3, 0x2

    aput p3, v0, v3

    const/high16 v3, 0x3f80

    aput v3, v0, v6

    .line 2627
    .local v0, obj:[F
    new-array v2, v6, [F

    fill-array-data v2, :array_0

    .line 2629
    .local v2, win:[F
    iget-object v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mProjector:Lcom/android/music/discplus/util/Projector;

    invoke-virtual {v3, v0, v4, v2, v4}, Lcom/android/music/discplus/util/Projector;->project([FI[FI)V

    .line 2631
    aget v3, v2, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 2632
    iget-object v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v3}, Lcom/android/music/discplus/view/DiscView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    aget v4, v2, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->y:I

    .line 2633
    return-object v1

    .line 2627
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private loadDefaultTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z
    .locals 5
    .parameter "gl"
    .parameter "loadPosition"

    .prologue
    const/4 v4, 0x1

    .line 2249
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    array-length v2, v2

    if-ge p2, v2, :cond_0

    if-gez p2, :cond_1

    :cond_0
    move v2, v4

    .line 2260
    :goto_0
    return v2

    .line 2253
    :cond_1
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    aget v2, v2, p2

    const/high16 v3, -0x8000

    if-ne v2, v3, :cond_2

    .line 2255
    sget-object v2, Lcom/android/music/discplus/util/DiscPlusUtils;->mDefaultImage:[Landroid/graphics/Bitmap;

    array-length v1, v2

    .line 2256
    .local v1, imgCnt:I
    sget-object v2, Lcom/android/music/discplus/util/DiscPlusUtils;->mDefaultImage:[Landroid/graphics/Bitmap;

    rem-int v3, p2, v1

    aget-object v0, v2, v3

    .line 2257
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    invoke-static {v2, p2, v0}, Lcom/android/music/discplus/view/DiscRenderer;->genTextures([IILandroid/graphics/Bitmap;)V

    move v2, v4

    .line 2258
    goto :goto_0

    .line 2260
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #imgCnt:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadTexture(Ljavax/microedition/khronos/opengles/GL10;IILcom/android/music/discplus/view/DiscView$CurrentView;)Z
    .locals 6
    .parameter "gl"
    .parameter "position"
    .parameter "curSel"
    .parameter "curView"

    .prologue
    const/4 v5, 0x1

    .line 2298
    iget-object v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    array-length v3, v3

    if-ge p2, v3, :cond_0

    if-gez p2, :cond_1

    :cond_0
    move v3, v5

    .line 2317
    :goto_0
    return v3

    .line 2302
    :cond_1
    iget-object v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v3}, Lcom/android/music/discplus/view/DiscView;->getDataManager()Lcom/android/music/discplus/util/DiscPlusManager;

    move-result-object v2

    .line 2303
    .local v2, mgr:Lcom/android/music/discplus/util/DiscPlusManager;
    if-eqz v2, :cond_3

    .line 2305
    invoke-virtual {v2, p2, p3, p4}, Lcom/android/music/discplus/util/DiscPlusManager;->prepareImageload(IILcom/android/music/discplus/view/DiscView$CurrentView;)I

    .line 2306
    iget-object v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    aget v3, v3, p2

    const/high16 v4, -0x8000

    if-ne v3, v4, :cond_3

    .line 2308
    invoke-virtual {v2, p2}, Lcom/android/music/discplus/util/DiscPlusManager;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2309
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 2310
    sget-object v3, Lcom/android/music/discplus/util/DiscPlusUtils;->mDefaultImage:[Landroid/graphics/Bitmap;

    array-length v1, v3

    .line 2311
    .local v1, imgCnt:I
    sget-object v3, Lcom/android/music/discplus/util/DiscPlusUtils;->mDefaultImage:[Landroid/graphics/Bitmap;

    rem-int v4, p2, v1

    aget-object v0, v3, v4

    .line 2313
    .end local v1           #imgCnt:I
    :cond_2
    iget-object v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    invoke-static {v3, p2, v0}, Lcom/android/music/discplus/view/DiscRenderer;->genTextures([IILandroid/graphics/Bitmap;)V

    move v3, v5

    .line 2314
    goto :goto_0

    .line 2317
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private moveDISC(II)I
    .locals 9
    .parameter "direction"
    .parameter "distance"

    .prologue
    const/16 v8, 0x2d0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1586
    iget v4, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    if-lez v4, :cond_0

    .line 1587
    iget v4, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    iput v4, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 1588
    iput v6, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    .line 1591
    :cond_0
    iget v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 1592
    .local v1, mExtraHandle:I
    add-int/2addr v1, p2

    .line 1594
    :goto_0
    if-gez v1, :cond_1

    .line 1595
    add-int/lit16 v1, v1, 0x2d0

    goto :goto_0

    .line 1597
    :cond_1
    rem-int/lit16 v1, v1, 0x2d0

    .line 1599
    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 1600
    iput v6, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    .line 1602
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    iget v4, v4, Lcom/android/music/discplus/view/DiscView;->DISC_INDEX_NUM:I

    sub-int/2addr v4, v7

    if-gez v4, :cond_3

    move v2, v6

    .line 1603
    .local v2, numOfDISC:I
    :goto_1
    sget-object v4, Lcom/android/music/discplus/view/DiscRenderer;->DISC_DEGREE_INFO:[[I

    aget-object v4, v4, v2

    aget v0, v4, v6

    .line 1605
    .local v0, mDivide_Degree:I
    if-ne p1, v7, :cond_4

    .line 1606
    iget v4, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    if-lt v4, v0, :cond_2

    .line 1607
    iget v4, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    sub-int/2addr v4, v0

    iput v4, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    .line 1608
    iput v6, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 1609
    invoke-direct {p0, v7, v7}, Lcom/android/music/discplus/view/DiscRenderer;->setCurrentIndex(IZ)V

    .line 1621
    :cond_2
    :goto_2
    iget v4, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentIndex:I

    return v4

    .line 1602
    .end local v0           #mDivide_Degree:I
    .end local v2           #numOfDISC:I
    :cond_3
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    iget v4, v4, Lcom/android/music/discplus/view/DiscView;->DISC_INDEX_NUM:I

    sub-int/2addr v4, v7

    move v2, v4

    goto :goto_1

    .line 1612
    .restart local v0       #mDivide_Degree:I
    .restart local v2       #numOfDISC:I
    :cond_4
    iget v4, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    sub-int v5, v8, v0

    if-gt v4, v5, :cond_2

    .line 1613
    sub-int v4, v8, v0

    iget v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    sub-int v3, v4, v5

    .line 1614
    .local v3, tempExtraAngle:I
    if-eqz v3, :cond_5

    .line 1615
    sub-int v4, v8, v3

    iput v4, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    .line 1617
    :cond_5
    iput v6, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 1618
    const/4 v4, -0x1

    invoke-direct {p0, v4, v7}, Lcom/android/music/discplus/view/DiscRenderer;->setCurrentIndex(IZ)V

    goto :goto_2
.end method

.method private prepareBlendTextures(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/4 v3, 0x0

    .line 2584
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureMask:[I

    aget v1, v1, v3

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_0

    .line 2585
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v1}, Lcom/android/music/discplus/view/DiscView;->getBlendImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2586
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2587
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureMask:[I

    invoke-static {v1, v3, v0}, Lcom/android/music/discplus/view/DiscRenderer;->genTextures([IILandroid/graphics/Bitmap;)V

    .line 2590
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private prepareDiscDimTextures(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/4 v3, 0x0

    .line 2575
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureNItem:[I

    aget v1, v1, v3

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_0

    .line 2576
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v1}, Lcom/android/music/discplus/view/DiscView;->getDiscNoitem()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2577
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2578
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureNItem:[I

    invoke-static {v1, v3, v0}, Lcom/android/music/discplus/view/DiscRenderer;->genTextures([IILandroid/graphics/Bitmap;)V

    .line 2581
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private prepareTextures(Ljavax/microedition/khronos/opengles/GL10;Lcom/android/music/discplus/view/DiscView$CurrentView;Lcom/android/music/discplus/view/DiscView$AniMationEffect;II)V
    .locals 17
    .parameter "gl"
    .parameter "curView"
    .parameter "effectType"
    .parameter "dataCount"
    .parameter "curPosition"

    .prologue
    .line 2444
    if-lez p4, :cond_17

    .line 2445
    const/4 v5, 0x0

    .line 2446
    .local v5, alldelete:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    move-object v15, v0

    array-length v15, v15

    move v0, v15

    move/from16 v1, p4

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/music/discplus/view/DiscView;->isDataChangeApplied()Z

    move-result v15

    if-nez v15, :cond_6

    .line 2448
    :cond_0
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mAllowSwitchMove:Z

    .line 2449
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTextureLoaded:Z

    .line 2450
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 2451
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTransferDISC:I

    .line 2453
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    move-object v15, v0

    array-length v15, v15

    if-ge v7, v15, :cond_2

    .line 2454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    move-object v15, v0

    aget v15, v15, v7

    const/high16 v16, -0x8000

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_1

    .line 2455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    move-object v15, v0

    invoke-static {v15, v7}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTextures([II)V

    .line 2453
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2459
    :cond_2
    move/from16 v0, p4

    new-array v0, v0, [I

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    .line 2460
    const/4 v7, 0x0

    :goto_1
    move v0, v7

    move/from16 v1, p4

    if-ge v0, v1, :cond_3

    .line 2461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    move-object v15, v0

    const/high16 v16, -0x8000

    aput v16, v15, v7

    .line 2460
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2463
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesToDelete:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 2464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/music/discplus/view/DiscView;->dataChangeApplied()V

    .line 2465
    const/4 v5, 0x1

    .line 2511
    .end local v7           #i:I
    :cond_4
    :goto_2
    const/4 v6, 0x0

    .line 2512
    .local v6, curDistance:I
    const/16 v15, 0x19

    move/from16 v0, p4

    move v1, v15

    if-le v0, v1, :cond_c

    const/16 v15, 0x19

    move v9, v15

    .line 2513
    .local v9, loadSize:I
    :goto_3
    const/16 v15, 0xf

    move/from16 v0, p4

    move v1, v15

    if-le v0, v1, :cond_d

    const/16 v15, 0xe

    move v14, v15

    .line 2515
    .local v14, wingIdx:I
    :goto_4
    sget-object v15, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_NONE:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-object/from16 v0, p3

    move-object v1, v15

    if-ne v0, v1, :cond_5

    const/4 v15, 0x1

    if-eq v5, v15, :cond_5

    sget-object v15, Lcom/android/music/discplus/view/DiscView$CurrentView;->DISC_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-object/from16 v0, p2

    move-object v1, v15

    if-eq v0, v1, :cond_15

    .line 2519
    :cond_5
    sget-object v15, Lcom/android/music/discplus/view/DiscRenderer;->DISC_DEGREE_INFO:[[I

    aget-object v15, v15, v14

    const/16 v16, 0x3

    aget v15, v15, v16

    add-int v13, p5, v15

    .line 2520
    .local v13, virtualIndex:I
    :goto_5
    sget-object v15, Lcom/android/music/discplus/view/DiscRenderer;->DISC_DEGREE_INFO:[[I

    aget-object v15, v15, v14

    const/16 v16, 0x3

    aget v15, v15, v16

    sub-int v15, p5, v15

    if-lt v13, v15, :cond_10

    .line 2523
    move v12, v13

    .line 2524
    .local v12, realIndex:I
    :goto_6
    if-gez v12, :cond_e

    .line 2525
    add-int v12, v12, p4

    goto :goto_6

    .line 2467
    .end local v6           #curDistance:I
    .end local v9           #loadSize:I
    .end local v12           #realIndex:I
    .end local v13           #virtualIndex:I
    .end local v14           #wingIdx:I
    :cond_6
    const/16 v15, 0x32

    move/from16 v0, p4

    move v1, v15

    if-le v0, v1, :cond_4

    .line 2468
    add-int/lit8 v10, p5, 0x19

    .line 2469
    .local v10, postDelPosition:I
    const/16 v15, 0x19

    sub-int v11, p5, v15

    .line 2471
    .local v11, preDelPosition:I
    rem-int v10, v10, p4

    .line 2473
    :goto_7
    if-gez v11, :cond_7

    .line 2475
    add-int v11, v11, p4

    goto :goto_7

    .line 2477
    :cond_7
    rem-int v11, v11, p4

    .line 2479
    sget-object v15, Lcom/android/music/discplus/view/DiscView$CurrentView;->TOP_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-object/from16 v0, p2

    move-object v1, v15

    if-ne v0, v1, :cond_a

    .line 2480
    move v7, v10

    .restart local v7       #i:I
    :goto_8
    move v0, v7

    move/from16 v1, p4

    if-ge v0, v1, :cond_4

    .line 2482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    move-object v15, v0

    aget v15, v15, v7

    const/high16 v16, -0x8000

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_8

    .line 2484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    move-object v15, v0

    invoke-static {v15, v7}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTextures([II)V

    .line 2485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    move-object v15, v0

    const/high16 v16, -0x8000

    aput v16, v15, v7

    .line 2486
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTextureLoaded:Z

    .line 2488
    :cond_8
    if-eq v7, v11, :cond_4

    .line 2490
    const/4 v15, 0x1

    sub-int v15, p4, v15

    if-ne v7, v15, :cond_9

    .line 2491
    const/4 v7, -0x1

    .line 2480
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 2494
    .end local v7           #i:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    move-object v15, v0

    aget v15, v15, v10

    const/high16 v16, -0x8000

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_b

    .line 2496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    move-object v15, v0

    invoke-static {v15, v10}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTextures([II)V

    .line 2497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    move-object v15, v0

    const/high16 v16, -0x8000

    aput v16, v15, v10

    .line 2498
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTextureLoaded:Z

    .line 2501
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    move-object v15, v0

    aget v15, v15, v11

    const/high16 v16, -0x8000

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_4

    .line 2503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    move-object v15, v0

    invoke-static {v15, v11}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTextures([II)V

    .line 2504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    move-object v15, v0

    const/high16 v16, -0x8000

    aput v16, v15, v11

    .line 2505
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTextureLoaded:Z

    goto/16 :goto_2

    .end local v10           #postDelPosition:I
    .end local v11           #preDelPosition:I
    .restart local v6       #curDistance:I
    :cond_c
    move/from16 v9, p4

    .line 2512
    goto/16 :goto_3

    .line 2513
    .restart local v9       #loadSize:I
    :cond_d
    const/4 v15, 0x1

    sub-int v15, p4, v15

    move v14, v15

    goto/16 :goto_4

    .line 2527
    .restart local v12       #realIndex:I
    .restart local v13       #virtualIndex:I
    .restart local v14       #wingIdx:I
    :cond_e
    rem-int v12, v12, p4

    .line 2529
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mInitCreate:Z

    move v15, v0

    if-nez v15, :cond_f

    .line 2530
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/music/discplus/view/DiscRenderer;->loadDefaultTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    .line 2521
    :goto_9
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_5

    .line 2532
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTexture(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 2533
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, p5

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/music/discplus/view/DiscRenderer;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;IILcom/android/music/discplus/view/DiscView$CurrentView;)Z

    goto :goto_9

    .line 2536
    .end local v12           #realIndex:I
    :cond_10
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mAllowSwitchMove:Z

    .line 2561
    .end local v13           #virtualIndex:I
    :cond_11
    :goto_a
    if-ge v6, v9, :cond_12

    sget-object v15, Lcom/android/music/discplus/view/DiscView$CurrentView;->DISC_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-object/from16 v0, p2

    move-object v1, v15

    if-eq v0, v1, :cond_13

    .line 2563
    :cond_12
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTextureLoaded:Z

    .line 2571
    .end local v5           #alldelete:Z
    .end local v6           #curDistance:I
    .end local v9           #loadSize:I
    .end local v14           #wingIdx:I
    :cond_13
    :goto_b
    return-void

    .line 2556
    .restart local v5       #alldelete:Z
    .restart local v6       #curDistance:I
    .local v8, loadPosition:I
    .restart local v9       #loadSize:I
    .restart local v14       #wingIdx:I
    :cond_14
    add-int/lit8 v6, v6, 0x1

    .line 2539
    .end local v8           #loadPosition:I
    :cond_15
    if-ge v6, v9, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/music/discplus/view/DiscView;->getAnimationEffect()Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-result-object v15

    sget-object v16, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_NONE:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-object v0, v15

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_11

    .line 2542
    add-int v8, p5, v6

    .line 2543
    .restart local v8       #loadPosition:I
    rem-int v8, v8, p4

    .line 2545
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTexture(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 2546
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    move/from16 v3, p5

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/music/discplus/view/DiscRenderer;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;IILcom/android/music/discplus/view/DiscView$CurrentView;)Z

    .line 2548
    sub-int v8, p5, v6

    .line 2549
    :goto_c
    if-gez v8, :cond_16

    add-int v8, v8, p4

    goto :goto_c

    .line 2550
    :cond_16
    rem-int v8, v8, p4

    .line 2552
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTexture(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 2553
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    move/from16 v3, p5

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/music/discplus/view/DiscRenderer;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;IILcom/android/music/discplus/view/DiscView$CurrentView;)Z

    move-result v15

    if-eqz v15, :cond_14

    goto :goto_a

    .line 2566
    .end local v5           #alldelete:Z
    .end local v6           #curDistance:I
    .end local v8           #loadPosition:I
    .end local v9           #loadSize:I
    .end local v14           #wingIdx:I
    :cond_17
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mAllowSwitchMove:Z

    .line 2567
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTextureLoaded:Z

    .line 2568
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 2569
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTransferDISC:I

    goto :goto_b
.end method

.method private prepareTopTextures(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/4 v3, 0x0

    .line 2593
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureTop:[I

    aget v1, v1, v3

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_0

    .line 2594
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v1}, Lcom/android/music/discplus/view/DiscView;->getTopImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2595
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2596
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureTop:[I

    invoke-static {v1, v3, v0}, Lcom/android/music/discplus/view/DiscRenderer;->genTextures([IILandroid/graphics/Bitmap;)V

    .line 2599
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public static native renderFrame([I[I[I[F[F[I[F[F[F[I[I[I[I)V
.end method

.method private requestRender()V
    .locals 2

    .prologue
    .line 710
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v1}, Lcom/android/music/discplus/view/DiscView;->getSurfaceView()Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    move-result-object v0

    .line 711
    .local v0, surface:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->getRenderMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 712
    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->requestRender()V

    .line 714
    :cond_0
    return-void
.end method

.method private rollingBy()V
    .locals 15

    .prologue
    const/16 v10, 0x2d0

    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 1455
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingMode:I

    if-eqz v8, :cond_1

    .line 1456
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingDegree:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 1457
    .local v7, rollRange:I
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    iget v8, v8, Lcom/android/music/discplus/view/DiscView;->DISC_INDEX_NUM:I

    sub-int/2addr v8, v12

    if-gez v8, :cond_4

    move v5, v13

    .line 1458
    .local v5, numOfDISC:I
    :goto_0
    sget-object v8, Lcom/android/music/discplus/view/DiscRenderer;->DISC_DEGREE_INFO:[[I

    aget-object v8, v8, v5

    aget v6, v8, v13

    .line 1461
    .local v6, rollAngle:I
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentMovingMode:I

    if-eqz v8, :cond_6

    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentMovingMode:I

    iget v9, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingMode:I

    if-eq v8, v9, :cond_6

    .line 1462
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    if-lez v8, :cond_0

    .line 1463
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    iput v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 1464
    iput v13, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    .line 1467
    :cond_0
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingMode:I

    if-ne v8, v12, :cond_5

    .line 1468
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    sub-int v8, v10, v8

    sub-int v8, v6, v8

    iput v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 1469
    const/4 v8, -0x1

    invoke-direct {p0, v8, v13}, Lcom/android/music/discplus/view/DiscRenderer;->setCurrentIndex(IZ)V

    .line 1475
    :goto_1
    iput v7, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferDISC:I

    .line 1476
    iput v13, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    .line 1513
    :goto_2
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingMode:I

    iput v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentMovingMode:I

    .line 1514
    iput v13, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingMode:I

    .line 1517
    .end local v5           #numOfDISC:I
    .end local v6           #rollAngle:I
    .end local v7           #rollRange:I
    :cond_1
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentMovingMode:I

    if-eqz v8, :cond_3

    .line 1518
    iget v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferDISC:I

    .line 1519
    .local v3, lTransferDISC:I
    const/4 v0, 0x1

    .line 1534
    .local v0, MotionGap:I
    const/16 v8, 0x73

    if-lt v3, v8, :cond_7

    .line 1535
    const/16 v0, 0x18

    .line 1541
    :goto_3
    if-eqz v3, :cond_9

    .line 1542
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentMovingMode:I

    if-ne v8, v12, :cond_8

    .line 1543
    invoke-direct {p0, v12, v0}, Lcom/android/music/discplus/view/DiscRenderer;->moveDISC(II)I

    .line 1548
    :cond_2
    :goto_4
    sub-int/2addr v3, v0

    .line 1549
    iput v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferDISC:I

    .line 1583
    .end local v0           #MotionGap:I
    .end local v3           #lTransferDISC:I
    :cond_3
    :goto_5
    return-void

    .line 1457
    .restart local v7       #rollRange:I
    :cond_4
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    iget v8, v8, Lcom/android/music/discplus/view/DiscView;->DISC_INDEX_NUM:I

    sub-int/2addr v8, v12

    move v5, v8

    goto :goto_0

    .line 1471
    .restart local v5       #numOfDISC:I
    .restart local v6       #rollAngle:I
    :cond_5
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    sub-int v8, v6, v8

    sub-int v8, v10, v8

    iput v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 1472
    invoke-direct {p0, v12, v13}, Lcom/android/music/discplus/view/DiscRenderer;->setCurrentIndex(IZ)V

    goto :goto_1

    .line 1509
    :cond_6
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferDISC:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferDISC:I

    goto :goto_2

    .line 1537
    .end local v5           #numOfDISC:I
    .end local v6           #rollAngle:I
    .end local v7           #rollRange:I
    .restart local v0       #MotionGap:I
    .restart local v3       #lTransferDISC:I
    :cond_7
    const-wide v8, 0x3fc999999999999aL

    int-to-double v10, v3

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/lit8 v0, v8, 0x1

    goto :goto_3

    .line 1544
    :cond_8
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentMovingMode:I

    if-ne v8, v14, :cond_2

    .line 1545
    neg-int v8, v0

    invoke-direct {p0, v14, v8}, Lcom/android/music/discplus/view/DiscRenderer;->moveDISC(II)I

    goto :goto_4

    .line 1552
    :cond_9
    iget-boolean v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetDragMode:Z

    if-eq v8, v12, :cond_3

    .line 1553
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    iget v8, v8, Lcom/android/music/discplus/view/DiscView;->DISC_INDEX_NUM:I

    sub-int/2addr v8, v12

    if-gez v8, :cond_a

    move v5, v13

    .line 1554
    .restart local v5       #numOfDISC:I
    :goto_6
    sget-object v8, Lcom/android/music/discplus/view/DiscRenderer;->DISC_DEGREE_INFO:[[I

    aget-object v8, v8, v5

    aget v4, v8, v13

    .line 1555
    .local v4, mDivide_Degree:I
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    rem-int v2, v8, v4

    .line 1556
    .local v2, extraVal:I
    if-eqz v2, :cond_e

    .line 1557
    const/4 v1, 0x0

    .line 1558
    .local v1, extraAngle:I
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentMovingMode:I

    if-ne v8, v12, :cond_c

    .line 1559
    sub-int v1, v4, v2

    .line 1560
    div-int/lit8 v8, v4, 0x2

    if-le v1, v8, :cond_b

    .line 1561
    sub-int v8, v4, v1

    iput v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingDegree:I

    .line 1562
    iput v14, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingMode:I

    goto :goto_5

    .line 1553
    .end local v1           #extraAngle:I
    .end local v2           #extraVal:I
    .end local v4           #mDivide_Degree:I
    .end local v5           #numOfDISC:I
    :cond_a
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    iget v8, v8, Lcom/android/music/discplus/view/DiscView;->DISC_INDEX_NUM:I

    sub-int/2addr v8, v12

    move v5, v8

    goto :goto_6

    .line 1564
    .restart local v1       #extraAngle:I
    .restart local v2       #extraVal:I
    .restart local v4       #mDivide_Degree:I
    .restart local v5       #numOfDISC:I
    :cond_b
    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingDegree:I

    .line 1565
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentMovingMode:I

    iput v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingMode:I

    goto :goto_5

    .line 1568
    :cond_c
    div-int/lit8 v8, v4, 0x2

    if-le v2, v8, :cond_d

    .line 1569
    sub-int v8, v4, v2

    iput v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingDegree:I

    .line 1570
    iput v12, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingMode:I

    goto :goto_5

    .line 1572
    :cond_d
    iput v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingDegree:I

    .line 1573
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentMovingMode:I

    iput v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingMode:I

    goto :goto_5

    .line 1577
    .end local v1           #extraAngle:I
    :cond_e
    iput v13, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentMovingMode:I

    .line 1578
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v8}, Lcom/android/music/discplus/view/DiscView;->requestDiscStop()V

    goto :goto_5
.end method

.method private saveCurSelRect(IFFF)V
    .locals 2
    .parameter "idx"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 2602
    new-instance v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/music/discplus/view/DiscRenderer$CDRange;-><init>(Lcom/android/music/discplus/view/DiscRenderer$1;)V

    .line 2603
    .local v0, cdr:Lcom/android/music/discplus/view/DiscRenderer$CDRange;
    iput p1, v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;->idx:I

    .line 2604
    iput p2, v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;->x:F

    .line 2605
    iput p3, v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;->y:F

    .line 2606
    iput p4, v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;->z:F

    .line 2607
    invoke-direct {p0}, Lcom/android/music/discplus/view/DiscRenderer;->getObjectRect()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;->rect:Landroid/graphics/Rect;

    .line 2608
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesRange:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2609
    return-void
.end method

.method private setCurrentIndex(IZ)V
    .locals 2
    .parameter "step"
    .parameter "update"

    .prologue
    .line 1625
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v1}, Lcom/android/music/discplus/view/DiscView;->getTotalCount()I

    move-result v0

    .line 1626
    .local v0, count:I
    if-lez v0, :cond_1

    .line 1627
    iget v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentIndex:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentIndex:I

    .line 1628
    :goto_0
    iget v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentIndex:I

    if-gez v1, :cond_0

    .line 1629
    iget v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentIndex:I

    goto :goto_0

    .line 1631
    :cond_0
    iget v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentIndex:I

    rem-int/2addr v1, v0

    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentIndex:I

    .line 1633
    :cond_1
    if-eqz p2, :cond_2

    .line 1634
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v1}, Lcom/android/music/discplus/view/DiscView;->updateText()V

    .line 1636
    :cond_2
    return-void
.end method

.method private setTransferData(Lcom/android/music/discplus/view/DiscView$CurrentView;Lcom/android/music/discplus/view/DiscView$AniMationEffect;Lcom/android/music/discplus/view/DiscView$AniMationStatus;III)V
    .locals 18
    .parameter "curView"
    .parameter "effectType"
    .parameter "aniStatus"
    .parameter "totalCount"
    .parameter "drawCount"
    .parameter "curSel"

    .prologue
    .line 1772
    const/4 v13, 0x0

    .line 1773
    .local v13, GL_TOPSCAL:I
    const/4 v11, 0x1

    .line 1774
    .local v11, GL_MAINHEIGHT:I
    const/4 v12, 0x2

    .line 1775
    .local v12, GL_MAINXANGLE:I
    const/4 v5, 0x3

    .line 1776
    .local v5, GL_DISCXANGLE:I
    const/4 v6, 0x4

    .line 1777
    .local v6, GL_DISCYANGLE:I
    const/4 v8, 0x5

    .line 1778
    .local v8, GL_DISCZANGLE:I
    const/4 v7, 0x6

    .line 1780
    .local v7, GL_DISCYPERCENT:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferFloatData:[F

    move-object v15, v0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTopScale:F

    move/from16 v17, v0

    aput v17, v15, v16

    .line 1781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferFloatData:[F

    move-object v15, v0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mHeight:F

    move/from16 v17, v0

    aput v17, v15, v16

    .line 1782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferFloatData:[F

    move-object v15, v0

    const/16 v16, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mMainXAngle:F

    move/from16 v17, v0

    aput v17, v15, v16

    .line 1783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferFloatData:[F

    move-object v15, v0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscXAngle:F

    move/from16 v17, v0

    aput v17, v15, v16

    .line 1784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferFloatData:[F

    move-object v15, v0

    const/16 v16, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscYAngle:F

    move/from16 v17, v0

    aput v17, v15, v16

    .line 1785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferFloatData:[F

    move-object v15, v0

    const/16 v16, 0x5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscZAngle:F

    move/from16 v17, v0

    aput v17, v15, v16

    .line 1786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferFloatData:[F

    move-object v15, v0

    const/16 v16, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mYDegree:F

    move/from16 v17, v0

    aput v17, v15, v16

    .line 1789
    const/4 v9, 0x0

    .line 1790
    .local v9, GL_DRAWCOUNT:I
    const/4 v3, 0x1

    .line 1791
    .local v3, GL_CURITEM:I
    const/4 v4, 0x2

    .line 1792
    .local v4, GL_CURVIEW:I
    const/4 v10, 0x3

    .line 1793
    .local v10, GL_EFFECT:I
    const/4 v2, 0x4

    .line 1794
    .local v2, GL_ANISTATUS:I
    const/4 v14, 0x5

    .line 1796
    .local v14, GL_TOTALCOUNT:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x0

    aput p5, v15, v16

    .line 1797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x1

    aput p6, v15, v16

    .line 1805
    sget-object v15, Lcom/android/music/discplus/view/DiscView$CurrentView;->DISC_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-object/from16 v0, p1

    move-object v1, v15

    if-ne v0, v1, :cond_3

    .line 1806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x2

    const/16 v17, 0x0

    aput v17, v15, v16

    .line 1813
    :cond_0
    :goto_0
    sget-object v15, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_NONE:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-object/from16 v0, p2

    move-object v1, v15

    if-ne v0, v1, :cond_5

    .line 1814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x3

    const/16 v17, 0x0

    aput v17, v15, v16

    .line 1833
    :cond_1
    :goto_1
    sget-object v15, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_PENDING:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    move-object/from16 v0, p3

    move-object v1, v15

    if-ne v0, v1, :cond_d

    .line 1834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x4

    const/16 v17, 0x0

    aput v17, v15, v16

    .line 1841
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x5

    aput p4, v15, v16

    .line 1842
    return-void

    .line 1807
    :cond_3
    sget-object v15, Lcom/android/music/discplus/view/DiscView$CurrentView;->TOP_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-object/from16 v0, p1

    move-object v1, v15

    if-ne v0, v1, :cond_4

    .line 1808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x2

    const/16 v17, 0x1

    aput v17, v15, v16

    goto :goto_0

    .line 1809
    :cond_4
    sget-object v15, Lcom/android/music/discplus/view/DiscView$CurrentView;->LIST_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-object/from16 v0, p1

    move-object v1, v15

    if-ne v0, v1, :cond_0

    .line 1810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x2

    const/16 v17, 0x2

    aput v17, v15, v16

    goto :goto_0

    .line 1815
    :cond_5
    sget-object v15, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_LOADING:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-object/from16 v0, p2

    move-object v1, v15

    if-ne v0, v1, :cond_6

    .line 1816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x3

    const/16 v17, 0x1

    aput v17, v15, v16

    goto :goto_1

    .line 1817
    :cond_6
    sget-object v15, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_DISMISS:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-object/from16 v0, p2

    move-object v1, v15

    if-ne v0, v1, :cond_7

    .line 1818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x3

    const/16 v17, 0x2

    aput v17, v15, v16

    goto :goto_1

    .line 1819
    :cond_7
    sget-object v15, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_STOP:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-object/from16 v0, p2

    move-object v1, v15

    if-ne v0, v1, :cond_8

    .line 1820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x3

    const/16 v17, 0x3

    aput v17, v15, v16

    goto :goto_1

    .line 1821
    :cond_8
    sget-object v15, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_ROLLING:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-object/from16 v0, p2

    move-object v1, v15

    if-ne v0, v1, :cond_9

    .line 1822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x3

    const/16 v17, 0x4

    aput v17, v15, v16

    goto/16 :goto_1

    .line 1823
    :cond_9
    sget-object v15, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_TOPTODISC:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-object/from16 v0, p2

    move-object v1, v15

    if-ne v0, v1, :cond_a

    .line 1824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x3

    const/16 v17, 0x5

    aput v17, v15, v16

    goto/16 :goto_1

    .line 1825
    :cond_a
    sget-object v15, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_DISCTOTOP:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-object/from16 v0, p2

    move-object v1, v15

    if-ne v0, v1, :cond_b

    .line 1826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x3

    const/16 v17, 0x6

    aput v17, v15, v16

    goto/16 :goto_1

    .line 1827
    :cond_b
    sget-object v15, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_DISCTOLIST:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-object/from16 v0, p2

    move-object v1, v15

    if-ne v0, v1, :cond_c

    .line 1828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x3

    const/16 v17, 0x7

    aput v17, v15, v16

    goto/16 :goto_1

    .line 1829
    :cond_c
    sget-object v15, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_LISTTODISC:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-object/from16 v0, p2

    move-object v1, v15

    if-ne v0, v1, :cond_1

    .line 1830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x3

    const/16 v17, 0x8

    aput v17, v15, v16

    goto/16 :goto_1

    .line 1835
    :cond_d
    sget-object v15, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_RUNNING:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    move-object/from16 v0, p3

    move-object v1, v15

    if-ne v0, v1, :cond_e

    .line 1836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x4

    const/16 v17, 0x1

    aput v17, v15, v16

    goto/16 :goto_2

    .line 1837
    :cond_e
    sget-object v15, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_FINISHED:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    move-object/from16 v0, p3

    move-object v1, v15

    if-ne v0, v1, :cond_2

    .line 1838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x4

    const/16 v17, 0x2

    aput v17, v15, v16

    goto/16 :goto_2
.end method

.method private sortTargetIdx(I)I
    .locals 19
    .parameter "dataCount"

    .prologue
    .line 1674
    const/4 v5, 0x1

    .line 1675
    .local v5, discCount:I
    if-lez p1, :cond_0

    move/from16 v5, p1

    .line 1676
    :cond_0
    const/4 v4, 0x0

    .line 1678
    .local v4, devideidx:I
    const/16 v15, 0xf

    if-ge v5, v15, :cond_2

    const/4 v15, 0x1

    sub-int v4, v5, v15

    .line 1681
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/discplus/view/DiscRenderer;->getCurrentSelection()I

    move-result v2

    .line 1682
    .local v2, curSel:I
    sget-object v15, Lcom/android/music/discplus/view/DiscRenderer;->DISC_DEGREE_INFO:[[I

    aget-object v15, v15, v4

    const/16 v16, 0x0

    aget v3, v15, v16

    .line 1683
    .local v3, devide:I
    const/16 v15, 0xf

    if-lt v5, v15, :cond_3

    const/16 v15, 0xf

    move v7, v15

    .line 1685
    .local v7, indexSize:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    move/from16 v16, v0

    add-int v11, v15, v16

    .line 1688
    .local v11, rollingAngle:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetX:[F

    move-object v15, v0

    array-length v15, v15

    if-eq v15, v7, :cond_1

    .line 1689
    new-array v15, v7, [I

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    .line 1690
    new-array v15, v7, [I

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTargetIdx:[I

    .line 1691
    new-array v15, v7, [F

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTargetX:[F

    .line 1692
    new-array v15, v7, [F

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTargetY:[F

    .line 1693
    new-array v15, v7, [F

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTargetZ:[F

    .line 1694
    new-array v15, v7, [F

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTargetScale:[F

    .line 1695
    new-array v15, v7, [I

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTargetDegree:[I

    .line 1698
    :cond_1
    sget-object v15, Lcom/android/music/discplus/view/DiscRenderer;->DISC_DEGREE_INFO:[[I

    aget-object v15, v15, v4

    const/16 v16, 0x3

    aget v15, v15, v16

    add-int v14, v2, v15

    .line 1701
    .local v14, virtualIndex:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    if-ge v6, v7, :cond_a

    .line 1702
    move v10, v14

    .line 1703
    .local v10, realIndex:I
    :goto_3
    if-gez v10, :cond_4

    .line 1704
    add-int/2addr v10, v5

    goto :goto_3

    .line 1679
    .end local v2           #curSel:I
    .end local v3           #devide:I
    .end local v6           #i:I
    .end local v7           #indexSize:I
    .end local v10           #realIndex:I
    .end local v11           #rollingAngle:I
    .end local v14           #virtualIndex:I
    :cond_2
    const/16 v4, 0xe

    goto :goto_0

    .restart local v2       #curSel:I
    .restart local v3       #devide:I
    :cond_3
    move v7, v5

    .line 1683
    goto :goto_1

    .line 1706
    .restart local v6       #i:I
    .restart local v7       #indexSize:I
    .restart local v10       #realIndex:I
    .restart local v11       #rollingAngle:I
    .restart local v14       #virtualIndex:I
    :cond_4
    rem-int/2addr v10, v5

    .line 1707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    move-object v15, v0

    aput v6, v15, v6

    .line 1708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetIdx:[I

    move-object v15, v0

    aput v10, v15, v6

    .line 1710
    sget-object v15, Lcom/android/music/discplus/view/DiscRenderer;->DISC_DEGREE_INFO:[[I

    aget-object v15, v15, v4

    const/16 v16, 0x1

    aget v15, v15, v16

    add-int v9, v11, v15

    .line 1711
    .local v9, lRollingAngle:I
    mul-int v15, v6, v3

    add-int/2addr v15, v9

    sget-object v16, Lcom/android/music/discplus/view/DiscRenderer;->DISC_DEGREE_INFO:[[I

    aget-object v16, v16, v4

    const/16 v17, 0x2

    aget v16, v16, v17

    add-int v12, v15, v16

    .line 1712
    .local v12, routeidx:I
    rem-int/lit16 v12, v12, 0x2d0

    .line 1713
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransAngle:I

    move v15, v0

    if-eqz v15, :cond_9

    if-eq v14, v2, :cond_9

    .line 1714
    const/16 v15, 0x168

    if-ge v12, v15, :cond_7

    .line 1715
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransAngle:I

    move v15, v0

    add-int/2addr v12, v15

    const/16 v15, 0x168

    if-le v12, v15, :cond_6

    .line 1716
    const/16 v12, 0x168

    .line 1717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetZ:[F

    move-object v15, v0

    const v16, -0x3ff9999a

    aput v16, v15, v6

    .line 1732
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetX:[F

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    move-object/from16 v16, v0

    aget-object v16, v16, v12

    const/16 v17, 0x0

    aget v16, v16, v17

    aput v16, v15, v6

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetY:[F

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    move-object/from16 v16, v0

    aget-object v16, v16, v12

    const/16 v17, 0x1

    aget v16, v16, v17

    aput v16, v15, v6

    .line 1739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetScale:[F

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    move-object/from16 v16, v0

    aget v16, v16, v12

    aput v16, v15, v6

    .line 1742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetDegree:[I

    move-object v15, v0

    aput v12, v15, v6

    .line 1743
    add-int/lit8 v14, v14, -0x1

    .line 1701
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 1719
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetZ:[F

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    move-object/from16 v16, v0

    aget-object v16, v16, v12

    const/16 v17, 0x2

    aget v16, v16, v17

    aput v16, v15, v6

    goto :goto_4

    .line 1721
    :cond_7
    const/16 v15, 0x168

    if-le v12, v15, :cond_5

    .line 1722
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransAngle:I

    move v15, v0

    sub-int/2addr v12, v15

    const/16 v15, 0x168

    if-ge v12, v15, :cond_8

    .line 1723
    const/16 v12, 0x168

    .line 1724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetZ:[F

    move-object v15, v0

    const v16, -0x3ff9999a

    aput v16, v15, v6

    goto :goto_4

    .line 1726
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetZ:[F

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    move-object/from16 v16, v0

    aget-object v16, v16, v12

    const/16 v17, 0x2

    aget v16, v16, v17

    aput v16, v15, v6

    goto/16 :goto_4

    .line 1730
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetZ:[F

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    move-object/from16 v16, v0

    aget-object v16, v16, v12

    const/16 v17, 0x2

    aget v16, v16, v17

    aput v16, v15, v6

    goto/16 :goto_4

    .line 1746
    .end local v9           #lRollingAngle:I
    .end local v10           #realIndex:I
    .end local v12           #routeidx:I
    :cond_a
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v7, :cond_e

    .line 1747
    const/4 v8, 0x0

    .local v8, j:I
    :goto_6
    sub-int v15, v7, v6

    const/16 v16, 0x1

    sub-int v15, v15, v16

    if-ge v8, v15, :cond_d

    .line 1748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetZ:[F

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    move-object/from16 v16, v0

    aget v16, v16, v8

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetZ:[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, 0x1

    aget v17, v17, v18

    aget v16, v16, v17

    cmpl-float v15, v15, v16

    if-lez v15, :cond_c

    .line 1750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    move-object v15, v0

    aget v13, v15, v8

    .line 1751
    .local v13, tempIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    move-object/from16 v16, v0

    add-int/lit8 v17, v8, 0x1

    aget v16, v16, v17

    aput v16, v15, v8

    .line 1752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    move-object v15, v0

    add-int/lit8 v16, v8, 0x1

    aput v13, v15, v16

    .line 1747
    .end local v13           #tempIndex:I
    :cond_b
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1753
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetZ:[F

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    move-object/from16 v16, v0

    aget v16, v16, v8

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetZ:[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, 0x1

    aget v17, v17, v18

    aget v16, v16, v17

    cmpl-float v15, v15, v16

    if-nez v15, :cond_b

    .line 1754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetIdx:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    move-object/from16 v16, v0

    aget v16, v16, v8

    aget v15, v15, v16

    if-ne v15, v2, :cond_b

    .line 1756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    move-object v15, v0

    aget v13, v15, v8

    .line 1757
    .restart local v13       #tempIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    move-object/from16 v16, v0

    add-int/lit8 v17, v8, 0x1

    aget v16, v16, v17

    aput v16, v15, v8

    .line 1758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    move-object v15, v0

    add-int/lit8 v16, v8, 0x1

    aput v13, v15, v16

    goto :goto_7

    .line 1746
    .end local v13           #tempIndex:I
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 1764
    .end local v8           #j:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetX:[F

    move-object v15, v0

    array-length v15, v15

    return v15
.end method


# virtual methods
.method public deleteTexture(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 5
    .parameter "gl"
    .parameter "position"

    .prologue
    const/high16 v4, -0x8000

    .line 2230
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    array-length v2, v2

    if-ge p2, v2, :cond_0

    if-gez p2, :cond_1

    .line 2246
    :cond_0
    :goto_0
    return-void

    .line 2233
    :cond_1
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    aget v2, v2, p2

    if-eq v2, v4, :cond_0

    .line 2235
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2236
    .local v1, index:I
    if-ltz v1, :cond_0

    .line 2237
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2238
    .local v0, delpos:I
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    aget v2, v2, v0

    if-eq v2, v4, :cond_2

    .line 2239
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    invoke-static {v2, v0}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTextures([II)V

    .line 2240
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    aput v4, v2, v0

    .line 2241
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureLoaded:Z

    .line 2243
    :cond_2
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public distanceObject([III)V
    .locals 20
    .parameter "obj"
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 2637
    const/4 v3, 0x1

    .line 2638
    .local v3, LEFT_SIDE:I
    const/4 v5, 0x2

    .line 2639
    .local v5, RIGHT_SIDE:I
    const/4 v4, 0x3

    .line 2640
    .local v4, OUTOFRANGE:I
    const/high16 v14, -0x8000

    .line 2641
    .local v14, idx:I
    const/4 v12, 0x3

    .line 2642
    .local v12, direction:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesRange:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 2643
    .local v16, size:I
    const/4 v11, 0x0

    .line 2644
    .local v11, count:I
    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v7, v0

    .line 2645
    .local v7, compareIdx:[I
    move/from16 v0, v16

    new-array v0, v0, [F

    move-object v9, v0

    .line 2646
    .local v9, comparex:[F
    move/from16 v0, v16

    new-array v0, v0, [F

    move-object v10, v0

    .line 2647
    .local v10, comparey:[F
    move/from16 v0, v16

    new-array v0, v0, [F

    move-object v8, v0

    .line 2648
    .local v8, compareZ:[F
    const v17, -0x39e3c000

    .line 2650
    .local v17, tempZ:F
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move v0, v13

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    .line 2651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesRange:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/music/discplus/view/DiscRenderer$CDRange;

    .line 2652
    .local v6, cdr:Lcom/android/music/discplus/view/DiscRenderer$CDRange;
    move-object v0, v6

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;->rect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 2653
    move-object v0, v6

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;->idx:I

    move/from16 v18, v0

    aput v18, v7, v11

    .line 2654
    move-object v0, v6

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;->x:F

    move/from16 v18, v0

    aput v18, v9, v11

    .line 2655
    move-object v0, v6

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;->y:F

    move/from16 v18, v0

    aput v18, v10, v11

    .line 2656
    move-object v0, v6

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;->z:F

    move/from16 v18, v0

    aput v18, v8, v11

    .line 2657
    move-object v0, v6

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;->z:F

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 2658
    add-int/lit8 v11, v11, 0x1

    .line 2650
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2661
    .end local v6           #cdr:Lcom/android/music/discplus/view/DiscRenderer$CDRange;
    :cond_1
    const/4 v15, 0x0

    .local v15, j:I
    :goto_1
    if-ge v15, v11, :cond_2

    .line 2662
    aget v18, v8, v15

    cmpl-float v18, v17, v18

    if-nez v18, :cond_4

    .line 2663
    aget v14, v7, v15

    .line 2664
    aget v18, v9, v15

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_3

    .line 2665
    const/4 v12, 0x2

    .line 2672
    :cond_2
    :goto_2
    const/16 v18, 0x0

    aput v14, p1, v18

    .line 2673
    const/16 v18, 0x1

    aput v12, p1, v18

    .line 2675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesRange:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 2676
    return-void

    .line 2666
    :cond_3
    aget v18, v9, v15

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_2

    .line 2667
    const/4 v12, 0x1

    goto :goto_2

    .line 2661
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_1
.end method

.method public dragDISCStop()V
    .locals 1

    .prologue
    .line 1670
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetDragMode:Z

    .line 1671
    return-void
.end method

.method public getConfigSpec()[I
    .locals 2

    .prologue
    .line 1433
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 1437
    .local v0, configSpec:[I
    return-object v0

    .line 1433
    nop

    :array_0
    .array-data 0x4
        0x25t 0x30t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method public getCurSelObjectRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 2679
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesRange:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2680
    .local v3, size:I
    const/4 v2, 0x0

    .line 2681
    .local v2, rcObject:Landroid/graphics/Rect;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 2682
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesRange:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;

    .line 2683
    .local v0, cdr:Lcom/android/music/discplus/view/DiscRenderer$CDRange;
    iget v4, v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;->idx:I

    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscRenderer;->getCurrentSelection()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 2684
    iget-object v2, v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;->rect:Landroid/graphics/Rect;

    .line 2688
    .end local v0           #cdr:Lcom/android/music/discplus/view/DiscRenderer$CDRange;
    :cond_0
    return-object v2

    .line 2681
    .restart local v0       #cdr:Lcom/android/music/discplus/view/DiscRenderer$CDRange;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCurrentModelView(Ljavax/microedition/khronos/opengles/GL10;IFFFFFFF)V
    .locals 9
    .parameter "gl"
    .parameter "idx"
    .parameter "scale"
    .parameter "startX"
    .parameter "startY"
    .parameter "startZ"
    .parameter "angleX"
    .parameter "angleY"
    .parameter "angleZ"

    .prologue
    .line 2068
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lcom/android/music/discplus/view/DiscRenderer;->glObject(Ljavax/microedition/khronos/opengles/GL10;FFFFFFF)V

    .line 2071
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mProjector:Lcom/android/music/discplus/util/Projector;

    invoke-virtual {v0, p1}, Lcom/android/music/discplus/util/Projector;->getCurrentModelView(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 2072
    invoke-direct {p0, p2, p4, p5, p6}, Lcom/android/music/discplus/view/DiscRenderer;->saveCurSelRect(IFFF)V

    .line 2073
    return-void
.end method

.method public getCurrentSelection()I
    .locals 3

    .prologue
    .line 2177
    const/4 v1, 0x0

    .line 2178
    .local v1, cur:I
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v2}, Lcom/android/music/discplus/view/DiscView;->getTotalCount()I

    move-result v0

    .line 2180
    .local v0, count:I
    if-lez v0, :cond_1

    .line 2181
    iget v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentIndex:I

    .line 2182
    :goto_0
    if-gez v1, :cond_0

    .line 2183
    add-int/2addr v1, v0

    goto :goto_0

    .line 2185
    :cond_0
    rem-int/2addr v1, v0

    .line 2187
    :cond_1
    return v1
.end method

.method public getMaxDiscCount()I
    .locals 1

    .prologue
    .line 2191
    const/16 v0, 0xf

    return v0
.end method

.method public getMovingMode()I
    .locals 1

    .prologue
    .line 1451
    iget v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentMovingMode:I

    return v0
.end method

.method public glObject(Ljavax/microedition/khronos/opengles/GL10;FFFFFFF)V
    .locals 3
    .parameter "gl"
    .parameter "scale"
    .parameter "startX"
    .parameter "startY"
    .parameter "startZ"
    .parameter "angleX"
    .parameter "angleY"
    .parameter "angleZ"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 2693
    invoke-interface {p1, p3, p4, p5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 2694
    neg-float v0, p6

    invoke-interface {p1, v0, v2, v1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 2695
    invoke-interface {p1, p7, v1, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 2696
    invoke-interface {p1, p8, v1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 2697
    invoke-interface {p1, p2, p2, p2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 2698
    return-void
.end method

.method public final isAllowSwitchMove()Z
    .locals 1

    .prologue
    .line 2779
    iget-boolean v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mAllowSwitchMove:Z

    return v0
.end method

.method public final isTextureLoaded()Z
    .locals 1

    .prologue
    .line 2774
    iget-boolean v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureLoaded:Z

    return v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/high16 v3, -0x8000

    const/4 v2, 0x0

    .line 2712
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2713
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    aget v1, v1, v0

    if-eq v1, v3, :cond_0

    .line 2714
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    invoke-static {v1, v0}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTextures([II)V

    .line 2716
    :cond_0
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    aput v3, v1, v0

    .line 2712
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2720
    :cond_1
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureNItem:[I

    aget v1, v1, v2

    if-eq v1, v3, :cond_2

    .line 2721
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureNItem:[I

    invoke-static {v1, v2}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTextures([II)V

    .line 2723
    :cond_2
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureNItem:[I

    aput v3, v1, v2

    .line 2725
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureMask:[I

    aget v1, v1, v2

    if-eq v1, v3, :cond_3

    .line 2726
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureMask:[I

    invoke-static {v1, v2}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTextures([II)V

    .line 2728
    :cond_3
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureMask:[I

    aput v3, v1, v2

    .line 2730
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureTop:[I

    aget v1, v1, v2

    if-eq v1, v3, :cond_4

    .line 2731
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureTop:[I

    invoke-static {v1, v2}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTextures([II)V

    .line 2733
    :cond_4
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureTop:[I

    aput v3, v1, v2

    .line 2734
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesRange:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2735
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 35
    .parameter "gl"

    .prologue
    .line 1928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/discplus/view/DiscView;->isManagerThreadStop()Z

    move-result v32

    .line 1929
    .local v32, isMgrStop:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/discplus/view/DiscView;->getSurfaceView()Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    move-result-object v34

    .line 1930
    .local v34, surface:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;
    if-nez v32, :cond_0

    if-nez v34, :cond_1

    .line 1998
    :cond_0
    :goto_0
    return-void

    .line 1934
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/discplus/view/DiscView;->isDrawing()Z

    move-result v31

    .line 1935
    .local v31, isDrawing:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mOnTouchReadRange:Z

    move/from16 v33, v0

    .line 1937
    .local v33, onTouchReadRange:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/discplus/view/DiscView;->getCurrentView()Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-result-object v5

    .line 1938
    .local v5, curView:Lcom/android/music/discplus/view/DiscView$CurrentView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/discplus/view/DiscView;->getAnimationEffect()Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-result-object v6

    .line 1939
    .local v6, effectType:Lcom/android/music/discplus/view/DiscView$AniMationEffect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/discplus/view/DiscView;->getAnimationStatus()Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    move-result-object v12

    .line 1941
    .local v12, aniStatus:Lcom/android/music/discplus/view/DiscView$AniMationStatus;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/discplus/view/DiscView;->getTotalCount()I

    move-result v7

    .line 1942
    .local v7, dataCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/discplus/view/DiscView;->getCurrentSelection()I

    move-result v8

    .local v8, curSel:I
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 1944
    invoke-direct/range {v3 .. v8}, Lcom/android/music/discplus/view/DiscRenderer;->prepareTextures(Ljavax/microedition/khronos/opengles/GL10;Lcom/android/music/discplus/view/DiscView$CurrentView;Lcom/android/music/discplus/view/DiscView$AniMationEffect;II)V

    .line 1945
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/music/discplus/view/DiscRenderer;->execAnimationEffect(Lcom/android/music/discplus/view/DiscView$AniMationEffect;I)Z

    move-result v28

    .line 1947
    .local v28, animationDone:Z
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v29

    .line 1948
    .local v29, curTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mNextFrameTime:J

    move-wide v3, v0

    cmp-long v3, v29, v3

    if-gez v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mSetDragMode:Z

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 1950
    :cond_2
    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/music/discplus/view/DiscRenderer;->mLastFrameTime:J

    .line 1951
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mLastFrameTime:J

    move-wide v3, v0

    const-wide/32 v9, 0x17d7840

    add-long/2addr v3, v9

    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/music/discplus/view/DiscRenderer;->mNextFrameTime:J

    .line 1953
    sget-object v3, Lcom/android/music/discplus/view/DiscView$CurrentView;->DISC_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    if-ne v5, v3, :cond_3

    .line 1954
    invoke-direct/range {p0 .. p0}, Lcom/android/music/discplus/view/DiscRenderer;->rollingBy()V

    .line 1957
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move v3, v0

    const/16 v4, 0xc

    if-ge v3, v4, :cond_4

    .line 1958
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    .line 1962
    :cond_4
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/android/music/discplus/view/DiscRenderer;->sortTargetIdx(I)I

    move-result v14

    .local v14, drawCount:I
    move-object/from16 v9, p0

    move-object v10, v5

    move-object v11, v6

    move v13, v7

    move v15, v8

    .line 1963
    invoke-direct/range {v9 .. v15}, Lcom/android/music/discplus/view/DiscRenderer;->setTransferData(Lcom/android/music/discplus/view/DiscView$CurrentView;Lcom/android/music/discplus/view/DiscView$AniMationEffect;Lcom/android/music/discplus/view/DiscView$AniMationStatus;III)V

    .line 1965
    if-eqz v31, :cond_5

    .line 1966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetIdx:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferFloatData:[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetScale:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetDegree:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetX:[F

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetY:[F

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetZ:[F

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureMask:[I

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureNItem:[I

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureTop:[I

    move-object/from16 v27, v0

    invoke-static/range {v15 .. v27}, Lcom/android/music/discplus/view/DiscRenderer;->renderFrame([I[I[I[F[F[I[F[F[F[I[I[I[I)V

    .line 1975
    :cond_5
    const/4 v3, 0x1

    move/from16 v0, v33

    move v1, v3

    if-ne v0, v1, :cond_6

    sget-object v3, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_FINISHED:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    if-ne v12, v3, :cond_6

    sget-object v3, Lcom/android/music/discplus/view/DiscView$CurrentView;->TOP_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    if-eq v5, v3, :cond_6

    .line 1978
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mOnTouchReadRange:Z

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v12

    move/from16 v20, v7

    move/from16 v21, v14

    move/from16 v22, v8

    .line 1979
    invoke-virtual/range {v15 .. v22}, Lcom/android/music/discplus/view/DiscRenderer;->readGLModelView(Ljavax/microedition/khronos/opengles/GL10;Lcom/android/music/discplus/view/DiscView$CurrentView;Lcom/android/music/discplus/view/DiscView$AniMationEffect;Lcom/android/music/discplus/view/DiscView$AniMationStatus;III)V

    .line 1980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/discplus/view/DiscView;->runOnTouchRunnableEnd()V

    .line 1983
    :cond_6
    const/4 v3, 0x1

    move/from16 v0, v28

    move v1, v3

    if-ne v0, v1, :cond_0

    .line 1984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object v3, v0

    sget-object v4, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_NONE:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    invoke-virtual {v3, v4}, Lcom/android/music/discplus/view/DiscView;->setAnimationEffect(Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V

    .line 1985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/discplus/view/DiscView;->runOnAnimationEnd()V

    goto/16 :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 12
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2076
    move v11, p2

    .line 2077
    .local v11, viewWidth:I
    move v10, p3

    .line 2078
    .local v10, viewHeight:I
    const/4 v0, 0x1

    if-ge v11, v0, :cond_0

    const/4 v11, 0x1

    .line 2079
    :cond_0
    const/4 v0, 0x1

    if-ge v10, v0, :cond_1

    const/4 v10, 0x1

    .line 2081
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v11, v10}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 2082
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mProjector:Lcom/android/music/discplus/util/Projector;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/android/music/discplus/util/Projector;->setCurrentView(IIII)V

    .line 2084
    int-to-float v0, v11

    int-to-float v1, v10

    div-float v9, v0, v1

    .line 2085
    .local v9, ratio:F
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 2086
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 2087
    const/high16 v1, -0x3f80

    const/high16 v2, 0x4080

    const/high16 v0, -0x3f80

    div-float v3, v0, v9

    const/high16 v0, 0x4080

    div-float v4, v0, v9

    const/high16 v5, 0x4080

    const/high16 v6, -0x3f80

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 2089
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mProjector:Lcom/android/music/discplus/util/Projector;

    invoke-virtual {v0, p1}, Lcom/android/music/discplus/util/Projector;->getCurrentProjection(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 2091
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 2092
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 2094
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->resetRenderMode()V

    .line 2096
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    iput v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 2097
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferDISC:I

    .line 2102
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    array-length v8, v0

    .line 2103
    .local v8, idsCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v8, :cond_3

    .line 2104
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    aget v0, v0, v7

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_2

    .line 2105
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    invoke-static {v0, v7}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTextures([II)V

    .line 2107
    :cond_2
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    const/high16 v1, -0x8000

    aput v1, v0, v7

    .line 2103
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2110
    :cond_3
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    .line 2112
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureNItem:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_4

    .line 2113
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureNItem:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTextures([II)V

    .line 2115
    :cond_4
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureNItem:[I

    const/4 v1, 0x0

    const/high16 v2, -0x8000

    aput v2, v0, v1

    .line 2117
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureMask:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_5

    .line 2118
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureMask:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTextures([II)V

    .line 2120
    :cond_5
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureMask:[I

    const/4 v1, 0x0

    const/high16 v2, -0x8000

    aput v2, v0, v1

    .line 2122
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureTop:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_6

    .line 2123
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureTop:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTextures([II)V

    .line 2125
    :cond_6
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureTop:[I

    const/4 v1, 0x0

    const/high16 v2, -0x8000

    aput v2, v0, v1

    .line 2127
    invoke-direct {p0, p1}, Lcom/android/music/discplus/view/DiscRenderer;->prepareDiscDimTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 2128
    invoke-direct {p0, p1}, Lcom/android/music/discplus/view/DiscRenderer;->prepareBlendTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 2129
    invoke-direct {p0, p1}, Lcom/android/music/discplus/view/DiscRenderer;->prepareTopTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 2130
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->getTotalCount()I

    move-result v4

    .line 2131
    .local v4, dataCount:I
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->getCurrentSelection()I

    move-result v5

    .line 2132
    .local v5, curSel:I
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->getCurrentView()Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-result-object v2

    .line 2133
    .local v2, curView:Lcom/android/music/discplus/view/DiscView$CurrentView;
    sget-object v3, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_LOADING:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/music/discplus/view/DiscRenderer;->prepareTextures(Ljavax/microedition/khronos/opengles/GL10;Lcom/android/music/discplus/view/DiscView$CurrentView;Lcom/android/music/discplus/view/DiscView$AniMationEffect;II)V

    .line 2136
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 2140
    invoke-static {}, Lcom/android/music/discplus/view/DiscRenderer;->freeHardwareVBO()V

    .line 2148
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mLastFrameTime:J

    .line 2149
    iget-wide v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mLastFrameTime:J

    const-wide/32 v2, 0x17d7840

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mNextFrameTime:J

    .line 2152
    invoke-static {}, Lcom/android/music/discplus/view/DiscRenderer;->genHardwareVBO()V

    .line 2168
    return-void
.end method

.method public readGLModelView(Ljavax/microedition/khronos/opengles/GL10;Lcom/android/music/discplus/view/DiscView$CurrentView;Lcom/android/music/discplus/view/DiscView$AniMationEffect;Lcom/android/music/discplus/view/DiscView$AniMationStatus;III)V
    .locals 14
    .parameter "gl"
    .parameter "curView"
    .parameter "effectType"
    .parameter "aniStatus"
    .parameter "totalCount"
    .parameter "drawCount"
    .parameter "curSel"

    .prologue
    .line 2015
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesRange:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2017
    iget v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mMainXAngle:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 2018
    const/16 v2, 0x1700

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 2019
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 2020
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 2021
    iget v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mMainXAngle:F

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {p1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 2022
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mHeight:F

    const/4 v4, 0x0

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 2024
    if-nez p5, :cond_2

    .line 2025
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    const/4 v3, 0x0

    aget v12, v2, v3

    .line 2026
    .local v12, displayIdx:I
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureNItem:[I

    iget-object v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetIdx:[I

    aget v3, v3, v12

    aget v2, v2, v3

    const/high16 v3, -0x8000

    if-eq v2, v3, :cond_0

    .line 2027
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 2028
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetIdx:[I

    aget v4, v2, v12

    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetScale:[F

    aget v5, v2, v12

    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetX:[F

    aget v6, v2, v12

    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetY:[F

    aget v7, v2, v12

    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetZ:[F

    aget v8, v2, v12

    iget v9, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscXAngle:F

    iget v10, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscYAngle:F

    iget v11, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscZAngle:F

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v11}, Lcom/android/music/discplus/view/DiscRenderer;->getCurrentModelView(Ljavax/microedition/khronos/opengles/GL10;IFFFFFFF)V

    .line 2031
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 2057
    .end local v12           #displayIdx:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 2058
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glFlush()V

    .line 2060
    :cond_1
    return-void

    .line 2034
    :cond_2
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    move v0, v13

    move/from16 v1, p6

    if-ge v0, v1, :cond_0

    .line 2035
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    aget v12, v2, v13

    .line 2036
    .restart local v12       #displayIdx:I
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    iget-object v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetIdx:[I

    aget v3, v3, v12

    aget v2, v2, v3

    const/high16 v3, -0x8000

    if-eq v2, v3, :cond_4

    .line 2037
    sget-object v2, Lcom/android/music/discplus/view/DiscView$CurrentView;->LIST_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-object/from16 v0, p2

    move-object v1, v2

    if-ne v0, v1, :cond_3

    .line 2038
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetIdx:[I

    aget v2, v2, v12

    move v0, v2

    move/from16 v1, p7

    if-ne v0, v1, :cond_4

    .line 2039
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 2040
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetIdx:[I

    aget v4, v2, v12

    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetScale:[F

    aget v5, v2, v12

    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetX:[F

    aget v6, v2, v12

    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetY:[F

    aget v7, v2, v12

    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetZ:[F

    aget v8, v2, v12

    iget v9, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscXAngle:F

    iget v10, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscYAngle:F

    iget v11, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscZAngle:F

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v11}, Lcom/android/music/discplus/view/DiscRenderer;->getCurrentModelView(Ljavax/microedition/khronos/opengles/GL10;IFFFFFFF)V

    .line 2043
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_0

    .line 2046
    :cond_3
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetZ:[F

    aget v2, v2, v12

    const/high16 v3, -0x4000

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    .line 2047
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 2048
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetIdx:[I

    aget v4, v2, v12

    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetScale:[F

    aget v5, v2, v12

    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetX:[F

    aget v6, v2, v12

    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetY:[F

    aget v7, v2, v12

    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetZ:[F

    aget v8, v2, v12

    iget v9, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscXAngle:F

    iget v10, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscYAngle:F

    iget v11, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscZAngle:F

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v11}, Lcom/android/music/discplus/view/DiscRenderer;->getCurrentModelView(Ljavax/microedition/khronos/opengles/GL10;IFFFFFFF)V

    .line 2051
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 2034
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1
.end method

.method public releaseTexture(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2196
    invoke-direct {p0}, Lcom/android/music/discplus/view/DiscRenderer;->requestRender()V

    .line 2197
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->resetRenderMode()V

    .line 2198
    return-void
.end method

.method public ret_Divide_Degree(I)I
    .locals 3
    .parameter "numOfDISC"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2701
    sub-int v0, p1, v2

    if-gez v0, :cond_0

    move p1, v1

    .line 2703
    :goto_0
    sget-object v0, Lcom/android/music/discplus/view/DiscRenderer;->DISC_DEGREE_INFO:[[I

    aget-object v0, v0, p1

    aget v0, v0, v1

    return v0

    .line 2701
    :cond_0
    sub-int v0, p1, v2

    move p1, v0

    goto :goto_0
.end method

.method public setChangeListViewStart()V
    .locals 1

    .prologue
    .line 729
    invoke-direct {p0}, Lcom/android/music/discplus/view/DiscRenderer;->requestRender()V

    .line 730
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->resetRenderMode()V

    .line 731
    return-void
.end method

.method public setCurrentSelection(I)Z
    .locals 1
    .parameter "pos"

    .prologue
    .line 2171
    iput p1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentIndex:I

    .line 2172
    invoke-direct {p0}, Lcom/android/music/discplus/view/DiscRenderer;->requestRender()V

    .line 2173
    const/4 v0, 0x1

    return v0
.end method

.method public showChangeDiscAnimation()V
    .locals 1

    .prologue
    .line 717
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    .line 718
    invoke-direct {p0}, Lcom/android/music/discplus/view/DiscRenderer;->requestRender()V

    .line 719
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->resetRenderMode()V

    .line 720
    return-void
.end method

.method public spinDISCStart(IZ)V
    .locals 1
    .parameter "degree"
    .parameter "isDrag"

    .prologue
    .line 1639
    iget v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingMode:I

    if-nez v0, :cond_2

    .line 1640
    if-gez p1, :cond_3

    .line 1641
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingMode:I

    .line 1651
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1652
    iput p1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingDegree:I

    .line 1655
    :cond_1
    iput-boolean p2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetDragMode:Z

    .line 1657
    :cond_2
    return-void

    .line 1642
    :cond_3
    if-lez p1, :cond_4

    .line 1643
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingMode:I

    goto :goto_0

    .line 1646
    :cond_4
    iget v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentMovingMode:I

    if-nez v0, :cond_0

    .line 1647
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->requestDiscStop()V

    goto :goto_0
.end method

.method public spinDISCStop()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1660
    iget-object v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    iget v3, v3, Lcom/android/music/discplus/view/DiscView;->DISC_INDEX_NUM:I

    sub-int/2addr v3, v5

    if-gez v3, :cond_1

    move v1, v4

    .line 1661
    .local v1, numOfDISC:I
    :goto_0
    sget-object v3, Lcom/android/music/discplus/view/DiscRenderer;->DISC_DEGREE_INFO:[[I

    aget-object v3, v3, v1

    aget v2, v3, v4

    .line 1663
    .local v2, rollAngle:I
    iget v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentMovingMode:I

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 1664
    iget v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferDISC:I

    rem-int v0, v3, v2

    .line 1665
    .local v0, extraDegree:I
    iput v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferDISC:I

    .line 1667
    .end local v0           #extraDegree:I
    :cond_0
    return-void

    .line 1660
    .end local v1           #numOfDISC:I
    .end local v2           #rollAngle:I
    :cond_1
    iget-object v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    iget v3, v3, Lcom/android/music/discplus/view/DiscView;->DISC_INDEX_NUM:I

    sub-int/2addr v3, v5

    move v1, v3

    goto :goto_0
.end method

.method public startTouchRunnable()V
    .locals 1

    .prologue
    .line 723
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mOnTouchReadRange:Z

    .line 724
    invoke-direct {p0}, Lcom/android/music/discplus/view/DiscRenderer;->requestRender()V

    .line 725
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->resetRenderMode()V

    .line 726
    return-void
.end method
