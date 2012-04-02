.class Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$4;
.super Landroid/os/Handler;
.source "MoviePlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$4;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 560
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$4;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$4;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mServiceInUse:Z
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$4;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$4;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$4;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mServiceStartId:I
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->stopSelf(I)V

    goto :goto_0
.end method
