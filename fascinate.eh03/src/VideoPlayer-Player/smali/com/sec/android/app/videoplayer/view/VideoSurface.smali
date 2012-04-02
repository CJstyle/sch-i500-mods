.class public Lcom/sec/android/app/videoplayer/view/VideoSurface;
.super Landroid/view/SurfaceView;
.source "VideoSurface.java"

# interfaces
.implements Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
.implements Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;


# instance fields
.field private final LONG_PRESS_TIME:J

.field private final SHORT_PRESS_TIME:J

.field private final TAG:Ljava/lang/String;

.field public mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

.field private mContext:Landroid/content/Context;

.field private final mDefaultTimeout:I

.field private mHandler:Landroid/os/Handler;

.field private mLongKeyCnt:I

.field private mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mScreenOrientation:I

.field private mSeekPos:I

.field private mSurfaceExists:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field public mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 23
    const-string v0, "VideoSurface"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->TAG:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 26
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    .line 27
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    .line 39
    iput v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mLongKeyCnt:I

    .line 40
    iput v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSeekPos:I

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mScreenOrientation:I

    .line 42
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mDefaultTimeout:I

    .line 43
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->SHORT_PRESS_TIME:J

    .line 44
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->LONG_PRESS_TIME:J

    .line 358
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoSurface$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface$1;-><init>(Lcom/sec/android/app/videoplayer/view/VideoSurface;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 611
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;-><init>(Lcom/sec/android/app/videoplayer/view/VideoSurface;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    .line 50
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mContext:Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->initVideoView()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mContext:Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->initVideoView()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const-string v0, "VideoSurface"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->TAG:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 26
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    .line 27
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    .line 39
    iput v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mLongKeyCnt:I

    .line 40
    iput v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSeekPos:I

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mScreenOrientation:I

    .line 42
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mDefaultTimeout:I

    .line 43
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->SHORT_PRESS_TIME:J

    .line 44
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->LONG_PRESS_TIME:J

    .line 358
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoSurface$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface$1;-><init>(Lcom/sec/android/app/videoplayer/view/VideoSurface;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 611
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;-><init>(Lcom/sec/android/app/videoplayer/view/VideoSurface;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    .line 64
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mContext:Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->initVideoView()V

    .line 66
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/videoplayer/view/VideoSurface;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sec/android/app/videoplayer/view/VideoSurface;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSurfaceExists:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/videoplayer/view/VideoSurface;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/videoplayer/view/VideoSurface;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mLongKeyCnt:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/videoplayer/view/VideoSurface;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mLongKeyCnt:I

    return p1
.end method

.method static synthetic access$308(Lcom/sec/android/app/videoplayer/view/VideoSurface;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mLongKeyCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mLongKeyCnt:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/videoplayer/view/VideoSurface;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSeekPos:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/videoplayer/view/VideoSurface;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSeekPos:I

    return p1
.end method

.method static synthetic access$412(Lcom/sec/android/app/videoplayer/view/VideoSurface;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSeekPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSeekPos:I

    return v0
.end method

.method static synthetic access$420(Lcom/sec/android/app/videoplayer/view/VideoSurface;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSeekPos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSeekPos:I

    return v0
.end method

.method private initVideoView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 227
    const-string v0, "VideoSurface"

    const-string v1, "initVideoView() E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 230
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 231
    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setFocusable(Z)V

    .line 232
    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setFocusableInTouchMode(Z)V

    .line 233
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->requestFocus()Z

    .line 234
    return-void
.end method


# virtual methods
.method public attachController()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setPlayer(Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;)V

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setAnchorView()V

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setButtonArrange()V

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->setPlayer(Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;)V

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->setAnchorView()V

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->setButtonArrange()V

    .line 346
    :cond_1
    return-void
.end method

.method public changeScreen()V
    .locals 1

    .prologue
    .line 954
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getFitToScreenMode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setFitToScreenMode(I)V

    .line 955
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->requestLayout()V

    .line 956
    return-void
.end method

.method public forceBtnRelease()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->forceBtnRelease()V

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->forceBtnRelease()V

    .line 78
    return-void
.end method

.method public getBufferPercentage()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 872
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_0

    .line 875
    :try_start_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->getBufferPercentage()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 882
    :goto_0
    return v1

    .line 876
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 877
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 878
    const-string v1, "VideoSurface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured  10 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 879
    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    move v1, v4

    .line 882
    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 817
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_0

    .line 820
    :try_start_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->position()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    long-to-int v1, v1

    .line 827
    :goto_0
    return v1

    .line 821
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 822
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 823
    const-string v1, "VideoSurface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured  7 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 824
    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    move v1, v4

    .line 827
    goto :goto_0
.end method

.method public getDuration()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 803
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_0

    .line 806
    :try_start_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->duration()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    long-to-int v1, v1

    .line 813
    :goto_0
    return v1

    .line 807
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 808
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 809
    const-string v1, "VideoSurface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured  6 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 810
    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    move v1, v4

    .line 813
    goto :goto_0
.end method

.method public getSurfaceExists()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSurfaceExists:Z

    return v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public hideControls()V
    .locals 2

    .prologue
    .line 920
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->hide()V

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    if-eqz v0, :cond_1

    .line 924
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->hide()V

    .line 926
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 927
    return-void
.end method

.method public hideTitleControls()V
    .locals 2

    .prologue
    .line 931
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->hide()V

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 935
    return-void
.end method

.method public hideVolumeBar()V
    .locals 2

    .prologue
    .line 939
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setVolumeBarVisible(Z)V

    .line 943
    :cond_0
    return-void
.end method

.method public isControls()Z
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isControlsShowing()Z
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    if-nez v0, :cond_0

    .line 606
    const/4 v0, 0x0

    .line 608
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 858
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_0

    .line 861
    :try_start_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isInitialized()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 868
    :goto_0
    return v1

    .line 862
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 863
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 864
    const-string v1, "VideoSurface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured  9 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 865
    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    move v1, v4

    .line 868
    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 844
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_0

    .line 847
    :try_start_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 854
    :goto_0
    return v1

    .line 848
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 849
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 850
    const-string v1, "VideoSurface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured  9 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 851
    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    move v1, v4

    .line 854
    goto :goto_0
.end method

.method public keepScreen()V
    .locals 1

    .prologue
    .line 960
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getFitToScreenMode()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setFitToScreenMode(I)V

    .line 961
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->requestLayout()V

    .line 962
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 415
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 417
    .local v0, phKey:I
    const-string v1, "VideoSurface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown() - key event :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mScreenOrientation:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 421
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getScreenOrientation()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mScreenOrientation:I

    .line 424
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 461
    iget-boolean v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSurfaceExists:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x18

    if-eq p1, v1, :cond_5

    const/16 v1, 0x19

    if-eq p1, v1, :cond_5

    if-eq p1, v6, :cond_5

    const/16 v1, 0x52

    if-eq p1, v1, :cond_5

    if-eq p1, v7, :cond_5

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_5

    if-eq p1, v8, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->isControls()Z

    move-result v1

    if-nez v1, :cond_5

    .line 469
    if-eqz p1, :cond_1

    const/16 v1, 0x56

    if-eq p1, v1, :cond_1

    const/16 v1, 0x55

    if-eq p1, v1, :cond_1

    const/16 v1, 0x59

    if-eq p1, v1, :cond_1

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_1

    const/16 v1, 0x57

    if-eq p1, v1, :cond_1

    const/16 v1, 0x58

    if-eq p1, v1, :cond_1

    if-eq p1, v5, :cond_1

    const/16 v1, 0x54

    if-ne p1, v1, :cond_4

    .line 474
    :cond_1
    const-string v1, "VideoSurface"

    const-string v2, "UnKownKey."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 481
    :goto_0
    return v1

    .line 429
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 432
    :pswitch_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->removeMessage(I)V

    move v1, v4

    .line 433
    goto :goto_0

    .line 436
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->hideControls()V

    .line 438
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 440
    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v8, v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->sendMessage(IJ)V

    .line 443
    :cond_2
    invoke-virtual {p0, v6}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->removeMessage(I)V

    move v1, v4

    .line 444
    goto :goto_0

    .line 447
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->hideControls()V

    .line 449
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 451
    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v7, v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->sendMessage(IJ)V

    .line 454
    :cond_3
    invoke-virtual {p0, v5}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->removeMessage(I)V

    move v1, v4

    .line 455
    goto :goto_0

    .line 478
    :cond_4
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_5

    .line 479
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->toggleControlsVisiblity()V

    .line 481
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 486
    const-string v4, "VideoSurface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onKeyUp() - key event :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 490
    .local v2, pressTime:J
    const/16 v0, 0x15

    .line 491
    .local v0, key_left:I
    const/16 v1, 0x16

    .line 496
    .local v1, key_right:I
    iget v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mScreenOrientation:I

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getScreenOrientation()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 498
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 500
    const/16 v0, 0x14

    .line 501
    const/16 v1, 0x13

    .line 509
    :cond_0
    :goto_0
    const/16 v4, 0x17

    if-ne p1, v4, :cond_3

    .line 511
    const-wide/16 v4, 0x1f4

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 513
    const/4 v4, 0x2

    const-wide/16 v5, 0x64

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->sendMessage(IJ)V

    .line 543
    :cond_1
    :goto_1
    const/4 v4, -0x1

    iput v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mScreenOrientation:I

    .line 544
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    :goto_2
    return v4

    .line 505
    :cond_2
    const/16 v0, 0x13

    .line 506
    const/16 v1, 0x14

    goto :goto_0

    .line 516
    :cond_3
    if-ne p1, v0, :cond_6

    .line 518
    const-wide/16 v4, 0x1f4

    cmp-long v4, v2, v4

    if-gez v4, :cond_5

    const/16 v4, 0x14

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    if-eq v4, v5, :cond_4

    const/16 v4, 0x19

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    if-eq v4, v5, :cond_4

    const/16 v4, 0x1a

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    if-ne v4, v5, :cond_5

    .line 523
    :cond_4
    const/4 v4, 0x4

    const-wide/16 v5, 0x64

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->sendMessage(IJ)V

    .line 526
    :cond_5
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->removeMessage(I)V

    goto :goto_1

    .line 528
    :cond_6
    if-ne p1, v1, :cond_9

    .line 530
    const-wide/16 v4, 0x1f4

    cmp-long v4, v2, v4

    if-gez v4, :cond_8

    const/16 v4, 0x14

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    if-eq v4, v5, :cond_7

    const/16 v4, 0x19

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    if-eq v4, v5, :cond_7

    const/16 v4, 0x1a

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    if-ne v4, v5, :cond_8

    .line 535
    :cond_7
    const/4 v4, 0x3

    const-wide/16 v5, 0x64

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->sendMessage(IJ)V

    .line 538
    :cond_8
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->removeMessage(I)V

    goto :goto_1

    .line 540
    :cond_9
    const/16 v4, 0x13

    if-eq p1, v4, :cond_a

    const/16 v4, 0x14

    if-ne p1, v4, :cond_1

    .line 541
    :cond_a
    const/4 v4, 0x0

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 82
    const/4 v3, 0x0

    .line 83
    .local v3, surfaceWidth:I
    const/4 v2, 0x0

    .line 84
    .local v2, surfaceHeight:I
    const/4 v5, 0x0

    .line 85
    .local v5, videoWidth:I
    const/4 v4, 0x0

    .line 86
    .local v4, videoHeight:I
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getFitToScreenMode()I

    move-result v1

    .line 90
    .local v1, fitToSCR:I
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v6, :cond_6

    .line 94
    :try_start_0
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v6}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->getVideoWidth()I

    move-result v5

    .line 95
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v6}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->getVideoHeight()I

    move-result v4

    .line 98
    if-nez v5, :cond_0

    if-nez v4, :cond_0

    .line 101
    invoke-super {p0, v3, v2}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    .line 189
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0, v5, p1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->resolveAdjustedSize(II)I

    move-result v3

    .line 107
    invoke-virtual {p0, v4, p2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->resolveAdjustedSize(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 118
    packed-switch v1, :pswitch_data_0

    .line 188
    :cond_1
    :goto_1
    invoke-super {p0, v3, v2}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 111
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 113
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 114
    const-string v6, "VideoSurface"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RemoteException occured  1 :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_0
    if-lez v5, :cond_1

    if-lez v4, :cond_1

    .line 126
    if-gt v5, v3, :cond_2

    if-le v4, v2, :cond_4

    .line 128
    :cond_2
    mul-int v6, v5, v2

    mul-int v7, v4, v3

    if-lt v6, v7, :cond_3

    .line 130
    mul-int v6, v3, v4

    div-int v2, v6, v5

    goto :goto_1

    .line 134
    :cond_3
    mul-int v6, v2, v5

    div-int v3, v6, v4

    goto :goto_1

    .line 139
    :cond_4
    move v3, v5

    .line 140
    move v2, v4

    goto :goto_1

    .line 148
    :pswitch_1
    if-lez v5, :cond_1

    if-lez v4, :cond_1

    .line 152
    mul-int v6, v5, v2

    mul-int v7, v4, v3

    if-lt v6, v7, :cond_5

    .line 154
    mul-int v6, v3, v4

    div-int v2, v6, v5

    goto :goto_1

    .line 158
    :cond_5
    mul-int v6, v2, v5

    div-int v3, v6, v4

    goto :goto_1

    .line 166
    :pswitch_2
    if-lez v5, :cond_1

    if-lez v4, :cond_1

    .line 170
    invoke-virtual {p0, v5, p1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->resolveAdjustedSize(II)I

    move-result v3

    .line 171
    invoke-virtual {p0, v4, p2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->resolveAdjustedSize(II)I

    move-result v2

    goto :goto_1

    .line 180
    :cond_6
    if-lez v5, :cond_1

    if-lez v4, :cond_1

    .line 182
    invoke-static {v5, p1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getDefaultSize(II)I

    move-result v3

    .line 183
    invoke-static {v4, p2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getDefaultSize(II)I

    move-result v2

    goto :goto_1

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->onPause()V

    .line 258
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->onResume()V

    .line 252
    :cond_0
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 405
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v0, :cond_0

    .line 407
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSurfaceExists:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->isControls()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->toggleControlsVisiblity()V

    .line 410
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 4

    .prologue
    const-string v3, "VideoSurface"

    .line 752
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_1

    .line 754
    const-string v1, "VideoSurface"

    const-string v1, "pause() E."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :try_start_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->pause()V

    .line 761
    const/4 v1, 0x1

    sput v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPLAYERSTATUS:I

    .line 763
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    if-eqz v1, :cond_0

    .line 764
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->updateScnCtrlBtn()V

    .line 766
    :cond_0
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getLockState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 767
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->setWakeMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    :goto_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->pauseSubTitleProcessor()V

    .line 780
    :cond_1
    :goto_1
    return-void

    .line 769
    :cond_2
    :try_start_1
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->setWakeMode(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 771
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 773
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 774
    const-string v1, "VideoSurface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException occured  4 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public removeAllInController()V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->hide()V

    .line 591
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeAllViewsInLayout()V

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    if-eqz v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->hide()V

    .line 597
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->removeAllViewsInLayout()V

    .line 600
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->resetSeekKey()V

    .line 601
    return-void
.end method

.method public removeMessage(I)V
    .locals 2
    .parameter "what"

    .prologue
    const/4 v1, 0x0

    .line 556
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 558
    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 560
    :cond_0
    iput v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSeekPos:I

    .line 561
    iput v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mLongKeyCnt:I

    .line 563
    :cond_1
    return-void
.end method

.method public resetSeekKey()V
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->removeMessage(I)V

    .line 580
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->removeMessage(I)V

    .line 581
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->removeMessage(I)V

    .line 582
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->removeMessage(I)V

    .line 583
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->removeMessage(I)V

    .line 584
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 3
    .parameter "desiredSize"
    .parameter "measureSpec"

    .prologue
    .line 193
    move v0, p1

    .line 196
    .local v0, result:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 198
    .local v1, specMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 200
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 222
    :goto_0
    return v0

    .line 205
    :sswitch_0
    move v0, p1

    .line 206
    goto :goto_0

    .line 210
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 211
    goto :goto_0

    .line 216
    :sswitch_2
    move v0, v2

    .line 217
    goto :goto_0

    .line 200
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public seekTo(I)V
    .locals 4
    .parameter "msec"

    .prologue
    .line 831
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_0

    .line 834
    :try_start_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->seek(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    :cond_0
    :goto_0
    return-void

    .line 835
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 836
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 837
    const-string v1, "VideoSurface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured  8 :"

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
.end method

.method public sendMessage(IJ)V
    .locals 2
    .parameter "what"
    .parameter "delay"

    .prologue
    .line 549
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 550
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 551
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 552
    return-void
.end method

.method public setControllerPlayerStop()V
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->isControls()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->playerStop()V

    .line 327
    :cond_0
    return-void
.end method

.method public setControllerUpdate()V
    .locals 4

    .prologue
    const-string v3, "VideoSurface"

    .line 262
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->isControls()Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    sget v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPLAYERSTATUS:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 266
    const-string v1, "VideoSurface"

    const-string v1, "setControllerUpdate - previous status is pause."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_0

    .line 272
    :try_start_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setUpdate()V

    .line 288
    :cond_1
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 279
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 280
    const-string v1, "VideoSurface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occured :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEmptyTitleName()V
    .locals 3

    .prologue
    .line 317
    const-string v1, "VideoSurface"

    const-string v2, "setEmptyTitleName()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v0, ""

    .line 320
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->updateTitle(Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public setTitleName()V
    .locals 6

    .prologue
    const-string v5, "VideoSurface"

    .line 294
    const-string v1, ""

    .line 298
    .local v1, name:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v2}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 299
    const-string v2, "VideoSurface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTitleName() - name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 310
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mContext:Landroid/content/Context;

    const v3, 0x7f07002f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 312
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->updateTitle(Ljava/lang/String;)V

    .line 313
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 303
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 304
    const-string v2, "VideoSurface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured  3 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setVideoController(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Lcom/sec/android/app/videoplayer/view/VideoTitleController;)V
    .locals 1
    .parameter "btnctrl"
    .parameter "titlectrl"

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->isControlsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->hideControls()V

    .line 243
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    .line 244
    iput-object p2, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    .line 245
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->attachController()V

    .line 246
    return-void
.end method

.method public showControls(I)V
    .locals 4
    .parameter "showTime"

    .prologue
    const/4 v2, 0x1

    .line 900
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->show()V

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    if-eqz v0, :cond_1

    .line 904
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->show()V

    .line 906
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 907
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 908
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 705
    sget-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPlayingRequested:Z

    if-eqz v3, :cond_1

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v3, :cond_0

    .line 711
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->stopPlayingChecker()V

    .line 715
    :try_start_0
    sget v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPLAYERSTATUS:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 716
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->startPlayback()V

    .line 723
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    if-eqz v3, :cond_2

    .line 724
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->updateScnCtrlBtn()V

    .line 726
    :cond_2
    const/4 v3, 0x0

    sput v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPLAYERSTATUS:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getID()J

    move-result-wide v1

    .line 737
    .local v1, id:J
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v4, v1, v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFilePathbyId(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->checkExistSubTitle(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 739
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->initSubTitle()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 740
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->startSubTitleProccessor()V

    goto :goto_0

    .line 720
    .end local v1           #id:J
    :cond_3
    :try_start_1
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v3}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->play()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 728
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 730
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 731
    const-string v3, "VideoSurface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException occured  3 :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 742
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #id:J
    :cond_4
    sput-boolean v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHasSubtitle:Z

    goto :goto_0

    .line 744
    :cond_5
    sput-boolean v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHasSubtitle:Z

    .line 745
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->stopSubTitleProcessor()V

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    const-string v3, "VideoSurface"

    .line 784
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_0

    .line 786
    const-string v1, "VideoSurface"

    const-string v1, "stop() E"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :try_start_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->stop()V

    .line 790
    const-wide/16 v1, -0x1

    sput-wide v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    .line 791
    const/4 v1, 0x2

    sput v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPLAYERSTATUS:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->stopSubTitleProcessor()V

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 792
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 793
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 794
    const-string v1, "VideoSurface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException occured  5 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toggleControlsVisiblity()V
    .locals 1

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->isControlsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->hideControls()V

    .line 571
    :goto_0
    return-void

    .line 570
    :cond_0
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->showControls(I)V

    goto :goto_0
.end method

.method public updateSRSBtn()V
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateSRSBtn()V

    .line 967
    return-void
.end method

.method public updateVolumeBar(I)V
    .locals 2
    .parameter "vol"

    .prologue
    .line 947
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateVolumeBtn()V

    .line 948
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateVolumeSeekBar()V

    .line 949
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setVolumeBarVisible(Z)V

    .line 950
    return-void
.end method
