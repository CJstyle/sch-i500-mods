.class public Lcom/android/music/discplus/view/DiscView;
.super Landroid/widget/FrameLayout;
.source "DiscView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/discplus/view/DiscView$16;,
        Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;,
        Lcom/android/music/discplus/view/DiscView$ListViewRunnable;,
        Lcom/android/music/discplus/view/DiscView$CDList;,
        Lcom/android/music/discplus/view/DiscView$AnimationText;,
        Lcom/android/music/discplus/view/DiscView$DiscInfoText;,
        Lcom/android/music/discplus/view/DiscView$Arrow;,
        Lcom/android/music/discplus/view/DiscView$CDPlay;,
        Lcom/android/music/discplus/view/DiscView$CDFocus;,
        Lcom/android/music/discplus/view/DiscView$CurrentView;,
        Lcom/android/music/discplus/view/DiscView$AniMationStatus;,
        Lcom/android/music/discplus/view/DiscView$AniMationEffect;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field public DISC_INDEX_NUM:I

.field private inAnimationList:Landroid/view/animation/TranslateAnimation;

.field private isLandscape:Z

.field private mAlphaAnimation:Z

.field private mAniMationStatus:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

.field private mAnimationDurationMillisec:J

.field private mAnimationEffect:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

.field private mAnimationEffectNext:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

.field private mAnimationText:Lcom/android/music/discplus/view/DiscView$AnimationText;

.field private mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

.field private mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

.field private mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

.field private mCenterCD:Lcom/android/music/discplus/view/DiscView$CDFocus;

.field private mContext:Landroid/content/Context;

.field private mCurrentView:Lcom/android/music/discplus/view/DiscView$CurrentView;

.field private mDiscAngle:I

.field private mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

.field private mDiscPlusView:Landroid/widget/RelativeLayout;

.field private mHandler:Landroid/os/Handler;

.field private mInitLoading:Z

.field private mListViewRunnable:Lcom/android/music/discplus/view/DiscView$ListViewRunnable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mMoveDistance:I

.field private mPanelSwitcher:Lcom/android/music/discplus/view/PanelSwitcher;

.field private mPositionSynced:Z

.field private mRunOnAnimationEnd:Ljava/lang/Runnable;

.field private mRunOnChangeListViewStart:Ljava/lang/Runnable;

.field private mRunOnTouchRunnableEnd:Ljava/lang/Runnable;

.field private mScrFog:Landroid/widget/ImageView;

.field private mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

.field private mTouchMode:I

.field private mTouchRunnableX:I

.field private mTouchRunnableY:I

.field private mTouchSlop:I

.field private mTouchXPosition:I

.field private mTouchYPosition:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private outAnimationList:Landroid/view/animation/TranslateAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/discplus/view/DiscView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 281
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 126
    sget-object v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_INIT:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationEffect:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    .line 127
    sget-object v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_NONE:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationEffectNext:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    .line 128
    sget-object v0, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_PENDING:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mAniMationStatus:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    .line 129
    sget-object v0, Lcom/android/music/discplus/view/DiscView$CurrentView;->DISC_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mCurrentView:Lcom/android/music/discplus/view/DiscView$CurrentView;

    .line 132
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationDurationMillisec:J

    .line 133
    iput-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    .line 134
    iput-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mRunOnTouchRunnableEnd:Ljava/lang/Runnable;

    .line 135
    iput-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mRunOnChangeListViewStart:Ljava/lang/Runnable;

    .line 139
    iput v3, p0, Lcom/android/music/discplus/view/DiscView;->DISC_INDEX_NUM:I

    .line 140
    iput v3, p0, Lcom/android/music/discplus/view/DiscView;->mMoveDistance:I

    .line 141
    iput v3, p0, Lcom/android/music/discplus/view/DiscView;->mDiscAngle:I

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/discplus/view/DiscView;->mTouchMode:I

    .line 148
    iput v3, p0, Lcom/android/music/discplus/view/DiscView;->mTouchXPosition:I

    .line 149
    iput v3, p0, Lcom/android/music/discplus/view/DiscView;->mTouchYPosition:I

    .line 151
    iput-boolean v3, p0, Lcom/android/music/discplus/view/DiscView;->mAlphaAnimation:Z

    .line 152
    iput-boolean v3, p0, Lcom/android/music/discplus/view/DiscView;->isLandscape:Z

    .line 153
    iput-boolean v3, p0, Lcom/android/music/discplus/view/DiscView;->mPositionSynced:Z

    .line 154
    iput-boolean v3, p0, Lcom/android/music/discplus/view/DiscView;->mInitLoading:Z

    .line 204
    iput-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

    .line 205
    iput-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mCenterCD:Lcom/android/music/discplus/view/DiscView$CDFocus;

    .line 206
    iput-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    .line 207
    iput-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    .line 208
    iput-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    .line 209
    iput-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationText:Lcom/android/music/discplus/view/DiscView$AnimationText;

    .line 210
    iput-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mListViewRunnable:Lcom/android/music/discplus/view/DiscView$ListViewRunnable;

    .line 1470
    new-instance v0, Lcom/android/music/discplus/view/DiscView$8;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/view/DiscView$8;-><init>(Lcom/android/music/discplus/view/DiscView;)V

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mHandler:Landroid/os/Handler;

    .line 282
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscView;->mContext:Landroid/content/Context;

    .line 283
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 286
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    sget-object v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_INIT:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationEffect:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    .line 127
    sget-object v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_NONE:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationEffectNext:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    .line 128
    sget-object v0, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_PENDING:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mAniMationStatus:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    .line 129
    sget-object v0, Lcom/android/music/discplus/view/DiscView$CurrentView;->DISC_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mCurrentView:Lcom/android/music/discplus/view/DiscView$CurrentView;

    .line 132
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationDurationMillisec:J

    .line 133
    iput-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    .line 134
    iput-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mRunOnTouchRunnableEnd:Ljava/lang/Runnable;

    .line 135
    iput-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mRunOnChangeListViewStart:Ljava/lang/Runnable;

    .line 139
    iput v3, p0, Lcom/android/music/discplus/view/DiscView;->DISC_INDEX_NUM:I

    .line 140
    iput v3, p0, Lcom/android/music/discplus/view/DiscView;->mMoveDistance:I

    .line 141
    iput v3, p0, Lcom/android/music/discplus/view/DiscView;->mDiscAngle:I

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/discplus/view/DiscView;->mTouchMode:I

    .line 148
    iput v3, p0, Lcom/android/music/discplus/view/DiscView;->mTouchXPosition:I

    .line 149
    iput v3, p0, Lcom/android/music/discplus/view/DiscView;->mTouchYPosition:I

    .line 151
    iput-boolean v3, p0, Lcom/android/music/discplus/view/DiscView;->mAlphaAnimation:Z

    .line 152
    iput-boolean v3, p0, Lcom/android/music/discplus/view/DiscView;->isLandscape:Z

    .line 153
    iput-boolean v3, p0, Lcom/android/music/discplus/view/DiscView;->mPositionSynced:Z

    .line 154
    iput-boolean v3, p0, Lcom/android/music/discplus/view/DiscView;->mInitLoading:Z

    .line 204
    iput-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

    .line 205
    iput-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mCenterCD:Lcom/android/music/discplus/view/DiscView$CDFocus;

    .line 206
    iput-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    .line 207
    iput-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    .line 208
    iput-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    .line 209
    iput-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationText:Lcom/android/music/discplus/view/DiscView$AnimationText;

    .line 210
    iput-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mListViewRunnable:Lcom/android/music/discplus/view/DiscView$ListViewRunnable;

    .line 1470
    new-instance v0, Lcom/android/music/discplus/view/DiscView$8;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/view/DiscView$8;-><init>(Lcom/android/music/discplus/view/DiscView;)V

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mHandler:Landroid/os/Handler;

    .line 287
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscView;->mContext:Landroid/content/Context;

    .line 288
    return-void
.end method

.method static synthetic access$1100(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/music/discplus/view/DiscView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/music/discplus/view/DiscView;->mTouchRunnableX:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/music/discplus/view/DiscView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/music/discplus/view/DiscView;->mTouchRunnableX:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/music/discplus/view/DiscView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/music/discplus/view/DiscView;->mTouchRunnableY:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/music/discplus/view/DiscView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/music/discplus/view/DiscView;->mTouchRunnableY:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/music/discplus/view/DiscView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscView;->mRunOnTouchRunnableEnd:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/PanelSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mPanelSwitcher:Lcom/android/music/discplus/view/PanelSwitcher;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/music/discplus/view/DiscView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/music/discplus/view/DiscView;->spinDISCbyObjectClick(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/music/discplus/view/DiscView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/music/discplus/view/DiscView;->spinDISCbyIndex(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/music/discplus/view/DiscView;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/music/discplus/view/DiscView;->initAdapter(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/music/discplus/view/DiscView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mScrFog:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/music/discplus/view/DiscView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$AnimationText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationText:Lcom/android/music/discplus/view/DiscView$AnimationText;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$DiscInfoText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/music/discplus/view/DiscView;)Landroid/view/animation/TranslateAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->inAnimationList:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/music/discplus/view/DiscView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscView;->mRunOnChangeListViewStart:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/music/discplus/view/DiscView;Lcom/android/music/player/service/ICorePlayerService;IIILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p7}, Lcom/android/music/discplus/view/DiscView;->setPlayIterator(Lcom/android/music/player/service/ICorePlayerService;IIILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$CDList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$CDPlay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    return-object v0
.end method

.method private calcDistance()I
    .locals 8

    .prologue
    .line 845
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 864
    :goto_0
    return v4

    .line 847
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getWidth()I

    move-result v4

    shr-int/lit8 v1, v4, 0x1

    .line 848
    .local v1, halfwidth:I
    int-to-double v4, v1

    const-wide v6, 0x4008cccccccccccdL

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4010

    div-double/2addr v4, v6

    double-to-int v3, v4

    .line 850
    .local v3, rwidth:I
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-static {v4}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->access$1000(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;)Lcom/android/music/discplus/view/DiscRenderer;

    move-result-object v4

    iget v5, p0, Lcom/android/music/discplus/view/DiscView;->DISC_INDEX_NUM:I

    invoke-virtual {v4, v5}, Lcom/android/music/discplus/view/DiscRenderer;->ret_Divide_Degree(I)I

    move-result v4

    div-int/lit8 v2, v4, 0x2

    .line 851
    .local v2, rollAngle:I
    const/4 v0, 0x0

    .line 852
    .local v0, distance:I
    const/16 v4, 0x5a

    if-ge v2, v4, :cond_2

    .line 853
    int-to-double v4, v3

    int-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 854
    int-to-float v4, v0

    const v5, 0x3f6147ae

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 862
    :goto_1
    iget v4, p0, Lcom/android/music/discplus/view/DiscView;->DISC_INDEX_NUM:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 863
    const/4 v0, 0x0

    :cond_1
    move v4, v0

    .line 864
    goto :goto_0

    .line 856
    :cond_2
    const/16 v4, 0xb4

    if-lt v2, v4, :cond_3

    .line 857
    mul-int/lit8 v3, v3, 0x2

    .line 859
    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method private distance2Angle(I)I
    .locals 3
    .parameter "distance"

    .prologue
    .line 881
    iget v1, p0, Lcom/android/music/discplus/view/DiscView;->mDiscAngle:I

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/android/music/discplus/view/DiscView;->mMoveDistance:I

    div-int v0, v1, v2

    .line 882
    .local v0, angle:I
    return v0
.end method

.method private getDiscAngle()I
    .locals 3

    .prologue
    .line 873
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 877
    :goto_0
    return v1

    .line 874
    :cond_0
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-static {v1}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->access$1000(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;)Lcom/android/music/discplus/view/DiscRenderer;

    move-result-object v1

    iget v2, p0, Lcom/android/music/discplus/view/DiscView;->DISC_INDEX_NUM:I

    invoke-virtual {v1, v2}, Lcom/android/music/discplus/view/DiscRenderer;->ret_Divide_Degree(I)I

    move-result v0

    .local v0, rollAngle:I
    move v1, v0

    .line 877
    goto :goto_0
.end method

.method private initAdapter(Ljava/util/ArrayList;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/discplus/data/ListViewData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p1, viewDatas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/discplus/data/ListViewData;>;"
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mDiscPlusView:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 432
    sget-object v12, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    .line 433
    .local v12, player:Lcom/android/music/player/service/ICorePlayerService;
    new-instance v0, Lcom/android/music/discplus/view/DiscListAdapter;

    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v12, p1}, Lcom/android/music/discplus/view/DiscListAdapter;-><init>(Landroid/content/Context;Lcom/android/music/player/service/ICorePlayerService;Ljava/util/ArrayList;)V

    .line 435
    .local v0, discListAdapter:Lcom/android/music/discplus/view/DiscListAdapter;
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getPlusData()Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v2

    iget v7, v2, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusType:I

    .line 436
    .local v7, type:I
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getCurrentSelection()I

    move-result v10

    .line 437
    .local v10, currentIndex:I
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getPlusData()Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v2

    iget-object v8, v2, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    .line 438
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    if-ltz v10, :cond_0

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gt v2, v10, :cond_1

    .line 515
    .end local v0           #discListAdapter:Lcom/android/music/discplus/view/DiscListAdapter;
    .end local v7           #type:I
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v10           #currentIndex:I
    .end local v12           #player:Lcom/android/music/player/service/ICorePlayerService;
    :cond_0
    :goto_0
    return-void

    .line 442
    .restart local v0       #discListAdapter:Lcom/android/music/discplus/view/DiscListAdapter;
    .restart local v7       #type:I
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v10       #currentIndex:I
    .restart local v12       #player:Lcom/android/music/player/service/ICorePlayerService;
    :cond_1
    invoke-interface {v8, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 443
    invoke-static {v7}, Lcom/android/music/common/util/ListType;->getDiscPlusTypeItemTitleIndex(I)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 444
    .local v9, string:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mContext:Landroid/content/Context;

    invoke-static {v2, v7, v9}, Lcom/android/music/common/util/ListType;->getDiscPlusSubListType(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    .line 445
    .local v1, subListType:I
    if-eqz v12, :cond_2

    .line 447
    :try_start_0
    invoke-interface {v12}, Lcom/android/music/player/service/ICorePlayerService;->getCurrent_ID()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v12}, Lcom/android/music/player/service/ICorePlayerService;->getAudioId()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/music/discplus/view/DiscListAdapter;->setPlayingAudioId(IJJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

    if-eqz v2, :cond_3

    .line 454
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

    iget-object v2, v2, Lcom/android/music/discplus/view/DiscView$CDList;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 455
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

    iget-object v2, v2, Lcom/android/music/discplus/view/DiscView$CDList;->list:Landroid/widget/ListView;

    new-instance v3, Landroid/graphics/drawable/PaintDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 458
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 459
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

    if-eqz v2, :cond_0

    .line 460
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

    iget-object v13, v2, Lcom/android/music/discplus/view/DiscView$CDList;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/android/music/discplus/view/DiscView$1;

    move-object v3, p0

    move-object v4, v12

    move-object v5, v0

    move v6, v1

    invoke-direct/range {v2 .. v9}, Lcom/android/music/discplus/view/DiscView$1;-><init>(Lcom/android/music/discplus/view/DiscView;Lcom/android/music/player/service/ICorePlayerService;Lcom/android/music/discplus/view/DiscListAdapter;IILandroid/database/Cursor;Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 448
    :catch_0
    move-exception v2

    move-object v11, v2

    .line 449
    .local v11, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/music/discplus/view/DiscView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentMediaAudioId() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setPlayIterator(Lcom/android/music/player/service/ICorePlayerService;IIILjava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "player"
    .parameter "id"
    .parameter "listType"
    .parameter "filterId"
    .parameter "strFilter"
    .parameter "filterId2"
    .parameter "strFilter2"

    .prologue
    .line 618
    :try_start_0
    invoke-interface/range {p1 .. p7}, Lcom/android/music/player/service/ICorePlayerService;->setPlayIterator(IIILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :goto_0
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getPlusData()Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/music/discplus/data/DiscPlusData;->mIsPlayed:Z

    .line 624
    return-void

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/android/music/discplus/view/DiscView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPlayIterator e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private spinDISCbyAngle(IZ)V
    .locals 2
    .parameter "rollRange"
    .parameter "drag"

    .prologue
    .line 942
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    if-nez v1, :cond_1

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 944
    :cond_1
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getAnimationEffect()Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-result-object v0

    .line 945
    .local v0, effect:Lcom/android/music/discplus/view/DiscView$AniMationEffect;
    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_NONE:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_STOP:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_ROLLING:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    if-ne v0, v1, :cond_0

    .line 949
    :cond_2
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->rollingAnimation()V

    .line 950
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-virtual {v1, p1, p2}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->setSpinDegree(IZ)V

    goto :goto_0
.end method

.method private spinDISCbyIndex(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 955
    iget-object v3, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    if-nez v3, :cond_1

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 957
    :cond_1
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getAnimationEffect()Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-result-object v0

    .line 958
    .local v0, effect:Lcom/android/music/discplus/view/DiscView$AniMationEffect;
    sget-object v3, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_NONE:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    if-eq v0, v3, :cond_2

    sget-object v3, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_STOP:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    if-eq v0, v3, :cond_2

    sget-object v3, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_ROLLING:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    if-ne v0, v3, :cond_0

    .line 962
    :cond_2
    iget-object v3, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-static {v3}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->access$1000(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;)Lcom/android/music/discplus/view/DiscRenderer;

    move-result-object v3

    iget v4, p0, Lcom/android/music/discplus/view/DiscView;->DISC_INDEX_NUM:I

    invoke-virtual {v3, v4}, Lcom/android/music/discplus/view/DiscRenderer;->ret_Divide_Degree(I)I

    move-result v1

    .line 963
    .local v1, rollAngle:I
    mul-int v2, p1, v1

    .line 965
    .local v2, rollRange:I
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->rollingAnimation()V

    .line 966
    iget-object v3, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->setSpinDegree(IZ)V

    goto :goto_0
.end method

.method private spinDISCbyObjectClick(II)V
    .locals 11
    .parameter "_x"
    .parameter "_y"

    .prologue
    .line 786
    const/4 v0, 0x1

    .line 787
    .local v0, LEFT_SIDE:I
    const/4 v2, 0x2

    .line 788
    .local v2, RIGHT_SIDE:I
    const/4 v1, 0x3

    .line 790
    .local v1, OUTOFRANGE:I
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getTotalCount()I

    move-result v3

    .line 791
    .local v3, count:I
    const/4 v4, 0x0

    .line 792
    .local v4, curDistance:I
    const/4 v7, 0x3

    .line 793
    .local v7, direction:I
    const/high16 v9, -0x8000

    .line 794
    .local v9, targetIdx:I
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getCurrentSelection()I

    move-result v5

    .line 796
    .local v5, curIdx:I
    const/4 v10, 0x2

    new-array v8, v10, [I

    fill-array-data v8, :array_0

    .line 798
    .local v8, obj:[I
    iget-object v10, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-static {v10}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->access$1000(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;)Lcom/android/music/discplus/view/DiscRenderer;

    move-result-object v10

    invoke-virtual {v10, v8, p1, p2}, Lcom/android/music/discplus/view/DiscRenderer;->distanceObject([III)V

    .line 800
    const/4 v10, 0x0

    aget v9, v8, v10

    .line 801
    const/4 v10, 0x1

    aget v7, v8, v10

    .line 803
    if-lez v3, :cond_8

    const/high16 v10, -0x8000

    if-eq v9, v10, :cond_8

    .line 804
    :goto_0
    const/4 v10, 0x6

    if-ge v4, v10, :cond_0

    .line 805
    if-ne v9, v5, :cond_1

    .line 806
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->onClickCDFocus()V

    .line 841
    :cond_0
    :goto_1
    return-void

    .line 808
    :cond_1
    const/4 v10, 0x1

    if-ne v7, v10, :cond_4

    .line 809
    sub-int v6, v5, v4

    .line 810
    .local v6, curPosition:I
    if-gez v6, :cond_2

    add-int/2addr v6, v3

    .line 811
    :cond_2
    if-ne v9, v6, :cond_7

    .line 813
    if-nez v4, :cond_3

    .line 814
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->onClickCDFocus()V

    goto :goto_1

    .line 816
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/music/discplus/view/DiscView;->spinDISCbyIndex(I)V

    goto :goto_1

    .line 820
    .end local v6           #curPosition:I
    :cond_4
    const/4 v10, 0x2

    if-ne v7, v10, :cond_7

    .line 821
    add-int v6, v5, v4

    .line 822
    .restart local v6       #curPosition:I
    const/4 v10, 0x1

    sub-int v10, v3, v10

    if-le v6, v10, :cond_5

    sub-int/2addr v6, v3

    .line 824
    :cond_5
    if-ne v9, v6, :cond_7

    .line 826
    mul-int/lit8 v4, v4, -0x1

    .line 827
    if-nez v4, :cond_6

    .line 828
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->onClickCDFocus()V

    goto :goto_1

    .line 830
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/music/discplus/view/DiscView;->spinDISCbyIndex(I)V

    goto :goto_1

    .line 836
    .end local v6           #curPosition:I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 839
    :cond_8
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/music/discplus/view/DiscView;->spinDISCbyIndex(I)V

    goto :goto_1

    .line 796
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x80t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private spinDISCbyVelocity(I)V
    .locals 7
    .parameter "velocity"

    .prologue
    const/4 v6, 0x0

    .line 971
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    if-nez v4, :cond_1

    .line 991
    :cond_0
    :goto_0
    return-void

    .line 973
    :cond_1
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getAnimationEffect()Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-result-object v0

    .line 974
    .local v0, effect:Lcom/android/music/discplus/view/DiscView$AniMationEffect;
    sget-object v4, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_NONE:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    if-eq v0, v4, :cond_2

    sget-object v4, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_STOP:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    if-eq v0, v4, :cond_2

    sget-object v4, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_ROLLING:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    if-ne v0, v4, :cond_0

    .line 977
    :cond_2
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/music/discplus/view/DiscView;->mTouchMode:I

    .line 978
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/android/music/discplus/view/DiscView;->DISC_INDEX_NUM:I

    div-int/lit8 v5, v5, 0x2

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/android/music/discplus/view/DiscView;->mMaximumVelocity:I

    div-int v2, v4, v5

    .line 979
    .local v2, rollDiscCount:I
    if-nez v2, :cond_3

    .line 980
    const/4 v2, 0x1

    .line 982
    :cond_3
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-static {v4}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->access$1000(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;)Lcom/android/music/discplus/view/DiscRenderer;

    move-result-object v4

    iget v5, p0, Lcom/android/music/discplus/view/DiscView;->DISC_INDEX_NUM:I

    invoke-virtual {v4, v5}, Lcom/android/music/discplus/view/DiscRenderer;->ret_Divide_Degree(I)I

    move-result v1

    .line 983
    .local v1, rollAngle:I
    mul-int v3, v2, v1

    .line 985
    .local v3, rollRange:I
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->rollingAnimation()V

    .line 986
    if-gez p1, :cond_4

    .line 987
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    neg-int v5, v3

    invoke-virtual {v4, v5, v6}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->setSpinDegree(IZ)V

    goto :goto_0

    .line 989
    :cond_4
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-virtual {v4, v3, v6}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->setSpinDegree(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public checkPlayBtn()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 2223
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getTotalCount()I

    move-result v0

    .line 2224
    .local v0, count:I
    if-lez v0, :cond_0

    .line 2225
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getPlusData()Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v8

    iget v7, v8, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusType:I

    .line 2226
    .local v7, type:I
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getCurrentSelection()I

    move-result v1

    .line 2227
    .local v1, currentIndex:I
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getPlusData()Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v8

    invoke-virtual {v8, v7, v1}, Lcom/android/music/discplus/data/DiscPlusData;->getTypeDiscPlusListView(II)Ljava/util/ArrayList;

    move-result-object v5

    .line 2229
    .local v5, listViewDatas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/discplus/data/ListViewData;>;"
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 2230
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    iput-boolean v11, v8, Lcom/android/music/discplus/view/DiscView$CDPlay;->isEnable:Z

    .line 2246
    :goto_0
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    iget-object v8, v8, Lcom/android/music/discplus/view/DiscView$CDPlay;->btn:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    iget-boolean v9, v9, Lcom/android/music/discplus/view/DiscView$CDPlay;->isEnable:Z

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2248
    .end local v1           #currentIndex:I
    .end local v5           #listViewDatas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/discplus/data/ListViewData;>;"
    .end local v7           #type:I
    :cond_0
    return-void

    .line 2233
    .restart local v1       #currentIndex:I
    .restart local v5       #listViewDatas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/discplus/data/ListViewData;>;"
    .restart local v7       #type:I
    :cond_1
    sget-object v6, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    .line 2234
    .local v6, player:Lcom/android/music/player/service/ICorePlayerService;
    const-wide/16 v3, -0x1

    .line 2236
    .local v3, id:J
    if-eqz v6, :cond_2

    .line 2237
    :try_start_0
    invoke-interface {v6}, Lcom/android/music/player/service/ICorePlayerService;->getAudioId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    int-to-long v3, v8

    .line 2242
    :cond_2
    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-gez v8, :cond_3

    iget-object v8, p0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/music/discplus/view/DiscView$CDPlay;->isEnable:Z

    goto :goto_0

    .line 2239
    :catch_0
    move-exception v2

    .line 2240
    .local v2, e:Landroid/os/RemoteException;
    sget-object v8, Lcom/android/music/discplus/view/DiscView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setPlaying"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2243
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_3
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    iput-boolean v11, v8, Lcom/android/music/discplus/view/DiscView$CDPlay;->isEnable:Z

    goto :goto_0
.end method

.method public dataChangeApplied()V
    .locals 2

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    if-eqz v0, :cond_0

    .line 1681
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->access$2102(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;Z)Z

    .line 1682
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x1

    .line 1039
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getCurrentView()Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-result-object v0

    .line 1040
    .local v0, currentView:Lcom/android/music/discplus/view/DiscView$CurrentView;
    const/4 v2, 0x1

    .line 1042
    .local v2, executeTouch:Z
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->resetRenderMode()V

    .line 1044
    sget-object v3, Lcom/android/music/discplus/view/DiscView$16;->$SwitchMap$com$android$music$discplus$view$DiscView$CurrentView:[I

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView$CurrentView;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1054
    :goto_0
    :pswitch_0
    if-eqz v2, :cond_0

    .line 1056
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1061
    :goto_1
    return v3

    .line 1046
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/music/discplus/view/DiscView;->execTouchAtListView(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1047
    goto :goto_0

    .line 1050
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/music/discplus/view/DiscView;->execTouchAtDiscView(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1057
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    move v3, v5

    .line 1058
    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    move v3, v5

    .line 1061
    goto :goto_1

    .line 1044
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public execTouchAtDiscView(Landroid/view/MotionEvent;)Z
    .locals 22
    .parameter "event"

    .prologue
    .line 1213
    const/4 v13, 0x0

    .line 1223
    .local v13, retVal:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 1224
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1226
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1228
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1229
    .local v4, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move v15, v0

    .line 1230
    .local v15, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1232
    .local v17, y:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/discplus/view/DiscView;->getAnimationStatus()Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    move-result-object v5

    .line 1234
    .local v5, aniStatus:Lcom/android/music/discplus/view/DiscView$AniMationStatus;
    packed-switch v4, :pswitch_data_0

    .line 1425
    .end local p1
    :cond_1
    :goto_0
    return v13

    .line 1236
    .restart local p1
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscView;->mTouchMode:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    sget-object v18, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_RUNNING:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    move-object v0, v5

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 1238
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscView;->mTouchMode:I

    .line 1245
    :goto_1
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscView;->mTouchXPosition:I

    .line 1246
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscView;->mTouchYPosition:I

    .line 1247
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscView;->mTouchMode:I

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->infoScreen:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->rc:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$Arrow;->arrow:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$Arrow;->rc:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$Arrow;->rc:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    const/16 v20, 0x1e

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$Arrow;->rc:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1e

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$Arrow;->rc:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x14

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1253
    invoke-direct/range {p0 .. p0}, Lcom/android/music/discplus/view/DiscView;->calcDistance()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscView;->mMoveDistance:I

    .line 1254
    invoke-direct/range {p0 .. p0}, Lcom/android/music/discplus/view/DiscView;->getDiscAngle()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscView;->mDiscAngle:I

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$CDPlay;->btn:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$CDPlay;->rc:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mDiscPlusView:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$CDPlay;->btn:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$CDPlay;->rc:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$Arrow;->rc:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v15

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1260
    sget-object v18, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_RUNNING:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    move-object v0, v5

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscView$Arrow;->pressed:Z

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$Arrow;->flick:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1264
    :cond_2
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1240
    .restart local p1
    :cond_3
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscView;->mTouchMode:I

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x5dc

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x5dc

    const-wide/16 v20, 0x64

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 1265
    .end local p1
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$CDPlay;->rc:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v15

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1266
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/discplus/view/DiscView;->checkPlayBtn()V

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscView$CDPlay;->pressed:Z

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$CDPlay;->btn:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/music/discplus/view/DiscView$CDPlay;->isEnable:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 1269
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1275
    .restart local p1
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscView;->mTouchMode:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x5dc

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/music/discplus/view/DiscView$Arrow;->pressed:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$Arrow;->rc:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v15

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v18

    if-eqz v18, :cond_5

    sget-object v18, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_RUNNING:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    move-object v0, v5

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$Arrow;->flick:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1284
    :goto_2
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1282
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$Arrow;->flick:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 1285
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/music/discplus/view/DiscView$CDPlay;->pressed:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 1286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$CDPlay;->rc:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v15

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$CDPlay;->btn:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/music/discplus/view/DiscView$CDPlay;->isEnable:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 1291
    :goto_3
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1289
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$CDPlay;->btn:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_3

    .line 1293
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscView;->mTouchXPosition:I

    move/from16 v18, v0

    sub-int v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v16

    .line 1295
    .local v16, xDiff:I
    const/4 v6, 0x0

    .line 1296
    .local v6, direction:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscView;->mTouchXPosition:I

    move/from16 v18, v0

    sub-int v18, v15, v18

    if-gez v18, :cond_a

    .line 1297
    const/4 v6, -0x1

    .line 1301
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscView;->mMoveDistance:I

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 1303
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/music/discplus/view/DiscView;->distance2Angle(I)I

    move-result v18

    mul-int v12, v6, v18

    .line 1304
    .local v12, moveAngle:I
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move v1, v12

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/music/discplus/view/DiscView;->spinDISCbyAngle(IZ)V

    .line 1305
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscView;->mTouchXPosition:I

    .line 1307
    .end local v12           #moveAngle:I
    :cond_9
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscView;->mTouchYPosition:I

    goto/16 :goto_0

    .line 1299
    :cond_a
    const/4 v6, 0x1

    goto :goto_4

    .line 1309
    .end local v6           #direction:I
    .end local v16           #xDiff:I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscView;->mTouchMode:I

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 1310
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscView;->mTouchXPosition:I

    move/from16 v18, v0

    sub-int v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 1311
    .local v8, distance:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscView;->mTouchSlop:I

    move/from16 v18, v0

    move v0, v8

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 1312
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscView;->mTouchMode:I

    goto/16 :goto_0

    .line 1318
    .end local v8           #distance:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscView;->mTouchMode:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v14, v0

    .line 1320
    .local v14, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v18, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscView;->mMaximumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object v0, v14

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1321
    invoke-virtual {v14}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move v9, v0

    .line 1322
    .local v9, initialXVelocity:I
    invoke-virtual {v14}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move v10, v0

    .line 1323
    .local v10, initialYVelocity:I
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscView;->mMinimumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_e

    const/16 v18, 0x1

    :goto_5
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscView;->mMinimumVelocity:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_f

    const/16 v19, 0x1

    :goto_6
    or-int v11, v18, v19

    .line 1324
    .local v11, isFling:Z
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v18

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_10

    const/16 v18, 0x1

    move/from16 v7, v18

    .line 1327
    .local v7, directionX:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->setDragStop()V

    .line 1330
    :cond_c
    if-eqz v11, :cond_d

    .line 1331
    if-eqz v7, :cond_11

    .line 1332
    move-object/from16 v0, p0

    move v1, v9

    invoke-direct {v0, v1}, Lcom/android/music/discplus/view/DiscView;->spinDISCbyVelocity(I)V

    .line 1333
    const/4 v13, 0x0

    .line 1383
    .end local v7           #directionX:Z
    .end local v9           #initialXVelocity:I
    .end local v10           #initialYVelocity:I
    .end local v11           #isFling:Z
    .end local v14           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_d
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscView$Arrow;->pressed:Z

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$Arrow;->flick:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$CDPlay;->btn:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscView$CDPlay;->pressed:Z

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->recycle()V

    .line 1391
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 1323
    .restart local v9       #initialXVelocity:I
    .restart local v10       #initialYVelocity:I
    .restart local v14       #velocityTracker:Landroid/view/VelocityTracker;
    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_5

    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_6

    .line 1324
    .restart local v11       #isFling:Z
    :cond_10
    const/16 v18, 0x0

    move/from16 v7, v18

    goto/16 :goto_7

    .line 1335
    .restart local v7       #directionX:Z
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/discplus/view/DiscView;->getAnimationStatus()Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    move-result-object v18

    sget-object v19, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_RUNNING:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mRunOnTouchRunnableEnd:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    if-nez v18, :cond_d

    if-lez v10, :cond_d

    .line 1338
    new-instance v18, Lcom/android/music/discplus/view/DiscView$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/discplus/view/DiscView$6;-><init>(Lcom/android/music/discplus/view/DiscView;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscView;->mTouchXPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscView;->mTouchYPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/discplus/view/DiscView;->setTouchRunnable(Ljava/lang/Runnable;II)V

    goto/16 :goto_8

    .line 1355
    .end local v7           #directionX:Z
    .end local v9           #initialXVelocity:I
    .end local v10           #initialYVelocity:I
    .end local v11           #isFling:Z
    .end local v14           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscView;->mTouchMode:I

    move/from16 v18, v0

    if-nez v18, :cond_d

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/music/discplus/view/DiscView$Arrow;->pressed:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$Arrow;->rc:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v15

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mPanelSwitcher:Lcom/android/music/discplus/view/PanelSwitcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/music/discplus/view/PanelSwitcher;->moveDown()Z

    .line 1360
    :cond_13
    const/4 v13, 0x1

    .line 1381
    :cond_14
    :goto_9
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscView;->mTouchMode:I

    goto/16 :goto_8

    .line 1361
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/music/discplus/view/DiscView$CDPlay;->pressed:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_17

    .line 1362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$CDPlay;->rc:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v15

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v18

    if-eqz v18, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/music/discplus/view/DiscView$CDPlay;->isEnable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_16

    .line 1363
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/discplus/view/DiscView;->onClickCDPlay()V

    .line 1365
    :cond_16
    const/4 v13, 0x1

    goto :goto_9

    .line 1367
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/discplus/view/DiscView;->getAnimationStatus()Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    move-result-object v18

    sget-object v19, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_RUNNING:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mRunOnTouchRunnableEnd:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    if-nez v18, :cond_14

    .line 1369
    new-instance v18, Lcom/android/music/discplus/view/DiscView$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/discplus/view/DiscView$7;-><init>(Lcom/android/music/discplus/view/DiscView;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v15

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/discplus/view/DiscView;->setTouchRunnable(Ljava/lang/Runnable;II)V

    goto :goto_9

    .line 1396
    :pswitch_3
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/discplus/view/DiscView;->mTouchMode:I

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->setDragStop()V

    .line 1407
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscView$Arrow;->pressed:Z

    .line 1408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$Arrow;->flick:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$CDPlay;->btn:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 1418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/music/discplus/view/DiscView$CDPlay;->pressed:Z

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->recycle()V

    .line 1421
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/view/DiscView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 1234
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public execTouchAtListView(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    .line 1067
    const/4 v4, 0x0

    .line 1075
    .local v4, retVal:Z
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_0

    .line 1076
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/android/music/discplus/view/DiscView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1078
    :cond_0
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1080
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1081
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 1082
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 1083
    .local v7, y:I
    packed-switch v0, :pswitch_data_0

    .line 1209
    :cond_1
    :goto_0
    return v4

    .line 1086
    :pswitch_0
    iput v6, p0, Lcom/android/music/discplus/view/DiscView;->mTouchXPosition:I

    .line 1087
    iput v7, p0, Lcom/android/music/discplus/view/DiscView;->mTouchYPosition:I

    .line 1088
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v8, v8, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->infoScreen:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v9, v9, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->rc:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 1089
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscView;->mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

    iget-object v8, v8, Lcom/android/music/discplus/view/DiscView$CDList;->list:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/android/music/discplus/view/DiscView;->mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

    iget-object v9, v9, Lcom/android/music/discplus/view/DiscView$CDList;->rc:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->getHitRect(Landroid/graphics/Rect;)V

    .line 1090
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscView;->mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

    iget-object v8, v8, Lcom/android/music/discplus/view/DiscView$CDList;->rc:Landroid/graphics/Rect;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1091
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscView;->mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/music/discplus/view/DiscView$CDList;->pressed:Z

    .line 1092
    const/4 v4, 0x1

    goto :goto_0

    .line 1093
    :cond_2
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v8, v8, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->rc:Landroid/graphics/Rect;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1094
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->pressed:Z

    goto :goto_0

    .line 1096
    :cond_3
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscView;->mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/music/discplus/view/DiscView$CDList;->pressed:Z

    .line 1097
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->pressed:Z

    goto :goto_0

    .line 1127
    :pswitch_1
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscView;->mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

    iget-boolean v8, v8, Lcom/android/music/discplus/view/DiscView$CDList;->pressed:Z

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-boolean v8, v8, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->pressed:Z

    if-eqz v8, :cond_1

    .line 1128
    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    .line 1133
    :pswitch_2
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1134
    .local v5, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v8, 0x3e8

    iget v9, p0, Lcom/android/music/discplus/view/DiscView;->mMaximumVelocity:I

    int-to-float v9, v9

    invoke-virtual {v5, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1135
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    float-to-int v1, v8

    .line 1136
    .local v1, initialXVelocity:I
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    float-to-int v2, v8

    .line 1137
    .local v2, initialYVelocity:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Lcom/android/music/discplus/view/DiscView;->mMinimumVelocity:I

    if-le v8, v9, :cond_6

    const/4 v8, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Lcom/android/music/discplus/view/DiscView;->mMinimumVelocity:I

    if-le v9, v10, :cond_7

    const/4 v9, 0x1

    :goto_2
    or-int v3, v8, v9

    .line 1139
    .local v3, isFling:Z
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscView;->mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

    iget-boolean v8, v8, Lcom/android/music/discplus/view/DiscView$CDList;->pressed:Z

    if-eqz v8, :cond_8

    .line 1153
    const/4 v4, 0x1

    .line 1185
    :cond_5
    :goto_3
    const/high16 v8, -0x8000

    iput v8, p0, Lcom/android/music/discplus/view/DiscView;->mTouchXPosition:I

    .line 1186
    const/high16 v8, -0x8000

    iput v8, p0, Lcom/android/music/discplus/view/DiscView;->mTouchYPosition:I

    .line 1187
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscView;->mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/music/discplus/view/DiscView$CDList;->pressed:Z

    .line 1188
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->pressed:Z

    .line 1192
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    .line 1193
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/music/discplus/view/DiscView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 1137
    .end local v3           #isFling:Z
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    :cond_7
    const/4 v9, 0x0

    goto :goto_2

    .line 1155
    .restart local v3       #isFling:Z
    :cond_8
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-boolean v8, v8, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->pressed:Z

    if-eqz v8, :cond_9

    .line 1156
    const/4 v4, 0x1

    goto :goto_3

    .line 1157
    :cond_9
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getAnimationStatus()Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    move-result-object v8

    sget-object v9, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_RUNNING:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    if-eq v8, v9, :cond_5

    if-nez v3, :cond_5

    iget-object v8, p0, Lcom/android/music/discplus/view/DiscView;->mRunOnTouchRunnableEnd:Ljava/lang/Runnable;

    if-nez v8, :cond_5

    .line 1160
    new-instance v8, Lcom/android/music/discplus/view/DiscView$5;

    invoke-direct {v8, p0}, Lcom/android/music/discplus/view/DiscView$5;-><init>(Lcom/android/music/discplus/view/DiscView;)V

    invoke-virtual {p0, v8, v6, v7}, Lcom/android/music/discplus/view/DiscView;->setTouchRunnable(Ljava/lang/Runnable;II)V

    goto :goto_3

    .line 1197
    .end local v1           #initialXVelocity:I
    .end local v2           #initialYVelocity:I
    .end local v3           #isFling:Z
    .end local v5           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_3
    const/high16 v8, -0x8000

    iput v8, p0, Lcom/android/music/discplus/view/DiscView;->mTouchXPosition:I

    .line 1198
    const/high16 v8, -0x8000

    iput v8, p0, Lcom/android/music/discplus/view/DiscView;->mTouchYPosition:I

    .line 1199
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscView;->mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/music/discplus/view/DiscView$CDList;->pressed:Z

    .line 1200
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->pressed:Z

    .line 1201
    const/4 v4, 0x1

    .line 1203
    iget-object v8, p0, Lcom/android/music/discplus/view/DiscView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    .line 1204
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/music/discplus/view/DiscView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 1083
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public final getAnimationEffect()Lcom/android/music/discplus/view/DiscView$AniMationEffect;
    .locals 1

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationEffect:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    return-object v0
.end method

.method public final getAnimationEffectNext()Lcom/android/music/discplus/view/DiscView$AniMationEffect;
    .locals 1

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationEffectNext:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    return-object v0
.end method

.method public final getAnimationStatus()Lcom/android/music/discplus/view/DiscView$AniMationStatus;
    .locals 1

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mAniMationStatus:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    return-object v0
.end method

.method public getBlendImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/discplus/util/DiscPlusUtils;->getBlendImage(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSelection()I
    .locals 1

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->getCurrentSelection()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCurrentView()Lcom/android/music/discplus/view/DiscView$CurrentView;
    .locals 1

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mCurrentView:Lcom/android/music/discplus/view/DiscView$CurrentView;

    return-object v0
.end method

.method public getDataManager()Lcom/android/music/discplus/util/DiscPlusManager;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/discplus/util/DiscPlusManager;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/util/DiscPlusManager;

    move-result-object v0

    return-object v0
.end method

.method public getDiscNoitem()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/discplus/util/DiscPlusUtils;->getDiscNoitem(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getMoveDown(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2164
    const/4 v0, 0x0

    .line 2166
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView;->mCenterCD:Lcom/android/music/discplus/view/DiscView$CDFocus;

    iget-object v1, v1, Lcom/android/music/discplus/view/DiscView$CDFocus;->cd:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mCenterCD:Lcom/android/music/discplus/view/DiscView$CDFocus;

    iget-object v2, v2, Lcom/android/music/discplus/view/DiscView$CDFocus;->rc:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 2167
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView;->mCenterCD:Lcom/android/music/discplus/view/DiscView$CDFocus;

    iget-object v1, v1, Lcom/android/music/discplus/view/DiscView$CDFocus;->rc:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2168
    const/4 v0, 0x1

    .line 2171
    :cond_0
    return v0
.end method

.method public getMovingMode()I
    .locals 1

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    if-eqz v0, :cond_0

    .line 1701
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->getMovingMode()I

    move-result v0

    .line 1703
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlusData()Lcom/android/music/discplus/data/DiscPlusData;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/discplus/data/DiscPlusData;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceView()Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    return-object v0
.end method

.method public getTopImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/discplus/util/DiscPlusUtils;->getTopImage(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 1707
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getDataManager()Lcom/android/music/discplus/util/DiscPlusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/discplus/util/DiscPlusManager;->getCount()I

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x4

    const/4 v9, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 307
    iput-boolean v8, p0, Lcom/android/music/discplus/view/DiscView;->mInitLoading:Z

    .line 308
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mCenterCD:Lcom/android/music/discplus/view/DiscView$CDFocus;

    if-nez v5, :cond_0

    .line 309
    new-instance v5, Lcom/android/music/discplus/view/DiscView$CDFocus;

    invoke-direct {v5, v7}, Lcom/android/music/discplus/view/DiscView$CDFocus;-><init>(Lcom/android/music/discplus/view/DiscView$1;)V

    iput-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mCenterCD:Lcom/android/music/discplus/view/DiscView$CDFocus;

    .line 311
    :cond_0
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    if-nez v5, :cond_1

    .line 312
    new-instance v5, Lcom/android/music/discplus/view/DiscView$CDPlay;

    invoke-direct {v5, v7}, Lcom/android/music/discplus/view/DiscView$CDPlay;-><init>(Lcom/android/music/discplus/view/DiscView$1;)V

    iput-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    .line 315
    :cond_1
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    if-nez v5, :cond_2

    .line 316
    new-instance v5, Lcom/android/music/discplus/view/DiscView$Arrow;

    invoke-direct {v5, v7}, Lcom/android/music/discplus/view/DiscView$Arrow;-><init>(Lcom/android/music/discplus/view/DiscView$1;)V

    iput-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    .line 319
    :cond_2
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    if-nez v5, :cond_3

    .line 320
    new-instance v5, Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    invoke-direct {v5, v7}, Lcom/android/music/discplus/view/DiscView$DiscInfoText;-><init>(Lcom/android/music/discplus/view/DiscView$1;)V

    iput-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    .line 323
    :cond_3
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationText:Lcom/android/music/discplus/view/DiscView$AnimationText;

    if-nez v5, :cond_4

    .line 324
    new-instance v5, Lcom/android/music/discplus/view/DiscView$AnimationText;

    invoke-direct {v5, v7}, Lcom/android/music/discplus/view/DiscView$AnimationText;-><init>(Lcom/android/music/discplus/view/DiscView$1;)V

    iput-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationText:Lcom/android/music/discplus/view/DiscView$AnimationText;

    .line 327
    :cond_4
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mListViewRunnable:Lcom/android/music/discplus/view/DiscView$ListViewRunnable;

    if-nez v5, :cond_5

    .line 328
    new-instance v5, Lcom/android/music/discplus/view/DiscView$ListViewRunnable;

    invoke-direct {v5, p0}, Lcom/android/music/discplus/view/DiscView$ListViewRunnable;-><init>(Lcom/android/music/discplus/view/DiscView;)V

    iput-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mListViewRunnable:Lcom/android/music/discplus/view/DiscView$ListViewRunnable;

    .line 331
    :cond_5
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

    if-nez v5, :cond_6

    .line 332
    new-instance v5, Lcom/android/music/discplus/view/DiscView$CDList;

    invoke-direct {v5, v7}, Lcom/android/music/discplus/view/DiscView$CDList;-><init>(Lcom/android/music/discplus/view/DiscView$1;)V

    iput-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

    .line 335
    :cond_6
    const-wide/16 v5, 0x1f4

    iput-wide v5, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationDurationMillisec:J

    .line 343
    sget-object v5, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_INIT:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    iput-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationEffect:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    .line 344
    sget-object v5, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_NONE:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    iput-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationEffectNext:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    .line 345
    sget-object v5, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_PENDING:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    iput-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mAniMationStatus:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    .line 346
    sget-object v5, Lcom/android/music/discplus/view/DiscView$CurrentView;->DISC_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    iput-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mCurrentView:Lcom/android/music/discplus/view/DiscView$CurrentView;

    .line 349
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/music/discplus/view/DiscView;->mAlphaAnimation:Z

    .line 351
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 352
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030004

    invoke-virtual {v2, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mDiscPlusView:Landroid/widget/RelativeLayout;

    .line 353
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 356
    .local v4, lpView:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 372
    new-instance v5, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    iget-object v6, p0, Lcom/android/music/discplus/view/DiscView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    .line 373
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-virtual {v5, p0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->init(Lcom/android/music/discplus/view/DiscView;)V

    .line 377
    :cond_7
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 379
    .local v3, lpGL:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 381
    iget-object v6, p0, Lcom/android/music/discplus/view/DiscView;->mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mDiscPlusView:Landroid/widget/RelativeLayout;

    const v7, 0x7f0c001d

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, v6, Lcom/android/music/discplus/view/DiscView$CDList;->list:Landroid/widget/ListView;

    .line 382
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v5, Lcom/android/music/discplus/view/DiscView$CDList;->rc:Landroid/graphics/Rect;

    .line 383
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

    iput-boolean v8, v5, Lcom/android/music/discplus/view/DiscView$CDList;->pressed:Z

    .line 385
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mDiscPlusView:Landroid/widget/RelativeLayout;

    const v6, 0x7f0c0010

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mScrFog:Landroid/widget/ImageView;

    .line 386
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getTotalCount()I

    move-result v1

    .line 387
    .local v1, count:I
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mScrFog:Landroid/widget/ImageView;

    if-nez v1, :cond_9

    move v6, v10

    :goto_0
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 389
    iget-object v6, p0, Lcom/android/music/discplus/view/DiscView;->mCenterCD:Lcom/android/music/discplus/view/DiscView$CDFocus;

    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mDiscPlusView:Landroid/widget/RelativeLayout;

    const v7, 0x7f0c0012

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v6, Lcom/android/music/discplus/view/DiscView$CDFocus;->cd:Landroid/widget/ImageView;

    .line 390
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mCenterCD:Lcom/android/music/discplus/view/DiscView$CDFocus;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v5, Lcom/android/music/discplus/view/DiscView$CDFocus;->rc:Landroid/graphics/Rect;

    .line 392
    iget-object v6, p0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mDiscPlusView:Landroid/widget/RelativeLayout;

    const v7, 0x7f0c0019

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v6, Lcom/android/music/discplus/view/DiscView$CDPlay;->btn:Landroid/widget/ImageView;

    .line 393
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v5, Lcom/android/music/discplus/view/DiscView$CDPlay;->rc:Landroid/graphics/Rect;

    .line 394
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    iput-boolean v8, v5, Lcom/android/music/discplus/view/DiscView$CDPlay;->isPlaying:Z

    .line 395
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    iput-boolean v8, v5, Lcom/android/music/discplus/view/DiscView$CDPlay;->pressed:Z

    .line 397
    iget-object v6, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mDiscPlusView:Landroid/widget/RelativeLayout;

    const v7, 0x7f0c0018

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v6, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->infoScreen:Landroid/widget/LinearLayout;

    .line 398
    iget-object v6, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mDiscPlusView:Landroid/widget/RelativeLayout;

    const v7, 0x7f0c001b

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v6, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->str1:Landroid/widget/TextView;

    .line 399
    iget-object v6, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mDiscPlusView:Landroid/widget/RelativeLayout;

    const v7, 0x7f0c001c

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v6, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->str2:Landroid/widget/TextView;

    .line 400
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v5, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->rc:Landroid/graphics/Rect;

    .line 401
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iput-boolean v8, v5, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->pressed:Z

    .line 403
    iget-object v6, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationText:Lcom/android/music/discplus/view/DiscView$AnimationText;

    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mDiscPlusView:Landroid/widget/RelativeLayout;

    const v7, 0x7f0c0015

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v6, Lcom/android/music/discplus/view/DiscView$AnimationText;->aniScreen:Landroid/widget/LinearLayout;

    .line 404
    iget-object v6, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationText:Lcom/android/music/discplus/view/DiscView$AnimationText;

    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mDiscPlusView:Landroid/widget/RelativeLayout;

    const v7, 0x7f0c0016

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v6, Lcom/android/music/discplus/view/DiscView$AnimationText;->str1:Landroid/widget/TextView;

    .line 405
    iget-object v6, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationText:Lcom/android/music/discplus/view/DiscView$AnimationText;

    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mDiscPlusView:Landroid/widget/RelativeLayout;

    const v7, 0x7f0c0017

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v6, Lcom/android/music/discplus/view/DiscView$AnimationText;->str2:Landroid/widget/TextView;

    .line 406
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationText:Lcom/android/music/discplus/view/DiscView$AnimationText;

    iget-object v5, v5, Lcom/android/music/discplus/view/DiscView$AnimationText;->aniScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 408
    iget-object v6, p0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mDiscPlusView:Landroid/widget/RelativeLayout;

    const v7, 0x7f0c0013

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v6, Lcom/android/music/discplus/view/DiscView$Arrow;->arrow:Landroid/widget/ImageView;

    .line 409
    iget-object v6, p0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mDiscPlusView:Landroid/widget/RelativeLayout;

    const v7, 0x7f0c0014

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v6, Lcom/android/music/discplus/view/DiscView$Arrow;->flick:Landroid/widget/ImageView;

    .line 410
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v5, Lcom/android/music/discplus/view/DiscView$Arrow;->rc:Landroid/graphics/Rect;

    .line 411
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    iput-boolean v8, v5, Lcom/android/music/discplus/view/DiscView$Arrow;->pressed:Z

    .line 413
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 414
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/android/music/discplus/view/DiscView;->mTouchSlop:I

    .line 415
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v5

    iput v5, p0, Lcom/android/music/discplus/view/DiscView;->mMinimumVelocity:I

    .line 416
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v5

    iput v5, p0, Lcom/android/music/discplus/view/DiscView;->mMaximumVelocity:I

    .line 418
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-virtual {p0, v5, v3}, Lcom/android/music/discplus/view/DiscView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    :cond_8
    iget-object v5, p0, Lcom/android/music/discplus/view/DiscView;->mDiscPlusView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v5, v4}, Lcom/android/music/discplus/view/DiscView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    const/4 v3, 0x0

    .line 422
    const/4 v4, 0x0

    .line 423
    return-void

    .end local v0           #configuration:Landroid/view/ViewConfiguration;
    :cond_9
    move v6, v8

    .line 387
    goto/16 :goto_0
.end method

.method public isAllowSwitchMove()Z
    .locals 1

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->isAllowSwitchMove()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDataChangeApplied()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1685
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    if-eqz v0, :cond_1

    .line 1686
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-static {v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->access$2100(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1687
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1686
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1687
    goto :goto_0
.end method

.method public isDrawing()Z
    .locals 2

    .prologue
    .line 2198
    iget-boolean v0, p0, Lcom/android/music/discplus/view/DiscView;->isLandscape:Z

    iget-boolean v1, p0, Lcom/android/music/discplus/view/DiscView;->mPositionSynced:Z

    and-int/2addr v0, v1

    return v0
.end method

.method public isManagerThreadStop()Z
    .locals 2

    .prologue
    .line 1725
    const/4 v0, 0x1

    .line 1726
    .local v0, ret:Z
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getDataManager()Lcom/android/music/discplus/util/DiscPlusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/discplus/util/DiscPlusManager;->isManagerStop()Z

    move-result v0

    .line 1727
    return v0
.end method

.method public onClickCDFocus()V
    .locals 4

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getPlusData()Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v2

    iget v1, v2, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusType:I

    .line 575
    .local v1, type:I
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getTotalCount()I

    move-result v0

    .line 576
    .local v0, count:I
    if-gtz v0, :cond_1

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 582
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mListViewRunnable:Lcom/android/music/discplus/view/DiscView$ListViewRunnable;

    invoke-virtual {v2}, Lcom/android/music/discplus/view/DiscView$ListViewRunnable;->startListViewShow()V

    goto :goto_0

    .line 584
    :cond_2
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    if-eqz v2, :cond_0

    .line 585
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    new-instance v3, Lcom/android/music/discplus/view/DiscView$2;

    invoke-direct {v3, p0, v1}, Lcom/android/music/discplus/view/DiscView$2;-><init>(Lcom/android/music/discplus/view/DiscView;I)V

    invoke-virtual {v2, v3}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onClickCDPlay()V
    .locals 20

    .prologue
    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-object v3, v0

    if-nez v3, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    sget-object v4, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    .line 522
    .local v4, player:Lcom/android/music/player/service/ICorePlayerService;
    if-eqz v4, :cond_b

    .line 523
    :try_start_0
    invoke-interface {v4}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMedia()Ljava/lang/String;

    move-result-object v19

    .line 524
    .local v19, str:Ljava/lang/String;
    if-nez v19, :cond_9

    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/discplus/view/DiscView;->getPlusData()Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v3

    iget v6, v3, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusType:I

    .line 526
    .local v6, type:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/discplus/view/DiscView;->getCurrentSelection()I

    move-result v18

    .line 527
    .local v18, position:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/discplus/view/DiscView;->getPlusData()Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v3

    iget-object v15, v3, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    .line 528
    .local v15, cursor:Landroid/database/Cursor;
    if-eqz v15, :cond_0

    if-ltz v18, :cond_0

    if-eqz v15, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move v0, v3

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 532
    :cond_2
    move-object v0, v15

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 533
    const/4 v3, 0x6

    if-eq v6, v3, :cond_3

    const/4 v3, 0x7

    if-ne v6, v3, :cond_4

    :cond_3
    const/4 v3, -0x1

    move v5, v3

    .line 534
    .local v5, _id:I
    :goto_1
    const/4 v3, 0x1

    if-ne v6, v3, :cond_5

    .line 535
    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/music/discplus/view/DiscView;->setPlayIterator(Lcom/android/music/player/service/ICorePlayerService;IIILjava/lang/String;ILjava/lang/String;)V

    .line 562
    .end local v5           #_id:I
    .end local v6           #type:I
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v18           #position:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-object v3, v0

    invoke-interface {v4}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v4

    .end local v4           #player:Lcom/android/music/player/service/ICorePlayerService;
    iput-boolean v4, v3, Lcom/android/music/discplus/view/DiscView$CDPlay;->isPlaying:Z

    .line 567
    .end local v19           #str:Ljava/lang/String;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/discplus/view/DiscView;->upDateMediaBtn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 568
    :catch_0
    move-exception v3

    move-object/from16 v16, v3

    .line 569
    .local v16, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/android/music/discplus/view/DiscView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClickCDPlay"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 533
    .end local v16           #e:Landroid/os/RemoteException;
    .restart local v4       #player:Lcom/android/music/player/service/ICorePlayerService;
    .restart local v6       #type:I
    .restart local v15       #cursor:Landroid/database/Cursor;
    .restart local v18       #position:I
    .restart local v19       #str:Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-static {v6}, Lcom/android/music/common/util/ListType;->getDiscPlusTypeIdIndex(I)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v5, v3

    goto :goto_1

    .line 537
    .restart local v5       #_id:I
    :cond_5
    invoke-static {v6}, Lcom/android/music/common/util/ListType;->getDiscPlusTypeItemTitleIndex(I)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 538
    .local v12, string:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3, v6, v12}, Lcom/android/music/common/util/ListType;->getDiscPlusSubListType(Landroid/content/Context;ILjava/lang/String;)I

    move-result v10

    .line 539
    .local v10, subListType:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/discplus/view/DiscView;->getPlusData()Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v3

    move-object v0, v3

    move v1, v6

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/music/discplus/data/DiscPlusData;->getTypeDiscPlusListView(II)Ljava/util/ArrayList;

    move-result-object v17

    .line 540
    .local v17, listViewDatas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/discplus/data/ListViewData;>;"
    if-eqz v17, :cond_0

    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 544
    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/music/discplus/data/ListViewData;

    iget v9, v3, Lcom/android/music/discplus/data/ListViewData;->mId:I

    .line 545
    .local v9, subListId:I
    const/16 v3, 0x9

    if-eq v10, v3, :cond_7

    const/16 v3, 0xa

    if-eq v10, v3, :cond_7

    const/16 v3, 0xb

    if-eq v10, v3, :cond_7

    const/16 v3, 0xc

    if-ne v10, v3, :cond_8

    .line 549
    :cond_7
    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-direct/range {v7 .. v14}, Lcom/android/music/discplus/view/DiscView;->setPlayIterator(Lcom/android/music/player/service/ICorePlayerService;IIILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 551
    :cond_8
    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object/from16 v7, p0

    move-object v8, v4

    move v11, v5

    invoke-direct/range {v7 .. v14}, Lcom/android/music/discplus/view/DiscView;->setPlayIterator(Lcom/android/music/player/service/ICorePlayerService;IIILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 555
    .end local v5           #_id:I
    .end local v6           #type:I
    .end local v9           #subListId:I
    .end local v10           #subListType:I
    .end local v12           #string:Ljava/lang/String;
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v17           #listViewDatas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/discplus/data/ListViewData;>;"
    .end local v18           #position:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-object v3, v0

    iget-boolean v3, v3, Lcom/android/music/discplus/view/DiscView$CDPlay;->isPlaying:Z

    if-eqz v3, :cond_a

    .line 556
    invoke-interface {v4}, Lcom/android/music/player/service/ICorePlayerService;->pause()V

    goto/16 :goto_2

    .line 558
    :cond_a
    invoke-interface {v4}, Lcom/android/music/player/service/ICorePlayerService;->play()V

    goto/16 :goto_2

    .line 564
    .end local v19           #str:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/music/discplus/view/DiscView$CDPlay;->isPlaying:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public onDataChanged()V
    .locals 2

    .prologue
    const/16 v1, 0x44c

    .line 1691
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    if-eqz v0, :cond_0

    .line 1692
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->onDataChanged()V

    .line 1693
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->setDISCAndgle()V

    .line 1694
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1695
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1696
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->resetRenderMode()V

    .line 1698
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 679
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x44c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 680
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x4b0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 681
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x514

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 682
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x578

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 683
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x5dc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 689
    sget-object v0, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_PENDING:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mAniMationStatus:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    .line 690
    sget-object v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_DISMISS:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationEffect:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    .line 692
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mListViewRunnable:Lcom/android/music/discplus/view/DiscView$ListViewRunnable;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView$ListViewRunnable;->onDestroy()V

    .line 695
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->onDestroy()V

    .line 696
    :cond_0
    iput-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    .line 699
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mCenterCD:Lcom/android/music/discplus/view/DiscView$CDFocus;

    iput-object v2, v0, Lcom/android/music/discplus/view/DiscView$CDFocus;->rc:Landroid/graphics/Rect;

    .line 700
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    iput-object v2, v0, Lcom/android/music/discplus/view/DiscView$CDPlay;->rc:Landroid/graphics/Rect;

    .line 701
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    iput-object v2, v0, Lcom/android/music/discplus/view/DiscView$Arrow;->rc:Landroid/graphics/Rect;

    .line 702
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iput-object v2, v0, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->rc:Landroid/graphics/Rect;

    .line 703
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

    iput-object v2, v0, Lcom/android/music/discplus/view/DiscView$CDList;->rc:Landroid/graphics/Rect;

    .line 724
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 293
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 294
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/music/discplus/view/DiscView;->init(Landroid/content/Context;)V

    .line 295
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2176
    sub-int v1, p4, p2

    .line 2177
    .local v1, w:I
    sub-int v0, p5, p3

    .line 2178
    .local v0, h:I
    if-eqz p1, :cond_0

    .line 2179
    if-ge v0, v1, :cond_1

    .line 2180
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/music/discplus/view/DiscView;->isLandscape:Z

    .line 2186
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2187
    return-void

    .line 2182
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/music/discplus/view/DiscView;->isLandscape:Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->onPause()V

    .line 675
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/discplus/view/DiscView;->isLandscape:Z

    .line 676
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 637
    iget-boolean v0, p0, Lcom/android/music/discplus/view/DiscView;->mInitLoading:Z

    if-nez v0, :cond_1

    .line 639
    iput-boolean v2, p0, Lcom/android/music/discplus/view/DiscView;->mInitLoading:Z

    .line 640
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getPlusData()Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v0

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusNowPosition:I

    invoke-virtual {p0, v0}, Lcom/android/music/discplus/view/DiscView;->setCurrentSelection(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/music/discplus/view/DiscView;->mPositionSynced:Z

    .line 642
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->onDataChanged()V

    .line 646
    :cond_0
    sget-object v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_LOADING:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    invoke-virtual {p0, v0}, Lcom/android/music/discplus/view/DiscView;->preAnimationEffect(Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V

    .line 647
    new-instance v0, Lcom/android/music/discplus/view/DiscView$3;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/view/DiscView$3;-><init>(Lcom/android/music/discplus/view/DiscView;)V

    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_LOADING:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    invoke-virtual {p0, v0, v1}, Lcom/android/music/discplus/view/DiscView;->showChangeDiscAnimation(Ljava/lang/Runnable;Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V

    .line 655
    :cond_1
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->setDISCAndgle()V

    .line 657
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 658
    iput-boolean v2, p0, Lcom/android/music/discplus/view/DiscView;->isLandscape:Z

    .line 663
    :goto_0
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    if-eqz v0, :cond_2

    .line 664
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->onResume()V

    .line 668
    :cond_2
    return-void

    .line 660
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/discplus/view/DiscView;->isLandscape:Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const-wide/16 v5, 0x1f4

    const/high16 v4, 0x434f

    const/high16 v3, 0x433e

    const/4 v2, 0x0

    .line 628
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p1

    mul-float/2addr v1, v3

    div-float/2addr v1, v4

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscView;->inAnimationList:Landroid/view/animation/TranslateAnimation;

    .line 629
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p1

    mul-float/2addr v1, v3

    div-float/2addr v1, v4

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscView;->outAnimationList:Landroid/view/animation/TranslateAnimation;

    .line 630
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->inAnimationList:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 631
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->outAnimationList:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 632
    return-void
.end method

.method public postAnimationEffect(Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V
    .locals 11
    .parameter "aniType"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1992
    iput-object v9, p0, Lcom/android/music/discplus/view/DiscView;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    .line 1993
    sget-object v4, Lcom/android/music/discplus/view/DiscView$16;->$SwitchMap$com$android$music$discplus$view$DiscView$AniMationEffect:[I

    invoke-virtual {p1}, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 2106
    :cond_0
    :goto_0
    return-void

    .line 1995
    :pswitch_0
    sget-object v4, Lcom/android/music/discplus/view/DiscView$CurrentView;->DISC_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    iput-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mCurrentView:Lcom/android/music/discplus/view/DiscView$CurrentView;

    .line 1996
    iput-boolean v7, p0, Lcom/android/music/discplus/view/DiscView;->mAlphaAnimation:Z

    .line 1997
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->stopAnimation()V

    .line 1998
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->viewMedia()V

    .line 1999
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getTotalCount()I

    move-result v2

    .line 2001
    .local v2, count:I
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mScrFog:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    move v5, v8

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2002
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->setPlaying()V

    goto :goto_0

    :cond_1
    move v5, v6

    .line 2001
    goto :goto_1

    .line 2006
    .end local v2           #count:I
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getCurrentView()Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-result-object v4

    sget-object v5, Lcom/android/music/discplus/view/DiscView$CurrentView;->DISC_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationEffectNext:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    sget-object v5, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_NONE:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    if-ne v4, v5, :cond_4

    .line 2008
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    iget-object v4, v4, Lcom/android/music/discplus/view/DiscView$Arrow;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    .line 2009
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f80

    invoke-direct {v0, v10, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2010
    .local v0, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2011
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    iget-object v4, v4, Lcom/android/music/discplus/view/DiscView$Arrow;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2012
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    iget-object v4, v4, Lcom/android/music/discplus/view/DiscView$Arrow;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2015
    .end local v0           #alphaAnimation:Landroid/view/animation/AlphaAnimation;
    :cond_2
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getPlusData()Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/music/discplus/data/DiscPlusData;->getAudioItemCount()I

    move-result v1

    .line 2017
    .local v1, audioCount:I
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    iget-object v4, v4, Lcom/android/music/discplus/view/DiscView$CDPlay;->btn:Landroid/widget/ImageView;

    if-nez v1, :cond_6

    move v5, v8

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2020
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    if-eqz v4, :cond_4

    .line 2021
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getTotalCount()I

    move-result v2

    .line 2022
    .restart local v2       #count:I
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v4, v4, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->str1:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2023
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v4, v4, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->str2:Landroid/widget/TextView;

    if-nez v2, :cond_7

    move v5, v8

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2024
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v4, v4, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->infoScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_4

    .line 2025
    iget-boolean v4, p0, Lcom/android/music/discplus/view/DiscView;->mAlphaAnimation:Z

    if-eqz v4, :cond_3

    .line 2026
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f80

    invoke-direct {v0, v10, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2027
    .restart local v0       #alphaAnimation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2028
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v4, v4, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->infoScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2030
    .end local v0           #alphaAnimation:Landroid/view/animation/AlphaAnimation;
    :cond_3
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v4, v4, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->infoScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2035
    .end local v1           #audioCount:I
    .end local v2           #count:I
    :cond_4
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    if-eqz v4, :cond_5

    .line 2036
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v4, v4, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->str1:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2037
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v4, v4, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->str2:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2040
    :cond_5
    sget-object v4, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_NONE:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    iput-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationEffect:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    .line 2042
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getAnimationEffectNext()Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    move-result-object v3

    .line 2043
    .local v3, effectnext:Lcom/android/music/discplus/view/DiscView$AniMationEffect;
    sget-object v4, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_NONE:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    if-eq v3, v4, :cond_8

    .line 2044
    invoke-virtual {p0, v3}, Lcom/android/music/discplus/view/DiscView;->preAnimationEffect(Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V

    .line 2045
    new-instance v4, Lcom/android/music/discplus/view/DiscView$15;

    invoke-direct {v4, p0, v3}, Lcom/android/music/discplus/view/DiscView$15;-><init>(Lcom/android/music/discplus/view/DiscView;Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V

    invoke-virtual {p0, v4, v3}, Lcom/android/music/discplus/view/DiscView;->showChangeDiscAnimation(Ljava/lang/Runnable;Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V

    .line 2053
    :goto_4
    sget-object v4, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_NONE:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    iput-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationEffectNext:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    .line 2055
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x4b0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2056
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x4b0

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2057
    iget v4, p0, Lcom/android/music/discplus/view/DiscView;->mTouchMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 2058
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/music/discplus/view/DiscView;->mTouchMode:I

    goto/16 :goto_0

    .end local v3           #effectnext:Lcom/android/music/discplus/view/DiscView$AniMationEffect;
    .restart local v1       #audioCount:I
    :cond_6
    move v5, v6

    .line 2017
    goto/16 :goto_2

    .restart local v2       #count:I
    :cond_7
    move v5, v6

    .line 2023
    goto :goto_3

    .line 2051
    .end local v1           #audioCount:I
    .end local v2           #count:I
    .restart local v3       #effectnext:Lcom/android/music/discplus/view/DiscView$AniMationEffect;
    :cond_8
    sget-object v4, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_FINISHED:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    iput-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mAniMationStatus:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    goto :goto_4

    .line 2062
    .end local v3           #effectnext:Lcom/android/music/discplus/view/DiscView$AniMationEffect;
    :pswitch_2
    sget-object v4, Lcom/android/music/discplus/view/DiscView$CurrentView;->DISC_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    iput-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mCurrentView:Lcom/android/music/discplus/view/DiscView$CurrentView;

    .line 2063
    iput-boolean v7, p0, Lcom/android/music/discplus/view/DiscView;->mAlphaAnimation:Z

    .line 2064
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->stopAnimation()V

    .line 2065
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getTotalCount()I

    move-result v2

    .line 2066
    .restart local v2       #count:I
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->viewMedia()V

    .line 2068
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mScrFog:Landroid/widget/ImageView;

    if-nez v2, :cond_9

    move v5, v8

    :goto_5
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    move v5, v6

    goto :goto_5

    .line 2072
    .end local v2           #count:I
    :pswitch_3
    sget-object v4, Lcom/android/music/discplus/view/DiscView$CurrentView;->TOP_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    iput-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mCurrentView:Lcom/android/music/discplus/view/DiscView$CurrentView;

    .line 2073
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    if-eqz v4, :cond_a

    .line 2074
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v4, v4, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->str1:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2075
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v4, v4, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->str2:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2077
    :cond_a
    iput-boolean v7, p0, Lcom/android/music/discplus/view/DiscView;->mAlphaAnimation:Z

    .line 2078
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->stopAnimation()V

    goto/16 :goto_0

    .line 2082
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->stopAnimation()V

    goto/16 :goto_0

    .line 2086
    :pswitch_5
    sget-object v4, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_DISCTOLIST:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    iput-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationEffectNext:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    .line 2087
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->stopAnimation()V

    goto/16 :goto_0

    .line 2091
    :pswitch_6
    sget-object v4, Lcom/android/music/discplus/view/DiscView$CurrentView;->LIST_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    iput-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mCurrentView:Lcom/android/music/discplus/view/DiscView$CurrentView;

    .line 2092
    iput-boolean v6, p0, Lcom/android/music/discplus/view/DiscView;->mAlphaAnimation:Z

    .line 2093
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->stopAnimation()V

    goto/16 :goto_0

    .line 2097
    :pswitch_7
    sget-object v4, Lcom/android/music/discplus/view/DiscView$CurrentView;->DISC_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    iput-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mCurrentView:Lcom/android/music/discplus/view/DiscView$CurrentView;

    .line 2098
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getPlusData()Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/music/discplus/data/DiscPlusData;->getAudioItemCount()I

    move-result v1

    .line 2099
    .restart local v1       #audioCount:I
    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mScrFog:Landroid/widget/ImageView;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mScrFog:Landroid/widget/ImageView;

    if-nez v1, :cond_c

    move v5, v8

    :goto_6
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2100
    :cond_b
    sget-object v4, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_FADE_IN_DISCVIEW:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    iput-object v4, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationEffectNext:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    .line 2101
    iput-boolean v6, p0, Lcom/android/music/discplus/view/DiscView;->mAlphaAnimation:Z

    .line 2102
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->stopAnimation()V

    goto/16 :goto_0

    :cond_c
    move v5, v6

    .line 2099
    goto :goto_6

    .line 1993
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public preAnimationEffect(Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x4

    .line 1791
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    if-eqz v0, :cond_0

    .line 1792
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->str1:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1793
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->str2:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1795
    :cond_0
    sget-object v0, Lcom/android/music/discplus/view/DiscView$16;->$SwitchMap$com$android$music$discplus$view$DiscView$AniMationEffect:[I

    invoke-virtual {p1}, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1989
    :cond_1
    :goto_0
    return-void

    .line 1797
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->stopAnimation()V

    goto :goto_0

    .line 1801
    :pswitch_1
    sget-object v0, Lcom/android/music/discplus/view/DiscView$CurrentView;->DISC_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mCurrentView:Lcom/android/music/discplus/view/DiscView$CurrentView;

    .line 1802
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$Arrow;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1803
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v5, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1804
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1805
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    iget-object v1, v1, Lcom/android/music/discplus/view/DiscView$Arrow;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1806
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$Arrow;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1820
    :pswitch_2
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$Arrow;->flick:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1821
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->topViewSyncNowPosition()I

    .line 1822
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    if-eqz v0, :cond_2

    .line 1823
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->infoScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1827
    :cond_2
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getTotalCount()I

    move-result v0

    .line 1828
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView;->mScrFog:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_1

    .line 1852
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getCurrentSelection()I

    move-result v0

    .line 1854
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getDataManager()Lcom/android/music/discplus/util/DiscPlusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/discplus/util/DiscPlusManager;->isManagerStop()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1855
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getPlusData()Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/music/discplus/data/DiscPlusData;->setDiscPlusNowPosition(I)V

    .line 1858
    :cond_4
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$Arrow;->flick:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1859
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$CDList;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1860
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    if-eqz v0, :cond_5

    .line 1861
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->infoScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1862
    :cond_5
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$Arrow;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1867
    :pswitch_4
    sget-object v0, Lcom/android/music/discplus/view/DiscView$CurrentView;->LIST_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mCurrentView:Lcom/android/music/discplus/view/DiscView$CurrentView;

    .line 1869
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mScrFog:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1871
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$Arrow;->flick:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1872
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$Arrow;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1874
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    if-eqz v0, :cond_6

    .line 1875
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->infoScreen:Landroid/widget/LinearLayout;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1877
    :cond_6
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationText:Lcom/android/music/discplus/view/DiscView$AnimationText;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$AnimationText;->aniScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    .line 1878
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationText:Lcom/android/music/discplus/view/DiscView$AnimationText;

    iget-object v1, v1, Lcom/android/music/discplus/view/DiscView$AnimationText;->aniScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    .line 1880
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getWidth()I

    move-result v2

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    .line 1881
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getHeight()I

    move-result v2

    sub-int v1, v2, v1

    .line 1883
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    int-to-float v3, v1

    int-to-float v1, v1

    invoke-direct {v2, v0, v5, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1884
    iget-wide v0, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationDurationMillisec:J

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1885
    new-instance v0, Lcom/android/music/discplus/view/DiscView$10;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/view/DiscView$10;-><init>(Lcom/android/music/discplus/view/DiscView;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1904
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->inAnimationList:Landroid/view/animation/TranslateAnimation;

    iget-wide v3, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationDurationMillisec:J

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1905
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->inAnimationList:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/android/music/discplus/view/DiscView$11;

    invoke-direct {v1, p0}, Lcom/android/music/discplus/view/DiscView$11;-><init>(Lcom/android/music/discplus/view/DiscView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1914
    new-instance v0, Lcom/android/music/discplus/view/DiscView$12;

    invoke-direct {v0, p0, v2}, Lcom/android/music/discplus/view/DiscView$12;-><init>(Lcom/android/music/discplus/view/DiscView;Landroid/view/animation/TranslateAnimation;)V

    invoke-virtual {p0, v0}, Lcom/android/music/discplus/view/DiscView;->setChangeListView(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1938
    :pswitch_5
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mArrowDown:Lcom/android/music/discplus/view/DiscView$Arrow;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$Arrow;->flick:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1939
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    if-eqz v0, :cond_7

    .line 1940
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->infoScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1941
    :cond_7
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$CDPlay;->btn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1942
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->outAnimationList:Landroid/view/animation/TranslateAnimation;

    iget-wide v1, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationDurationMillisec:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1943
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->outAnimationList:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/android/music/discplus/view/DiscView$13;

    invoke-direct {v1, p0}, Lcom/android/music/discplus/view/DiscView$13;-><init>(Lcom/android/music/discplus/view/DiscView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1951
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationText:Lcom/android/music/discplus/view/DiscView$AnimationText;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$AnimationText;->aniScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    .line 1952
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationText:Lcom/android/music/discplus/view/DiscView$AnimationText;

    iget-object v1, v1, Lcom/android/music/discplus/view/DiscView$AnimationText;->aniScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    .line 1954
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getWidth()I

    move-result v2

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    .line 1955
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getHeight()I

    move-result v2

    sub-int v1, v2, v1

    .line 1957
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    int-to-float v3, v1

    int-to-float v1, v1

    invoke-direct {v2, v5, v0, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1958
    iget-wide v0, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationDurationMillisec:J

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1959
    new-instance v0, Lcom/android/music/discplus/view/DiscView$14;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/view/DiscView$14;-><init>(Lcom/android/music/discplus/view/DiscView;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1983
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$CDList;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView;->outAnimationList:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1984
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationText:Lcom/android/music/discplus/view/DiscView$AnimationText;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$AnimationText;->aniScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 1795
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public processKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    .line 995
    const/4 v0, 0x1

    .line 996
    .local v0, DISC_LEFT:I
    const/4 v1, 0x2

    .line 998
    .local v1, DISC_RIGHT:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 999
    .local v4, keyCode:I
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getCurrentView()Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-result-object v3

    .line 1001
    .local v3, currentView:Lcom/android/music/discplus/view/DiscView$CurrentView;
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->resetRenderMode()V

    .line 1003
    sget-object v6, Lcom/android/music/discplus/view/DiscView$16;->$SwitchMap$com$android$music$discplus$view$DiscView$CurrentView:[I

    invoke-virtual {v3}, Lcom/android/music/discplus/view/DiscView$CurrentView;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    move v6, v8

    .line 1034
    :goto_1
    return v6

    :pswitch_0
    move v6, v8

    .line 1006
    goto :goto_1

    .line 1009
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 1010
    .local v2, action:I
    if-nez v2, :cond_0

    .line 1011
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getMovingMode()I

    move-result v5

    .line 1012
    .local v5, mode:I
    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 1014
    :pswitch_2
    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 1015
    iget-object v6, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-virtual {v6}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->setSpinStop()V

    goto :goto_0

    .line 1017
    :cond_1
    const/4 v6, -0x1

    invoke-direct {p0, v6}, Lcom/android/music/discplus/view/DiscView;->spinDISCbyIndex(I)V

    goto :goto_0

    .line 1023
    :pswitch_3
    if-ne v5, v8, :cond_2

    .line 1024
    iget-object v6, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-virtual {v6}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->setSpinStop()V

    goto :goto_0

    .line 1026
    :cond_2
    invoke-direct {p0, v8}, Lcom/android/music/discplus/view/DiscView;->spinDISCbyIndex(I)V

    goto :goto_0

    .line 1003
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1012
    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public reloadItemData(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    if-eqz v0, :cond_0

    .line 1676
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-virtual {v0, p1}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->reloadItemData(I)V

    .line 1677
    :cond_0
    return-void
.end method

.method public requestDiscStop()V
    .locals 2

    .prologue
    const/16 v1, 0x578

    .line 1536
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1537
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1538
    return-void
.end method

.method public resetRenderMode()V
    .locals 4

    .prologue
    const/16 v3, 0x4b0

    .line 2202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/music/discplus/view/DiscView;->setRenderMode(Z)V

    .line 2203
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2204
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2205
    return-void
.end method

.method public rollingAnimation()V
    .locals 3

    .prologue
    .line 1552
    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_ROLLING:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    invoke-virtual {p0, v1}, Lcom/android/music/discplus/view/DiscView;->preAnimationEffect(Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V

    .line 1553
    const/4 v1, 0x0

    sget-object v2, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_ROLLING:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    invoke-virtual {p0, v1, v2}, Lcom/android/music/discplus/view/DiscView;->showChangeDiscAnimation(Ljava/lang/Runnable;Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V

    .line 1554
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v1, v1, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->infoScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1555
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1556
    .local v0, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1557
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v1, v1, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->infoScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1558
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v1, v1, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->infoScreen:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1560
    .end local v0           #alphaAnimation:Landroid/view/animation/AlphaAnimation;
    :cond_0
    return-void
.end method

.method public runOnAnimationEnd()V
    .locals 1

    .prologue
    .line 2121
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    .line 2122
    .local v0, r:Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 2123
    invoke-virtual {p0, v0}, Lcom/android/music/discplus/view/DiscView;->post(Ljava/lang/Runnable;)Z

    .line 2125
    :cond_0
    return-void
.end method

.method public runOnChangeListViewStart()V
    .locals 1

    .prologue
    .line 2157
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mRunOnChangeListViewStart:Ljava/lang/Runnable;

    .line 2158
    .local v0, r:Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 2159
    invoke-virtual {p0, v0}, Lcom/android/music/discplus/view/DiscView;->post(Ljava/lang/Runnable;)Z

    .line 2161
    :cond_0
    return-void
.end method

.method public runOnTouchRunnableEnd()V
    .locals 1

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mRunOnTouchRunnableEnd:Ljava/lang/Runnable;

    .line 2141
    .local v0, r:Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 2142
    invoke-virtual {p0, v0}, Lcom/android/music/discplus/view/DiscView;->post(Ljava/lang/Runnable;)Z

    .line 2144
    :cond_0
    return-void
.end method

.method public setAnimationEffect(Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V
    .locals 0
    .parameter "effect"

    .prologue
    .line 1764
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationEffect:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    .line 1765
    return-void
.end method

.method public setChangeListView(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runOnChangeListViewStart"

    .prologue
    .line 2147
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mRunOnChangeListViewStart:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 2148
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscView;->mRunOnChangeListViewStart:Ljava/lang/Runnable;

    .line 2151
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->setChangeListViewStart()V

    .line 2154
    :cond_0
    return-void
.end method

.method public setCurrentSelection(I)Z
    .locals 2
    .parameter "pos"

    .prologue
    .line 1665
    const/4 v0, 0x0

    .line 1666
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getDataManager()Lcom/android/music/discplus/util/DiscPlusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/discplus/util/DiscPlusManager;->isManagerStop()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1667
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-virtual {v1, p1}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->setCurrentSelection(I)Z

    move-result v0

    .line 1668
    :cond_0
    return v0
.end method

.method public setDISCAndgle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 754
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    if-nez v2, :cond_1

    .line 783
    :cond_0
    :goto_0
    return-void

    .line 756
    :cond_1
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getTotalCount()I

    move-result v0

    .line 763
    .local v0, mCnt:I
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-virtual {v2}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->getMaxDiscCount()I

    move-result v2

    if-le v0, v2, :cond_2

    .line 764
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-virtual {v2}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->getMaxDiscCount()I

    move-result v0

    .line 767
    :cond_2
    iput v0, p0, Lcom/android/music/discplus/view/DiscView;->DISC_INDEX_NUM:I

    .line 768
    iget v2, p0, Lcom/android/music/discplus/view/DiscView;->DISC_INDEX_NUM:I

    div-int/lit8 v1, v2, 0x4

    .line 769
    .local v1, viewDiscCnt:I
    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 771
    :cond_3
    if-eqz v0, :cond_0

    .line 780
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-static {v2}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->access$1000(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;)Lcom/android/music/discplus/view/DiscRenderer;

    move-result-object v2

    iput v3, v2, Lcom/android/music/discplus/view/DiscRenderer;->mRollingAngle:I

    .line 781
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-static {v2}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->access$1000(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;)Lcom/android/music/discplus/view/DiscRenderer;

    move-result-object v2

    iput v3, v2, Lcom/android/music/discplus/view/DiscRenderer;->allover_Angle:I

    goto :goto_0
.end method

.method public setPanelSwitcher(Lcom/android/music/discplus/view/PanelSwitcher;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscView;->mPanelSwitcher:Lcom/android/music/discplus/view/PanelSwitcher;

    .line 299
    return-void
.end method

.method public setPlaying()V
    .locals 19

    .prologue
    .line 232
    sget-object v16, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    .line 234
    .local v16, player:Lcom/android/music/player/service/ICorePlayerService;
    if-eqz v16, :cond_0

    .line 235
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-object v5, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/music/discplus/view/DiscView$CDPlay;->isPlaying:Z

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/discplus/view/DiscView;->upDateMediaBtn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

    move-object v5, v0

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/view/DiscView$CDList;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mCDList:Lcom/android/music/discplus/view/DiscView$CDList;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/view/DiscView$CDList;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/music/discplus/view/DiscListAdapter;

    .line 244
    .local v3, discListAdapter:Lcom/android/music/discplus/view/DiscListAdapter;
    if-eqz v3, :cond_2

    .line 245
    const-wide/16 v9, 0x0

    .line 246
    .local v9, currentId:J
    const-wide/16 v12, 0x0

    .line 247
    .local v12, currentMediaAudioId:J
    if-eqz v16, :cond_1

    .line 249
    :try_start_1
    invoke-interface/range {v16 .. v16}, Lcom/android/music/player/service/ICorePlayerService;->getCurrent_ID()I

    move-result v5

    int-to-long v9, v5

    .line 250
    invoke-interface/range {v16 .. v16}, Lcom/android/music/player/service/ICorePlayerService;->getAudioId()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    int-to-long v12, v5

    .line 256
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/discplus/view/DiscView;->getPlusData()Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v5

    move-object v0, v5

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusType:I

    move/from16 v18, v0

    .line 257
    .local v18, type:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/discplus/view/DiscView;->getCurrentSelection()I

    move-result v11

    .line 258
    .local v11, currentIndex:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/discplus/view/DiscView;->getPlusData()Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v5

    iget-object v14, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    .line 259
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_2

    if-ltz v11, :cond_2

    if-eqz v14, :cond_3

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gt v5, v11, :cond_3

    .line 278
    .end local v3           #discListAdapter:Lcom/android/music/discplus/view/DiscListAdapter;
    .end local v9           #currentId:J
    .end local v11           #currentIndex:I
    .end local v12           #currentMediaAudioId:J
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v18           #type:I
    :cond_2
    :goto_2
    return-void

    .line 238
    :catch_0
    move-exception v5

    move-object v15, v5

    .line 239
    .local v15, e:Landroid/os/RemoteException;
    sget-object v5, Lcom/android/music/discplus/view/DiscView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPlaying"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    .end local v15           #e:Landroid/os/RemoteException;
    .restart local v3       #discListAdapter:Lcom/android/music/discplus/view/DiscListAdapter;
    .restart local v9       #currentId:J
    .restart local v12       #currentMediaAudioId:J
    :catch_1
    move-exception v5

    move-object v15, v5

    .line 252
    .restart local v15       #e:Landroid/os/RemoteException;
    sget-object v5, Lcom/android/music/discplus/view/DiscView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentMediaAudioId() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 263
    .end local v15           #e:Landroid/os/RemoteException;
    .restart local v11       #currentIndex:I
    .restart local v14       #cursor:Landroid/database/Cursor;
    .restart local v18       #type:I
    :cond_3
    invoke-interface {v14, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 264
    invoke-static/range {v18 .. v18}, Lcom/android/music/common/util/ListType;->getDiscPlusTypeItemTitleIndex(I)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 265
    .local v17, string:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v18

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/music/common/util/ListType;->getDiscPlusSubListType(Landroid/content/Context;ILjava/lang/String;)I

    move-result v4

    .line 266
    .local v4, subListType:I
    if-eqz v16, :cond_4

    .line 268
    :try_start_2
    invoke-interface/range {v16 .. v16}, Lcom/android/music/player/service/ICorePlayerService;->getCurrent_ID()I

    move-result v5

    int-to-long v5, v5

    invoke-interface/range {v16 .. v16}, Lcom/android/music/player/service/ICorePlayerService;->getAudioId()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual/range {v3 .. v8}, Lcom/android/music/discplus/view/DiscListAdapter;->setPlayingAudioId(IJJ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_3
    move-wide v5, v9

    move-wide v7, v12

    .line 274
    invoke-virtual/range {v3 .. v8}, Lcom/android/music/discplus/view/DiscListAdapter;->setPlayingAudioId(IJJ)V

    .line 275
    invoke-virtual {v3}, Lcom/android/music/discplus/view/DiscListAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 269
    :catch_2
    move-exception v5

    move-object v15, v5

    .line 270
    .restart local v15       #e:Landroid/os/RemoteException;
    sget-object v5, Lcom/android/music/discplus/view/DiscView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentMediaAudioId() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public setRenderMode(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 2208
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    if-nez v0, :cond_1

    .line 2220
    :cond_0
    :goto_0
    return-void

    .line 2209
    :cond_1
    if-eqz p1, :cond_2

    .line 2210
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->getRenderMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 2211
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-virtual {v0, v1}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->setRenderMode(I)V

    .line 2212
    sget-object v0, Lcom/android/music/discplus/view/DiscView;->TAG:Ljava/lang/String;

    const-string v1, "RENDERMODE CONTINUOUSLY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2215
    :cond_2
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->getRenderMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2216
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->setRenderMode(I)V

    .line 2217
    sget-object v0, Lcom/android/music/discplus/view/DiscView;->TAG:Ljava/lang/String;

    const-string v1, "RENDERMODE WHEN DIRTY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTouchRunnable(Ljava/lang/Runnable;II)V
    .locals 1
    .parameter "runOnTouchRunnableEnd"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2129
    iput p2, p0, Lcom/android/music/discplus/view/DiscView;->mTouchRunnableX:I

    .line 2130
    iput p3, p0, Lcom/android/music/discplus/view/DiscView;->mTouchRunnableY:I

    .line 2131
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscView;->mRunOnTouchRunnableEnd:Ljava/lang/Runnable;

    .line 2134
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->startTouchRunnable()V

    .line 2137
    :cond_0
    return-void
.end method

.method public showChangeDiscAnimation(Ljava/lang/Runnable;Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V
    .locals 1
    .parameter "runOnAnimationEnd"
    .parameter "effect"

    .prologue
    .line 2110
    iput-object p2, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationEffect:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    .line 2111
    sget-object v0, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_RUNNING:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    iput-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mAniMationStatus:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    .line 2112
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscView;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    .line 2115
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->showChangeDiscAnimation()V

    .line 2118
    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    .line 1541
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getAnimationStatus()Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    move-result-object v0

    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_RUNNING:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    if-ne v0, v1, :cond_0

    .line 1542
    sget-object v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_STOP:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    invoke-virtual {p0, v0}, Lcom/android/music/discplus/view/DiscView;->preAnimationEffect(Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V

    .line 1543
    new-instance v0, Lcom/android/music/discplus/view/DiscView$9;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/view/DiscView$9;-><init>(Lcom/android/music/discplus/view/DiscView;)V

    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_STOP:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    invoke-virtual {p0, v0, v1}, Lcom/android/music/discplus/view/DiscView;->showChangeDiscAnimation(Ljava/lang/Runnable;Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V

    .line 1549
    :cond_0
    return-void
.end method

.method public topViewSyncNowPosition()I
    .locals 2

    .prologue
    .line 1782
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getCurrentView()Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-result-object v0

    sget-object v1, Lcom/android/music/discplus/view/DiscView$CurrentView;->TOP_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    if-eqz v0, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mSurfaceView:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getPlusData()Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v1

    iget v1, v1, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusNowPosition:I

    invoke-virtual {v0, v1}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->setCurrentSelection(I)Z

    .line 1787
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public upDateMediaBtn()V
    .locals 2

    .prologue
    .line 1652
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1653
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    iget-boolean v0, v0, Lcom/android/music/discplus/view/DiscView$CDPlay;->isPlaying:Z

    if-eqz v0, :cond_1

    .line 1654
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$CDPlay;->btn:Landroid/widget/ImageView;

    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1661
    :cond_0
    :goto_0
    return-void

    .line 1656
    :cond_1
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mCDPlay:Lcom/android/music/discplus/view/DiscView$CDPlay;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$CDPlay;->btn:Landroid/widget/ImageView;

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public updateText()V
    .locals 2

    .prologue
    const/16 v1, 0x514

    .line 1531
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1532
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1533
    return-void
.end method

.method public viewMedia()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x1

    const-string v8, "<unknown>"

    .line 1563
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1564
    iget-boolean v0, p0, Lcom/android/music/discplus/view/DiscView;->mPositionSynced:Z

    if-nez v0, :cond_0

    .line 1565
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getPlusData()Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v0

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusNowPosition:I

    invoke-virtual {p0, v0}, Lcom/android/music/discplus/view/DiscView;->setCurrentSelection(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/music/discplus/view/DiscView;->mPositionSynced:Z

    .line 1567
    :cond_0
    iget-boolean v0, p0, Lcom/android/music/discplus/view/DiscView;->mPositionSynced:Z

    if-eqz v0, :cond_1

    .line 1568
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getPlusData()Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getCurrentSelection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/music/discplus/data/DiscPlusData;->setDiscPlusNowPosition(I)V

    .line 1569
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getTotalCount()I

    move-result v0

    if-ge v0, v5, :cond_2

    .line 1571
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->str1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1572
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->str1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getPlusData()Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v2

    iget v2, v2, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusType:I

    invoke-static {v1, v2}, Lcom/android/music/common/util/ListUtil;->getNoItemString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1573
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->str1:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1574
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->str2:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1638
    :cond_1
    :goto_0
    return-void

    .line 1577
    :cond_2
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getDataManager()Lcom/android/music/discplus/util/DiscPlusManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getCurrentSelection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/music/discplus/util/DiscPlusManager;->getString1(I)Ljava/lang/String;

    move-result-object v0

    .line 1578
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getDataManager()Lcom/android/music/discplus/util/DiscPlusManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getCurrentSelection()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/music/discplus/util/DiscPlusManager;->getString2(I)Ljava/lang/String;

    move-result-object v1

    .line 1579
    if-nez v0, :cond_3

    const-string v0, "<unknown>"

    move-object v0, v8

    .line 1581
    :cond_3
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v2, v2, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->str1:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/music/discplus/view/DiscView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x205

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1582
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v2, v2, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->str1:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1583
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v2, v2, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->str1:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1584
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationText:Lcom/android/music/discplus/view/DiscView$AnimationText;

    iget-object v2, v2, Lcom/android/music/discplus/view/DiscView$AnimationText;->str1:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1585
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationText:Lcom/android/music/discplus/view/DiscView$AnimationText;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$AnimationText;->str1:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1586
    invoke-virtual {p0}, Lcom/android/music/discplus/view/DiscView;->getPlusData()Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v0

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusType:I

    .line 1587
    if-eq v0, v5, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 1588
    :cond_4
    if-nez v1, :cond_6

    const-string v0, "<unknown>"

    move-object v0, v8

    .line 1589
    :goto_1
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v1, v1, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->str2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1590
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v1, v1, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->str2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1591
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationText:Lcom/android/music/discplus/view/DiscView$AnimationText;

    iget-object v1, v1, Lcom/android/music/discplus/view/DiscView$AnimationText;->str2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1592
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationText:Lcom/android/music/discplus/view/DiscView$AnimationText;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$AnimationText;->str2:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1594
    :cond_5
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mDiscInfoText:Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->str2:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1595
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView;->mAnimationText:Lcom/android/music/discplus/view/DiscView$AnimationText;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$AnimationText;->str2:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method
