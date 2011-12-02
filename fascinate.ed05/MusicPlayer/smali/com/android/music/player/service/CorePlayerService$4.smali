.class Lcom/android/music/player/service/CorePlayerService$4;
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
.field currentVolume:F

.field final synthetic this$0:Lcom/android/music/player/service/CorePlayerService;


# direct methods
.method constructor <init>(Lcom/android/music/player/service/CorePlayerService;)V
    .locals 1
    .parameter

    .prologue
    .line 807
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 805
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/music/player/service/CorePlayerService$4;->currentVolume:F

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/high16 v13, 0x3f80

    const/4 v12, 0x3

    const/16 v11, 0xc8

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 808
    iget v6, p1, Landroid/os/Message;->what:I

    if-eq v6, v11, :cond_0

    .line 809
    sget-object v6, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mHandler(msg.what="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") is called"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_0
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x64

    if-ne v6, v7, :cond_2

    .line 815
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v6}, Lcom/android/music/player/service/CorePlayerService;->showNotification()V

    .line 967
    :cond_1
    :goto_0
    return-void

    .line 816
    :cond_2
    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v11, :cond_6

    .line 819
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v6}, Lcom/android/music/player/service/CorePlayerService;->isPlaying()Z

    move-result v6

    if-nez v6, :cond_4

    .line 820
    sget-object v6, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v7, "mHandler() VOLUME_FADEIN, It is not Playing"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->currentVolume:F

    .line 822
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v6, v6, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v6, :cond_3

    .line 823
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v6, v6, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v7, p0, Lcom/android/music/player/service/CorePlayerService$4;->currentVolume:F

    iget v8, p0, Lcom/android/music/player/service/CorePlayerService$4;->currentVolume:F

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 824
    :cond_3
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v6, v9, v9}, Lcom/android/music/player/service/CorePlayerService;->startPlay(ZZ)V

    .line 825
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-wide/16 v7, 0x14

    invoke-static {v6, v11, v7, v8}, Lcom/android/music/player/service/CorePlayerService;->access$300(Lcom/android/music/player/service/CorePlayerService;IJ)V

    goto :goto_0

    .line 828
    :cond_4
    sget-object v6, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v7, "mHandler() VOLUME_FADEIN, It is Playing"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->currentVolume:F

    const v7, 0x3c23d70a

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->currentVolume:F

    .line 830
    iget v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->currentVolume:F

    cmpg-float v6, v6, v13

    if-gez v6, :cond_5

    .line 831
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-wide/16 v7, 0x14

    invoke-static {v6, v11, v7, v8}, Lcom/android/music/player/service/CorePlayerService;->access$300(Lcom/android/music/player/service/CorePlayerService;IJ)V

    .line 835
    :goto_1
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v6, v6, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v6, :cond_1

    .line 836
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v6, v6, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v7, p0, Lcom/android/music/player/service/CorePlayerService$4;->currentVolume:F

    iget v8, p0, Lcom/android/music/player/service/CorePlayerService$4;->currentVolume:F

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 833
    :cond_5
    iput v13, p0, Lcom/android/music/player/service/CorePlayerService$4;->currentVolume:F

    goto :goto_1

    .line 861
    :cond_6
    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v12, :cond_8

    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-boolean v6, v6, Lcom/android/music/player/service/CorePlayerService;->isMediaUnMounted:Z

    if-nez v6, :cond_8

    .line 862
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-boolean v6, v6, Lcom/android/music/player/service/CorePlayerService;->mWasPlaying:Z

    if-eqz v6, :cond_7

    .line 863
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v6, v10, v10, v10}, Lcom/android/music/player/service/CorePlayerService;->internalPlayNext(ZZZ)Z

    goto :goto_0

    .line 865
    :cond_7
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v6}, Lcom/android/music/player/service/CorePlayerService;->access$400(Lcom/android/music/player/service/CorePlayerService;)V

    goto/16 :goto_0

    .line 867
    :cond_8
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x1e

    if-ne v6, v7, :cond_9

    .line 868
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v7, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v7, v7, Lcom/android/music/player/service/CorePlayerService;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lcom/android/music/player/service/CorePlayerService;->doSaveNowPlayingMediaInfo(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 869
    :cond_9
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x2bc

    if-ne v6, v7, :cond_a

    .line 870
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v6}, Lcom/android/music/player/service/CorePlayerService;->hideNotification()V

    goto/16 :goto_0

    .line 871
    :cond_a
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x1f4

    if-ne v6, v7, :cond_b

    .line 872
    sget-object v6, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v7, "DrmLicenseExpired in handler"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v6}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v5

    .line 876
    .local v5, path:Ljava/lang/String;
    sget-object v6, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mHandler:ErrDrmLicenseExpired: filepath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v6, v5, v9}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;Ljava/lang/String;Z)I

    goto/16 :goto_0

    .line 894
    .end local v5           #path:Ljava/lang/String;
    :cond_b
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x258

    if-ne v6, v7, :cond_c

    .line 895
    sget-object v6, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v7, "DrmLicenseNotFound in handler"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v6}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v5

    .line 899
    .restart local v5       #path:Ljava/lang/String;
    sget-object v6, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mHandler:ErrDrmLicenseNotFound: filepath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v6, v5, v9}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;Ljava/lang/String;Z)I

    goto/16 :goto_0

    .line 913
    .end local v5           #path:Ljava/lang/String;
    :cond_c
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x320

    if-ne v6, v7, :cond_12

    .line 914
    sget-object v6, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v7, "LONG_PRESSED_EVENT"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const/4 v3, 0x0

    .line 916
    .local v3, jumpTime:I
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v6, v6, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v6}, Lcom/android/music/player/service/CorePlayerService;->canStartMediaPlayer()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 917
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v6}, Lcom/android/music/player/service/CorePlayerService;->access$600(Lcom/android/music/player/service/CorePlayerService;)I

    move-result v6

    if-nez v6, :cond_d

    .line 918
    sget-object v6, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v7, "\'LONG_PRESSED_EVENT\'is received. But durationTime==0"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 921
    :cond_d
    sget-object v6, Lcom/android/music/player/service/CorePlayerService;->SKIP_TIME:[I

    iget-object v7, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v7}, Lcom/android/music/player/service/CorePlayerService;->access$708(Lcom/android/music/player/service/CorePlayerService;)I

    move-result v7

    aget v6, v6, v7

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_f

    move v7, v9

    :goto_2
    mul-int v3, v6, v7

    .line 922
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v6, v6, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v6

    add-int v0, v6, v3

    .line 924
    .local v0, currentPosition:I
    if-gez v0, :cond_10

    .line 925
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v6, v6, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6, v10}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 931
    :goto_3
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v6}, Lcom/android/music/player/service/CorePlayerService;->access$700(Lcom/android/music/player/service/CorePlayerService;)I

    move-result v6

    const/4 v7, 0x4

    if-lt v6, v7, :cond_e

    .line 932
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v6, v12}, Lcom/android/music/player/service/CorePlayerService;->access$702(Lcom/android/music/player/service/CorePlayerService;I)I

    .line 935
    .end local v0           #currentPosition:I
    :cond_e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 936
    .local v4, message:Landroid/os/Message;
    invoke-virtual {v4, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 937
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v6, v6, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x320

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 938
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v6, v6, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x12c

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 940
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v7, "musicPlayer.service.updateSeekPlayedTime"

    invoke-virtual {v6, v7}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 921
    .end local v4           #message:Landroid/os/Message;
    :cond_f
    const/4 v7, -0x1

    goto :goto_2

    .line 926
    .restart local v0       #currentPosition:I
    :cond_10
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v6}, Lcom/android/music/player/service/CorePlayerService;->access$600(Lcom/android/music/player/service/CorePlayerService;)I

    move-result v6

    if-lt v0, v6, :cond_11

    .line 927
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v6, v6, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v7}, Lcom/android/music/player/service/CorePlayerService;->access$600(Lcom/android/music/player/service/CorePlayerService;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_3

    .line 929
    :cond_11
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v6, v6, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_3

    .line 941
    .end local v0           #currentPosition:I
    .end local v3           #jumpTime:I
    :cond_12
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x384

    if-ne v6, v7, :cond_1

    .line 942
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v6, v6, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 943
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v6, v6, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v7, v7, Lcom/android/music/player/service/CorePlayerService;->mNextPlay:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 944
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v6, v6, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v7, v7, Lcom/android/music/player/service/CorePlayerService;->mPrevPlay:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 945
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v6, v6, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v6, :cond_13

    .line 946
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v6, v6, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->release()V

    .line 948
    :cond_13
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iput v9, v6, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 950
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    new-instance v7, Landroid/media/MediaPlayer;

    invoke-direct {v7}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v7, v6, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 951
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/4 v7, 0x2

    iput v7, v6, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 954
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v6, v6, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v6, v7, v9}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 956
    const-string v1, "msg.what == STOP_MUSIC_PLAY"

    .line 958
    .local v1, errorMsg:Ljava/lang/String;
    sget-object v6, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v6}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 963
    .local v2, i:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v6, v2}, Lcom/android/music/player/service/CorePlayerService;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0
.end method
