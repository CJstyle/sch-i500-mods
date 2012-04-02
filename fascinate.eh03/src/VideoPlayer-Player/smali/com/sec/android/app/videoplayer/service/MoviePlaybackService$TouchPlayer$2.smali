.class Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$2;
.super Ljava/lang/Object;
.source "MoviePlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    .line 1534
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$2;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 4
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1536
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$2;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v1, v1, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoWidth:I
    invoke-static {v1, p2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1402(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I

    .line 1537
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$2;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v1, v1, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoHeight:I
    invoke-static {v1, p3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1502(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I

    .line 1539
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$2;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v1, v1, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v0

    .line 1540
    .local v0, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->requestLayout()V

    .line 1542
    const-string v1, "VideoPlayerbackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TouchPlayer :: mVideoSizeChangedListener() 1 - video real size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$2;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v3, v3, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoWidth:I
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1400(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$2;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v3, v3, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoHeight:I
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1500(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    return-void
.end method
