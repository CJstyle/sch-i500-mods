.class final Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$3;
.super Ljava/lang/Object;
.source "VideoServiceUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const-wide/16 v8, 0x12c

    const/16 v7, 0xbb8

    const/16 v6, 0x8

    const/4 v5, 0x0

    const-string v10, "VideoServiceUtil"

    .line 1403
    const-string v3, "VideoServiceUtil"

    const-string v3, "mBufferingChecker Run!"

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getStateView()Lcom/sec/android/app/videoplayer/view/VideoStateView;

    move-result-object v1

    .line 1405
    .local v1, stateView:Lcom/sec/android/app/videoplayer/view/VideoStateView;
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v2

    .line 1406
    .local v2, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 1410
    :try_start_0
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v3}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->getBufferPercentage()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_0

    .line 1412
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->access$000()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mBufferingChecker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1444
    :goto_0
    return-void

    .line 1416
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1418
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "VideoServiceUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException occured  10 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    if-eqz v2, :cond_1

    .line 1422
    invoke-virtual {v2, v7}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->showControls(I)V

    .line 1424
    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 1425
    invoke-virtual {v1, v5}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setVisibility(I)V

    .line 1429
    :goto_1
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->access$000()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mBufferingChecker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1427
    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->doRefreshIcon()V

    goto :goto_1

    .line 1433
    :cond_3
    if-eqz v2, :cond_4

    .line 1434
    invoke-virtual {v2, v7}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->showControls(I)V

    .line 1435
    :cond_4
    if-eqz v1, :cond_5

    .line 1437
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_6

    .line 1438
    invoke-virtual {v1, v5}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setVisibility(I)V

    .line 1442
    :cond_5
    :goto_2
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->access$000()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mBufferingChecker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1440
    :cond_6
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->doRefreshIcon()V

    goto :goto_2
.end method
