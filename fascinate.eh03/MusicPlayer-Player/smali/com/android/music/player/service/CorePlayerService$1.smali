.class Lcom/android/music/player/service/CorePlayerService$1;
.super Landroid/os/Handler;
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
.field mCurrentVolume:F

.field final synthetic this$0:Lcom/android/music/player/service/CorePlayerService;


# direct methods
.method constructor <init>(Lcom/android/music/player/service/CorePlayerService;)V
    .locals 1
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 309
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/music/player/service/CorePlayerService$1;->mCurrentVolume:F

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 312
    const-string v8, "CorePlayerService"

    const-string v9, "mMediaplayerHandler:%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 316
    :sswitch_0
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v8}, Lcom/android/music/player/service/CorePlayerService;->isPlaying()Z

    move-result v8

    if-nez v8, :cond_1

    .line 317
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->mCurrentVolume:F

    .line 318
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v8}, Lcom/android/music/player/service/CorePlayerService;->access$000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    move-result-object v8

    iget v9, p0, Lcom/android/music/player/service/CorePlayerService$1;->mCurrentVolume:F

    invoke-virtual {v8, v9}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->setVolume(F)V

    .line 319
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v8}, Lcom/android/music/player/service/CorePlayerService;->play()V

    .line 320
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v8}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x4

    const-wide/16 v10, 0xa

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 322
    :cond_1
    iget v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->mCurrentVolume:F

    const v9, 0x3c23d70a

    add-float/2addr v8, v9

    iput v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->mCurrentVolume:F

    .line 323
    iget v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->mCurrentVolume:F

    const/high16 v9, 0x3f80

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 324
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v8}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x4

    const-wide/16 v10, 0xa

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 328
    :goto_1
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v8}, Lcom/android/music/player/service/CorePlayerService;->access$000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    move-result-object v8

    iget v9, p0, Lcom/android/music/player/service/CorePlayerService$1;->mCurrentVolume:F

    invoke-virtual {v8, v9}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->setVolume(F)V

    goto :goto_0

    .line 326
    :cond_2
    const/high16 v8, 0x3f80

    iput v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->mCurrentVolume:F

    goto :goto_1

    .line 332
    :sswitch_1
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v8}, Lcom/android/music/player/service/CorePlayerService;->access$200(Lcom/android/music/player/service/CorePlayerService;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 333
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v8}, Lcom/android/music/player/service/CorePlayerService;->access$300(Lcom/android/music/player/service/CorePlayerService;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 334
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/music/player/service/CorePlayerService;->next(Z)Z

    goto :goto_0

    .line 340
    :cond_3
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/music/player/service/CorePlayerService;->access$400(Lcom/android/music/player/service/CorePlayerService;Z)V

    .line 341
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v8}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v8}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 342
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v9, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v9}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/music/player/service/CorePlayerService;->open(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 348
    :sswitch_2
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/music/player/service/CorePlayerService;->next(Z)Z

    move-result v8

    if-nez v8, :cond_0

    .line 351
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/music/player/service/CorePlayerService;->seek(J)J

    .line 352
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v9, "musicPlayer.service.stopPlay"

    invoke-static {v8, v9}, Lcom/android/music/player/service/CorePlayerService;->access$600(Lcom/android/music/player/service/CorePlayerService;Ljava/lang/String;)V

    .line 353
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/music/player/service/CorePlayerService;->sendMediaPlayInfo(Z)V

    goto/16 :goto_0

    .line 357
    :sswitch_3
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v8}, Lcom/android/music/player/service/CorePlayerService;->access$700(Lcom/android/music/player/service/CorePlayerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 361
    :sswitch_4
    const-wide/16 v5, 0x0

    .line 362
    .local v5, jumpTime:J
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 363
    .local v4, iSkipMode:I
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v8}, Lcom/android/music/player/service/CorePlayerService;->access$000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v8}, Lcom/android/music/player/service/CorePlayerService;->access$000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->isInitialized()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 364
    sget-object v8, Lcom/android/music/player/service/CorePlayerService;->SKIP_TIME:[I

    iget-object v9, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v9}, Lcom/android/music/player/service/CorePlayerService;->access$808(Lcom/android/music/player/service/CorePlayerService;)I

    move-result v9

    aget v8, v8, v9

    mul-int/2addr v8, v4

    int-to-long v5, v8

    .line 365
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v8}, Lcom/android/music/player/service/CorePlayerService;->access$000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->position()J

    move-result-wide v8

    add-long v0, v8, v5

    .line 366
    .local v0, currentPosition:J
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v8}, Lcom/android/music/player/service/CorePlayerService;->access$000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->duration()J

    move-result-wide v2

    .line 368
    .local v2, durationTime:J
    const/4 v8, -0x1

    if-ne v4, v8, :cond_7

    .line 369
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-gtz v8, :cond_6

    .line 370
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v8}, Lcom/android/music/player/service/CorePlayerService;->prev()V

    .line 371
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/music/player/service/CorePlayerService;->access$802(Lcom/android/music/player/service/CorePlayerService;I)I

    .line 372
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v8}, Lcom/android/music/player/service/CorePlayerService;->access$000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->duration()J

    move-result-wide v8

    sget-object v10, Lcom/android/music/player/service/CorePlayerService;->SKIP_TIME:[I

    iget-object v11, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v11}, Lcom/android/music/player/service/CorePlayerService;->access$800(Lcom/android/music/player/service/CorePlayerService;)I

    move-result v11

    aget v10, v10, v11

    int-to-long v10, v10

    sub-long v0, v8, v10

    .line 382
    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v8}, Lcom/android/music/player/service/CorePlayerService;->access$000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->seek(J)J

    .line 383
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v8}, Lcom/android/music/player/service/CorePlayerService;->access$804(Lcom/android/music/player/service/CorePlayerService;)I

    move-result v8

    const/4 v9, 0x4

    if-lt v8, v9, :cond_5

    .line 384
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/android/music/player/service/CorePlayerService;->access$802(Lcom/android/music/player/service/CorePlayerService;I)I

    .line 387
    .end local v0           #currentPosition:J
    .end local v2           #durationTime:J
    :cond_5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 388
    .local v7, message:Landroid/os/Message;
    invoke-virtual {v7, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 389
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v8}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x320

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 390
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v8}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Landroid/os/Handler;

    move-result-object v8

    const-wide/16 v9, 0x12c

    invoke-virtual {v8, v7, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 392
    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v9, "musicPlayer.service.updateSeekPlayedTime"

    invoke-virtual {v8, v9}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 373
    .end local v7           #message:Landroid/os/Message;
    .restart local v0       #currentPosition:J
    .restart local v2       #durationTime:J
    :cond_6
    sget-object v8, Lcom/android/music/player/service/CorePlayerService;->SKIP_TIME:[I

    iget-object v9, p0, Lcom/android/music/player/service/CorePlayerService$1;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v9}, Lcom/android/music/player/service/CorePlayerService;->access$800(Lcom/android/music/player/service/CorePlayerService;)I

    move-result v9

    aget v8, v8, v9

    int-to-long v8, v8

    cmp-long v8, v0, v8

    if-gez v8, :cond_4

    .line 374
    const-wide/16 v0, 0x0

    goto :goto_2

    .line 377
    :cond_7
    cmp-long v8, v2, v0

    if-gtz v8, :cond_4

    .line 378
    move-wide v0, v2

    goto :goto_2

    .line 314
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x320 -> :sswitch_4
    .end sparse-switch
.end method
