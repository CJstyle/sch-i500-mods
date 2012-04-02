.class Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$7;
.super Ljava/lang/Object;
.source "MoviePlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
    .line 1813
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$7;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 3
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 1816
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$7;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mBufferPercentage:I
    invoke-static {v0, p2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1302(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I

    .line 1817
    const-string v0, "VideoPlayerbackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBufferingUpdateListener - total download : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    .line 1821
    if-nez p2, :cond_1

    .line 1822
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->bufferstate()V

    .line 1826
    :cond_0
    :goto_0
    return-void

    .line 1823
    :cond_1
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 1824
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->stopBufferingChecker()V

    goto :goto_0
.end method
