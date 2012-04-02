.class Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;
.super Ljava/lang/Object;
.source "MoviePlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1547
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .parameter "mp"

    .prologue
    const-string v4, "VideoPlayerbackService"

    .line 1550
    const-string v2, "VideoPlayerbackService"

    const-string v2, "TouchPlayer :: OnPreparedListener()"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v3, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DISMISS_ACQUIRING_POPUP"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    .line 1558
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoWidth:I
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1400(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoHeight:I
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1500(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1560
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v1

    .line 1562
    .local v1, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    if-eqz v1, :cond_4

    .line 1564
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1566
    .local v0, sh:Landroid/view/SurfaceHolder;
    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getSurfaceExists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1568
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoHeight:I
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1500(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v3, v3, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoHeight:I
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1500(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 1569
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->requestLayout()V

    .line 1585
    .end local v0           #sh:Landroid/view/SurfaceHolder;
    .end local v1           #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    const/4 v3, 0x1

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setIsInitialized(Z)V
    invoke-static {v2, v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$1700(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;Z)V

    .line 1586
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->duration()J

    .line 1587
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->checkPauseEnable()V
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$1900(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)V

    .line 1589
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getSRS()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1590
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    const/high16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->internalSetEq(I)V

    .line 1592
    :cond_1
    sget-wide v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    .line 1594
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    sget-wide v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->seek(J)J

    .line 1595
    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    .line 1597
    sget-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mWasPlayingWhenPaused:Z

    if-eqz v2, :cond_2

    .line 1599
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mWasPlayingWhenPaused:Z

    .line 1600
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->play()V

    .line 1606
    :cond_2
    :goto_0
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->stopBufferingChecker()V

    .line 1607
    :goto_1
    return-void

    .line 1573
    .restart local v0       #sh:Landroid/view/SurfaceHolder;
    .restart local v1       #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->resetPlayer()V

    goto :goto_1

    .line 1579
    .end local v0           #sh:Landroid/view/SurfaceHolder;
    :cond_4
    const-string v2, "VideoPlayerbackService"

    const-string v2, "TouchPlayer :: OnPreparedListener() - VideoSurfaceView is null."

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->resetPlayer()V

    goto :goto_1

    .line 1604
    .end local v1           #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->play()V

    goto :goto_0
.end method
