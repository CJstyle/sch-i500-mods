.class Lcom/android/music/player/activity/MusicPlayer$15;
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
    .line 1545
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v12, 0x9

    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const-string v7, "MusicPlayer"

    .line 1548
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1549
    .local v0, action:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-boolean v5, v5, Lcom/android/music/player/activity/MusicPlayer;->isActivityExit:Z

    if-eqz v5, :cond_1

    .line 1664
    :cond_0
    :goto_0
    return-void

    .line 1552
    :cond_1
    const-string v5, "MusicPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    const-string v5, "musicPlayer.service.updateMediaInfo"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1555
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v5}, Lcom/android/music/player/activity/MusicPlayer;->updatePlayerInfo()V

    goto :goto_0

    .line 1556
    :cond_2
    const-string v5, "com.android.music.metachanged"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1557
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v5}, Lcom/android/music/player/activity/MusicPlayer;->updateFullMediaInfo()V

    goto :goto_0

    .line 1558
    :cond_3
    const-string v5, "musicPlayer.service.startUpdateStatus"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1559
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1560
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 1562
    :cond_4
    :try_start_0
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/music/player/activity/MusicPlayer;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1571
    :goto_1
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v5}, Lcom/android/music/player/activity/MusicPlayer;->doSetListButton()V

    .line 1574
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->mDurationView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-wide v6, v6, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:J

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/music/common/util/MusicUtils;->getTimeString(JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1576
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v5, v5, Lcom/android/music/player/activity/MusicPlayer;->mVisualizationType:I

    if-eqz v5, :cond_5

    .line 1577
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1578
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v5, v12, v10, v11}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 1580
    :cond_5
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v10, v11}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 1582
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-boolean v5, v5, Lcom/android/music/player/activity/MusicPlayer;->isShownAdditionalBar:Z

    if-nez v5, :cond_0

    .line 1583
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v5, v9, v9}, Lcom/android/music/player/activity/MusicPlayer;->showAdditionalPanel(ZZ)V

    .line 1584
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x20

    const-wide/16 v7, 0xbb8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1587
    :cond_6
    const-string v5, "musicPlayer.service.stopPlay"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1591
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1592
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1594
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v5}, Lcom/android/music/player/activity/MusicPlayer;->doPause()V

    .line 1595
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v9}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1596
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->mPlayedTimeView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-boolean v6, v6, Lcom/android/music/player/activity/MusicPlayer;->showTimeElapsed:Z

    invoke-static {v10, v11, v6}, Lcom/android/music/common/util/MusicUtils;->getTimeString(JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1599
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v5, :cond_0

    .line 1601
    :try_start_1
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/music/player/service/ICorePlayerService;->openCurrent(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1602
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 1603
    .local v2, e:Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v6, "STOP_PLAY, RemoteException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1607
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_7
    const-string v5, "com.android.music.playstatechanged"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1609
    :try_start_2
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v5}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v1

    .line 1610
    .local v1, bPlay:Z
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Lcom/android/music/player/activity/MusicPlayer;->changePlayButton(ZZ)V

    .line 1613
    if-nez v1, :cond_0

    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/music/common/util/MusicValueSaveController;->getVisualization(Landroid/content/Context;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1614
    const/4 v4, 0x0

    .line 1616
    .local v4, tempEQImageView:Landroid/widget/ImageView;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    const/16 v5, 0x13

    if-ge v3, v5, :cond_0

    .line 1618
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v6, v6, Lcom/android/music/player/activity/MusicPlayer;->EQTopImageView:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #tempEQImageView:Landroid/widget/ImageView;
    check-cast v4, Landroid/widget/ImageView;

    .line 1619
    .restart local v4       #tempEQImageView:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->EQTopImage:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1620
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1621
    invoke-virtual {v4}, Landroid/widget/ImageView;->invalidate()V

    .line 1624
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v6, v6, Lcom/android/music/player/activity/MusicPlayer;->EQBottomImageView:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #tempEQImageView:Landroid/widget/ImageView;
    check-cast v4, Landroid/widget/ImageView;

    .line 1625
    .restart local v4       #tempEQImageView:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->EQBottomImage:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1626
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1627
    invoke-virtual {v4}, Landroid/widget/ImageView;->invalidate()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1616
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1630
    .end local v1           #bPlay:Z
    .end local v3           #i:I
    .end local v4           #tempEQImageView:Landroid/widget/ImageView;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 1631
    .restart local v2       #e:Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v5}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 1632
    const-string v5, "MusicPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException occured 4 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1635
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_8
    const-string v5, "musicPlayer.service.updatePlayComplete"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1636
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1637
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->mPlayedTimeView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-wide v6, v6, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:J

    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-boolean v8, v8, Lcom/android/music/player/activity/MusicPlayer;->showTimeElapsed:Z

    invoke-static {v6, v7, v8}, Lcom/android/music/common/util/MusicUtils;->getTimeString(JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1639
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->requestLayout()V

    .line 1640
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->mPlayedTimeView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->requestLayout()V

    .line 1641
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->mMenu:Landroid/view/Menu;

    if-eqz v5, :cond_0

    .line 1642
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->mMenu:Landroid/view/Menu;

    invoke-interface {v5}, Landroid/view/Menu;->close()V

    goto/16 :goto_0

    .line 1656
    :cond_9
    const-string v5, "musicPlayer.service.HEADSET_PLUG_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "musicPlayer.service.BLUETOOTH_HEADSET_STATE_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1659
    :cond_a
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v5}, Lcom/android/music/player/activity/MusicPlayer;->updatePlayerInfo()V

    goto/16 :goto_0

    .line 1660
    :cond_b
    const-string v5, "musicPlayer.service.updateSeekPlayedTime"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1662
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$15;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v5}, Lcom/android/music/player/activity/MusicPlayer;->updatePlayStatus()V

    goto/16 :goto_0

    .line 1563
    :catch_2
    move-exception v5

    goto/16 :goto_1
.end method
