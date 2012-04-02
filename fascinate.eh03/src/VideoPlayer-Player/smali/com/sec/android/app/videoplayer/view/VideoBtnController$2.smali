.class Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;
.super Landroid/os/Handler;
.source "VideoBtnController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoBtnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V
    .locals 0
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const-wide/high16 v9, 0x4000

    const/16 v8, 0xbb8

    const/4 v7, 0x4

    const/4 v5, 0x1

    const-string v6, "VideoPlayerBtnController"

    .line 491
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbResume:Z
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 497
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setProgress()I
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$200(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    move-result v2

    .line 499
    .local v2, pos:I
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbProgressDragStatus:Z
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$300(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayoutShow:Z
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbResume:Z
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 501
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 502
    invoke-virtual {p0, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 503
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mDelayTime:I
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mDelayTime:I
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    move-result v5

    rem-int v5, v2, v5

    sub-int/2addr v4, v5

    int-to-long v4, v4

    invoke-virtual {p0, p1, v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 508
    .end local v2           #pos:I
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->changeSRSEffect()V
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    goto :goto_0

    .line 512
    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbPauseEnable:Z
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$700(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 513
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->doPauseResume()V
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$800(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    goto :goto_0

    .line 515
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->doStopResume()V
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$900(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    goto :goto_0

    .line 519
    :pswitch_3
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->next(Z)Z

    move-result v4

    if-nez v4, :cond_3

    .line 521
    const-string v4, "VideoPlayerBtnController"

    const-string v4, "FFSHORTSEEK - next false"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->finish()V

    .line 526
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 527
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/view/View;

    move-result-object v5

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->initProgress(Landroid/view/View;)V
    invoke-static {v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1200(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Landroid/view/View;)V

    goto/16 :goto_0

    .line 534
    :pswitch_4
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbFfEnable:Z
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1300(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 536
    const-string v4, "VideoPlayerBtnController"

    const-string v4, "mHandler - FFLONGSEEK. This file doesn\'t support FF"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 540
    :cond_4
    sget v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPLAYERSTATUS:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 541
    const-string v4, "VideoPlayerBtnController"

    const-string v4, "mHandler - PLAYER_STOP."

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 547
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    move-result v4

    if-nez v4, :cond_6

    .line 548
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->getCurrentPosition()I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    .line 551
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    move-result v4

    if-le v4, v7, :cond_7

    .line 552
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I
    invoke-static {v4, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1402(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)I

    .line 554
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->getCurrentPosition()I

    move-result v0

    .line 555
    .local v0, cpos:I
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int/lit16 v4, v4, 0x3e8

    add-int/2addr v0, v4

    .line 557
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->seekTo(I)V

    .line 559
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setProgress()I
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$200(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    .line 560
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v4

    invoke-interface {v4, v8}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 564
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v4, :cond_8

    .line 568
    :try_start_0
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->setWakeMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :cond_8
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v5, 0x6

    const-wide/16 v6, 0x1f4

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v4, v5, v6, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 579
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1408(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    goto/16 :goto_0

    .line 570
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 572
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "VideoPlayerBtnController"

    const-string v4, "WAKE Error"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 585
    .end local v0           #cpos:I
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_5
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v4, :cond_0

    .line 587
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->getCurrentPosition()I

    move-result v0

    .line 589
    .restart local v0       #cpos:I
    if-le v0, v8, :cond_a

    .line 591
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getSubTitleView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;

    move-result-object v3

    .line 593
    .local v3, view:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
    if-eqz v3, :cond_9

    .line 595
    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->updateSubTitle(Ljava/lang/String;)V

    .line 598
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->seekTo(I)V

    goto/16 :goto_0

    .line 602
    .end local v3           #view:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
    :cond_a
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->prev()Z

    move-result v4

    if-nez v4, :cond_b

    .line 604
    const-string v4, "VideoPlayerBtnController"

    const-string v4, "mHandler - REWSHORTSEEK. prev false"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->finish()V

    .line 609
    :cond_b
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 610
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/view/View;

    move-result-object v5

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->initProgress(Landroid/view/View;)V
    invoke-static {v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1200(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Landroid/view/View;)V

    goto/16 :goto_0

    .line 620
    .end local v0           #cpos:I
    :pswitch_6
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbRewEnable:Z
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1700(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 622
    const-string v4, "VideoPlayerBtnController"

    const-string v4, "mHandler - REWLONGSEEK. This file doesn\'t support REW"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 626
    :cond_c
    sget v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPLAYERSTATUS:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_d

    .line 627
    const-string v4, "VideoPlayerBtnController"

    const-string v4, "mHandler - PLAYER_STOP."

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 631
    :cond_d
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    move-result v4

    if-le v4, v7, :cond_e

    .line 632
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I
    invoke-static {v4, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1402(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)I

    .line 634
    :cond_e
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->getCurrentPosition()I

    move-result v0

    .line 635
    .restart local v0       #cpos:I
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int/lit16 v4, v4, 0x3e8

    sub-int/2addr v0, v4

    .line 637
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->seekTo(I)V

    .line 639
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setProgress()I
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$200(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    .line 640
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v4

    invoke-interface {v4, v8}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 644
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v4, :cond_f

    .line 648
    :try_start_1
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->setWakeMode(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 657
    :cond_f
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v5, 0x7

    const-wide/16 v6, 0x1f4

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v4, v5, v6, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 659
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1408(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    goto/16 :goto_0

    .line 650
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 652
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v4, "VideoPlayerBtnController"

    const-string v4, "WAKE Error"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 665
    .end local v0           #cpos:I
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_7
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setVolumeBarVisible(Z)V

    goto/16 :goto_0

    .line 671
    :pswitch_8
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateVolumeBtn()V

    .line 672
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setVolumeBarVisible(Z)V

    goto/16 :goto_0

    .line 677
    :pswitch_9
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->hideVolumeBubble()V
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1800(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    goto/16 :goto_0

    .line 494
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_1
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
