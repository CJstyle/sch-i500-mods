.class Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;
.super Landroid/os/Handler;
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
.field mCurrentVolume:F

.field final synthetic this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V
    .locals 1
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 261
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->mCurrentVolume:F

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x3

    const/high16 v3, 0x3f80

    const/16 v5, 0x1e

    const-string v6, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_UNKNOWN"

    const-string v4, "VideoPlayerbackService"

    .line 263
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 405
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 265
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    iget v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->mCurrentVolume:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    .line 268
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->mCurrentVolume:F

    .line 269
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 273
    :cond_1
    iget v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->mCurrentVolume:F

    const v2, 0x3c23d70a

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->mCurrentVolume:F

    .line 275
    iget v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->mCurrentVolume:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    .line 277
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 281
    :cond_2
    iput v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->mCurrentVolume:F

    goto :goto_0

    .line 288
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_COMPLETE"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$300(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setDataSourceAsync(Landroid/net/Uri;)V

    goto :goto_0

    .line 297
    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$400(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$400(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 302
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isPlayCheck()V
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$500(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V

    goto :goto_0

    .line 306
    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isPauseCheck()V
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$600(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V

    goto :goto_0

    .line 310
    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isStopCheck()V
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$700(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V

    goto :goto_0

    .line 316
    :pswitch_8
    const-string v1, "VideoPlayerbackService"

    const-string v1, "DrmLicenseNotFound/DrmLicenseExpired in handler"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getCurPlayingPath()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 321
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v2, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_UNKNOWN"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v6}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 325
    :cond_3
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsOMADrm(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 327
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkValidRights(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 329
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->setDrmMsgPopup(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    .line 331
    const-string v1, "VideoPlayerbackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVideoPlayerHandler - Invalid rights. mDrmPopupType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget v1, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    if-eq v5, v1, :cond_4

    .line 335
    const-string v1, "VideoPlayerbackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVideoPlayerHandler - pop up type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmStringType:[Ljava/lang/String;

    sget v3, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    sub-int/2addr v3, v5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmStringType:[Ljava/lang/String;

    sget v3, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    sub-int/2addr v3, v5

    aget-object v2, v2, v3

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 341
    :cond_4
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->updateOMADRMInfo(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 343
    const-string v1, "VideoPlayerbackService"

    const-string v1, "mVideoPlayerHandler - get DRM information error"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v2, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_UNKNOWN"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v6}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 348
    :cond_5
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsWMDRM(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 350
    const-string v1, "VideoPlayerbackService"

    const-string v1, "mVideoPlayerHandler - this file is WMDrm."

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsValidWMDrm(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 355
    const-string v1, "VideoPlayerbackService"

    const-string v1, "mVideoPlayerHandler - Invaild WMDRM."

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/16 v1, 0x23

    sput v1, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    .line 357
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_WMDRM_INVALID"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 363
    :cond_6
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsPlayReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 365
    const-string v1, "VideoPlayerbackService"

    const-string v1, "mVideoPlayerHandler - this file is PlayRead and DrmLicenseNotFound in handler."

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 375
    :cond_7
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsDivx(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 377
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkDivxRightStatus(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    .line 378
    const-string v1, "VideoPlayerbackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVideoPlayerHandler() this file is Divx. mDrmPopupType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    sget v1, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    if-eq v5, v1, :cond_8

    .line 382
    const-string v1, "VideoPlayerbackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVideoPlayerHandler - pop up type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmStringType:[Ljava/lang/String;

    sget v3, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    sub-int/2addr v3, v5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmStringType:[Ljava/lang/String;

    sget v3, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    sub-int/2addr v3, v5

    aget-object v2, v2, v3

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 389
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v2, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_UNKNOWN"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v6}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 396
    .end local v0           #path:Ljava/lang/String;
    :pswitch_9
    const-string v1, "VideoPlayerbackService"

    const-string v1, "ErrDrmRightsAcquisitionFailed in handler"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DISMISS_ACQUIRING_POPUP"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_LICENSE_ACQUISITION_FAILED"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
