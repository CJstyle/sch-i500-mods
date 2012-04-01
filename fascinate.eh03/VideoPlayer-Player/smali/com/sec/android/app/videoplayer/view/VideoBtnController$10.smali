.class Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;
.super Ljava/lang/Object;
.source "VideoBtnController.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 1343
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1346
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v7

    sub-long v1, v5, v7

    .line 1348
    .local v1, pressTime:J
    packed-switch p2, :pswitch_data_0

    .line 1416
    :pswitch_0
    const/4 v5, 0x0

    :goto_0
    return v5

    .line 1358
    :pswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 1413
    const/4 v5, 0x0

    goto :goto_0

    .line 1361
    :pswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 1362
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v6, 0x6

    const-wide/16 v7, 0x1f4

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v5, v6, v7, v8}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 1363
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v6, 0x4

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V
    invoke-static {v5, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1900(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V

    .line 1364
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v5

    const v6, 0x36ee80

    invoke-interface {v5, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 1365
    const/4 v5, 0x1

    goto :goto_0

    .line 1368
    :pswitch_3
    const-wide/16 v5, 0x1f4

    cmp-long v5, v1, v5

    if-gez v5, :cond_1

    const/16 v5, 0x14

    sget v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    if-ne v5, v6, :cond_1

    .line 1371
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v6, 0x4

    const-wide/16 v7, 0x64

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v5, v6, v7, v8}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 1375
    :cond_1
    sget-boolean v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mUsePlayReady:Z

    if-eqz v5, :cond_3

    .line 1376
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->isPlayReadyFile()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_IsPyvFileInComplete:Z

    if-eqz v5, :cond_3

    .line 1377
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    iget-object v5, v5, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    .line 1378
    .local v3, progress:I
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    iget-object v5, v5, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result v4

    .line 1380
    .local v4, secProgress:I
    if-lez v4, :cond_2

    if-le v3, v4, :cond_2

    .line 1382
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v5

    sget-wide v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    long-to-int v6, v6

    invoke-interface {v5, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->seekTo(I)V

    .line 1383
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setProgress()I
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$200(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    .line 1385
    :cond_2
    const-wide/16 v5, -0x1

    sput-wide v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    .line 1390
    .end local v3           #progress:I
    .end local v4           #secProgress:I
    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v5

    const/16 v6, 0xbb8

    invoke-interface {v5, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 1393
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->temp_playmode:Z
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1397
    :try_start_0
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->setWakeMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1406
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v6, 0x6

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V
    invoke-static {v5, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1900(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V

    .line 1407
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1399
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 1401
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "VideoPlayerBtnController"

    const-string v6, "WAKE Error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1348
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1358
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
