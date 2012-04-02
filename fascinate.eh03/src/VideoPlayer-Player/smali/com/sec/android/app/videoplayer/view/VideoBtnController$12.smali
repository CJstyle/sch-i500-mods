.class Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;
.super Ljava/lang/Object;
.source "VideoBtnController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoBtnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field duration:J

.field newposition:J

.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V
    .locals 0
    .parameter

    .prologue
    .line 1500
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 1506
    if-eqz p3, :cond_0

    .line 1508
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbRewEnable:Z
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1700(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbFfEnable:Z
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1300(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1518
    :cond_0
    :goto_0
    return-void

    .line 1511
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbProgressDragStatus:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$302(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    .line 1513
    iget-wide v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->duration:J

    int-to-long v2, p2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->newposition:J

    .line 1515
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1516
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    iget-wide v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->newposition:J

    long-to-int v2, v2

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->stringForTimeCur(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    const/4 v3, 0x1

    .line 1566
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbRewEnable:Z
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1700(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbFfEnable:Z
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1300(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1568
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbProgressDragStatus:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$302(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    .line 1569
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v1

    const/16 v2, 0xbb8

    invoke-interface {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 1595
    :goto_0
    return-void

    .line 1575
    :cond_1
    :try_start_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_2

    .line 1577
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1579
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->pause()V

    .line 1580
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->temp_playmode:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2102(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1592
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v1

    const v2, 0x36ee80

    invoke-interface {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 1593
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbProgressDragStatus:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$302(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    .line 1594
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->getDuration()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->duration:J

    goto :goto_0

    .line 1583
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->temp_playmode:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2102(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1586
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1589
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7
    .parameter "seekBar"

    .prologue
    const/16 v6, 0xbb8

    const/4 v5, 0x0

    .line 1522
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbRewEnable:Z
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1700(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbFfEnable:Z
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1300(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1524
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbProgressDragStatus:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$302(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    .line 1525
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 1562
    :cond_1
    :goto_0
    return-void

    .line 1529
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbProgressDragStatus:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$302(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    .line 1532
    sget-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mUsePlayReady:Z

    if-eqz v2, :cond_5

    .line 1534
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->isWMDRM()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->isPlayReadyFile()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_IsPyvFileInComplete:Z

    if-eqz v2, :cond_4

    .line 1535
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 1536
    .local v0, progress:I
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result v1

    .line 1538
    .local v1, secProgress:I
    if-ge v0, v1, :cond_3

    .line 1539
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->newposition:J

    long-to-int v3, v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->seekTo(I)V

    .line 1555
    .end local v0           #progress:I
    .end local v1           #secProgress:I
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 1557
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->temp_playmode:Z
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1559
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->start()V

    .line 1560
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->temp_playmode:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2102(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    goto :goto_0

    .line 1542
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->newposition:J

    long-to-int v3, v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->seekTo(I)V

    goto :goto_1

    .line 1548
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->newposition:J

    long-to-int v3, v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->seekTo(I)V

    goto :goto_1
.end method
