.class Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$5;
.super Ljava/lang/Object;
.source "MoviePlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPlayReadyErrorListener;


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
    .line 1643
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$5;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayReadyError(Landroid/media/MediaPlayer;IILjava/lang/String;)Z
    .locals 3
    .parameter "mp"
    .parameter "what"
    .parameter "extra"
    .parameter "error"

    .prologue
    const-string v2, "VideoPlayerbackService"

    .line 1647
    if-eqz p4, :cond_0

    .line 1648
    const-string v0, "VideoPlayerbackService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<<<<<<<<<<<<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$5;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DISMISS_ACQUIRING_POPUP"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    .line 1650
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$5;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_LICENSE_ACQUISITION_FAILED"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p4}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$2000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    const-string v0, "VideoPlayerbackService"

    const-string v0, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR 1"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1655
    :cond_0
    const-string v0, "VideoPlayerbackService"

    const-string v0, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR is NULL URL"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
