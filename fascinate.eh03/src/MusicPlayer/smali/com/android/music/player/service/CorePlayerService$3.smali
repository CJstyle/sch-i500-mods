.class Lcom/android/music/player/service/CorePlayerService$3;
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
    .line 408
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v9, 0x1e

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v5, "CorePlayerService"

    .line 411
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, action:Ljava/lang/String;
    const-string v3, "CorePlayerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMediaReceiver:onReceive(action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is called"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 414
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3}, Lcom/android/music/player/service/CorePlayerService;->access$1000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicAlbumInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 415
    const-string v3, "CorePlayerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMediaFilePath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v4}, Lcom/android/music/player/service/CorePlayerService;->access$1000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicAlbumInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/music/player/data/MusicAlbumInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3, v6}, Lcom/android/music/player/service/CorePlayerService;->access$202(Lcom/android/music/player/service/CorePlayerService;Z)Z

    .line 420
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v3}, Lcom/android/music/player/service/CorePlayerService;->stop()V

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 426
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3, v8}, Lcom/android/music/player/service/CorePlayerService;->access$202(Lcom/android/music/player/service/CorePlayerService;Z)Z

    .line 430
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, ActionPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    goto :goto_0

    .line 436
    .end local v0           #ActionPath:Ljava/lang/String;
    :cond_2
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 437
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 438
    .restart local v0       #ActionPath:Ljava/lang/String;
    const-string v3, "CorePlayerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent : ActionPath - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v3, v3, Lcom/android/music/player/service/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 441
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v3, v3, Lcom/android/music/player/service/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 444
    :cond_3
    if-eqz v0, :cond_0

    .line 452
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 453
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3, v6}, Lcom/android/music/player/service/CorePlayerService;->access$1102(Lcom/android/music/player/service/CorePlayerService;Z)Z

    .line 457
    :cond_4
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3}, Lcom/android/music/player/service/CorePlayerService;->access$1000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicAlbumInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 458
    const-string v3, "CorePlayerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mMediaFilePath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v4}, Lcom/android/music/player/service/CorePlayerService;->access$1000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicAlbumInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/music/player/data/MusicAlbumInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3}, Lcom/android/music/player/service/CorePlayerService;->access$1000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicAlbumInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/android/music/player/data/MusicAlbumInfo;->mFilePath:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3}, Lcom/android/music/player/service/CorePlayerService;->access$1000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicAlbumInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/android/music/player/data/MusicAlbumInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3}, Lcom/android/music/player/service/CorePlayerService;->access$000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 460
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3}, Lcom/android/music/player/service/CorePlayerService;->access$000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->release()V

    .line 461
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3, v7}, Lcom/android/music/player/service/CorePlayerService;->access$002(Lcom/android/music/player/service/CorePlayerService;Lcom/android/music/player/service/CorePlayerService$MultiPlayer;)Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    .line 463
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    new-instance v4, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {v4, v5}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    invoke-static {v3, v4}, Lcom/android/music/player/service/CorePlayerService;->access$002(Lcom/android/music/player/service/CorePlayerService;Lcom/android/music/player/service/CorePlayerService$MultiPlayer;)Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    .line 464
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3}, Lcom/android/music/player/service/CorePlayerService;->access$000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v4}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->setHandler(Landroid/os/Handler;)V

    .line 466
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3, v7}, Lcom/android/music/player/service/CorePlayerService;->access$1002(Lcom/android/music/player/service/CorePlayerService;Lcom/android/music/player/data/MusicAlbumInfo;)Lcom/android/music/player/data/MusicAlbumInfo;

    .line 467
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/music/player/data/MusicPlayerController;->setCurrentMedia(Landroid/net/Uri;)V

    .line 469
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 470
    .local v2, pm:Landroid/os/PowerManager;
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/player/service/CorePlayerService;->access$702(Lcom/android/music/player/service/CorePlayerService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 471
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3}, Lcom/android/music/player/service/CorePlayerService;->access$700(Lcom/android/music/player/service/CorePlayerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 473
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3, v6}, Lcom/android/music/player/service/CorePlayerService;->access$400(Lcom/android/music/player/service/CorePlayerService;Z)V

    goto/16 :goto_0
.end method
