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
.field private static final DISC_DEGREE_INFO:[[I


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

    .line 100
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

    .line 1085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    .line 128
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureNItem:[I

    .line 129
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureMask:[I

    .line 130
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureTop:[I

    .line 637
    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    .line 650
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    .line 651
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetIdx:[I

    .line 652
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetX:[F

    .line 653
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetY:[F

    .line 654
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetZ:[F

    .line 655
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetScale:[F

    .line 656
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetDegree:[I

    .line 658
    new-instance v0, Lcom/android/music/discplus/util/Projector;

    invoke-direct {v0}, Lcom/android/music/discplus/util/Projector;-><init>()V

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mProjector:Lcom/android/music/discplus/util/Projector;

    .line 660
    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 661
    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    .line 662
    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->allover_Angle:I

    .line 663
    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTransAngle:I

    .line 673
    const/4 v0, 0x7

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferFloatData:[F

    .line 674
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    .line 676
    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentIndex:I

    .line 686
    iput-boolean v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mOnTouchReadRange:Z

    .line 687
    iput-boolean v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mOnAnimationStop:Z

    .line 693
    iput-boolean v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mInitCreate:Z

    .line 694
    iput-boolean v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureLoaded:Z

    .line 695
    iput-boolean v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mAllowSwitchMove:Z

    .line 699
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesToDelete:Ljava/util/ArrayList;

    .line 700
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesRange:Ljava/util/ArrayList;

    .line 1152
    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentMovingMode:I

    .line 1153
    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingMode:I

    .line 1154
    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingDegree:I

    .line 1155
    iput-boolean v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetDragMode:Z

    .line 1156
    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferDISC:I

    .line 1086
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    .line 1087
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTopScale:F

    .line 1088
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mMainXAngle:F

    .line 1089
    const/high16 v0, -0x3e60

    iput v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscXAngle:F

    .line 1090
    iput v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscYAngle:F

    .line 1091
    iput v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscZAngle:F

    .line 1092
    const v0, 0x3fcf5c29

    iput v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mHeight:F

    .line 1093
    iput v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mYDegree:F

    .line 1094
    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 1095
    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    .line 1104
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesRange:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1105
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1106
    iput-boolean v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mOnAnimationStop:Z

    .line 1112
    iput-boolean v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mInitCreate:Z

    .line 1113
    iput-boolean v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureLoaded:Z

    .line 1116
    filled-new-array {v3, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    .line 1117
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    .line 1125
    filled-new-array {v3, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesOrg:[[F

    .line 1126
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScaleOrg:[F

    .line 1128
    const/16 v0, 0xc

    filled-new-array {v0, v3, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[F

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesAniXRatio:[[[F

    .line 1129
    const/16 v0, 0xc

    filled-new-array {v0, v3, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[F

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesAniRadius:[[[F

    .line 1130
    const/16 v0, 0xd

    filled-new-array {v0, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScaleAni:[[F

    .line 1132
    invoke-direct {p0}, Lcom/android/music/discplus/view/DiscRenderer;->calcAnimationTrackPos()V

    .line 1133
    invoke-direct {p0}, Lcom/android/music/discplus/view/DiscRenderer;->calcTrackPos()V

    .line 1136
    return-void
.end method

.method private calcAnimationTrackPos()V
    .locals 19

    .prologue
    .line 765
    const/4 v6, 0x0

    .line 766
    .local v6, ANIMATION_START_XRATIO:F
    const/high16 v3, 0x3f80

    .line 768
    .local v3, ANIMATION_END_XRATIO:F
    const v4, 0x3fcccccd

    .line 769
    .local v4, ANIMATION_START_RADIOUS:F
    const v1, 0x40466666

    .line 771
    .local v1, ANIMATION_END_RADIOUS:F
    const/high16 v5, 0x3f00

    .line 772
    .local v5, ANIMATION_START_SCALE:F
    const/high16 v2, 0x3f80

    .line 774
    .local v2, ANIMATION_END_SCALE:F
    const/4 v9, 0x0

    .local v9, frame:I
    :goto_0
    const/16 v14, 0xc

    if-ge v9, v14, :cond_2

    .line 775
    const/4 v7, 0x0

    .line 777
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

    .line 779
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

    .line 781
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

    .line 784
    .local v12, scale:F
    const/16 v10, -0xb4

    .local v10, i:I
    :goto_1
    if-gez v10, :cond_0

    .line 785
    const/4 v14, 0x0

    sub-int v8, v14, v10

    .line 786
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

    .line 787
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

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesAniXRatio:[[[F

    move-object v14, v0

    aget-object v14, v14, v9

    aget-object v14, v14, v7

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 790
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

    .line 791
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

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesAniRadius:[[[F

    move-object v14, v0

    aget-object v14, v14, v9

    aget-object v14, v14, v7

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScaleAni:[[F

    move-object v14, v0

    aget-object v14, v14, v9

    aput v12, v14, v7

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScaleAni:[[F

    move-object v14, v0

    const/16 v15, 0xc

    aget-object v14, v14, v15

    const/4 v15, 0x0

    aput v15, v14, v7

    .line 796
    add-int/lit8 v7, v7, 0x1

    .line 784
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 799
    .end local v8           #degree:I
    :cond_0
    const/4 v10, 0x0

    :goto_2
    const/16 v14, 0x21c

    if-ge v10, v14, :cond_1

    .line 800
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

    .line 801
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

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesAniXRatio:[[[F

    move-object v14, v0

    aget-object v14, v14, v9

    aget-object v14, v14, v7

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 804
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

    .line 805
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

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesAniRadius:[[[F

    move-object v14, v0

    aget-object v14, v14, v9

    aget-object v14, v14, v7

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScaleAni:[[F

    move-object v14, v0

    aget-object v14, v14, v9

    aput v12, v14, v7

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScaleAni:[[F

    move-object v14, v0

    const/16 v15, 0xc

    aget-object v14, v14, v15

    const/4 v15, 0x0

    aput v15, v14, v7

    .line 810
    add-int/lit8 v7, v7, 0x1

    .line 799
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 774
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 813
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

    .line 738
    const/4 v0, 0x0

    .line 739
    .local v0, count:I
    const v4, 0x3b1546c6

    .line 740
    .local v4, sRange:F
    const/16 v3, -0xb4

    .local v3, i:I
    :goto_0
    if-gez v3, :cond_0

    .line 741
    sub-int v1, v8, v3

    .line 742
    .local v1, degree:I
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesOrg:[[F

    aget-object v5, v5, v0

    sget-object v6, Lcom/android/music/discplus/util/TriangleTable;->sincosTable:[[F

    aget-object v6, v6, v1

    aget v6, v6, v10

    mul-float/2addr v6, v9

    aput v6, v5, v8

    .line 743
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesOrg:[[F

    aget-object v5, v5, v0

    const/4 v6, 0x2

    sget-object v7, Lcom/android/music/discplus/util/TriangleTable;->sincosTable:[[F

    aget-object v7, v7, v1

    aget v7, v7, v8

    sub-float v7, v11, v7

    mul-float/2addr v7, v9

    aput v7, v5, v6

    .line 744
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesOrg:[[F

    aget-object v5, v5, v0

    aput v11, v5, v10

    .line 745
    const/16 v5, 0x168

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 746
    .local v2, distance:I
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScaleOrg:[F

    int-to-float v6, v2

    mul-float/2addr v6, v4

    sub-float v6, v12, v6

    aput v6, v5, v0

    .line 747
    add-int/lit8 v0, v0, 0x1

    .line 740
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 750
    .end local v1           #degree:I
    .end local v2           #distance:I
    :cond_0
    const/4 v3, 0x0

    :goto_1
    const/16 v5, 0x21c

    if-ge v3, v5, :cond_1

    .line 751
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesOrg:[[F

    aget-object v5, v5, v0

    sget-object v6, Lcom/android/music/discplus/util/TriangleTable;->sincosTable:[[F

    aget-object v6, v6, v3

    aget v6, v6, v10

    mul-float/2addr v6, v9

    aput v6, v5, v8

    .line 752
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesOrg:[[F

    aget-object v5, v5, v0

    const/4 v6, 0x2

    sget-object v7, Lcom/android/music/discplus/util/TriangleTable;->sincosTable:[[F

    aget-object v7, v7, v3

    aget v7, v7, v8

    mul-float/2addr v7, v9

    aput v7, v5, v6

    .line 753
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesOrg:[[F

    aget-object v5, v5, v0

    aput v11, v5, v10

    .line 754
    const/16 v5, 0x168

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 755
    .restart local v2       #distance:I
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScaleOrg:[F

    int-to-float v6, v2

    mul-float/2addr v6, v4

    sub-float v6, v12, v6

    aput v6, v5, v0

    .line 756
    add-int/lit8 v0, v0, 0x1

    .line 750
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 759
    .end local v2           #distance:I
    :cond_1
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesOrg:[[F

    iput-object v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    .line 760
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScaleOrg:[F

    iput-object v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    .line 761
    return-void
.end method

.method public static native deleteTextures([II)V
.end method

.method private execAnimationEffect(Lcom/android/music/discplus/view/DiscView$AniMationEffect;I)Z
    .locals 37
    .parameter "effectType"
    .parameter "dataCount"

    .prologue
    .line 820
    const/16 v30, 0x0

    .line 822
    .local v30, animationDone:Z
    sget-object v34, Lcom/android/music/discplus/view/DiscRenderer$1;->$SwitchMap$com$android$music$discplus$view$DiscView$AniMationEffect:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ordinal()I

    move-result v35

    aget v34, v34, v35

    packed-switch v34, :pswitch_data_0

    .line 1082
    :cond_0
    :goto_0
    return v30

    .line 825
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    const v36, 0x3fa8f5c3

    aput v36, v34, v35

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesOrg:[[F

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    .line 828
    const/16 v34, 0xb

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    .line 829
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mOnAnimationStop:Z

    .line 830
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v34, v0

    const/16 v35, 0xb

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesOrg:[[F

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    .line 832
    const/16 v30, 0x1

    goto :goto_0

    .line 837
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

    .line 838
    const v15, 0x3fd70a3d

    .line 839
    .local v15, ANIMATION_DISMISS_START_CURSEL_SCALE:F
    const v14, 0x3fa8f5c3

    .line 841
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

    .line 845
    .local v31, scale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    aput v31, v34, v35

    .line 846
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

    .line 848
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v34, v0

    const/16 v35, 0xb

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    const v36, 0x3fa8f5c3

    aput v36, v34, v35

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesAniXRatio:[[[F

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aget-object v34, v34, v35

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    .line 851
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 854
    .end local v14           #ANIMATION_DISMISS_END_CURSEL_SCALE:F
    .end local v15           #ANIMATION_DISMISS_START_CURSEL_SCALE:F
    .end local v31           #scale:F
    :cond_1
    const/16 v30, 0x1

    .line 857
    goto/16 :goto_0

    .line 859
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

    .line 860
    const v23, 0x3fa8f5c3

    .line 861
    .local v23, ANIMATION_LOADING_START_CURSEL_SCALE:F
    const v22, 0x3fd70a3d

    .line 862
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

    .line 866
    .restart local v31       #scale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    aput v31, v34, v35

    .line 867
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v34, v0

    const/16 v35, 0xb

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_2

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    const v36, 0x3fd70a3d

    aput v36, v34, v35

    .line 869
    const/16 v30, 0x1

    .line 870
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mInitCreate:Z

    .line 876
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

    .line 873
    :cond_3
    const/16 v30, 0x1

    .line 874
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mInitCreate:Z

    goto :goto_1

    .line 881
    :pswitch_3
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mOnAnimationStop:Z

    .line 882
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mDiscZAngle:F

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    const v36, 0x3fa8f5c3

    aput v36, v34, v35

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    aget-object v34, v34, v35

    const/16 v35, 0x2

    const v36, 0x40466666

    aput v36, v34, v35

    goto/16 :goto_0

    .line 889
    :pswitch_4
    const v27, 0x3ff33333

    .line 890
    .local v27, ANIMATION_TOPVIEW_DISC_INDEXCYCLE_START_SCALE:F
    const/high16 v26, 0x3f00

    .line 892
    .local v26, ANIMATION_TOPVIEW_DISC_INDEXCYCLE_END_SCALE:F
    const/high16 v29, 0x42b4

    .line 893
    .local v29, ANIMATION_TOPVIEW_DISC_START_X_ANGLE:F
    const/high16 v25, 0x41a0

    .line 895
    .local v25, ANIMATION_TOPVIEW_DISC_END_X_ANGLE:F
    const/16 v28, 0x0

    .line 896
    .local v28, ANIMATION_TOPVIEW_DISC_START_HEIGHT:F
    const v24, 0x3fcf5c29

    .line 898
    .local v24, ANIMATION_TOPVIEW_DISC_END_HEIGHT:F
    const/16 v13, 0x64

    .line 899
    .local v13, ANIMATION_DISC_TOPVIEW_START_YDEGREE:I
    const/4 v8, 0x0

    .line 901
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

    .line 905
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

    .line 909
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

    .line 913
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

    .line 917
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

    .line 918
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

    .line 920
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mOnAnimationStop:Z

    .line 921
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v34, v0

    const/16 v35, 0xb

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    .line 922
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 923
    const/high16 v34, 0x3f00

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTopScale:F

    .line 924
    const/high16 v34, 0x41a0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mMainXAngle:F

    .line 925
    const v34, 0x3fcf5c29

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mHeight:F

    .line 926
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mYDegree:F

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesOrg:[[F

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScaleOrg:[F

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    const v36, 0x3fa8f5c3

    aput v36, v34, v35

    .line 930
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 936
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

    .line 937
    .local v10, ANIMATION_DISC_TOPVIEW_INDEXCYCLE_START_SCALE:F
    const v9, 0x3ff33333

    .line 939
    .local v9, ANIMATION_DISC_TOPVIEW_INDEXCYCLE_END_SCLAE:F
    const/high16 v12, 0x41a0

    .line 940
    .local v12, ANIMATION_DISC_TOPVIEW_START_X_ANGLE:F
    const/high16 v7, 0x42b4

    .line 942
    .local v7, ANIMATION_DISC_TOPVIEW_END_X_ANGLE:F
    const v11, 0x3fcf5c29

    .line 943
    .local v11, ANIMATION_DISC_TOPVIEW_START_HEIGHT:F
    const/4 v6, 0x0

    .line 945
    .local v6, ANIMATION_DISC_TOPVIEW_END_HEIGHT:F
    const/4 v13, 0x0

    .line 946
    .restart local v13       #ANIMATION_DISC_TOPVIEW_START_YDEGREE:I
    const/16 v8, 0x64

    .line 948
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

    .line 952
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

    .line 956
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

    .line 960
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

    .line 964
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

    .line 965
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

    .line 967
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mOnAnimationStop:Z

    .line 968
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v34, v0

    const/16 v35, 0xb

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    .line 969
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 970
    const v34, 0x3ff33333

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTopScale:F

    .line 971
    const/high16 v34, 0x42b4

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mMainXAngle:F

    .line 972
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mHeight:F

    .line 973
    const/high16 v34, 0x42c8

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mYDegree:F

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinatesAniRadius:[[[F

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aget-object v34, v34, v35

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScaleAni:[[F

    move-object/from16 v34, v0

    const/16 v35, 0xc

    aget-object v34, v34, v35

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    .line 977
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 983
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

    .line 984
    const/16 v17, 0x168

    .line 985
    .local v17, ANIMATION_FADE_OUT_START_ANGLE:I
    const/16 v16, 0x0

    .line 987
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

    .line 990
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mOnAnimationStop:Z

    .line 991
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v34, v0

    const/16 v35, 0xb

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    .line 992
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTransAngle:I

    .line 993
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 996
    .end local v16           #ANIMATION_FADE_OUT_END_ANGLE:I
    .end local v17           #ANIMATION_FADE_OUT_START_ANGLE:I
    :cond_4
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTransAngle:I

    .line 997
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mOnAnimationStop:Z

    .line 998
    const/16 v30, 0x1

    .line 1001
    goto/16 :goto_0

    .line 1004
    :pswitch_7
    const/16 v34, 0x1

    move/from16 v0, p2

    move/from16 v1, v34

    if-le v0, v1, :cond_5

    .line 1005
    const/16 v17, 0x0

    .line 1006
    .restart local v17       #ANIMATION_FADE_OUT_START_ANGLE:I
    const/16 v16, 0x168

    .line 1008
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

    .line 1011
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mOnAnimationStop:Z

    .line 1012
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v34, v0

    const/16 v35, 0xb

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    .line 1013
    const/16 v34, 0x168

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTransAngle:I

    .line 1014
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 1017
    .end local v16           #ANIMATION_FADE_OUT_END_ANGLE:I
    .end local v17           #ANIMATION_FADE_OUT_START_ANGLE:I
    :cond_5
    const/16 v34, 0x168

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTransAngle:I

    .line 1018
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mOnAnimationStop:Z

    .line 1019
    const/16 v30, 0x1

    .line 1022
    goto/16 :goto_0

    .line 1025
    :pswitch_8
    const/4 v5, 0x0

    .line 1026
    .local v5, ANIMATION_DISC_LISTVIEW_START_Z_ANGLE:F
    const/high16 v3, 0x43b4

    .line 1028
    .local v3, ANIMATION_DISC_LISTVIEW_END_Z_ANGLE:F
    const/4 v4, 0x0

    .line 1029
    .local v4, ANIMATION_DISC_LISTVIEW_START_X_POS:F
    const/high16 v2, -0x4000

    .line 1031
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

    .line 1035
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

    .line 1038
    .local v32, xPos:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/music/discplus/view/DiscView;->runOnChangeListViewStart()V

    .line 1039
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mDiscZAngle:F

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    const v36, 0x3fd70a3d

    aput v36, v34, v35

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    aget-object v34, v34, v35

    const/16 v35, 0x0

    aput v32, v34, v35

    .line 1043
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mOnAnimationStop:Z

    .line 1044
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v34, v0

    const/16 v35, 0xb

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    const v36, 0x3fd70a3d

    aput v36, v34, v35

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    aget-object v34, v34, v35

    const/16 v35, 0x0

    const/high16 v36, -0x4000

    aput v36, v34, v35

    .line 1047
    const/high16 v34, 0x43b4

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mDiscZAngle:F

    .line 1048
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 1054
    .end local v2           #ANIMATION_DISC_LISTVIEW_END_X_POS:F
    .end local v3           #ANIMATION_DISC_LISTVIEW_END_Z_ANGLE:F
    .end local v4           #ANIMATION_DISC_LISTVIEW_START_X_POS:F
    .end local v5           #ANIMATION_DISC_LISTVIEW_START_Z_ANGLE:F
    .end local v32           #xPos:F
    .end local v33           #zAngle:F
    :pswitch_9
    const/high16 v21, 0x43b4

    .line 1055
    .local v21, ANIMATION_LIST_DISCVIEW_START_Z_ANGLE:F
    const/16 v19, 0x0

    .line 1057
    .local v19, ANIMATION_LIST_DISCVIEW_END_Z_ANGLE:F
    const/high16 v20, -0x4000

    .line 1058
    .local v20, ANIMATION_LIST_DISCVIEW_START_X_POS:F
    const/16 v18, 0x0

    .line 1060
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

    .line 1064
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

    .line 1068
    .restart local v32       #xPos:F
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mDiscZAngle:F

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    const v36, 0x3fd70a3d

    aput v36, v34, v35

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    aget-object v34, v34, v35

    const/16 v35, 0x0

    aput v32, v34, v35

    .line 1071
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mOnAnimationStop:Z

    .line 1072
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move/from16 v34, v0

    const/16 v35, 0xb

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    const v36, 0x3fd70a3d

    aput v36, v34, v35

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackCoordinates:[[F

    move-object/from16 v34, v0

    const/16 v35, 0x168

    aget-object v34, v34, v35

    const/16 v35, 0x0

    const/16 v36, 0x0

    aput v36, v34, v35

    .line 1075
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mDiscZAngle:F

    .line 1076
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 822
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
    .line 2379
    const/16 v3, 0xc

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    .line 2385
    .local v2, vertices:[F
    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v4, v2, v4

    const/4 v5, 0x2

    aget v5, v2, v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/music/discplus/view/DiscRenderer;->getWindow2World(FFF)Landroid/graphics/Point;

    move-result-object v0

    .line 2386
    .local v0, lTop:Landroid/graphics/Point;
    const/4 v3, 0x6

    aget v3, v2, v3

    const/4 v4, 0x7

    aget v4, v2, v4

    const/16 v5, 0x8

    aget v5, v2, v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/music/discplus/view/DiscRenderer;->getWindow2World(FFF)Landroid/graphics/Point;

    move-result-object v1

    .line 2387
    .local v1, rBottom:Landroid/graphics/Point;
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v7, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3

    .line 2379
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

    .line 2391
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 2393
    .local v1, ret:Landroid/graphics/Point;
    const/4 v3, 0x4

    new-array v0, v3, [F

    aput p1, v0, v4

    aput p2, v0, v5

    const/4 v3, 0x2

    aput p3, v0, v3

    const/high16 v3, 0x3f80

    aput v3, v0, v6

    .line 2394
    .local v0, obj:[F
    new-array v2, v6, [F

    fill-array-data v2, :array_0

    .line 2396
    .local v2, win:[F
    iget-object v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mProjector:Lcom/android/music/discplus/util/Projector;

    invoke-virtual {v3, v0, v4, v2, v4}, Lcom/android/music/discplus/util/Projector;->project([FI[FI)V

    .line 2398
    aget v3, v2, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 2399
    iget-object v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v3}, Lcom/android/music/discplus/view/DiscView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    aget v4, v2, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->y:I

    .line 2400
    return-object v1

    .line 2394
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

    .line 1985
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    array-length v2, v2

    if-ge p2, v2, :cond_0

    if-gez p2, :cond_1

    :cond_0
    move v2, v4

    .line 1996
    :goto_0
    return v2

    .line 1989
    :cond_1
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    aget v2, v2, p2

    const/high16 v3, -0x8000

    if-ne v2, v3, :cond_2

    .line 1991
    sget-object v2, Lcom/android/music/discplus/util/DiscPlusUtils;->mDefaultImage:[Landroid/graphics/Bitmap;

    array-length v1, v2

    .line 1992
    .local v1, imgCnt:I
    sget-object v2, Lcom/android/music/discplus/util/DiscPlusUtils;->mDefaultImage:[Landroid/graphics/Bitmap;

    rem-int v3, p2, v1

    aget-object v0, v2, v3

    .line 1993
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    invoke-static {v2, p2, v0}, Lcom/android/music/discplus/view/DiscRenderer;->genTextures([IILandroid/graphics/Bitmap;)V

    move v2, v4

    .line 1994
    goto :goto_0

    .line 1996
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

    .line 2036
    iget-object v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    array-length v3, v3

    if-ge p2, v3, :cond_0

    if-gez p2, :cond_1

    :cond_0
    move v3, v5

    .line 2055
    :goto_0
    return v3

    .line 2040
    :cond_1
    iget-object v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v3}, Lcom/android/music/discplus/view/DiscView;->getDataManager()Lcom/android/music/discplus/util/DiscPlusManager;

    move-result-object v2

    .line 2041
    .local v2, mgr:Lcom/android/music/discplus/util/DiscPlusManager;
    if-eqz v2, :cond_3

    .line 2043
    invoke-virtual {v2, p2, p3, p4}, Lcom/android/music/discplus/util/DiscPlusManager;->prepareImageload(IILcom/android/music/discplus/view/DiscView$CurrentView;)I

    .line 2044
    iget-object v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    aget v3, v3, p2

    const/high16 v4, -0x8000

    if-ne v3, v4, :cond_3

    .line 2046
    invoke-virtual {v2, p2}, Lcom/android/music/discplus/util/DiscPlusManager;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2047
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 2048
    sget-object v3, Lcom/android/music/discplus/util/DiscPlusUtils;->mDefaultImage:[Landroid/graphics/Bitmap;

    array-length v1, v3

    .line 2049
    .local v1, imgCnt:I
    sget-object v3, Lcom/android/music/discplus/util/DiscPlusUtils;->mDefaultImage:[Landroid/graphics/Bitmap;

    rem-int v4, p2, v1

    aget-object v0, v3, v4

    .line 2051
    .end local v1           #imgCnt:I
    :cond_2
    iget-object v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    invoke-static {v3, p2, v0}, Lcom/android/music/discplus/view/DiscRenderer;->genTextures([IILandroid/graphics/Bitmap;)V

    move v3, v5

    .line 2052
    goto :goto_0

    .line 2055
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

    .line 1327
    iget v4, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    if-lez v4, :cond_0

    .line 1328
    iget v4, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    iput v4, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 1329
    iput v6, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    .line 1332
    :cond_0
    iget v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 1333
    .local v1, mExtraHandle:I
    add-int/2addr v1, p2

    .line 1335
    :goto_0
    if-gez v1, :cond_1

    .line 1336
    add-int/lit16 v1, v1, 0x2d0

    goto :goto_0

    .line 1338
    :cond_1
    rem-int/lit16 v1, v1, 0x2d0

    .line 1340
    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 1341
    iput v6, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    .line 1343
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    iget v4, v4, Lcom/android/music/discplus/view/DiscView;->DISC_INDEX_NUM:I

    sub-int/2addr v4, v7

    if-gez v4, :cond_3

    move v2, v6

    .line 1344
    .local v2, numOfDISC:I
    :goto_1
    sget-object v4, Lcom/android/music/discplus/view/DiscRenderer;->DISC_DEGREE_INFO:[[I

    aget-object v4, v4, v2

    aget v0, v4, v6

    .line 1346
    .local v0, mDivide_Degree:I
    if-ne p1, v7, :cond_4

    .line 1347
    iget v4, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    if-lt v4, v0, :cond_2

    .line 1348
    iget v4, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    sub-int/2addr v4, v0

    iput v4, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    .line 1349
    iput v6, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 1350
    invoke-direct {p0, v7, v7}, Lcom/android/music/discplus/view/DiscRenderer;->setCurrentIndex(IZ)V

    .line 1362
    :cond_2
    :goto_2
    iget v4, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentIndex:I

    return v4

    .line 1343
    .end local v0           #mDivide_Degree:I
    .end local v2           #numOfDISC:I
    :cond_3
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    iget v4, v4, Lcom/android/music/discplus/view/DiscView;->DISC_INDEX_NUM:I

    sub-int/2addr v4, v7

    move v2, v4

    goto :goto_1

    .line 1353
    .restart local v0       #mDivide_Degree:I
    .restart local v2       #numOfDISC:I
    :cond_4
    iget v4, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    sub-int v5, v8, v0

    if-gt v4, v5, :cond_2

    .line 1354
    sub-int v4, v8, v0

    iget v5, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    sub-int v3, v4, v5

    .line 1355
    .local v3, tempExtraAngle:I
    if-eqz v3, :cond_5

    .line 1356
    sub-int v4, v8, v3

    iput v4, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    .line 1358
    :cond_5
    iput v6, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 1359
    const/4 v4, -0x1

    invoke-direct {p0, v4, v7}, Lcom/android/music/discplus/view/DiscRenderer;->setCurrentIndex(IZ)V

    goto :goto_2
.end method

.method private prepareBlendTextures(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/4 v3, 0x0

    .line 2351
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureMask:[I

    aget v1, v1, v3

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_0

    .line 2352
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v1}, Lcom/android/music/discplus/view/DiscView;->getBlendImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2353
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2354
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureMask:[I

    invoke-static {v1, v3, v0}, Lcom/android/music/discplus/view/DiscRenderer;->genTextures([IILandroid/graphics/Bitmap;)V

    .line 2357
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private prepareDiscDimTextures(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/4 v3, 0x0

    .line 2342
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureNItem:[I

    aget v1, v1, v3

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_0

    .line 2343
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v1}, Lcom/android/music/discplus/view/DiscView;->getDiscNoitem()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2344
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2345
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureNItem:[I

    invoke-static {v1, v3, v0}, Lcom/android/music/discplus/view/DiscRenderer;->genTextures([IILandroid/graphics/Bitmap;)V

    .line 2348
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
    .line 2211
    if-lez p4, :cond_17

    .line 2212
    const/4 v5, 0x0

    .line 2213
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

    .line 2215
    :cond_0
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mAllowSwitchMove:Z

    .line 2216
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTextureLoaded:Z

    .line 2217
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 2218
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTransferDISC:I

    .line 2220
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    move-object v15, v0

    array-length v15, v15

    if-ge v7, v15, :cond_2

    .line 2221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    move-object v15, v0

    aget v15, v15, v7

    const/high16 v16, -0x8000

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_1

    .line 2222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    move-object v15, v0

    invoke-static {v15, v7}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTextures([II)V

    .line 2220
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2226
    :cond_2
    move/from16 v0, p4

    new-array v0, v0, [I

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    .line 2227
    const/4 v7, 0x0

    :goto_1
    move v0, v7

    move/from16 v1, p4

    if-ge v0, v1, :cond_3

    .line 2228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    move-object v15, v0

    const/high16 v16, -0x8000

    aput v16, v15, v7

    .line 2227
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2230
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesToDelete:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 2231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/music/discplus/view/DiscView;->dataChangeApplied()V

    .line 2232
    const/4 v5, 0x1

    .line 2278
    .end local v7           #i:I
    :cond_4
    :goto_2
    const/4 v6, 0x0

    .line 2279
    .local v6, curDistance:I
    const/16 v15, 0x19

    move/from16 v0, p4

    move v1, v15

    if-le v0, v1, :cond_c

    const/16 v15, 0x19

    move v9, v15

    .line 2280
    .local v9, loadSize:I
    :goto_3
    const/16 v15, 0xf

    move/from16 v0, p4

    move v1, v15

    if-le v0, v1, :cond_d

    const/16 v15, 0xe

    move v14, v15

    .line 2282
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

    .line 2286
    :cond_5
    sget-object v15, Lcom/android/music/discplus/view/DiscRenderer;->DISC_DEGREE_INFO:[[I

    aget-object v15, v15, v14

    const/16 v16, 0x3

    aget v15, v15, v16

    add-int v13, p5, v15

    .line 2287
    .local v13, virtualIndex:I
    :goto_5
    sget-object v15, Lcom/android/music/discplus/view/DiscRenderer;->DISC_DEGREE_INFO:[[I

    aget-object v15, v15, v14

    const/16 v16, 0x3

    aget v15, v15, v16

    sub-int v15, p5, v15

    if-lt v13, v15, :cond_10

    .line 2290
    move v12, v13

    .line 2291
    .local v12, realIndex:I
    :goto_6
    if-gez v12, :cond_e

    .line 2292
    add-int v12, v12, p4

    goto :goto_6

    .line 2234
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

    .line 2235
    add-int/lit8 v10, p5, 0x19

    .line 2236
    .local v10, postDelPosition:I
    const/16 v15, 0x19

    sub-int v11, p5, v15

    .line 2238
    .local v11, preDelPosition:I
    rem-int v10, v10, p4

    .line 2240
    :goto_7
    if-gez v11, :cond_7

    .line 2242
    add-int v11, v11, p4

    goto :goto_7

    .line 2244
    :cond_7
    rem-int v11, v11, p4

    .line 2246
    sget-object v15, Lcom/android/music/discplus/view/DiscView$CurrentView;->TOP_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-object/from16 v0, p2

    move-object v1, v15

    if-ne v0, v1, :cond_a

    .line 2247
    move v7, v10

    .restart local v7       #i:I
    :goto_8
    move v0, v7

    move/from16 v1, p4

    if-ge v0, v1, :cond_4

    .line 2249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    move-object v15, v0

    aget v15, v15, v7

    const/high16 v16, -0x8000

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_8

    .line 2251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    move-object v15, v0

    invoke-static {v15, v7}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTextures([II)V

    .line 2252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    move-object v15, v0

    const/high16 v16, -0x8000

    aput v16, v15, v7

    .line 2253
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTextureLoaded:Z

    .line 2255
    :cond_8
    if-eq v7, v11, :cond_4

    .line 2257
    const/4 v15, 0x1

    sub-int v15, p4, v15

    if-ne v7, v15, :cond_9

    .line 2258
    const/4 v7, -0x1

    .line 2247
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 2261
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

    .line 2263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    move-object v15, v0

    invoke-static {v15, v10}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTextures([II)V

    .line 2264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    move-object v15, v0

    const/high16 v16, -0x8000

    aput v16, v15, v10

    .line 2265
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTextureLoaded:Z

    .line 2268
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    move-object v15, v0

    aget v15, v15, v11

    const/high16 v16, -0x8000

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_4

    .line 2270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    move-object v15, v0

    invoke-static {v15, v11}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTextures([II)V

    .line 2271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    move-object v15, v0

    const/high16 v16, -0x8000

    aput v16, v15, v11

    .line 2272
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

    .line 2279
    goto/16 :goto_3

    .line 2280
    .restart local v9       #loadSize:I
    :cond_d
    const/4 v15, 0x1

    sub-int v15, p4, v15

    move v14, v15

    goto/16 :goto_4

    .line 2294
    .restart local v12       #realIndex:I
    .restart local v13       #virtualIndex:I
    .restart local v14       #wingIdx:I
    :cond_e
    rem-int v12, v12, p4

    .line 2296
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mInitCreate:Z

    move v15, v0

    if-nez v15, :cond_f

    .line 2297
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/music/discplus/view/DiscRenderer;->loadDefaultTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    .line 2288
    :goto_9
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_5

    .line 2299
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTexture(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 2300
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, p5

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/music/discplus/view/DiscRenderer;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;IILcom/android/music/discplus/view/DiscView$CurrentView;)Z

    goto :goto_9

    .line 2303
    .end local v12           #realIndex:I
    :cond_10
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mAllowSwitchMove:Z

    .line 2328
    .end local v13           #virtualIndex:I
    :cond_11
    :goto_a
    if-ge v6, v9, :cond_12

    sget-object v15, Lcom/android/music/discplus/view/DiscView$CurrentView;->DISC_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-object/from16 v0, p2

    move-object v1, v15

    if-eq v0, v1, :cond_13

    .line 2330
    :cond_12
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTextureLoaded:Z

    .line 2338
    .end local v5           #alldelete:Z
    .end local v6           #curDistance:I
    .end local v9           #loadSize:I
    .end local v14           #wingIdx:I
    :cond_13
    :goto_b
    return-void

    .line 2323
    .restart local v5       #alldelete:Z
    .restart local v6       #curDistance:I
    .local v8, loadPosition:I
    .restart local v9       #loadSize:I
    .restart local v14       #wingIdx:I
    :cond_14
    add-int/lit8 v6, v6, 0x1

    .line 2306
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

    .line 2309
    add-int v8, p5, v6

    .line 2310
    .restart local v8       #loadPosition:I
    rem-int v8, v8, p4

    .line 2312
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTexture(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 2313
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    move/from16 v3, p5

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/music/discplus/view/DiscRenderer;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;IILcom/android/music/discplus/view/DiscView$CurrentView;)Z

    .line 2315
    sub-int v8, p5, v6

    .line 2316
    :goto_c
    if-gez v8, :cond_16

    add-int v8, v8, p4

    goto :goto_c

    .line 2317
    :cond_16
    rem-int v8, v8, p4

    .line 2319
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTexture(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 2320
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    move/from16 v3, p5

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/music/discplus/view/DiscRenderer;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;IILcom/android/music/discplus/view/DiscView$CurrentView;)Z

    move-result v15

    if-eqz v15, :cond_14

    goto :goto_a

    .line 2333
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

    .line 2334
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTextureLoaded:Z

    .line 2335
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 2336
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

    .line 2360
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureTop:[I

    aget v1, v1, v3

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_0

    .line 2361
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v1}, Lcom/android/music/discplus/view/DiscView;->getTopImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2362
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2363
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureTop:[I

    invoke-static {v1, v3, v0}, Lcom/android/music/discplus/view/DiscRenderer;->genTextures([IILandroid/graphics/Bitmap;)V

    .line 2366
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public static native renderFrame([I[I[I[F[F[I[F[F[F[I[I[I[I)V
.end method

.method private requestRender()V
    .locals 2

    .prologue
    .line 712
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v1}, Lcom/android/music/discplus/view/DiscView;->getSurfaceView()Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    move-result-object v0

    .line 713
    .local v0, surface:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->getRenderMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 714
    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->requestRender()V

    .line 716
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

    .line 1196
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingMode:I

    if-eqz v8, :cond_1

    .line 1197
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingDegree:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 1198
    .local v7, rollRange:I
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    iget v8, v8, Lcom/android/music/discplus/view/DiscView;->DISC_INDEX_NUM:I

    sub-int/2addr v8, v12

    if-gez v8, :cond_4

    move v5, v13

    .line 1199
    .local v5, numOfDISC:I
    :goto_0
    sget-object v8, Lcom/android/music/discplus/view/DiscRenderer;->DISC_DEGREE_INFO:[[I

    aget-object v8, v8, v5

    aget v6, v8, v13

    .line 1202
    .local v6, rollAngle:I
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentMovingMode:I

    if-eqz v8, :cond_6

    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentMovingMode:I

    iget v9, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingMode:I

    if-eq v8, v9, :cond_6

    .line 1203
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    if-lez v8, :cond_0

    .line 1204
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    iput v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 1205
    iput v13, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    .line 1208
    :cond_0
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingMode:I

    if-ne v8, v12, :cond_5

    .line 1209
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    sub-int v8, v10, v8

    sub-int v8, v6, v8

    iput v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 1210
    const/4 v8, -0x1

    invoke-direct {p0, v8, v13}, Lcom/android/music/discplus/view/DiscRenderer;->setCurrentIndex(IZ)V

    .line 1216
    :goto_1
    iput v7, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferDISC:I

    .line 1217
    iput v13, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    .line 1254
    :goto_2
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingMode:I

    iput v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentMovingMode:I

    .line 1255
    iput v13, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingMode:I

    .line 1258
    .end local v5           #numOfDISC:I
    .end local v6           #rollAngle:I
    .end local v7           #rollRange:I
    :cond_1
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentMovingMode:I

    if-eqz v8, :cond_3

    .line 1259
    iget v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferDISC:I

    .line 1260
    .local v3, lTransferDISC:I
    const/4 v0, 0x1

    .line 1276
    .local v0, MotionGap:I
    const/16 v8, 0x73

    if-lt v3, v8, :cond_7

    .line 1277
    const/16 v0, 0x18

    .line 1283
    :goto_3
    if-eqz v3, :cond_9

    .line 1284
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentMovingMode:I

    if-ne v8, v12, :cond_8

    .line 1285
    invoke-direct {p0, v12, v0}, Lcom/android/music/discplus/view/DiscRenderer;->moveDISC(II)I

    .line 1290
    :cond_2
    :goto_4
    sub-int/2addr v3, v0

    .line 1291
    iput v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferDISC:I

    .line 1324
    .end local v0           #MotionGap:I
    .end local v3           #lTransferDISC:I
    :cond_3
    :goto_5
    return-void

    .line 1198
    .restart local v7       #rollRange:I
    :cond_4
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    iget v8, v8, Lcom/android/music/discplus/view/DiscView;->DISC_INDEX_NUM:I

    sub-int/2addr v8, v12

    move v5, v8

    goto :goto_0

    .line 1212
    .restart local v5       #numOfDISC:I
    .restart local v6       #rollAngle:I
    :cond_5
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    sub-int v8, v6, v8

    sub-int v8, v10, v8

    iput v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 1213
    invoke-direct {p0, v12, v13}, Lcom/android/music/discplus/view/DiscRenderer;->setCurrentIndex(IZ)V

    goto :goto_1

    .line 1250
    :cond_6
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferDISC:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferDISC:I

    goto :goto_2

    .line 1279
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

    .line 1286
    :cond_8
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentMovingMode:I

    if-ne v8, v14, :cond_2

    .line 1287
    neg-int v8, v0

    invoke-direct {p0, v14, v8}, Lcom/android/music/discplus/view/DiscRenderer;->moveDISC(II)I

    goto :goto_4

    .line 1293
    :cond_9
    iget-boolean v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetDragMode:Z

    if-eq v8, v12, :cond_3

    .line 1294
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    iget v8, v8, Lcom/android/music/discplus/view/DiscView;->DISC_INDEX_NUM:I

    sub-int/2addr v8, v12

    if-gez v8, :cond_a

    move v5, v13

    .line 1295
    .restart local v5       #numOfDISC:I
    :goto_6
    sget-object v8, Lcom/android/music/discplus/view/DiscRenderer;->DISC_DEGREE_INFO:[[I

    aget-object v8, v8, v5

    aget v4, v8, v13

    .line 1296
    .local v4, mDivide_Degree:I
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    rem-int v2, v8, v4

    .line 1297
    .local v2, extraVal:I
    if-eqz v2, :cond_e

    .line 1298
    const/4 v1, 0x0

    .line 1299
    .local v1, extraAngle:I
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentMovingMode:I

    if-ne v8, v12, :cond_c

    .line 1300
    sub-int v1, v4, v2

    .line 1301
    div-int/lit8 v8, v4, 0x2

    if-le v1, v8, :cond_b

    .line 1302
    sub-int v8, v4, v1

    iput v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingDegree:I

    .line 1303
    iput v14, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingMode:I

    goto :goto_5

    .line 1294
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

    .line 1305
    .restart local v1       #extraAngle:I
    .restart local v2       #extraVal:I
    .restart local v4       #mDivide_Degree:I
    .restart local v5       #numOfDISC:I
    :cond_b
    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingDegree:I

    .line 1306
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentMovingMode:I

    iput v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingMode:I

    goto :goto_5

    .line 1309
    :cond_c
    div-int/lit8 v8, v4, 0x2

    if-le v2, v8, :cond_d

    .line 1310
    sub-int v8, v4, v2

    iput v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingDegree:I

    .line 1311
    iput v12, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingMode:I

    goto :goto_5

    .line 1313
    :cond_d
    iput v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingDegree:I

    .line 1314
    iget v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentMovingMode:I

    iput v8, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingMode:I

    goto :goto_5

    .line 1318
    .end local v1           #extraAngle:I
    :cond_e
    iput v13, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentMovingMode:I

    .line 1319
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
    .line 2369
    new-instance v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/music/discplus/view/DiscRenderer$CDRange;-><init>(Lcom/android/music/discplus/view/DiscRenderer$1;)V

    .line 2370
    .local v0, cdr:Lcom/android/music/discplus/view/DiscRenderer$CDRange;
    iput p1, v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;->idx:I

    .line 2371
    iput p2, v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;->x:F

    .line 2372
    iput p3, v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;->y:F

    .line 2373
    iput p4, v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;->z:F

    .line 2374
    invoke-direct {p0}, Lcom/android/music/discplus/view/DiscRenderer;->getObjectRect()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;->rect:Landroid/graphics/Rect;

    .line 2375
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesRange:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2376
    return-void
.end method

.method private setCurrentIndex(IZ)V
    .locals 2
    .parameter "step"
    .parameter "update"

    .prologue
    .line 1366
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v1}, Lcom/android/music/discplus/view/DiscView;->getTotalCount()I

    move-result v0

    .line 1367
    .local v0, count:I
    if-lez v0, :cond_1

    .line 1368
    iget v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentIndex:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentIndex:I

    .line 1369
    :goto_0
    iget v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentIndex:I

    if-gez v1, :cond_0

    .line 1370
    iget v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentIndex:I

    goto :goto_0

    .line 1372
    :cond_0
    iget v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentIndex:I

    rem-int/2addr v1, v0

    iput v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentIndex:I

    .line 1374
    :cond_1
    if-eqz p2, :cond_2

    .line 1375
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v1}, Lcom/android/music/discplus/view/DiscView;->updateText()V

    .line 1377
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
    .line 1513
    const/4 v13, 0x0

    .line 1514
    .local v13, GL_TOPSCAL:I
    const/4 v11, 0x1

    .line 1515
    .local v11, GL_MAINHEIGHT:I
    const/4 v12, 0x2

    .line 1516
    .local v12, GL_MAINXANGLE:I
    const/4 v5, 0x3

    .line 1517
    .local v5, GL_DISCXANGLE:I
    const/4 v6, 0x4

    .line 1518
    .local v6, GL_DISCYANGLE:I
    const/4 v8, 0x5

    .line 1519
    .local v8, GL_DISCZANGLE:I
    const/4 v7, 0x6

    .line 1521
    .local v7, GL_DISCYPERCENT:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferFloatData:[F

    move-object v15, v0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTopScale:F

    move/from16 v17, v0

    aput v17, v15, v16

    .line 1522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferFloatData:[F

    move-object v15, v0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mHeight:F

    move/from16 v17, v0

    aput v17, v15, v16

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferFloatData:[F

    move-object v15, v0

    const/16 v16, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mMainXAngle:F

    move/from16 v17, v0

    aput v17, v15, v16

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferFloatData:[F

    move-object v15, v0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscXAngle:F

    move/from16 v17, v0

    aput v17, v15, v16

    .line 1525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferFloatData:[F

    move-object v15, v0

    const/16 v16, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscYAngle:F

    move/from16 v17, v0

    aput v17, v15, v16

    .line 1526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferFloatData:[F

    move-object v15, v0

    const/16 v16, 0x5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscZAngle:F

    move/from16 v17, v0

    aput v17, v15, v16

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferFloatData:[F

    move-object v15, v0

    const/16 v16, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mYDegree:F

    move/from16 v17, v0

    aput v17, v15, v16

    .line 1530
    const/4 v9, 0x0

    .line 1531
    .local v9, GL_DRAWCOUNT:I
    const/4 v3, 0x1

    .line 1532
    .local v3, GL_CURITEM:I
    const/4 v4, 0x2

    .line 1533
    .local v4, GL_CURVIEW:I
    const/4 v10, 0x3

    .line 1534
    .local v10, GL_EFFECT:I
    const/4 v2, 0x4

    .line 1535
    .local v2, GL_ANISTATUS:I
    const/4 v14, 0x5

    .line 1537
    .local v14, GL_TOTALCOUNT:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x0

    aput p5, v15, v16

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x1

    aput p6, v15, v16

    .line 1546
    sget-object v15, Lcom/android/music/discplus/view/DiscView$CurrentView;->DISC_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-object/from16 v0, p1

    move-object v1, v15

    if-ne v0, v1, :cond_3

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x2

    const/16 v17, 0x0

    aput v17, v15, v16

    .line 1554
    :cond_0
    :goto_0
    sget-object v15, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_NONE:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-object/from16 v0, p2

    move-object v1, v15

    if-ne v0, v1, :cond_5

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x3

    const/16 v17, 0x0

    aput v17, v15, v16

    .line 1574
    :cond_1
    :goto_1
    sget-object v15, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_PENDING:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    move-object/from16 v0, p3

    move-object v1, v15

    if-ne v0, v1, :cond_d

    .line 1575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x4

    const/16 v17, 0x0

    aput v17, v15, v16

    .line 1582
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x5

    aput p4, v15, v16

    .line 1583
    return-void

    .line 1548
    :cond_3
    sget-object v15, Lcom/android/music/discplus/view/DiscView$CurrentView;->TOP_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-object/from16 v0, p1

    move-object v1, v15

    if-ne v0, v1, :cond_4

    .line 1549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x2

    const/16 v17, 0x1

    aput v17, v15, v16

    goto :goto_0

    .line 1550
    :cond_4
    sget-object v15, Lcom/android/music/discplus/view/DiscView$CurrentView;->LIST_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-object/from16 v0, p1

    move-object v1, v15

    if-ne v0, v1, :cond_0

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x2

    const/16 v17, 0x2

    aput v17, v15, v16

    goto :goto_0

    .line 1556
    :cond_5
    sget-object v15, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_LOADING:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-object/from16 v0, p2

    move-object v1, v15

    if-ne v0, v1, :cond_6

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x3

    const/16 v17, 0x1

    aput v17, v15, v16

    goto :goto_1

    .line 1558
    :cond_6
    sget-object v15, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_DISMISS:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-object/from16 v0, p2

    move-object v1, v15

    if-ne v0, v1, :cond_7

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x3

    const/16 v17, 0x2

    aput v17, v15, v16

    goto :goto_1

    .line 1560
    :cond_7
    sget-object v15, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_STOP:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-object/from16 v0, p2

    move-object v1, v15

    if-ne v0, v1, :cond_8

    .line 1561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x3

    const/16 v17, 0x3

    aput v17, v15, v16

    goto :goto_1

    .line 1562
    :cond_8
    sget-object v15, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_ROLLING:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-object/from16 v0, p2

    move-object v1, v15

    if-ne v0, v1, :cond_9

    .line 1563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x3

    const/16 v17, 0x4

    aput v17, v15, v16

    goto/16 :goto_1

    .line 1564
    :cond_9
    sget-object v15, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_TOPTODISC:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-object/from16 v0, p2

    move-object v1, v15

    if-ne v0, v1, :cond_a

    .line 1565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x3

    const/16 v17, 0x5

    aput v17, v15, v16

    goto/16 :goto_1

    .line 1566
    :cond_a
    sget-object v15, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_DISCTOTOP:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-object/from16 v0, p2

    move-object v1, v15

    if-ne v0, v1, :cond_b

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x3

    const/16 v17, 0x6

    aput v17, v15, v16

    goto/16 :goto_1

    .line 1568
    :cond_b
    sget-object v15, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_DISCTOLIST:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-object/from16 v0, p2

    move-object v1, v15

    if-ne v0, v1, :cond_c

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x3

    const/16 v17, 0x7

    aput v17, v15, v16

    goto/16 :goto_1

    .line 1570
    :cond_c
    sget-object v15, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_LISTTODISC:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-object/from16 v0, p2

    move-object v1, v15

    if-ne v0, v1, :cond_1

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x3

    const/16 v17, 0x8

    aput v17, v15, v16

    goto/16 :goto_1

    .line 1576
    :cond_d
    sget-object v15, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_RUNNING:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    move-object/from16 v0, p3

    move-object v1, v15

    if-ne v0, v1, :cond_e

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferIntData:[I

    move-object v15, v0

    const/16 v16, 0x4

    const/16 v17, 0x1

    aput v17, v15, v16

    goto/16 :goto_2

    .line 1578
    :cond_e
    sget-object v15, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_FINISHED:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    move-object/from16 v0, p3

    move-object v1, v15

    if-ne v0, v1, :cond_2

    .line 1579
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
    .line 1415
    const/4 v5, 0x1

    .line 1416
    .local v5, discCount:I
    if-lez p1, :cond_0

    move/from16 v5, p1

    .line 1417
    :cond_0
    const/4 v4, 0x0

    .line 1419
    .local v4, devideidx:I
    const/16 v15, 0xf

    if-ge v5, v15, :cond_2

    const/4 v15, 0x1

    sub-int v4, v5, v15

    .line 1422
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/discplus/view/DiscRenderer;->getCurrentSelection()I

    move-result v2

    .line 1423
    .local v2, curSel:I
    sget-object v15, Lcom/android/music/discplus/view/DiscRenderer;->DISC_DEGREE_INFO:[[I

    aget-object v15, v15, v4

    const/16 v16, 0x0

    aget v3, v15, v16

    .line 1424
    .local v3, devide:I
    const/16 v15, 0xf

    if-lt v5, v15, :cond_3

    const/16 v15, 0xf

    move v7, v15

    .line 1426
    .local v7, indexSize:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    move/from16 v16, v0

    add-int v11, v15, v16

    .line 1429
    .local v11, rollingAngle:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetX:[F

    move-object v15, v0

    array-length v15, v15

    if-eq v15, v7, :cond_1

    .line 1430
    new-array v15, v7, [I

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    .line 1431
    new-array v15, v7, [I

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTargetIdx:[I

    .line 1432
    new-array v15, v7, [F

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTargetX:[F

    .line 1433
    new-array v15, v7, [F

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTargetY:[F

    .line 1434
    new-array v15, v7, [F

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTargetZ:[F

    .line 1435
    new-array v15, v7, [F

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTargetScale:[F

    .line 1436
    new-array v15, v7, [I

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mTargetDegree:[I

    .line 1439
    :cond_1
    sget-object v15, Lcom/android/music/discplus/view/DiscRenderer;->DISC_DEGREE_INFO:[[I

    aget-object v15, v15, v4

    const/16 v16, 0x3

    aget v15, v15, v16

    add-int v14, v2, v15

    .line 1442
    .local v14, virtualIndex:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    if-ge v6, v7, :cond_a

    .line 1443
    move v10, v14

    .line 1444
    .local v10, realIndex:I
    :goto_3
    if-gez v10, :cond_4

    .line 1445
    add-int/2addr v10, v5

    goto :goto_3

    .line 1420
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

    .line 1424
    goto :goto_1

    .line 1447
    .restart local v6       #i:I
    .restart local v7       #indexSize:I
    .restart local v10       #realIndex:I
    .restart local v11       #rollingAngle:I
    .restart local v14       #virtualIndex:I
    :cond_4
    rem-int/2addr v10, v5

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    move-object v15, v0

    aput v6, v15, v6

    .line 1449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetIdx:[I

    move-object v15, v0

    aput v10, v15, v6

    .line 1451
    sget-object v15, Lcom/android/music/discplus/view/DiscRenderer;->DISC_DEGREE_INFO:[[I

    aget-object v15, v15, v4

    const/16 v16, 0x1

    aget v15, v15, v16

    add-int v9, v11, v15

    .line 1452
    .local v9, lRollingAngle:I
    mul-int v15, v6, v3

    add-int/2addr v15, v9

    sget-object v16, Lcom/android/music/discplus/view/DiscRenderer;->DISC_DEGREE_INFO:[[I

    aget-object v16, v16, v4

    const/16 v17, 0x2

    aget v16, v16, v17

    add-int v12, v15, v16

    .line 1453
    .local v12, routeidx:I
    rem-int/lit16 v12, v12, 0x2d0

    .line 1454
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransAngle:I

    move v15, v0

    if-eqz v15, :cond_9

    if-eq v14, v2, :cond_9

    .line 1455
    const/16 v15, 0x168

    if-ge v12, v15, :cond_7

    .line 1456
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransAngle:I

    move v15, v0

    add-int/2addr v12, v15

    const/16 v15, 0x168

    if-le v12, v15, :cond_6

    .line 1457
    const/16 v12, 0x168

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetZ:[F

    move-object v15, v0

    const v16, -0x3ff9999a

    aput v16, v15, v6

    .line 1473
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

    .line 1479
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

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetScale:[F

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTrackScale:[F

    move-object/from16 v16, v0

    aget v16, v16, v12

    aput v16, v15, v6

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetDegree:[I

    move-object v15, v0

    aput v12, v15, v6

    .line 1484
    add-int/lit8 v14, v14, -0x1

    .line 1442
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 1460
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

    .line 1462
    :cond_7
    const/16 v15, 0x168

    if-le v12, v15, :cond_5

    .line 1463
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTransAngle:I

    move v15, v0

    sub-int/2addr v12, v15

    const/16 v15, 0x168

    if-ge v12, v15, :cond_8

    .line 1464
    const/16 v12, 0x168

    .line 1465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetZ:[F

    move-object v15, v0

    const v16, -0x3ff9999a

    aput v16, v15, v6

    goto :goto_4

    .line 1467
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

    .line 1471
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

    .line 1487
    .end local v9           #lRollingAngle:I
    .end local v10           #realIndex:I
    .end local v12           #routeidx:I
    :cond_a
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v7, :cond_e

    .line 1488
    const/4 v8, 0x0

    .local v8, j:I
    :goto_6
    sub-int v15, v7, v6

    const/16 v16, 0x1

    sub-int v15, v15, v16

    if-ge v8, v15, :cond_d

    .line 1489
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

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    move-object v15, v0

    aget v13, v15, v8

    .line 1492
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

    .line 1493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    move-object v15, v0

    add-int/lit8 v16, v8, 0x1

    aput v13, v15, v16

    .line 1488
    .end local v13           #tempIndex:I
    :cond_b
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1494
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

    .line 1495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetIdx:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    move-object/from16 v16, v0

    aget v16, v16, v8

    aget v15, v15, v16

    if-ne v15, v2, :cond_b

    .line 1497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    move-object v15, v0

    aget v13, v15, v8

    .line 1498
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

    .line 1499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    move-object v15, v0

    add-int/lit8 v16, v8, 0x1

    aput v13, v15, v16

    goto :goto_7

    .line 1487
    .end local v13           #tempIndex:I
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 1505
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

    .line 1966
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    array-length v2, v2

    if-ge p2, v2, :cond_0

    if-gez p2, :cond_1

    .line 1982
    :cond_0
    :goto_0
    return-void

    .line 1969
    :cond_1
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    aget v2, v2, p2

    if-eq v2, v4, :cond_0

    .line 1971
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1972
    .local v1, index:I
    if-ltz v1, :cond_0

    .line 1973
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1974
    .local v0, delpos:I
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    aget v2, v2, v0

    if-eq v2, v4, :cond_2

    .line 1975
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    invoke-static {v2, v0}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTextures([II)V

    .line 1976
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    aput v4, v2, v0

    .line 1977
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureLoaded:Z

    .line 1979
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
    .line 2404
    const/4 v3, 0x1

    .line 2405
    .local v3, LEFT_SIDE:I
    const/4 v5, 0x2

    .line 2406
    .local v5, RIGHT_SIDE:I
    const/4 v4, 0x3

    .line 2407
    .local v4, OUTOFRANGE:I
    const/high16 v14, -0x8000

    .line 2408
    .local v14, idx:I
    const/4 v12, 0x3

    .line 2409
    .local v12, direction:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesRange:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 2410
    .local v16, size:I
    const/4 v11, 0x0

    .line 2411
    .local v11, count:I
    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v7, v0

    .line 2412
    .local v7, compareIdx:[I
    move/from16 v0, v16

    new-array v0, v0, [F

    move-object v9, v0

    .line 2413
    .local v9, comparex:[F
    move/from16 v0, v16

    new-array v0, v0, [F

    move-object v10, v0

    .line 2414
    .local v10, comparey:[F
    move/from16 v0, v16

    new-array v0, v0, [F

    move-object v8, v0

    .line 2415
    .local v8, compareZ:[F
    const v17, -0x39e3c000

    .line 2417
    .local v17, tempZ:F
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move v0, v13

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    .line 2418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesRange:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/music/discplus/view/DiscRenderer$CDRange;

    .line 2419
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

    .line 2420
    move-object v0, v6

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;->idx:I

    move/from16 v18, v0

    aput v18, v7, v11

    .line 2421
    move-object v0, v6

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;->x:F

    move/from16 v18, v0

    aput v18, v9, v11

    .line 2422
    move-object v0, v6

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;->y:F

    move/from16 v18, v0

    aput v18, v10, v11

    .line 2423
    move-object v0, v6

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;->z:F

    move/from16 v18, v0

    aput v18, v8, v11

    .line 2424
    move-object v0, v6

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;->z:F

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 2425
    add-int/lit8 v11, v11, 0x1

    .line 2417
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2428
    .end local v6           #cdr:Lcom/android/music/discplus/view/DiscRenderer$CDRange;
    :cond_1
    const/4 v15, 0x0

    .local v15, j:I
    :goto_1
    if-ge v15, v11, :cond_2

    .line 2429
    aget v18, v8, v15

    cmpl-float v18, v17, v18

    if-nez v18, :cond_4

    .line 2430
    aget v14, v7, v15

    .line 2431
    aget v18, v9, v15

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_3

    .line 2432
    const/4 v12, 0x2

    .line 2439
    :cond_2
    :goto_2
    const/16 v18, 0x0

    aput v14, p1, v18

    .line 2440
    const/16 v18, 0x1

    aput v12, p1, v18

    .line 2442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesRange:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 2443
    return-void

    .line 2433
    :cond_3
    aget v18, v9, v15

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_2

    .line 2434
    const/4 v12, 0x1

    goto :goto_2

    .line 2428
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_1
.end method

.method public dragDISCStop()V
    .locals 1

    .prologue
    .line 1411
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetDragMode:Z

    .line 1412
    return-void
.end method

.method public getCurSelObjectRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 2446
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesRange:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2447
    .local v3, size:I
    const/4 v2, 0x0

    .line 2448
    .local v2, rcObject:Landroid/graphics/Rect;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 2449
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesRange:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;

    .line 2450
    .local v0, cdr:Lcom/android/music/discplus/view/DiscRenderer$CDRange;
    iget v4, v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;->idx:I

    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscRenderer;->getCurrentSelection()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 2451
    iget-object v2, v0, Lcom/android/music/discplus/view/DiscRenderer$CDRange;->rect:Landroid/graphics/Rect;

    .line 2455
    .end local v0           #cdr:Lcom/android/music/discplus/view/DiscRenderer$CDRange;
    :cond_0
    return-object v2

    .line 2448
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
    .line 1803
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

    .line 1806
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mProjector:Lcom/android/music/discplus/util/Projector;

    invoke-virtual {v0, p1}, Lcom/android/music/discplus/util/Projector;->getCurrentModelView(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1807
    invoke-direct {p0, p2, p4, p5, p6}, Lcom/android/music/discplus/view/DiscRenderer;->saveCurSelRect(IFFF)V

    .line 1808
    return-void
.end method

.method public getCurrentSelection()I
    .locals 3

    .prologue
    .line 1909
    const/4 v1, 0x0

    .line 1910
    .local v1, cur:I
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v2}, Lcom/android/music/discplus/view/DiscView;->getTotalCount()I

    move-result v0

    .line 1912
    .local v0, count:I
    if-lez v0, :cond_1

    .line 1913
    iget v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentIndex:I

    .line 1914
    :goto_0
    if-gez v1, :cond_0

    add-int/2addr v1, v0

    goto :goto_0

    .line 1915
    :cond_0
    rem-int/2addr v1, v0

    .line 1917
    :cond_1
    return v1
.end method

.method public getMaxDiscCount()I
    .locals 1

    .prologue
    .line 1921
    const/16 v0, 0xf

    return v0
.end method

.method public getMovingMode()I
    .locals 1

    .prologue
    .line 1192
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

    .line 2460
    invoke-interface {p1, p3, p4, p5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 2461
    neg-float v0, p6

    invoke-interface {p1, v0, v2, v1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 2462
    invoke-interface {p1, p7, v1, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 2463
    invoke-interface {p1, p8, v1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 2464
    invoke-interface {p1, p2, p2, p2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 2465
    return-void
.end method

.method public final isAllowSwitchMove()Z
    .locals 1

    .prologue
    .line 2543
    iget-boolean v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mAllowSwitchMove:Z

    return v0
.end method

.method public final isTextureLoaded()Z
    .locals 1

    .prologue
    .line 2539
    iget-boolean v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureLoaded:Z

    return v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/high16 v3, -0x8000

    const/4 v2, 0x0

    .line 2477
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2478
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    aget v1, v1, v0

    if-eq v1, v3, :cond_0

    .line 2479
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    invoke-static {v1, v0}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTextures([II)V

    .line 2481
    :cond_0
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    aput v3, v1, v0

    .line 2477
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2485
    :cond_1
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureNItem:[I

    aget v1, v1, v2

    if-eq v1, v3, :cond_2

    .line 2486
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureNItem:[I

    invoke-static {v1, v2}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTextures([II)V

    .line 2488
    :cond_2
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureNItem:[I

    aput v3, v1, v2

    .line 2490
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureMask:[I

    aget v1, v1, v2

    if-eq v1, v3, :cond_3

    .line 2491
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureMask:[I

    invoke-static {v1, v2}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTextures([II)V

    .line 2493
    :cond_3
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureMask:[I

    aput v3, v1, v2

    .line 2495
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureTop:[I

    aget v1, v1, v2

    if-eq v1, v3, :cond_4

    .line 2496
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureTop:[I

    invoke-static {v1, v2}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTextures([II)V

    .line 2498
    :cond_4
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureTop:[I

    aput v3, v1, v2

    .line 2500
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesRange:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2507
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 35
    .parameter "gl"

    .prologue
    .line 1665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/discplus/view/DiscView;->isManagerThreadStop()Z

    move-result v32

    .line 1666
    .local v32, isMgrStop:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/discplus/view/DiscView;->getSurfaceView()Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    move-result-object v34

    .line 1667
    .local v34, surface:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;
    if-nez v32, :cond_0

    if-nez v34, :cond_1

    .line 1735
    :cond_0
    :goto_0
    return-void

    .line 1671
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/discplus/view/DiscView;->isDrawing()Z

    move-result v31

    .line 1672
    .local v31, isDrawing:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mOnTouchReadRange:Z

    move/from16 v33, v0

    .line 1674
    .local v33, onTouchReadRange:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/discplus/view/DiscView;->getCurrentView()Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-result-object v5

    .line 1675
    .local v5, curView:Lcom/android/music/discplus/view/DiscView$CurrentView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/discplus/view/DiscView;->getAnimationEffect()Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-result-object v6

    .line 1676
    .local v6, effectType:Lcom/android/music/discplus/view/DiscView$AniMationEffect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/discplus/view/DiscView;->getAnimationStatus()Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    move-result-object v12

    .line 1678
    .local v12, aniStatus:Lcom/android/music/discplus/view/DiscView$AniMationStatus;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/discplus/view/DiscView;->getTotalCount()I

    move-result v7

    .line 1679
    .local v7, dataCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/discplus/view/DiscView;->getCurrentSelection()I

    move-result v8

    .local v8, curSel:I
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 1681
    invoke-direct/range {v3 .. v8}, Lcom/android/music/discplus/view/DiscRenderer;->prepareTextures(Ljavax/microedition/khronos/opengles/GL10;Lcom/android/music/discplus/view/DiscView$CurrentView;Lcom/android/music/discplus/view/DiscView$AniMationEffect;II)V

    .line 1682
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/music/discplus/view/DiscRenderer;->execAnimationEffect(Lcom/android/music/discplus/view/DiscView$AniMationEffect;I)Z

    move-result v28

    .line 1684
    .local v28, animationDone:Z
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v29

    .line 1685
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

    .line 1687
    :cond_2
    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/music/discplus/view/DiscRenderer;->mLastFrameTime:J

    .line 1688
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mLastFrameTime:J

    move-wide v3, v0

    const-wide/32 v9, 0x17d7840

    add-long/2addr v3, v9

    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/music/discplus/view/DiscRenderer;->mNextFrameTime:J

    .line 1690
    sget-object v3, Lcom/android/music/discplus/view/DiscView$CurrentView;->DISC_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    if-ne v5, v3, :cond_3

    .line 1691
    invoke-direct/range {p0 .. p0}, Lcom/android/music/discplus/view/DiscRenderer;->rollingBy()V

    .line 1694
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move v3, v0

    const/16 v4, 0xc

    if-ge v3, v4, :cond_4

    .line 1695
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    .line 1699
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

    .line 1700
    invoke-direct/range {v9 .. v15}, Lcom/android/music/discplus/view/DiscRenderer;->setTransferData(Lcom/android/music/discplus/view/DiscView$CurrentView;Lcom/android/music/discplus/view/DiscView$AniMationEffect;Lcom/android/music/discplus/view/DiscView$AniMationStatus;III)V

    .line 1702
    if-eqz v31, :cond_5

    .line 1703
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

    .line 1712
    :cond_5
    const/4 v3, 0x1

    move/from16 v0, v33

    move v1, v3

    if-ne v0, v1, :cond_6

    sget-object v3, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_FINISHED:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    if-ne v12, v3, :cond_6

    sget-object v3, Lcom/android/music/discplus/view/DiscView$CurrentView;->TOP_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    if-eq v5, v3, :cond_6

    .line 1715
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

    .line 1716
    invoke-virtual/range {v15 .. v22}, Lcom/android/music/discplus/view/DiscRenderer;->readGLModelView(Ljavax/microedition/khronos/opengles/GL10;Lcom/android/music/discplus/view/DiscView$CurrentView;Lcom/android/music/discplus/view/DiscView$AniMationEffect;Lcom/android/music/discplus/view/DiscView$AniMationStatus;III)V

    .line 1717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/discplus/view/DiscView;->runOnTouchRunnableEnd()V

    .line 1720
    :cond_6
    const/4 v3, 0x1

    move/from16 v0, v28

    move v1, v3

    if-ne v0, v1, :cond_0

    .line 1721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object v3, v0

    sget-object v4, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_NONE:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    invoke-virtual {v3, v4}, Lcom/android/music/discplus/view/DiscView;->setAnimationEffect(Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V

    .line 1722
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
    .line 1811
    move v11, p2

    .line 1812
    .local v11, viewWidth:I
    move v10, p3

    .line 1813
    .local v10, viewHeight:I
    const/4 v0, 0x1

    if-ge v11, v0, :cond_0

    const/4 v11, 0x1

    .line 1814
    :cond_0
    const/4 v0, 0x1

    if-ge v10, v0, :cond_1

    const/4 v10, 0x1

    .line 1816
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v11, v10}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 1817
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mProjector:Lcom/android/music/discplus/util/Projector;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/android/music/discplus/util/Projector;->setCurrentView(IIII)V

    .line 1819
    int-to-float v0, v11

    int-to-float v1, v10

    div-float v9, v0, v1

    .line 1820
    .local v9, ratio:F
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 1821
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 1822
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

    .line 1824
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mProjector:Lcom/android/music/discplus/util/Projector;

    invoke-virtual {v0, p1}, Lcom/android/music/discplus/util/Projector;->getCurrentProjection(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1826
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 1827
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 1829
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->resetRenderMode()V

    .line 1831
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingExtraAngle:I

    iput v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 1832
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferDISC:I

    .line 1836
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    array-length v8, v0

    .line 1837
    .local v8, idsCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v8, :cond_3

    .line 1838
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    aget v0, v0, v7

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_2

    .line 1839
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    invoke-static {v0, v7}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTextures([II)V

    .line 1841
    :cond_2
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    const/high16 v1, -0x8000

    aput v1, v0, v7

    .line 1837
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1844
    :cond_3
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    .line 1846
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureNItem:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_4

    .line 1847
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureNItem:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTextures([II)V

    .line 1849
    :cond_4
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureNItem:[I

    const/4 v1, 0x0

    const/high16 v2, -0x8000

    aput v2, v0, v1

    .line 1851
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureMask:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_5

    .line 1852
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureMask:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTextures([II)V

    .line 1854
    :cond_5
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureMask:[I

    const/4 v1, 0x0

    const/high16 v2, -0x8000

    aput v2, v0, v1

    .line 1856
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureTop:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_6

    .line 1857
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureTop:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/discplus/view/DiscRenderer;->deleteTextures([II)V

    .line 1859
    :cond_6
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureTop:[I

    const/4 v1, 0x0

    const/high16 v2, -0x8000

    aput v2, v0, v1

    .line 1861
    invoke-direct {p0, p1}, Lcom/android/music/discplus/view/DiscRenderer;->prepareDiscDimTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1862
    invoke-direct {p0, p1}, Lcom/android/music/discplus/view/DiscRenderer;->prepareBlendTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1863
    invoke-direct {p0, p1}, Lcom/android/music/discplus/view/DiscRenderer;->prepareTopTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1864
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->getTotalCount()I

    move-result v4

    .line 1865
    .local v4, dataCount:I
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->getCurrentSelection()I

    move-result v5

    .line 1866
    .local v5, curSel:I
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->getCurrentView()Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-result-object v2

    .line 1867
    .local v2, curView:Lcom/android/music/discplus/view/DiscView$CurrentView;
    sget-object v3, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_LOADING:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/music/discplus/view/DiscRenderer;->prepareTextures(Ljavax/microedition/khronos/opengles/GL10;Lcom/android/music/discplus/view/DiscView$CurrentView;Lcom/android/music/discplus/view/DiscView$AniMationEffect;II)V

    .line 1869
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 1873
    invoke-static {}, Lcom/android/music/discplus/view/DiscRenderer;->freeHardwareVBO()V

    .line 1879
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mLastFrameTime:J

    .line 1880
    iget-wide v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mLastFrameTime:J

    const-wide/32 v2, 0x17d7840

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mNextFrameTime:J

    .line 1883
    invoke-static {}, Lcom/android/music/discplus/view/DiscRenderer;->genHardwareVBO()V

    .line 1899
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
    .line 1750
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesRange:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1752
    iget v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mMainXAngle:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 1753
    const/16 v2, 0x1700

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 1754
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 1755
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 1756
    iget v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mMainXAngle:F

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {p1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 1757
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mHeight:F

    const/4 v4, 0x0

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 1759
    if-nez p5, :cond_2

    .line 1760
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    const/4 v3, 0x0

    aget v12, v2, v3

    .line 1761
    .local v12, displayIdx:I
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureNItem:[I

    iget-object v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetIdx:[I

    aget v3, v3, v12

    aget v2, v2, v3

    const/high16 v3, -0x8000

    if-eq v2, v3, :cond_0

    .line 1762
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 1763
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

    .line 1766
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 1792
    .end local v12           #displayIdx:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 1793
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glFlush()V

    .line 1795
    :cond_1
    return-void

    .line 1769
    :cond_2
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    move v0, v13

    move/from16 v1, p6

    if-ge v0, v1, :cond_0

    .line 1770
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSortedIdx:[I

    aget v12, v2, v13

    .line 1771
    .restart local v12       #displayIdx:I
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTextureIds:[I

    iget-object v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetIdx:[I

    aget v3, v3, v12

    aget v2, v2, v3

    const/high16 v3, -0x8000

    if-eq v2, v3, :cond_4

    .line 1772
    sget-object v2, Lcom/android/music/discplus/view/DiscView$CurrentView;->LIST_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-object/from16 v0, p2

    move-object v1, v2

    if-ne v0, v1, :cond_3

    .line 1773
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetIdx:[I

    aget v2, v2, v12

    move v0, v2

    move/from16 v1, p7

    if-ne v0, v1, :cond_4

    .line 1774
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 1775
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

    .line 1778
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_0

    .line 1781
    :cond_3
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTargetZ:[F

    aget v2, v2, v12

    const/high16 v3, -0x4000

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    .line 1782
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 1783
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

    .line 1786
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 1769
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1
.end method

.method public releaseTexture(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1927
    invoke-direct {p0}, Lcom/android/music/discplus/view/DiscRenderer;->requestRender()V

    .line 1928
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->resetRenderMode()V

    .line 1930
    return-void
.end method

.method public ret_Divide_Degree(I)I
    .locals 3
    .parameter "numOfDISC"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2468
    sub-int v0, p1, v2

    if-gez v0, :cond_0

    move p1, v1

    .line 2470
    :goto_0
    sget-object v0, Lcom/android/music/discplus/view/DiscRenderer;->DISC_DEGREE_INFO:[[I

    aget-object v0, v0, p1

    aget v0, v0, v1

    return v0

    .line 2468
    :cond_0
    sub-int v0, p1, v2

    move p1, v0

    goto :goto_0
.end method

.method public setChangeListViewStart()V
    .locals 1

    .prologue
    .line 731
    invoke-direct {p0}, Lcom/android/music/discplus/view/DiscRenderer;->requestRender()V

    .line 732
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->resetRenderMode()V

    .line 733
    return-void
.end method

.method public setCurrentSelection(I)Z
    .locals 1
    .parameter "pos"

    .prologue
    .line 1903
    iput p1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentIndex:I

    .line 1904
    invoke-direct {p0}, Lcom/android/music/discplus/view/DiscRenderer;->requestRender()V

    .line 1905
    const/4 v0, 0x1

    return v0
.end method

.method public showChangeDiscAnimation()V
    .locals 1

    .prologue
    .line 719
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mFrameCount:I

    .line 720
    invoke-direct {p0}, Lcom/android/music/discplus/view/DiscRenderer;->requestRender()V

    .line 721
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->resetRenderMode()V

    .line 722
    return-void
.end method

.method public spinDISCStart(IZ)V
    .locals 1
    .parameter "degree"
    .parameter "isDrag"

    .prologue
    .line 1380
    iget v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingMode:I

    if-nez v0, :cond_2

    .line 1381
    if-gez p1, :cond_3

    .line 1382
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingMode:I

    .line 1392
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1393
    iput p1, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingDegree:I

    .line 1396
    :cond_1
    iput-boolean p2, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetDragMode:Z

    .line 1398
    :cond_2
    return-void

    .line 1383
    :cond_3
    if-lez p1, :cond_4

    .line 1384
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mSetMovingMode:I

    goto :goto_0

    .line 1387
    :cond_4
    iget v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentMovingMode:I

    if-nez v0, :cond_0

    .line 1388
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->requestDiscStop()V

    goto :goto_0
.end method

.method public spinDISCStop()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1401
    iget-object v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    iget v3, v3, Lcom/android/music/discplus/view/DiscView;->DISC_INDEX_NUM:I

    sub-int/2addr v3, v5

    if-gez v3, :cond_1

    move v1, v4

    .line 1402
    .local v1, numOfDISC:I
    :goto_0
    sget-object v3, Lcom/android/music/discplus/view/DiscRenderer;->DISC_DEGREE_INFO:[[I

    aget-object v3, v3, v1

    aget v2, v3, v4

    .line 1404
    .local v2, rollAngle:I
    iget v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mCurrentMovingMode:I

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 1405
    iget v3, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferDISC:I

    rem-int v0, v3, v2

    .line 1406
    .local v0, extraDegree:I
    iput v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mTransferDISC:I

    .line 1408
    .end local v0           #extraDegree:I
    :cond_0
    return-void

    .line 1401
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
    .line 725
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mOnTouchReadRange:Z

    .line 726
    invoke-direct {p0}, Lcom/android/music/discplus/view/DiscRenderer;->requestRender()V

    .line 727
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscRenderer;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->resetRenderMode()V

    .line 728
    return-void
.end method
