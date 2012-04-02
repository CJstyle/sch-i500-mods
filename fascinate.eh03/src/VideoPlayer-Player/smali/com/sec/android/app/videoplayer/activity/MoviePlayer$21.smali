.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$21;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 3160
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$21;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-string v3, "MoviePlayer"

    .line 3163
    const-string v1, "MoviePlayer"

    const-string v1, "mPlayStart - start"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    :try_start_0
    const-string v1, "MoviePlayer"

    const-string v2, "mPlayStart - 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$21;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3171
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$21;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3178
    :cond_0
    :goto_0
    return-void

    .line 3174
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3176
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occured  3 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
