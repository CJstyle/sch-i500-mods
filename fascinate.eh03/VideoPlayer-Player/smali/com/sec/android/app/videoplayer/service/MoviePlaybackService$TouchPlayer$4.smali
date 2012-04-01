.class Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$4;
.super Ljava/lang/Object;
.source "MoviePlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    .line 1610
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$4;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const-string v1, "VideoPlayerbackService"

    .line 1614
    sparse-switch p2, :sswitch_data_0

    .line 1636
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1617
    :sswitch_0
    const-string v0, "VideoPlayerbackService"

    const-string v0, ">>>>>>>>MEDIA_INFO_BAD_INTERLEAVING<<<<<<<<<<<<"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1620
    :sswitch_1
    const-string v0, "VideoPlayerbackService"

    const-string v0, ">>>>>>>>MEDIA_INFO_NOT_SEEKABLE<<<<<<<<<<<<"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1623
    :sswitch_2
    const-string v0, "VideoPlayerbackService"

    const-string v0, ">>>>>>>>MEDIA_INFO_VIDEO_TRACK_LAGGING<<<<<<<<<<<<"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1626
    :sswitch_3
    const-string v0, "VideoPlayerbackService"

    const-string v0, ">>>>>>>>MEDIA_INFO_UNKNOWN<<<<<<<<<<<<"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    const/16 v0, 0x10

    if-ne p3, v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$4;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$4;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->position()J

    move-result-wide v1

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mProcessingFailurePos:J
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$1602(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;J)J

    goto :goto_0

    .line 1614
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2bc -> :sswitch_2
        0x320 -> :sswitch_0
        0x321 -> :sswitch_1
    .end sparse-switch
.end method
