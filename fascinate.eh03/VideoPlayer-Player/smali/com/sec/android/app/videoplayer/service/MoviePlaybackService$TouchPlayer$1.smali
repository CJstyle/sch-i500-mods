.class Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$1;
.super Ljava/lang/Object;
.source "MoviePlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 1498
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$1;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 6
    .parameter "mp"

    .prologue
    const/4 v4, 0x1

    const-string v5, "VideoPlayerbackService"

    .line 1501
    const-string v0, "VideoPlayerbackService"

    const-string v0, "TouchPlayer :: onCompletionListener()"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$1;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->duration()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$1;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->position()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$1;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mProcessingFailurePos:J
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$1600(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1506
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$1;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setIsInitialized(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$1700(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;Z)V

    .line 1507
    const-string v0, "VideoPlayerbackService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PVMFInfoProcessingFailure has been received, let\'s restart playback at pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$1;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mProcessingFailurePos:J
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$1600(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$1;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mProcessingFailurePos:J
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$1600(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)J

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    .line 1509
    sput-boolean v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mWasPlayingWhenPaused:Z

    .line 1512
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->bufferstate()V

    .line 1514
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$1;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$1800(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$1;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$1800(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1530
    :goto_0
    return-void

    .line 1520
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$1;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DISMISS_ACQUIRING_POPUP"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    .line 1522
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$1;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->broadcastPausedPosition(Landroid/content/Context;)V

    .line 1524
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setCurPlayingPath(Ljava/lang/String;)V

    .line 1525
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->resumeTvOut()V

    .line 1527
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$1;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$1800(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1528
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$1;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$1800(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$1;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$1800(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
