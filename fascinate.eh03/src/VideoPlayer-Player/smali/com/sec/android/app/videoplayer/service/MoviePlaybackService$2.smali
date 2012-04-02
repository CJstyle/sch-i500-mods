.class Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$2;
.super Landroid/telephony/PhoneStateListener;
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
    .line 409
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$2;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 412
    const-string v0, "VideoPlayerbackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhoneStateListener() call state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", incomingNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$2;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCallState:I
    invoke-static {v0, p1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$802(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$2;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCallState:I
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$800(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)I

    move-result v0

    if-nez v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$2;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$2;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCallState:I
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$800(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$2;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCallState:I
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$800(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$2;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_INCOMINGCALL"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto :goto_0
.end method
