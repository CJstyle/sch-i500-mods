.class Lcom/android/music/player/service/CorePlayerService$1;
.super Landroid/content/BroadcastReceiver;
.source "CorePlayerService.java"


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
    .line 470
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x1e

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 471
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, action:Ljava/lang/String;
    sget-object v4, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMediaReceiver:onReceive(action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is called"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 474
    sget-object v4, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMediaFilePath:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v6, v6, Lcom/android/music/player/service/CorePlayerService;->mMediaFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iput-boolean v7, v4, Lcom/android/music/player/service/CorePlayerService;->isMediaUnMounted:Z

    .line 481
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v4}, Lcom/android/music/player/service/CorePlayerService;->access$000(Lcom/android/music/player/service/CorePlayerService;)V

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 498
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iput-boolean v8, v4, Lcom/android/music/player/service/CorePlayerService;->isMediaUnMounted:Z

    .line 499
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 500
    .local v3, path:Ljava/lang/String;
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 508
    .local v1, VolumeId:Ljava/lang/Integer;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, ActionPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, "/sdcard/sd"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 514
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iput-boolean v8, v4, Lcom/android/music/player/service/CorePlayerService;->isEjectSD:Z

    goto :goto_0

    .line 525
    .end local v0           #ActionPath:Ljava/lang/String;
    .end local v1           #VolumeId:Ljava/lang/Integer;
    .end local v3           #path:Ljava/lang/String;
    :cond_2
    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 526
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 527
    .restart local v0       #ActionPath:Ljava/lang/String;
    sget-object v4, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent : ActionPath - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v4, v4, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 530
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v4, v4, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 533
    :cond_3
    if-eqz v0, :cond_0

    .line 546
    const-string v4, "/sdcard"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 548
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iput-boolean v7, v4, Lcom/android/music/player/service/CorePlayerService;->isEjectSD:Z

    .line 552
    :cond_4
    sget-object v4, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "         mMediaFilePath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v6, v6, Lcom/android/music/player/service/CorePlayerService;->mMediaFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v4, v4, Lcom/android/music/player/service/CorePlayerService;->mMediaFilePath:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v4, v4, Lcom/android/music/player/service/CorePlayerService;->mMediaFilePath:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v4, v4, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_0

    .line 555
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v4, v4, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->stop()V

    .line 556
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const v5, 0x10010

    iput v5, v4, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 557
    sget-object v4, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v5, "         mMediaPlayer.stop();"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v4, v4, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->reset()V

    .line 559
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iput v9, v4, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 560
    sget-object v4, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v5, "         mMediaPlayer.reset();"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v4, v4, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 562
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iput v7, v4, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 563
    sget-object v4, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v5, "         mMediaPlayer.release();"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v5, v4, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 566
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iput v9, v4, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 567
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iput-object v11, v4, Lcom/android/music/player/service/CorePlayerService;->mMediaUri:Landroid/net/Uri;

    .line 568
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v4}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/android/music/player/data/MusicPlayerController;->setCurrentMedia(Landroid/net/Uri;)V

    .line 569
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v4, v4, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v4, v5, v7}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 571
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v4}, Lcom/android/music/player/service/CorePlayerService;->access$000(Lcom/android/music/player/service/CorePlayerService;)V

    goto/16 :goto_0
.end method
