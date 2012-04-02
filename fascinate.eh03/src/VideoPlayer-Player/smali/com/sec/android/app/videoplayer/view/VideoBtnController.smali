.class public Lcom/sec/android/app/videoplayer/view/VideoBtnController;
.super Landroid/widget/RelativeLayout;
.source "VideoBtnController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    }
.end annotation


# instance fields
.field private final FADE_OUT_TIME:I

.field private final FFLONGSEEK:I

.field private final FFSHORTSEEK:I

.field private final HIDE_VOLUMEBAR:I

.field private final HIDE_VOLUME_BUBBLE:I

.field private final LONG_PRESS_TIME:J

.field private final PLAYSHORT:I

.field private final REWLONGSEEK:I

.field private final REWSHORTSEEK:I

.field private final SHORT_PRESS_TIME:J

.field private final SHOW_PROGRESS:I

.field private final SHOW_VOLUMEBAR:I

.field private final SRSSHORT:I

.field private final TAG:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mCtrlLayout:Landroid/widget/RelativeLayout;

.field private mCtrlLayoutShow:Z

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDecor:Landroid/view/View;

.field private final mDefaultTimeout:I

.field private mDelayTime:I

.field private mEndTime:Landroid/widget/TextView;

.field private mFadeOutBtn:Landroid/view/animation/Animation;

.field private mFfButton:Landroid/widget/ImageButton;

.field private mFfKeyListener:Landroid/view/View$OnKeyListener;

.field private mFfTouchListener:Landroid/view/View$OnTouchListener;

.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field private mFormatter:Ljava/util/Formatter;

.field private final mHandler:Landroid/os/Handler;

.field private mLongKeyCnt:I

.field private mPYVBufferPercentage:I

.field private mPauseKeyListener:Landroid/view/View$OnKeyListener;

.field private mPauseTouchListener:Landroid/view/View$OnTouchListener;

.field private mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

.field public mProgressBar:Landroid/widget/SeekBar;

.field private mProgressBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mProgressBarTouchListener:Landroid/view/View$OnTouchListener;

.field private mProgressCtrlLayout:Landroid/widget/RelativeLayout;

.field private mRewButton:Landroid/widget/ImageButton;

.field private mRewKeyListener:Landroid/view/View$OnKeyListener;

.field private mRewTouchListener:Landroid/view/View$OnTouchListener;

.field private mRoot:Landroid/view/View;

.field private mSRSBtn:Landroid/widget/ImageButton;

.field private mSRSTouchListener:Landroid/view/View$OnTouchListener;

.field private mSRStoast:Landroid/widget/Toast;

.field private mShowVolumeBar:Z

.field private mVieoBtnSeekBarPosionX:F

.field private mVieoBtnSeekBarPosionY:F

.field private mVolumeBtn:Landroid/widget/ImageButton;

.field private mVolumeBtnListener:Landroid/view/View$OnTouchListener;

.field private mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

.field private mVolumeCtrlLayout:Landroid/widget/RelativeLayout;

.field private mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

.field private mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

.field private mVolumeSeekBarPosionX:F

.field private mVolumeSeekBarPosionY:F

.field private mVolumeSeekBarTouchListener:Landroid/view/View$OnTouchListener;

.field private mbFfEnable:Z

.field private mbPauseEnable:Z

.field private mbProgressDragStatus:Z

.field private mbResume:Z

.field private mbRewEnable:Z

.field private previousPos:I

.field private temp_playmode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 118
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 51
    const-string v0, "VideoPlayerBtnController"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->TAG:Ljava/lang/String;

    .line 54
    iput v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPYVBufferPercentage:I

    .line 58
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    .line 59
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 60
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFormatter:Ljava/util/Formatter;

    .line 61
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x4396

    invoke-direct {v0, v3, v3, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFadeOutBtn:Landroid/view/animation/Animation;

    .line 63
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;

    .line 64
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    .line 65
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mDecor:Landroid/view/View;

    .line 66
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    .line 67
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mEndTime:Landroid/widget/TextView;

    .line 68
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentTime:Landroid/widget/TextView;

    .line 69
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    .line 70
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    .line 71
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSBtn:Landroid/widget/ImageButton;

    .line 72
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtn:Landroid/widget/ImageButton;

    .line 73
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 74
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    .line 76
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressCtrlLayout:Landroid/widget/RelativeLayout;

    .line 77
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayout:Landroid/widget/RelativeLayout;

    .line 78
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeCtrlLayout:Landroid/widget/RelativeLayout;

    .line 80
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRStoast:Landroid/widget/Toast;

    .line 83
    iput-boolean v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mShowVolumeBar:Z

    .line 86
    iput-boolean v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->temp_playmode:Z

    .line 87
    iput-boolean v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbPauseEnable:Z

    .line 88
    iput-boolean v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbRewEnable:Z

    .line 89
    iput-boolean v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbFfEnable:Z

    .line 91
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->SHORT_PRESS_TIME:J

    .line 92
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->LONG_PRESS_TIME:J

    .line 94
    iput v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->SHOW_PROGRESS:I

    .line 95
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->HIDE_VOLUMEBAR:I

    .line 96
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->PLAYSHORT:I

    .line 97
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->FFSHORTSEEK:I

    .line 98
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->REWSHORTSEEK:I

    .line 99
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->FFLONGSEEK:I

    .line 100
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->REWLONGSEEK:I

    .line 101
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->SRSSHORT:I

    .line 102
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->SHOW_VOLUMEBAR:I

    .line 103
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->HIDE_VOLUME_BUBBLE:I

    .line 104
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mDefaultTimeout:I

    .line 105
    const v0, 0x36ee80

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->FADE_OUT_TIME:I

    .line 106
    iput v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I

    .line 107
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mDelayTime:I

    .line 109
    iput v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->previousPos:I

    .line 111
    iput v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVieoBtnSeekBarPosionX:F

    .line 112
    iput v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVieoBtnSeekBarPosionY:F

    .line 113
    iput v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBarPosionX:F

    .line 114
    iput v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBarPosionY:F

    .line 485
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;

    .line 1003
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPauseTouchListener:Landroid/view/View$OnTouchListener;

    .line 1036
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$4;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSTouchListener:Landroid/view/View$OnTouchListener;

    .line 1069
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$5;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPauseKeyListener:Landroid/view/View$OnKeyListener;

    .line 1107
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$6;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewTouchListener:Landroid/view/View$OnTouchListener;

    .line 1170
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$7;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewKeyListener:Landroid/view/View$OnKeyListener;

    .line 1214
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtnListener:Landroid/view/View$OnTouchListener;

    .line 1251
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfTouchListener:Landroid/view/View$OnTouchListener;

    .line 1342
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfKeyListener:Landroid/view/View$OnKeyListener;

    .line 1485
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$11;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBarTouchListener:Landroid/view/View$OnTouchListener;

    .line 1499
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1598
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$13;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$13;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBarTouchListener:Landroid/view/View$OnTouchListener;

    .line 1610
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$14;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$14;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    .line 119
    iput-object p0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    .line 120
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mAudioManager:Landroid/media/AudioManager;

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;

    const v1, 0x7f070039

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRStoast:Landroid/widget/Toast;

    .line 123
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->initFloatingWindow()V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayoutShow:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayoutShow:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbResume:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->initProgress(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbFfEnable:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I

    return p1
.end method

.method static synthetic access$1408(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbRewEnable:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->hideVolumeBubble()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSBtn:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->temp_playmode:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->temp_playmode:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mShowVolumeBar:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/sec/android/app/videoplayer/view/VideoBtnController;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVieoBtnSeekBarPosionX:F

    return p1
.end method

.method static synthetic access$2402(Lcom/sec/android/app/videoplayer/view/VideoBtnController;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVieoBtnSeekBarPosionY:F

    return p1
.end method

.method static synthetic access$2500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->stringForTimeCur(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2702(Lcom/sec/android/app/videoplayer/view/VideoBtnController;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBarPosionX:F

    return p1
.end method

.method static synthetic access$2802(Lcom/sec/android/app/videoplayer/view/VideoBtnController;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBarPosionY:F

    return p1
.end method

.method static synthetic access$2900(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbProgressDragStatus:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/touchwiz/widget/TwSeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbProgressDragStatus:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mDelayTime:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->changeSRSEffect()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbPauseEnable:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->doPauseResume()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->doStopResume()V

    return-void
.end method

.method private changeSRSEffect()V
    .locals 5

    .prologue
    .line 918
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 920
    .local v0, a2dp:Landroid/bluetooth/BluetoothA2dp;
    const/4 v1, 0x0

    .line 922
    .local v1, srsMode:I
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadphoneOn()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 924
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 926
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->SetSRS(I)V

    .line 927
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateSRSBtn()V

    .line 929
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRStoast:Landroid/widget/Toast;

    if-eqz v2, :cond_1

    .line 930
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRStoast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 934
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRStoast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 957
    :goto_1
    return-void

    .line 932
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;

    const v3, 0x7f070039

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRStoast:Landroid/widget/Toast;

    goto :goto_0

    .line 939
    :cond_2
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getSRS()Z

    move-result v2

    if-nez v2, :cond_3

    .line 940
    const/4 v1, 0x1

    .line 942
    :cond_3
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->SetSRS(I)V

    .line 943
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateSRSBtn()V

    goto :goto_1

    .line 948
    :cond_4
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->SetSRS(I)V

    .line 949
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateSRSBtn()V

    .line 951
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRStoast:Landroid/widget/Toast;

    if-eqz v2, :cond_5

    .line 952
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRStoast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 954
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRStoast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private doPauseResume()V
    .locals 2

    .prologue
    .line 961
    const-string v0, "VideoPlayerBtnController"

    const-string v1, "doPauseResume start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->pause()V

    .line 968
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updatePausePlayBtn()V

    .line 969
    return-void

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->start()V

    goto :goto_0
.end method

.method private doStopResume()V
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->stop()V

    .line 978
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updatePausePlayBtn()V

    .line 979
    return-void

    .line 976
    :cond_0
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->startPlayback()V

    goto :goto_0
.end method

.method private hideVolumeBubble()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 376
    :cond_0
    return-void
.end method

.method private initControllerView(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 220
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->initProgress(Landroid/view/View;)V

    .line 221
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->initCtrlButton(Landroid/view/View;)V

    .line 222
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->initVolumeSeekBar(Landroid/view/View;)V

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 225
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFormatter:Ljava/util/Formatter;

    .line 227
    const v0, 0x7f0a002f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayout:Landroid/widget/RelativeLayout;

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mEndTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mEndTime:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->stringForTimeEnd(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->stringForTimeCur(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :cond_1
    return-void
.end method

.method private initCtrlButton(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 274
    const v2, 0x7f0a0032

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 276
    .local v0, pauseButton:Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 278
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPauseTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 279
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPauseKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 282
    :cond_0
    const v2, 0x7f0a0031

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    .line 284
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 286
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 287
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 288
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 291
    :cond_1
    const v2, 0x7f0a0033

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    .line 293
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_2

    .line 295
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 296
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 297
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 300
    :cond_2
    const v2, 0x7f0a0030

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSBtn:Landroid/widget/ImageButton;

    .line 302
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSBtn:Landroid/widget/ImageButton;

    if-eqz v2, :cond_3

    .line 304
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadphoneOn()Z

    move-result v2

    if-nez v2, :cond_5

    .line 306
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->SetSRS(I)V

    .line 318
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSBtn:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getSRS()Z

    move-result v3

    if-eqz v3, :cond_7

    const v3, 0x7f02000f

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 319
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 320
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSBtn:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 323
    :cond_3
    const v2, 0x7f0a0034

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtn:Landroid/widget/ImageButton;

    .line 325
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtn:Landroid/widget/ImageButton;

    if-eqz v2, :cond_4

    .line 327
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getVolumeLevel()I

    move-result v2

    if-nez v2, :cond_8

    .line 328
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtn:Landroid/widget/ImageButton;

    const v3, 0x7f020016

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 332
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 333
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtn:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtnListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 335
    :cond_4
    return-void

    .line 310
    :cond_5
    const/4 v1, 0x0

    .line 312
    .local v1, srsMode:I
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getSRS()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 313
    const/4 v1, 0x1

    .line 315
    :cond_6
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->SetSRS(I)V

    goto :goto_0

    .line 318
    .end local v1           #srsMode:I
    :cond_7
    const v3, 0x7f020010

    goto :goto_1

    .line 330
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtn:Landroid/widget/ImageButton;

    const v3, 0x7f020017

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2
.end method

.method private initFloatingWindow()V
    .locals 4

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->getRootView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mDecor:Landroid/view/View;

    .line 167
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I

    .line 169
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 170
    .local v1, p:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 172
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getMainView()Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    move-result-object v0

    .line 174
    .local v0, mainView:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;
    if-eqz v0, :cond_0

    .line 175
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mDecor:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    :cond_0
    return-void
.end method

.method private initProgress(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 239
    const v0, 0x7f0a002b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 253
    :cond_0
    const v0, 0x7f0a002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mEndTime:Landroid/widget/TextView;

    .line 254
    const v0, 0x7f0a002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentTime:Landroid/widget/TextView;

    .line 256
    const v0, 0x7f0a0029

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressCtrlLayout:Landroid/widget/RelativeLayout;

    .line 257
    return-void
.end method

.method private initVolumeSeekBar(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 261
    const v0, 0x7f0a0035

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeCtrlLayout:Landroid/widget/RelativeLayout;

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeCtrlLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 263
    const v0, 0x7f0a0036

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleAlign(I)V

    .line 266
    const v0, 0x7f0a0037

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setSeekThumbFontEnable(Z)V

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 270
    return-void
.end method

.method private removeMessage(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 481
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 482
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I

    .line 483
    :cond_1
    return-void
.end method

.method private sendMessage(IJ)V
    .locals 2
    .parameter "what"
    .parameter "delay"

    .prologue
    .line 471
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 473
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 474
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 475
    return-void
.end method

.method private setProgress()I
    .locals 22

    .prologue
    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbProgressDragStatus:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 725
    :cond_0
    const/16 v18, 0x0

    .line 849
    :goto_0
    return v18

    .line 727
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->getCurrentPosition()I

    move-result v14

    .line 728
    .local v14, position:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->getDuration()I

    move-result v4

    .line 730
    .local v4, duration:I
    const/4 v7, 0x0

    .line 731
    .local v7, endnowTime:Ljava/lang/String;
    const/4 v3, 0x0

    .line 733
    .local v3, currentnowTime:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 735
    const/16 v18, 0x3e8

    move v0, v4

    move/from16 v1, v18

    if-le v0, v1, :cond_b

    .line 737
    const-wide/16 v18, 0x3e8

    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    move v0, v4

    int-to-long v0, v0

    move-wide/from16 v20, v0

    div-long v12, v18, v20

    .line 739
    .local v12, pos:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->previousPos:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mDelayTime:I

    move/from16 v19, v0

    div-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mDelayTime:I

    move/from16 v19, v0

    div-int v19, v14, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    move-wide v0, v12

    long-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 744
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mDelayTime:I

    move/from16 v18, v0

    div-int v18, v14, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mDelayTime:I

    move/from16 v19, v0

    div-int v19, v4, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    const/16 v19, 0x3e8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 750
    :cond_3
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->previousPos:I

    .line 754
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->isPlayReadyFile()Z

    move-result v18

    if-nez v18, :cond_8

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->getBufferPercentage()I

    move-result v11

    .line 757
    .local v11, percent:I
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getKeyType()I

    move-result v18

    const/16 v19, 0x1e

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    mul-int/lit8 v19, v11, 0xa

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 795
    .end local v11           #percent:I
    .end local v12           #pos:J
    :cond_4
    :goto_1
    const/16 v18, 0x3e8

    move v0, v4

    move/from16 v1, v18

    if-lt v0, v1, :cond_c

    const/16 v18, 0x7d0

    move v0, v4

    move/from16 v1, v18

    if-ge v0, v1, :cond_c

    .line 796
    const/16 v18, 0xc8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mDelayTime:I

    .line 803
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->isInitialized()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 805
    const/16 v18, 0x3e8

    move v0, v4

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->isPlaying()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 814
    :cond_5
    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->stringForTimeEnd(I)Ljava/lang/String;

    move-result-object v6

    .line 819
    .local v6, endnewTime:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mEndTime:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mEndTime:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .end local v7           #endnowTime:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 823
    .restart local v7       #endnowTime:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mEndTime:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 825
    if-lez v4, :cond_6

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mEndTime:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 834
    :cond_6
    move/from16 v17, v14

    .line 835
    .local v17, time:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->stringForTimeCur(I)Ljava/lang/String;

    move-result-object v2

    .line 837
    .local v2, currentnewTime:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentTime:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentTime:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .end local v3           #currentnowTime:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 841
    .restart local v3       #currentnowTime:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    if-eqz v2, :cond_7

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentTime:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    move/from16 v18, v14

    .line 849
    goto/16 :goto_0

    .line 760
    .end local v2           #currentnewTime:Ljava/lang/String;
    .end local v6           #endnewTime:Ljava/lang/String;
    .end local v17           #time:I
    .restart local v12       #pos:J
    :cond_8
    sget-boolean v18, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_IsPyvFileInComplete:Z

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 763
    const-wide/16 v15, 0x0

    .line 767
    .local v15, progress_prctg:J
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getPyvFilePath()Ljava/lang/String;

    move-result-object v18

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 768
    .local v8, file:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 772
    .local v9, file_length:J
    const-wide/16 v18, 0x64

    mul-long v18, v18, v9

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getPyvFileTotalLength()J

    move-result-wide v20

    div-long v15, v18, v20

    .line 773
    const-wide/16 v18, 0x64

    cmp-long v18, v15, v18

    if-nez v18, :cond_9

    .line 774
    const/16 v18, 0x0

    sput-boolean v18, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_IsPyvFileInComplete:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    .end local v8           #file:Ljava/io/File;
    .end local v9           #file_length:J
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    move-wide v0, v15

    long-to-int v0, v0

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0xa

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    goto/16 :goto_1

    .line 776
    :catch_0
    move-exception v18

    move-object/from16 v5, v18

    .line 778
    .local v5, e:Ljava/lang/Exception;
    const-string v18, "VideoPlayerBtnController"

    const-string v19, "setProgress: FileNotFoundException"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 785
    .end local v5           #e:Ljava/lang/Exception;
    .end local v15           #progress_prctg:J
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    goto/16 :goto_1

    .line 791
    .end local v12           #pos:J
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 792
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->previousPos:I

    goto/16 :goto_1

    .line 798
    :cond_c
    const/16 v18, 0x1f4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mDelayTime:I

    goto/16 :goto_2

    .line 801
    :cond_d
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 831
    .restart local v6       #endnewTime:Ljava/lang/String;
    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 846
    .restart local v2       #currentnewTime:Ljava/lang/String;
    .restart local v17       #time:I
    :cond_f
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method private stringForTimeCur(I)Ljava/lang/String;
    .locals 11
    .parameter "timeMs"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 688
    div-int/lit16 v3, p1, 0x3e8

    .line 689
    .local v3, totalSeconds:I
    rem-int/lit8 v2, v3, 0x3c

    .line 690
    .local v2, seconds:I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 691
    .local v1, minutes:I
    div-int/lit16 v0, v3, 0xe10

    .line 693
    .local v0, hours:I
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 695
    if-lez v0, :cond_0

    .line 696
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 698
    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private stringForTimeEnd(I)Ljava/lang/String;
    .locals 12
    .parameter "timeMs"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 703
    div-int/lit16 v4, p1, 0x3e8

    .line 704
    .local v4, totalSeconds:I
    rem-int/lit8 v3, v4, 0x3c

    .line 705
    .local v3, seconds:I
    div-int/lit8 v5, v4, 0x3c

    rem-int/lit8 v2, v5, 0x3c

    .line 706
    .local v2, minutes:I
    div-int/lit16 v1, v4, 0xe10

    .line 708
    .local v1, hours:I
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 710
    const/16 v5, 0x3e8

    if-ge p1, v5, :cond_0

    .line 712
    const-string v0, "-:--:--"

    .local v0, duration:Ljava/lang/String;
    move-object v5, v0

    .line 719
    .end local v0           #duration:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 716
    :cond_0
    if-lez v1, :cond_1

    .line 717
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFormatter:Ljava/util/Formatter;

    const-string v6, " %d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v5, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 719
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFormatter:Ljava/util/Formatter;

    const-string v6, " %02d:%02d"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private updatePausePlayBtn()V
    .locals 3

    .prologue
    const v2, 0x7f02000b

    .line 854
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    if-nez v0, :cond_1

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 857
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    const v1, 0x7f0a0032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 859
    if-eqz v0, :cond_0

    .line 862
    iget-boolean v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbPauseEnable:Z

    if-eqz v1, :cond_3

    .line 863
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 864
    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 866
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 868
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 869
    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 871
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public forceBtnRelease()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const-wide/16 v0, 0x0

    const/4 v7, 0x0

    .line 136
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    const v3, 0x7f0a0032

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    .line 138
    .local v8, Button:Landroid/widget/ImageButton;
    if-eqz v8, :cond_0

    .line 139
    invoke-virtual {v8, v7}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 142
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 143
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 144
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 146
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    iget v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVieoBtnSeekBarPosionX:F

    iget v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVieoBtnSeekBarPosionY:F

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 148
    iput-boolean v7, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbProgressDragStatus:Z

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    iget v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBarPosionX:F

    iget v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBarPosionY:F

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 154
    :cond_2
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V

    .line 155
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V

    .line 156
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V

    .line 157
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V

    .line 158
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V

    .line 159
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V

    .line 160
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V

    .line 161
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V

    .line 162
    return-void
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 428
    iget-boolean v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayoutShow:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbProgressDragStatus:Z

    if-nez v1, :cond_0

    .line 430
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setVolumeBarVisible(Z)V

    .line 432
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFadeOutBtn:Landroid/view/animation/Animation;

    .line 434
    .local v0, Btn:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 435
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 436
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setAnimation(Landroid/view/animation/Animation;)V

    .line 438
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setVisibility(I)V

    .line 440
    new-instance v1, Lcom/sec/android/app/videoplayer/view/VideoBtnController$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$1;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 457
    .end local v0           #Btn:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayoutShow:Z

    return v0
.end method

.method protected makeControllerView()Landroid/view/View;
    .locals 3

    .prologue
    .line 210
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 212
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v1, 0x7f030010

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    .line 213
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->initControllerView(Landroid/view/View;)V

    .line 215
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    return-object v1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayoutShow:Z

    .line 465
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 466
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->initControllerView(Landroid/view/View;)V

    .line 131
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 132
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbResume:Z

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 424
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 414
    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbResume:Z

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 418
    return-void
.end method

.method public playerStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1475
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mEndTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mEndTime:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->stringForTimeEnd(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1478
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1479
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->stringForTimeCur(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1481
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    .line 1482
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1483
    :cond_2
    return-void
.end method

.method public setAnchorView()V
    .locals 4

    .prologue
    .line 197
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 200
    .local v0, rp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 202
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeAllViews()V

    .line 204
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->makeControllerView()Landroid/view/View;

    move-result-object v1

    .line 205
    .local v1, v:Landroid/view/View;
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    return-void
.end method

.method public setBtnState(ZZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, ", "

    .line 1422
    const-string v0, "VideoPlayerBtnController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBtnState(pause, rew, ff) - ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    if-eqz p1, :cond_0

    .line 1425
    iput-boolean v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbPauseEnable:Z

    .line 1430
    :goto_0
    if-eqz p2, :cond_1

    .line 1431
    iput-boolean v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbRewEnable:Z

    .line 1436
    :goto_1
    if-eqz p3, :cond_2

    .line 1437
    iput-boolean v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbFfEnable:Z

    .line 1442
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updatePausePlayBtn()V

    .line 1443
    return-void

    .line 1427
    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbPauseEnable:Z

    goto :goto_0

    .line 1433
    :cond_1
    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbRewEnable:Z

    goto :goto_1

    .line 1439
    :cond_2
    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbFfEnable:Z

    goto :goto_2
.end method

.method public setButtonArrange()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 991
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    .line 993
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 994
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1001
    :goto_0
    return-void

    .line 998
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 999
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1447
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    const v2, 0x7f0a0032

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1449
    .local v0, Button:Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 1450
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1452
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 1453
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1455
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    .line 1456
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1458
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_3

    .line 1459
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1461
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtn:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    .line 1462
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1464
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    if-eqz v1, :cond_5

    .line 1465
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setEnabled(Z)V

    .line 1467
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSBtn:Landroid/widget/ImageButton;

    if-eqz v1, :cond_6

    .line 1468
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1470
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1471
    return-void
.end method

.method public setPlayer(Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;)V
    .locals 0
    .parameter "player"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    .line 181
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updatePausePlayBtn()V

    .line 182
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateSRSBtn()V

    .line 183
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateVolumeBtn()V

    .line 184
    return-void
.end method

.method public setUpdate()V
    .locals 2

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updatePausePlayBtn()V

    .line 189
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateSRSBtn()V

    .line 190
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateVolumeBtn()V

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    const/16 v1, 0xbb8

    invoke-interface {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 193
    return-void
.end method

.method public setVolumeBarVisible(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 339
    if-eqz p1, :cond_1

    .line 340
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeCtrlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 341
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 343
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    if-eqz v2, :cond_0

    .line 344
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getVolumeLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 345
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getVolumeLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosX()I

    move-result v0

    .line 348
    .local v0, bubbleX:I
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosY()I

    move-result v1

    .line 350
    .local v1, bubbleY:I
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 351
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x46

    add-int/2addr v1, v2

    .line 353
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosX()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbWidth()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 354
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2, v3, v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubblePosition(Landroid/view/View;II)V

    .line 355
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->showBubble()V

    .line 356
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 360
    .end local v0           #bubbleX:I
    .end local v1           #bubbleY:I
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mShowVolumeBar:Z

    .line 361
    const/16 v2, 0xa

    const-wide/16 v3, 0x3e8

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V

    .line 368
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeCtrlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 365
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 366
    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mShowVolumeBar:Z

    goto :goto_0
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 393
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getSubTitleView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;

    move-result-object v0

    .line 395
    .local v0, subTitle:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
    iget-boolean v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayoutShow:Z

    if-nez v1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressCtrlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 399
    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0, v2}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->updateLayout(Z)V

    .line 402
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setProgress()I

    .line 403
    invoke-virtual {p0, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setVisibility(I)V

    .line 405
    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayoutShow:Z

    .line 408
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 409
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 410
    return-void
.end method

.method public updateSRSBtn()V
    .locals 3

    .prologue
    .line 877
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    if-nez v1, :cond_1

    .line 889
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    const v2, 0x7f0a0030

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 882
    .local v0, Button:Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 885
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getSRS()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 886
    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 888
    :cond_2
    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public updateVolumeBtn()V
    .locals 3

    .prologue
    .line 893
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    const v2, 0x7f0a0034

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 895
    .local v0, Button:Landroid/widget/ImageButton;
    if-nez v0, :cond_0

    .line 904
    :goto_0
    return-void

    .line 898
    :cond_0
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getVolumeLevel()I

    move-result v1

    if-nez v1, :cond_1

    .line 899
    const v1, 0x7f020016

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 903
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateVolumeSeekBar()V

    goto :goto_0

    .line 901
    :cond_1
    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1
.end method

.method public updateVolumeSeekBar()V
    .locals 3

    .prologue
    .line 908
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    const v2, 0x7f0a0037

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 910
    .local v0, volumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    if-eqz v0, :cond_0

    .line 912
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getVolumeLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 914
    :cond_0
    return-void
.end method
