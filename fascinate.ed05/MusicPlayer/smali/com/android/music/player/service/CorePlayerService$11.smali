.class Lcom/android/music/player/service/CorePlayerService$11;
.super Ljava/lang/Object;
.source "CorePlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 3345
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 10
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 3347
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v5}, Lcom/android/music/player/service/CorePlayerService;->hideNotification()V

    .line 3348
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v5, v5, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x384

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3349
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v5, v5, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x384

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3353
    :cond_0
    const/16 v5, 0x64

    if-ne p2, v5, :cond_4

    .line 3354
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget v5, v5, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    const v6, 0x11020

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    move v1, v5

    .line 3355
    .local v1, bThrow:Z
    :goto_0
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v5, v5, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 3356
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/4 v6, 0x1

    iput v6, v5, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 3357
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v6, v5, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 3358
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/4 v6, 0x2

    iput v6, v5, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 3361
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v5, v5, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 3362
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v5}, Lcom/android/music/player/service/CorePlayerService;->hideNotification()V

    .line 3363
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/music/player/service/CorePlayerService;->sendMediaPlayInfo(Z)V

    .line 3365
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v5}, Lcom/android/music/player/service/CorePlayerService;->access$1200(Lcom/android/music/player/service/CorePlayerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3366
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v5}, Lcom/android/music/player/service/CorePlayerService;->access$1200(Lcom/android/music/player/service/CorePlayerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3368
    :cond_1
    sget-object v5, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v6, ">>>>>>>>MEDIA_ERROR_SERVER_DIED<<<<<<<<<<<<"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3369
    sget-object v5, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v6, "Extra:%d,%s,%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v9, v9, Lcom/android/music/player/service/CorePlayerService;->mMediaUri:Landroid/net/Uri;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v9, v9, Lcom/android/music/player/service/CorePlayerService;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_1
    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v9, v9, Lcom/android/music/player/service/CorePlayerService;->mMediaFilePath:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v5, v5, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v6, v6, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x7d0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3400
    const/4 v5, 0x1

    .line 3486
    .end local v1           #bThrow:Z
    .end local p1
    :goto_2
    return v5

    .line 3354
    .restart local p1
    :cond_2
    const/4 v5, 0x0

    move v1, v5

    goto/16 :goto_0

    .line 3369
    .restart local v1       #bThrow:Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 3403
    .end local v1           #bThrow:Z
    :cond_4
    const/16 v5, -0x21

    if-eq p2, v5, :cond_5

    const/16 v5, -0x21

    if-ne p3, v5, :cond_6

    .line 3405
    :cond_5
    sget-object v5, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v6, ">>>>>>>>MEDIA_ErrDrmLicenseExpired<<<<<<<<<<<<"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3406
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v5, v5, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 3407
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/4 v6, 0x1

    iput v6, v5, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 3408
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v6, v5, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 3409
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/4 v6, 0x2

    iput v6, v5, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 3412
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v5, v5, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 3413
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v5, v5, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v6, v6, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x1f4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x1f4

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3415
    const/4 v5, 0x1

    goto :goto_2

    .line 3416
    :cond_6
    const/16 v5, -0x20

    if-eq p2, v5, :cond_7

    const/16 v5, -0x20

    if-ne p3, v5, :cond_8

    .line 3418
    :cond_7
    sget-object v5, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v6, ">>>>>>>>MEDIA_ErrDrmLicenseNotFound<<<<<<<<<<<<"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3419
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v5, v5, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 3420
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/4 v6, 0x1

    iput v6, v5, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 3421
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v6, v5, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 3422
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/4 v6, 0x2

    iput v6, v5, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 3425
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v5, v5, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 3426
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v5, v5, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v6, v6, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x258

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x1f4

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3428
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 3431
    :cond_8
    sget-object v5, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v6, ">>>>>>>>PLAYBACK_UNKNOWNERROR<<<<<<<<<<<<"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
    sget-object v5, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v6, "Extra:%d,%d,%s,%s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v9, v9, Lcom/android/music/player/service/CorePlayerService;->mMediaUri:Landroid/net/Uri;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v9, v9, Lcom/android/music/player/service/CorePlayerService;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_3
    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v9}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3433
    const/4 v0, 0x0

    .line 3435
    .local v0, bIsTopActivity:Z
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v5, v5, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 3436
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/4 v6, 0x1

    iput v6, v5, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 3437
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v6, v5, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 3438
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/4 v6, 0x2

    iput v6, v5, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 3441
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v5, v5, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 3442
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v5}, Lcom/android/music/player/service/CorePlayerService;->hideNotification()V

    .line 3443
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/music/player/service/CorePlayerService;->sendMediaPlayInfo(Z)V

    .line 3445
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget v6, v5, Lcom/android/music/player/service/CorePlayerService;->mErrorCount:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/android/music/player/service/CorePlayerService;->mErrorCount:I

    .line 3447
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v5, v5, Lcom/android/music/player/service/CorePlayerService;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 3448
    .local v3, rt:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3449
    .local v4, runningTask:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-boolean v5, v5, Lcom/android/music/player/service/CorePlayerService;->mIsShowErrorTost:Z

    if-nez v5, :cond_9

    const-string v5, "com.android.music"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3450
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/music/player/service/CorePlayerService;->mIsShowErrorTost:Z

    .line 3452
    const/4 v2, -0x1

    .line 3453
    .local v2, errStrId:I
    const/4 v5, -0x4

    if-ne p2, v5, :cond_d

    .line 3454
    const v2, 0x7f0a0081

    .line 3460
    :goto_4
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v6, v2}, Lcom/android/music/player/service/CorePlayerService;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 3463
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v5, v5, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v6, v6, Lcom/android/music/player/service/CorePlayerService;->mErrorTostCheck:Ljava/lang/Runnable;

    const-wide/16 v7, 0x7d0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3464
    const/4 v0, 0x1

    .line 3467
    .end local v2           #errStrId:I
    :cond_9
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v5}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v5}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/music/player/data/MusicPlayerController;->getItemCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_b

    if-eqz v0, :cond_a

    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-boolean v5, v5, Lcom/android/music/player/service/CorePlayerService;->bIsUserAction:Z

    if-nez v5, :cond_b

    .line 3470
    :cond_a
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v5, v5, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v6, v6, Lcom/android/music/player/service/CorePlayerService;->mNextPlay:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3471
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v5, v5, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v6, v6, Lcom/android/music/player/service/CorePlayerService;->mPrevPlay:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3473
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-boolean v5, v5, Lcom/android/music/player/service/CorePlayerService;->bPlayNextMusic:Z

    if-eqz v5, :cond_f

    .line 3474
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v5, v5, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v6, v6, Lcom/android/music/player/service/CorePlayerService;->mNextPlay:Ljava/lang/Runnable;

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3478
    :goto_5
    sget-object v5, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onError:BGM Mode, play Next,Prev : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-boolean v7, v7, Lcom/android/music/player/service/CorePlayerService;->bPlayNextMusic:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3480
    :cond_b
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/music/common/util/MusicPlayerUtil;->setShowPrepare(Z)V

    .line 3481
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v6, "musicPlayer.service.updateMediaInfo"

    invoke-virtual {v5, v6}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 3482
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v6, "musicPlayer.service.startUpdateStatus"

    invoke-virtual {v5, v6}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 3483
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v6, "musicPlayer.service.updatePlayInfo"

    invoke-virtual {v5, v6}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 3484
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v6, "musicPlayer.service.prepare.hide"

    invoke-virtual {v5, v6}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 3486
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 3432
    .end local v0           #bIsTopActivity:Z
    .end local v3           #rt:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v4           #runningTask:Ljava/lang/String;
    .restart local p1
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 3455
    .end local p1
    .restart local v0       #bIsTopActivity:Z
    .restart local v2       #errStrId:I
    .restart local v3       #rt:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v4       #runningTask:Ljava/lang/String;
    :cond_d
    const/16 v5, -0xa

    if-ne p2, v5, :cond_e

    .line 3456
    const v2, 0x7f0a0082

    goto/16 :goto_4

    .line 3458
    :cond_e
    const v2, 0x7f0a0041

    goto/16 :goto_4

    .line 3476
    .end local v2           #errStrId:I
    :cond_f
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v5, v5, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$11;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v6, v6, Lcom/android/music/player/service/CorePlayerService;->mPrevPlay:Ljava/lang/Runnable;

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5
.end method
