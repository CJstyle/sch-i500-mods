.class Lcom/android/music/player/activity/MusicPlayer$19;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/activity/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/player/activity/MusicPlayer;


# direct methods
.method constructor <init>(Lcom/android/music/player/activity/MusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 2139
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const-string v7, "MusicPlayer"

    .line 2140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2142
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-boolean v2, v2, Lcom/android/music/player/activity/MusicPlayer;->isActivityExit:Z

    if-eqz v2, :cond_1

    .line 2231
    :cond_0
    :goto_0
    return-void

    .line 2145
    :cond_1
    const-string v2, "MusicPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    const-string v2, "musicPlayer.service.updateMediaInfo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2147
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v2}, Lcom/android/music/player/activity/MusicPlayer;->updatePlayerInfo()V

    goto :goto_0

    .line 2148
    :cond_2
    const-string v2, "musicPlayer.service.startUpdateStatus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2149
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2150
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 2152
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/music/player/activity/MusicPlayer;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2157
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v3}, Lcom/android/music/player/service/ICorePlayerService;->getDuration()I

    move-result v3

    iput v3, v2, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:I

    .line 2158
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mDurationView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:I

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/music/common/data/MediaMetadata;->getTimeString(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2161
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mVisualizationType:I

    if-eqz v2, :cond_4

    .line 2162
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2163
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/16 v3, 0x9

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 2165
    :cond_4
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 2167
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-boolean v2, v2, Lcom/android/music/player/activity/MusicPlayer;->isShownAdditionalBar:Z

    if-nez v2, :cond_0

    .line 2168
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/music/player/activity/MusicPlayer;->showAdditionalPanel(ZZ)V

    .line 2169
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x20

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2172
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 2173
    .local v1, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v2}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2174
    const-string v2, "MusicPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 3 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2177
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_5
    const-string v2, "musicPlayer.service.stopPlay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2181
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2182
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2184
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v2}, Lcom/android/music/player/activity/MusicPlayer;->doPause()V

    .line 2185
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2186
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mPlayedTimeView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-boolean v3, v3, Lcom/android/music/player/activity/MusicPlayer;->showTimeElapsed:Z

    invoke-static {v4, v3}, Lcom/android/music/common/data/MediaMetadata;->getTimeString(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2188
    :cond_6
    const-string v2, "musicPlayer.service.updatePlayInfo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2190
    :try_start_2
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v3}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/music/player/activity/MusicPlayer;->changePlayButton(ZZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 2191
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 2192
    .restart local v1       #e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v2}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2193
    const-string v2, "MusicPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 4 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2196
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_7
    const-string v2, "musicPlayer.service.updatePlayComplete"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2197
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2198
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mPlayedTimeView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:I

    iget-object v4, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-boolean v4, v4, Lcom/android/music/player/activity/MusicPlayer;->showTimeElapsed:Z

    invoke-static {v3, v4}, Lcom/android/music/common/data/MediaMetadata;->getTimeString(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2200
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->requestLayout()V

    .line 2201
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mPlayedTimeView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    .line 2202
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mMenu:Landroid/view/Menu;

    if-eqz v2, :cond_0

    .line 2203
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mMenu:Landroid/view/Menu;

    invoke-interface {v2}, Landroid/view/Menu;->close()V

    goto/16 :goto_0

    .line 2205
    :cond_8
    const-string v2, "musicPlayer.service.updateStreamBufferStatus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2207
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v2}, Lcom/android/music/player/activity/MusicPlayer;->updateStreamBufferStatus()V

    goto/16 :goto_0

    .line 2208
    :cond_9
    const-string v2, "musicPlayer.service.prepare.show"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2209
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/16 v3, 0x14

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    goto/16 :goto_0

    .line 2210
    :cond_a
    const-string v2, "musicPlayer.service.prepare.hide"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2211
    sget-boolean v2, Lcom/android/music/common/util/MusicPlayerUtil;->isShowPrepare:Z

    if-nez v2, :cond_0

    .line 2212
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->preparingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->hide()V

    .line 2213
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/16 v3, 0x15

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    goto/16 :goto_0

    .line 2215
    :cond_b
    const-string v2, "musicPlayer.service.liveStreamMode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2217
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iput-boolean v8, v2, Lcom/android/music/player/activity/MusicPlayer;->mIsLiveStreamMode:Z

    .line 2218
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-boolean v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mIsLiveStreamMode:Z

    invoke-virtual {v2, v3}, Lcom/android/music/player/activity/MusicPlayer;->setLiveStreamMode(Z)V

    goto/16 :goto_0

    .line 2219
    :cond_c
    const-string v2, "musicPlayer.service.normalMode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2221
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iput-boolean v4, v2, Lcom/android/music/player/activity/MusicPlayer;->mIsLiveStreamMode:Z

    .line 2222
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-boolean v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mIsLiveStreamMode:Z

    invoke-virtual {v2, v3}, Lcom/android/music/player/activity/MusicPlayer;->setLiveStreamMode(Z)V

    goto/16 :goto_0

    .line 2224
    :cond_d
    const-string v2, "musicPlayer.service.HEADSET_PLUG_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "musicPlayer.service.BLUETOOTH_HEADSET_STATE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "musicPlayer.service.DOCK_PLUG_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2227
    :cond_e
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v2}, Lcom/android/music/player/activity/MusicPlayer;->updatePlayerInfo()V

    goto/16 :goto_0

    .line 2228
    :cond_f
    const-string v2, "musicPlayer.service.updateSeekPlayedTime"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2229
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$19;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v2}, Lcom/android/music/player/activity/MusicPlayer;->updatePlayStatus()V

    goto/16 :goto_0

    .line 2153
    :catch_2
    move-exception v2

    goto/16 :goto_1
.end method
