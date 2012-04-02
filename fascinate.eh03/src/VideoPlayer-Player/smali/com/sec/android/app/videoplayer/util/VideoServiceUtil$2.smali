.class final Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$2;
.super Landroid/os/Handler;
.source "VideoServiceUtil.java"


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
    .line 1291
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const-string v5, "VideoServiceUtil"

    .line 1294
    const-string v3, "VideoServiceUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHandler start : msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v6, :cond_6

    .line 1298
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v2

    .line 1300
    .local v2, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->startPlayingChecker()V

    .line 1301
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->resetSeekKey()V

    .line 1303
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getSurfaceExists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1305
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1309
    .local v1, uri:Landroid/net/Uri;
    :try_start_0
    const-string v3, "http"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "rtsp"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v3}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isConnectionAlive()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1311
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->startPlayback()V

    .line 1348
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :cond_1
    :goto_0
    return-void

    .line 1314
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v2       #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :cond_2
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->access$000()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1316
    const-string v3, "VideoServiceUtil"

    const-string v4, "mHandler() - STARTPLAYBACK"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPlaybackComplete:Z

    .line 1319
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->checkIsDRM(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1321
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->startPlay(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1322
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setTitleName()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1333
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1335
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "VideoServiceUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException occured  5 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1324
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->stopPlayingChecker()V

    goto :goto_0

    .line 1328
    :cond_4
    const-string v3, "VideoServiceUtil"

    const-string v4, "mHandler() - error."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->stopPlayingChecker()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1340
    .end local v1           #uri:Landroid/net/Uri;
    :cond_5
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->startPlayback()V

    goto :goto_0

    .line 1343
    .end local v2           #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :cond_6
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1345
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v2

    .line 1346
    .restart local v2       #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setTitleName()V

    goto :goto_0
.end method
