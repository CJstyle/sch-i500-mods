.class public Lcom/sec/android/app/videoplayer/receiver/VideoBTReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VideoBTReceiver.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 13
    const-string v0, "VideoBTReceiver"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/receiver/VideoBTReceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, intentAction:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/receiver/VideoBTReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive() - Action : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-nez v5, :cond_1

    .line 24
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/receiver/VideoBTReceiver;->TAG:Ljava/lang/String;

    const-string v6, "onReceive() - MoviePlaybackService is null. DO NOT process command."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    if-nez v5, :cond_2

    .line 30
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/receiver/VideoBTReceiver;->TAG:Ljava/lang/String;

    const-string v6, "onReceive() - VideoServiceUtil.mVideoCtrlUtil is null. DO NOT process command."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 34
    :cond_2
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v4

    .line 36
    .local v4, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    if-nez v4, :cond_3

    .line 38
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/receiver/VideoBTReceiver;->TAG:Ljava/lang/String;

    const-string v6, "onReceive() - videoView is null. DO NOT process command."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 42
    :cond_3
    const-string v5, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 44
    const-string v5, "android.bluetooth.a2dp.extra.SINK_STATE"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 45
    .local v3, sinkState:I
    const-string v5, "android.bluetooth.a2dp.extra.PREVIOUS_SINK_STATE"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 47
    .local v2, previousSinkState:I
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/receiver/VideoBTReceiver;->TAG:Ljava/lang/String;

    const-string v6, "ACTION_SINK_STATE_CHANGED %d->%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v6, 0x1e

    if-eq v5, v6, :cond_0

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v6, 0x1d

    if-eq v5, v6, :cond_0

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v6, 0x14

    if-eq v5, v6, :cond_0

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v6, 0x16

    if-eq v5, v6, :cond_0

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v6, 0x20

    if-eq v5, v6, :cond_0

    .line 55
    if-eqz v3, :cond_4

    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    :cond_4
    const/4 v5, 0x4

    if-ne v2, v5, :cond_0

    .line 60
    :try_start_0
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v5}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 62
    sget-boolean v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPauseEnable:Z

    if-eqz v5, :cond_5

    .line 63
    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 68
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 70
    .local v0, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/receiver/VideoBTReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Headset is removed : RemoteException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 65
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    :try_start_1
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v5}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
