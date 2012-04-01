.class Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;
.super Ljava/lang/Object;
.source "VideoBtnController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 1252
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "view"
    .parameter "event"

    .prologue
    .line 1255
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 1257
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 1258
    .local v2, pressTime:J
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1260
    .local v1, eventaction:I
    if-nez v1, :cond_2

    .line 1264
    :try_start_0
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v6, :cond_0

    .line 1266
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v6}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1268
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->pause()V

    .line 1269
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v7, 0x1

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->temp_playmode:Z
    invoke-static {v6, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2102(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1280
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v7, 0x6

    const-wide/16 v8, 0x1f4

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v6, v7, v8, v9}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 1281
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v7, 0x4

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V
    invoke-static {v6, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1900(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V

    .line 1282
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v6

    const v7, 0x36ee80

    invoke-interface {v6, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 1283
    const/4 v6, 0x0

    .line 1338
    .end local v1           #eventaction:I
    .end local v2           #pressTime:J
    :goto_1
    return v6

    .line 1272
    .restart local v1       #eventaction:I
    .restart local v2       #pressTime:J
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v7, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->temp_playmode:Z
    invoke-static {v6, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2102(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1276
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 1278
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1285
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v6, 0x1

    if-eq v1, v6, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v6

    if-nez v6, :cond_a

    .line 1287
    :cond_3
    const-wide/16 v6, 0x1f4

    cmp-long v6, v2, v6

    if-gez v6, :cond_5

    const/16 v6, 0x14

    sget v7, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    if-eq v6, v7, :cond_4

    const/16 v6, 0x1a

    sget v7, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    if-eq v6, v7, :cond_4

    const/16 v6, 0x19

    sget v7, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    if-ne v6, v7, :cond_5

    .line 1291
    :cond_4
    const-string v6, "VideoPlayerBtnController"

    const-string v7, "next go"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v7, 0x4

    const-wide/16 v8, 0x64

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v6, v7, v8, v9}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 1295
    :cond_5
    sget-boolean v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mUsePlayReady:Z

    if-eqz v6, :cond_7

    .line 1296
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->isPlayReadyFile()Z

    move-result v6

    if-eqz v6, :cond_7

    sget-boolean v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_IsPyvFileInComplete:Z

    if-eqz v6, :cond_7

    .line 1297
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    iget-object v6, v6, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    .line 1298
    .local v4, progress:I
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    iget-object v6, v6, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result v5

    .line 1300
    .local v5, secProgress:I
    if-lez v5, :cond_6

    if-le v4, v5, :cond_6

    .line 1302
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v6

    sget-wide v7, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    long-to-int v7, v7

    invoke-interface {v6, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->seekTo(I)V

    .line 1303
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setProgress()I
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$200(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    .line 1305
    :cond_6
    const-wide/16 v6, -0x1

    sput-wide v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    .line 1309
    .end local v4           #progress:I
    .end local v5           #secProgress:I
    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v6

    const/16 v7, 0xbb8

    invoke-interface {v6, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 1311
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->temp_playmode:Z
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1315
    :try_start_2
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->setWakeMode(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1324
    :cond_8
    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v7, 0x6

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V
    invoke-static {v6, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1900(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V

    .line 1326
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->temp_playmode:Z
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    .line 1328
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->start()V

    .line 1329
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v7, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->temp_playmode:Z
    invoke-static {v6, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2102(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    .line 1331
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1317
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 1319
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v6, "VideoPlayerBtnController"

    const-string v7, "WAKE Error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1334
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1338
    .end local v1           #eventaction:I
    .end local v2           #pressTime:J
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_1
.end method
