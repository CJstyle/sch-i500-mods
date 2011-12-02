.class Lcom/android/music/player/service/CorePlayerService$9;
.super Ljava/lang/Object;
.source "CorePlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/service/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/player/service/CorePlayerService;


# direct methods
.method constructor <init>(Lcom/android/music/player/service/CorePlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 3259
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "player"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3260
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "mOnPreparedListener:onPrepared() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3266
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared() mediaUri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3269
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iput-boolean v3, v0, Lcom/android/music/player/service/CorePlayerService;->bIsUserAction:Z

    .line 3270
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iput-boolean v4, v0, Lcom/android/music/player/service/CorePlayerService;->bPlayNextMusic:Z

    .line 3272
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iput-boolean v3, v0, Lcom/android/music/player/service/CorePlayerService;->mIsPrepareRequested:Z

    .line 3273
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-boolean v0, v0, Lcom/android/music/player/service/CorePlayerService;->mIsStopRequested:Z

    if-ne v0, v4, :cond_1

    .line 3274
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "mIsStopRequested == true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3275
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$000(Lcom/android/music/player/service/CorePlayerService;)V

    .line 3276
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iput-boolean v3, v0, Lcom/android/music/player/service/CorePlayerService;->mIsStopRequested:Z

    .line 3327
    :cond_0
    :goto_0
    return-void

    .line 3280
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mMediaUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 3283
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const v1, 0x11010

    iput v1, v0, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 3285
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

    if-nez v0, :cond_2

    .line 3286
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    new-instance v1, Lcom/android/music/common/data/MediaMetadata;

    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-direct {v1, v2}, Lcom/android/music/common/data/MediaMetadata;-><init>(Lcom/android/music/common/data/MusicDB;)V

    iput-object v1, v0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

    .line 3289
    :cond_2
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v1, v1, Lcom/android/music/player/service/CorePlayerService;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/music/common/data/MediaMetadata;->parse(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3290
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0, v1}, Lcom/android/music/common/data/MediaMetadata;->makeUIData(Landroid/content/Context;)V

    .line 3295
    :goto_1
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$1100(Lcom/android/music/player/service/CorePlayerService;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3296
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$1100(Lcom/android/music/player/service/CorePlayerService;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 3298
    :cond_3
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v1, "musicPlayer.service.updateMediaInfo"

    invoke-virtual {v0, v1}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 3301
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-boolean v0, v0, Lcom/android/music/player/service/CorePlayerService;->mStartPlay:Z

    if-eqz v0, :cond_6

    .line 3302
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iput-boolean v3, v0, Lcom/android/music/player/service/CorePlayerService;->mStartPlay:Z

    .line 3303
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/16 v1, 0x14

    iput v1, v0, Lcom/android/music/player/service/CorePlayerService;->mErrorCount:I

    .line 3304
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0, v4, v4}, Lcom/android/music/player/service/CorePlayerService;->startPlay(ZZ)V

    .line 3312
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v1, v1, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v1}, Lcom/android/music/player/service/CorePlayerService;->canStartMediaPlayer()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v1, v1, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    :goto_3
    invoke-static {v0, v1}, Lcom/android/music/player/service/CorePlayerService;->access$602(Lcom/android/music/player/service/CorePlayerService;I)I

    .line 3315
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$600(Lcom/android/music/player/service/CorePlayerService;)I

    move-result v0

    if-gtz v0, :cond_8

    .line 3317
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iput-boolean v4, v0, Lcom/android/music/player/service/CorePlayerService;->mIsLiveStream:Z

    .line 3318
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v1, "musicPlayer.service.liveStreamMode"

    invoke-virtual {v0, v1}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 3324
    :goto_4
    invoke-static {v3}, Lcom/android/music/common/util/MusicPlayerUtil;->setShowPrepare(Z)V

    .line 3325
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v1, "musicPlayer.service.prepare.hide"

    invoke-virtual {v0, v1}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 3326
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 3292
    :cond_5
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/music/common/data/MediaMetadata;->makeUIDataFromUri(Landroid/content/Context;Landroid/net/Uri;)Z

    goto :goto_1

    .line 3308
    :cond_6
    sget-boolean v0, Lcom/android/music/common/util/MusicPlayerUtil;->isMusicPlayerResume:Z

    if-nez v0, :cond_4

    .line 3309
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->showNotification()V

    goto :goto_2

    :cond_7
    move v1, v3

    .line 3312
    goto :goto_3

    .line 3321
    :cond_8
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iput-boolean v3, v0, Lcom/android/music/player/service/CorePlayerService;->mIsLiveStream:Z

    .line 3322
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$9;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v1, "musicPlayer.service.normalMode"

    invoke-virtual {v0, v1}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    goto :goto_4
.end method
