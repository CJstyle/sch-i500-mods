.class public Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;
.super Ljava/lang/Object;
.source "VideoCtrlUtil.java"


# static fields
.field private static mInstance:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;


# instance fields
.field private mLockCtrlView:Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;

.field private mMainView:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

.field private mSubtitleSyncView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

.field private mSubtitleView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;

.field private mTitleViewLandscape:Landroid/view/View;

.field private mVideoStateView:Lcom/sec/android/app/videoplayer/view/VideoStateView;

.field private mVideoSurface:Lcom/sec/android/app/videoplayer/view/VideoSurface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mInstance:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mMainView:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    .line 15
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mVideoSurface:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    .line 16
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mVideoStateView:Lcom/sec/android/app/videoplayer/view/VideoStateView;

    .line 17
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mSubtitleView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;

    .line 18
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mSubtitleSyncView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    .line 19
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mTitleViewLandscape:Landroid/view/View;

    .line 20
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mLockCtrlView:Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;

    .line 24
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mInstance:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mInstance:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    .line 28
    :cond_0
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mInstance:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    return-object v0
.end method


# virtual methods
.method public getLockCtrlView()Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mLockCtrlView:Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;

    return-object v0
.end method

.method public getMainView()Lcom/sec/android/app/videoplayer/view/MainVideoWindow;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mMainView:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    return-object v0
.end method

.method public getStateView()Lcom/sec/android/app/videoplayer/view/VideoStateView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mVideoStateView:Lcom/sec/android/app/videoplayer/view/VideoStateView;

    return-object v0
.end method

.method public getSubTitleSyncView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mSubtitleSyncView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    return-object v0
.end method

.method public getSubTitleView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mSubtitleView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;

    return-object v0
.end method

.method public getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mVideoSurface:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    return-object v0
.end method

.method public setLockCtrlView(Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;)V
    .locals 0
    .parameter "lockView"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mLockCtrlView:Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;

    .line 77
    return-void
.end method

.method public setMainView(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)V
    .locals 0
    .parameter "mainView"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mMainView:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    .line 38
    return-void
.end method

.method public setStateView(Lcom/sec/android/app/videoplayer/view/VideoStateView;)V
    .locals 0
    .parameter "stateView"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mVideoStateView:Lcom/sec/android/app/videoplayer/view/VideoStateView;

    .line 53
    return-void
.end method

.method public setSubTitleSyncView(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)V
    .locals 0
    .parameter "subTitleView"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mSubtitleSyncView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    .line 69
    return-void
.end method

.method public setSubTitleView(Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;)V
    .locals 0
    .parameter "subTitleView"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mSubtitleView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;

    .line 61
    return-void
.end method

.method public setVideoSurface(Lcom/sec/android/app/videoplayer/view/VideoSurface;)V
    .locals 0
    .parameter "videoView"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mVideoSurface:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    .line 45
    return-void
.end method
