.class final Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$1;
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
    .line 1044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x12c

    const/16 v10, 0xbb8

    const/4 v9, 0x0

    const/16 v7, 0x8

    const-string v8, "VideoServiceUtil"

    .line 1047
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getStateView()Lcom/sec/android/app/videoplayer/view/VideoStateView;

    move-result-object v1

    .line 1048
    .local v1, stateView:Lcom/sec/android/app/videoplayer/view/VideoStateView;
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v2

    .line 1050
    .local v2, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    .line 1054
    :try_start_0
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v3}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1056
    const-string v3, "VideoServiceUtil"

    const-string v4, "mPlayingChecker..playing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 1059
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setVisibility(I)V

    .line 1061
    :cond_0
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->stopPlayingChecker()V

    .line 1109
    :goto_0
    return-void

    .line 1065
    :cond_1
    const-string v3, "VideoServiceUtil"

    const-string v4, "mPlayingChecker..not playing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    if-eqz v2, :cond_2

    .line 1068
    const/16 v3, 0xbb8

    invoke-virtual {v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->showControls(I)V

    .line 1070
    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getVisibility()I

    move-result v3

    if-ne v3, v7, :cond_4

    sget v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPLAYERSTATUS:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 1071
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setVisibility(I)V

    .line 1075
    :goto_1
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->access$000()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1078
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1080
    .local v0, e:Landroid/os/RemoteException;
    if-eqz v2, :cond_3

    .line 1081
    invoke-virtual {v2, v10}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->showControls(I)V

    .line 1083
    :cond_3
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getVisibility()I

    move-result v3

    if-ne v3, v7, :cond_5

    sget v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPLAYERSTATUS:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    .line 1084
    invoke-virtual {v1, v9}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setVisibility(I)V

    .line 1088
    :goto_2
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->access$000()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPlayingChecker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1089
    const-string v3, "VideoServiceUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException occured  2 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1073
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->doRefreshIcon()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1086
    .restart local v0       #e:Landroid/os/RemoteException;
    :cond_5
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->doRefreshIcon()V

    goto :goto_2

    .line 1094
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_6
    const-string v3, "VideoServiceUtil"

    const-string v3, "mPlayingChecker..service not created"

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    if-eqz v2, :cond_7

    .line 1097
    invoke-virtual {v2, v10}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->showControls(I)V

    .line 1099
    :cond_7
    if-eqz v1, :cond_8

    .line 1101
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getVisibility()I

    move-result v3

    if-ne v3, v7, :cond_9

    .line 1102
    invoke-virtual {v1, v9}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setVisibility(I)V

    .line 1107
    :cond_8
    :goto_3
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->access$000()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPlayingChecker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1104
    :cond_9
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->doRefreshIcon()V

    goto :goto_3
.end method
