.class public Lcom/sec/android/app/camera/CamcorderRecordingMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CamcorderRecordingMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# static fields
.field public static final RECORDING_MENU_CANCEL:I = 0x4

.field public static final RECORDING_MENU_PAUSE:I = 0x1

.field public static final RECORDING_MENU_RESUME:I = 0x3

.field public static final RECORDING_MENU_STOP:I = 0x2

.field public static final RECORDING_TIMER_STEP_MSG:I = 0x1


# instance fields
.field private final MAX_MMS_SIZE:J

.field private final MAX_RECORDING_TIME:I

.field private final PAUSE_ANIM_DELAY:I

.field private final PROGRESSBAR_MAX:I

.field private final REC_ANIM_DELAY:I

.field private final SECONDS_IN_AN_HOUR:I

.field private final SECONDS_IN_A_DAY:I

.field private final SECONDS_IN_A_MINUTE:I

.field private bIsRecordingMenuShown:Z

.field private isMMSMode:Z

.field private mBackButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

.field private mHMS:Ljava/lang/String;

.field private mLockIndicator:Landroid/widget/ImageView;

.field private mMMSLayout:Landroid/widget/RelativeLayout;

.field private mPauseAnimHandler:Landroid/os/Handler;

.field private mPauseAnimRunnable:Ljava/lang/Runnable;

.field private mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private final mPauseImageId:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRecAnimHandler:Landroid/os/Handler;

.field private mRecAnimRunnable:Ljava/lang/Runnable;

.field private mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mRecIcon:Landroid/widget/ImageView;

.field private final mRecImageId:I

.field private mRecSizeText:Landroid/widget/TextView;

.field private mRecTimeText:Landroid/widget/TextView;

.field private mRecordingProgressHandler:Landroid/os/Handler;

.field private mRecordingState:I

.field private mRecordingTime:I

.field private mStopButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mStopping:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 8
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    const/4 v7, 0x0

    .line 107
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;IZ)V

    .line 36
    const/16 v0, 0x3c

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->SECONDS_IN_A_MINUTE:I

    .line 37
    const/16 v0, 0xe10

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->SECONDS_IN_AN_HOUR:I

    .line 38
    const v0, 0x15180

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->SECONDS_IN_A_DAY:I

    .line 39
    const v0, 0x1517f

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->MAX_RECORDING_TIME:I

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    .line 53
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->PROGRESSBAR_MAX:I

    .line 56
    const-wide/32 v0, 0x11f800

    iput-wide v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->MAX_MMS_SIZE:J

    .line 58
    const/16 v0, 0xfa

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->PAUSE_ANIM_DELAY:I

    .line 59
    const/16 v0, 0x258

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->REC_ANIM_DELAY:I

    .line 71
    const-string v0, "00:00:00"

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    .line 72
    iput v7, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    .line 74
    const v0, 0x7f0200f4

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecImageId:I

    .line 75
    const v0, 0x7f0200f3

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseImageId:I

    .line 76
    iput-boolean v7, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->isMMSMode:Z

    .line 77
    iput-boolean v7, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopping:Z

    .line 78
    iput-boolean v7, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->bIsRecordingMenuShown:Z

    .line 82
    new-instance v0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu$1;-><init>(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;-><init>(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseAnimRunnable:Ljava/lang/Runnable;

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseAnimHandler:Landroid/os/Handler;

    .line 97
    new-instance v0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu$3;-><init>(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecAnimRunnable:Ljava/lang/Runnable;

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecAnimHandler:Landroid/os/Handler;

    .line 108
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->init()V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->startPauseAnim()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->doRecAnim()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->startRecAnim()V

    return-void
.end method

.method private disableButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 432
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDimmed(Z)V

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDimmed(Z)V

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDimmed(Z)V

    .line 438
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopping:Z

    .line 439
    return-void
.end method

.method private doCancel()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 209
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopTimer()V

    .line 210
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopPauseAnim()V

    .line 211
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopRecAnim()V

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 213
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->disableButtons()V

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopping:Z

    .line 216
    iput v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    .line 217
    return-void
.end method

.method private doPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 220
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    if-ge v0, v2, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const/16 v1, 0x5f

    if-gt v0, v1, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->pauseTimer()V

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200f3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopRecAnim()V

    .line 231
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->startPauseAnim()V

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 236
    iput v2, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    goto :goto_0
.end method

.method private doPauseAnim()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    .line 403
    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private doRecAnim()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 411
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    .line 412
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private doStart()V
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->startTimer()V

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200f4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopPauseAnim()V

    .line 188
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->startRecAnim()V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private doStop()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 195
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopTimer()V

    .line 200
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopPauseAnim()V

    .line 201
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopRecAnim()V

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 203
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->disableButtons()V

    .line 205
    iput v2, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    goto :goto_0
.end method

.method private enableButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDimmed(Z)V

    .line 443
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDimmed(Z)V

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDimmed(Z)V

    .line 448
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopping:Z

    .line 449
    return-void
.end method

.method private hmsConvert(I)V
    .locals 12
    .parameter "seconds"

    .prologue
    const/16 v8, 0xa

    const-string v11, ":"

    const-string v10, "0"

    const-string v9, ""

    .line 345
    const v6, 0x1517f

    if-le p1, v6, :cond_0

    .line 346
    const p1, 0x1517f

    .line 349
    :cond_0
    rem-int/lit8 v4, p1, 0x3c

    .line 350
    .local v4, sec:I
    div-int/lit16 v0, p1, 0xe10

    .line 351
    .local v0, hr:I
    div-int/lit8 v6, p1, 0x3c

    mul-int/lit8 v7, v0, 0x3c

    sub-int v2, v6, v7

    .line 354
    .local v2, min:I
    if-ge v4, v8, :cond_1

    .line 355
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 360
    .local v5, secString:Ljava/lang/String;
    :goto_0
    if-ge v2, v8, :cond_2

    .line 361
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, minString:Ljava/lang/String;
    :goto_1
    if-ge v0, v8, :cond_3

    .line 367
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, hrString:Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    .line 373
    return-void

    .line 357
    .end local v1           #hrString:Ljava/lang/String;
    .end local v3           #minString:Ljava/lang/String;
    .end local v5           #secString:Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #secString:Ljava/lang/String;
    goto :goto_0

    .line 363
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #minString:Ljava/lang/String;
    goto :goto_1

    .line 369
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #hrString:Ljava/lang/String;
    goto :goto_2
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00ee

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200f4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00ef

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    .line 116
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->hmsConvert(I)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00f0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwImageButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00f1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwImageButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00f2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwImageButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00f6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00f4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecSizeText:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00f5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mMMSLayout:Landroid/widget/RelativeLayout;

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00ed

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a00ab

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->setSurfaceView(Landroid/view/View;)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->handleGuidelineSettingsChanged(I)V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00f8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mLockIndicator:Landroid/widget/ImageView;

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mLockIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 155
    return-void
.end method

.method private lockButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 453
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 457
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 461
    return-void
.end method

.method private startPauseAnim()V
    .locals 4

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->doPauseAnim()V

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseAnimRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 378
    return-void
.end method

.method private startRecAnim()V
    .locals 4

    .prologue
    .line 387
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecAnimRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 388
    return-void
.end method

.method private stopPauseAnim()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    return-void
.end method

.method private stopRecAnim()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 392
    return-void
.end method

.method private unlockButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 464
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 465
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 470
    return-void
.end method


# virtual methods
.method public getRecordingState()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    return v0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 2
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 415
    sparse-switch p1, :sswitch_data_0

    .line 429
    :goto_0
    return-void

    .line 417
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->handleGuidelineSettingsChanged(I)V

    goto :goto_0

    .line 420
    :sswitch_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mLockIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 422
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->lockButtons()V

    goto :goto_0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mLockIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 425
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->unlockButtons()V

    goto :goto_0

    .line 415
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x22 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 175
    :goto_1
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 163
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->doPause()V

    goto :goto_1

    .line 166
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->doStart()V

    goto :goto_1

    .line 169
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->doStop()V

    goto :goto_1

    .line 172
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->doCancel()V

    goto :goto_1

    .line 161
    :pswitch_data_0
    .packed-switch 0x7f0a00f0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopTimer()V

    .line 266
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopPauseAnim()V

    .line 267
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->unlockButtons()V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecSizeText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->IsShutterButtonHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->ShutterButtonIsRestored()V

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->showShutterButton()V

    .line 286
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->unlockButtons()V

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 289
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 290
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->restoreInitialState()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 477
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 495
    :goto_0
    return v0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 482
    goto :goto_0

    .line 485
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    move v0, v1

    .line 486
    goto :goto_0

    .line 489
    :cond_2
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_3

    const/16 v0, 0x17

    if-eq p1, v0, :cond_3

    const/16 v0, 0x42

    if-ne p1, v0, :cond_4

    :cond_3
    move v0, v1

    .line 492
    goto :goto_0

    .line 495
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 499
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setLock(Z)V

    :goto_0
    move v0, v1

    .line 531
    :goto_1
    return v0

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setLock(Z)V

    goto :goto_0

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 509
    goto :goto_1

    .line 512
    :cond_2
    if-ne p1, v3, :cond_5

    .line 513
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopping:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    if-ge v0, v1, :cond_4

    :cond_3
    move v0, v1

    .line 514
    goto :goto_1

    .line 517
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopTimer()V

    .line 518
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopPauseAnim()V

    .line 519
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopRecAnim()V

    .line 520
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 521
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->disableButtons()V

    move v0, v1

    .line 522
    goto :goto_1

    .line 525
    :cond_5
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_6

    const/16 v0, 0x17

    if-eq p1, v0, :cond_6

    const/16 v0, 0x42

    if-ne p1, v0, :cond_7

    :cond_6
    move v0, v1

    .line 528
    goto :goto_1

    :cond_7
    move v0, v2

    .line 531
    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopTimer()V

    .line 318
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopPauseAnim()V

    .line 319
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopRecAnim()V

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 323
    return-void
.end method

.method protected onShow()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 294
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->bIsRecordingMenuShown:Z

    if-nez v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 298
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->isMMSMode:Z

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mMMSLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 304
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200f4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->startRecAnim()V

    .line 310
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->enableButtons()V

    .line 311
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->bIsRecordingMenuShown:Z

    .line 313
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    goto :goto_0

    .line 301
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->isMMSMode:Z

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mMMSLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public pauseTimer()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    return-void
.end method

.method public showRecordingMenu(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 473
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->bIsRecordingMenuShown:Z

    .line 474
    return-void
.end method

.method public startTimer()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V

    .line 241
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    .line 243
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stepSecond()V

    .line 244
    return-void
.end method

.method public stepSecond()V
    .locals 4

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingTimerElapsed()V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 250
    return-void
.end method

.method public stopTimer()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 257
    return-void
.end method

.method public updateProgressBarText(J)V
    .locals 5
    .parameter "bytes"

    .prologue
    const-wide/32 v3, 0x11f800

    .line 326
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->isMMSMode:Z

    if-eqz v1, :cond_0

    .line 327
    const-wide/16 v1, 0x64

    mul-long/2addr v1, p1

    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 328
    .local v0, progress:I
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 330
    cmp-long v1, p1, v3

    if-ltz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->onClick(Landroid/view/View;)V

    .line 335
    .end local v0           #progress:I
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecSizeText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x400

    div-long v3, p1, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    return-void
.end method

.method public updateRecordingTime(I)V
    .locals 2
    .parameter "second"

    .prologue
    .line 339
    iput p1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    .line 340
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->hmsConvert(I)V

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    return-void
.end method
