.class Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$3;
.super Landroid/content/BroadcastReceiver;
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
    .line 426
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$3;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const-string v8, "android.intent.action.HEADSET_PLUG"

    const-string v6, "VideoPlayerbackService"

    .line 429
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, action:Ljava/lang/String;
    const-string v4, "VideoPlayerbackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBroadcastListener action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string v4, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 434
    const-string v4, "from"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, info:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v4, "com.sec.android.app.videoplayer"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 471
    .end local v1           #info:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 439
    .restart local v1       #info:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$3;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 440
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$3;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->pause()V

    goto :goto_0

    .line 442
    .end local v1           #info:Ljava/lang/String;
    :cond_2
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 444
    const/4 v2, 0x0

    .line 445
    .local v2, movieVolume:F
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 446
    const-string v4, "state"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 447
    .local v3, state:I
    if-eq v3, v7, :cond_5

    .line 448
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$3;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$900(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/media/AudioManager;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 449
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$3;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$900(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/media/AudioManager;

    move-result-object v4

    const-string v5, "situation=7;device=;device=1"

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 450
    :cond_3
    const-string v4, "VideoPlayerbackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive() speaker"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .end local v3           #state:I
    :cond_4
    :goto_1
    const-string v4, "VideoPlayerbackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVolume ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] for new Device"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$3;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$300(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 469
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$3;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$300(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setVolume(F)V

    goto/16 :goto_0

    .line 452
    .restart local v3       #state:I
    :cond_5
    if-ne v3, v7, :cond_4

    .line 453
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$3;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$900(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/media/AudioManager;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 454
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$3;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$900(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/media/AudioManager;

    move-result-object v4

    const-string v5, "situation=7;device=;device=2"

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 455
    :cond_6
    const-string v4, "VideoPlayerbackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive() headset"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 462
    .end local v3           #state:I
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$3;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$900(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/media/AudioManager;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 463
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$3;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$900(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/media/AudioManager;

    move-result-object v4

    const-string v5, "situation=7;device=0"

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    goto :goto_1
.end method
