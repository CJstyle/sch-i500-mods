.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;
.super Landroid/content/BroadcastReceiver;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1875
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1878
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1879
    .local v1, action:Ljava/lang/String;
    const-string v9, "MoviePlayer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mStatusReceiver - status"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoActivityOnResume:Z
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$300(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 2154
    :cond_0
    :goto_0
    return-void

    .line 1884
    :cond_1
    const-string v9, "videoplayer.service.MoviePlaybackService.PLAYBACK_UPDATE"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->paused:Z
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$400(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1886
    const-string v9, "MoviePlayer"

    const-string v10, "mStatusReceiver - MoviePlaybackService.PLAYBACK_UPDATE."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    const/4 v9, 0x0

    sput v9, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->error_count:I

    .line 1891
    :try_start_0
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1893
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$600(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$600(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1894
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$600(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1903
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkLockScreenOn()Z
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$700(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1906
    sget-object v9, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v9}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v7

    .line 1908
    .local v7, videoSurfaceView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    if-eqz v7, :cond_0

    .line 1909
    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setControllerUpdate()V

    goto :goto_0

    .line 1897
    .end local v7           #videoSurfaceView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 1899
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1911
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_3
    const-string v9, "videoplayer.service.MoviePlaybackService.PLAYBACK_COMPLETE"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1913
    const/4 v9, 0x1

    sput-boolean v9, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPlaybackComplete:Z

    .line 1914
    const-wide/16 v9, -0x1

    sput-wide v9, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    .line 1915
    sget-object v9, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v9}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->stopSubTitleProcessor()V

    .line 1917
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMenu:Landroid/view/Menu;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$800(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/view/Menu;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 1918
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMenu:Landroid/view/Menu;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$800(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/view/Menu;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/Menu;->close()V

    .line 1920
    :cond_4
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v9

    const/16 v10, 0x14

    if-ne v9, v10, :cond_5

    .line 1922
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopupShow:Z
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbDrmPopupShow:Z
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1924
    const/4 v5, 0x0

    .line 1926
    .local v5, next:Z
    const/4 v9, 0x0

    :try_start_1
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->next(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 1930
    :goto_2
    if-nez v5, :cond_0

    .line 1931
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_0

    .line 1927
    :catch_1
    move-exception v3

    .line 1928
    .local v3, e:Ljava/lang/Exception;
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto :goto_2

    .line 1937
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #next:Z
    :cond_5
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopupShow:Z
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbDrmPopupShow:Z
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1938
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_0

    .line 1941
    :cond_6
    const-string v9, "videoplayer.service.MoviePlaybackService.PLAYBACK_INCOMINGCALL"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1943
    const/4 v9, 0x1

    sput-boolean v9, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mWasIncomingCall:Z

    goto/16 :goto_0

    .line 1945
    :cond_7
    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1947
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->handleBatteryChanged(Landroid/content/Intent;)V
    invoke-static {v9, p2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1200(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/content/Intent;)V

    .line 1951
    :try_start_2
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->batteryCheck()Z
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1300(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1952
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    iget-object v10, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->popupLowBattery(Landroid/app/Activity;)V
    invoke-static {v9, v10}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1400(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/app/Activity;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1954
    :catch_2
    move-exception v9

    move-object v3, v9

    .line 1956
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1957
    const-string v9, "MoviePlayer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BatteryChecker IOException occured :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1962
    .end local v3           #e:Ljava/io/IOException;
    :cond_8
    const-string v9, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_SHOW_ACQUIRING_POPUP"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1965
    const-string v9, "MoviePlayer"

    const-string v10, "mStatusReceiver - receive PLAYBACK_DRM_SHOW_ACQUIRING_POPUP"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1968
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1970
    :cond_9
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLicErrorRelatedPopupShow:Z
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1600(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1972
    const-string v9, "MoviePlayer"

    const-string v10, "In OnResume, dnt show Acq License popup"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1975
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 1978
    :cond_a
    const-string v9, "MoviePlayer"

    const-string v10, "mStatusReceiver - receive PLAYBACK_DRM_SHOW_ACQUIRING_POPUP 1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    new-instance v10, Landroid/app/ProgressDialog;

    iget-object v11, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct {v10, v11}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v9, v10}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1502(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1980
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v9

    const-string v10, "Acquiring License..."

    invoke-virtual {v9, v10}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1981
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1982
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1983
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 1986
    :cond_b
    const-string v9, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DISMISS_ACQUIRING_POPUP"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1990
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1991
    const-string v9, "MoviePlayer"

    const-string v10, "mStatusReceiver - receive PLAYBACK_DRM_DISMISS_ACQUIRING_POPUP"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 1996
    :cond_c
    const-string v9, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_LICENSE_ACQUISITION_FAILED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1999
    const-string v9, "MoviePlayer"

    const-string v10, "mStatusReceiver - receive PLAYBACK_DRM_LICENSE_ACQUISITION_FAILED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    const/16 v10, 0x12

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V
    invoke-static {v9, v10, p2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1700(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 2003
    :cond_d
    const-string v9, "videoplayer.service.MoviePlaybackService.NO_DATA_CONNECTIVITY_POPUP"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 2005
    const-string v9, "MoviePlayer"

    const-string v10, "mStatusReceiver - receive NO_DATA_CONNECTIVITY_POPUP"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    const/16 v10, 0x15

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V
    invoke-static {v9, v10, p2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1700(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 2011
    :cond_e
    const-string v9, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_VALID_COUNT"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    const-string v9, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_INVALID_CD"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    const-string v9, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_INVALID_SD"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    const-string v9, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_FIRST_INTERVAL_RENDER"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    const-string v9, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_DIVX_NOT_AUTHORIZED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    const-string v9, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_WMDRM_INVALID"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    const-string v9, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_DIVX_NOT_REGISTERED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    const-string v9, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_DIVX_RENTAL_EXPIRED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    const-string v9, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_DIVX_RENTAL_INFO"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 2021
    :cond_f
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    sget v10, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopupType:I
    invoke-static {v9, v10}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1802(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;I)I

    .line 2022
    const-string v9, "MoviePlayer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mStatusReceiver - receive DRM popup. mDrmPopupType = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopupType:I
    invoke-static {v11}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1800(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    iget-object v10, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopupType:I
    invoke-static {v10}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1800(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createPopup(I)V

    goto/16 :goto_0

    .line 2025
    :cond_10
    const-string v9, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_UNKNOWN"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 2027
    const-string v9, "MoviePlayer"

    const-string v10, "mStatusReceiver - receive MEDIA_ERROR_UNKNOWN"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    const/16 v10, 0xa

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V
    invoke-static {v9, v10, p2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1700(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 2035
    :cond_11
    const-string v9, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_INVALID"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 2037
    const-string v9, "MoviePlayer"

    const-string v10, "mStatusReceiver - receive MEDIA_ERROR_INVALID"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    const/16 v10, 0xb

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V
    invoke-static {v9, v10, p2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1700(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 2046
    :cond_12
    const-string v9, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_NOTSUPPORT"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 2048
    const-string v9, "MoviePlayer"

    const-string v10, "mStatusReceiver - receive MEDIA_ERROR_NOTSUPPORT"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    const/16 v10, 0xc

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V
    invoke-static {v9, v10, p2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1700(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 2056
    :cond_13
    const-string v9, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_CURRUPT"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 2058
    const-string v9, "MoviePlayer"

    const-string v10, "mStatusReceiver - receive MEDIA_ERROR_CURRUPT"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    const/16 v10, 0xd

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V
    invoke-static {v9, v10, p2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1700(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 2066
    :cond_14
    const-string v9, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_DIVX_NOTAUTHORIZED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 2068
    const-string v9, "MoviePlayer"

    const-string v10, "mStatusReceiver - receive MEDIA_ERROR_DIVX_NOTAUTHORIZED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    const/16 v10, 0xe

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V
    invoke-static {v9, v10, p2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1700(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 2077
    :cond_15
    const-string v9, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_EXPIRED_RENTALCOUNT"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 2079
    const-string v9, "MoviePlayer"

    const-string v10, "mStatusReceiver - receive MEDIA_ERROR_EXPIRED_RENTALCOUNT"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    const/16 v10, 0xf

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V
    invoke-static {v9, v10, p2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1700(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 2087
    :cond_16
    const-string v9, "android.intent.action.TVOUT_PLUG"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 2089
    const-string v9, "state"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_18

    const/4 v9, 0x1

    move v4, v9

    .line 2091
    .local v4, isTVOutPlugged:Z
    :goto_3
    if-eqz v4, :cond_0

    .line 2093
    const-string v9, "MoviePlayer"

    const-string v10, "mStatusReceiver - headset is inserted."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getCurPlayingPath()Ljava/lang/String;

    move-result-object v6

    .line 2096
    .local v6, path:Ljava/lang/String;
    if-eqz v6, :cond_17

    .line 2098
    sget-object v9, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v9, v6}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsDivx(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 2100
    const-string v9, "MoviePlayer"

    const-string v10, "play() - divX file. check Tv-Out function"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    :cond_17
    sget-boolean v9, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mDisableTvOut:Z

    if-eqz v9, :cond_0

    .line 2104
    const-string v9, "MoviePlayer"

    const-string v10, "TV out is disabled"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->suspendTvOut()V

    goto/16 :goto_0

    .line 2089
    .end local v4           #isTVOutPlugged:Z
    .end local v6           #path:Ljava/lang/String;
    :cond_18
    const/4 v9, 0x0

    move v4, v9

    goto :goto_3

    .line 2109
    :cond_19
    const-string v9, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2111
    const-string v9, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 2112
    .local v2, bFromBT:Z
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/content/Context;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 2114
    .local v0, a2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v9

    if-eqz v9, :cond_1a

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/media/AudioManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v9

    if-nez v9, :cond_0

    :cond_1a
    if-nez v2, :cond_0

    .line 2116
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v9

    const/16 v10, 0x1e

    if-eq v9, v10, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v9

    const/16 v10, 0x1d

    if-eq v9, v10, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v9

    const/16 v10, 0x14

    if-eq v9, v10, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v9

    const/16 v10, 0x16

    if-eq v9, v10, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v9

    const/16 v10, 0x20

    if-eq v9, v10, :cond_0

    .line 2124
    const-string v9, "MoviePlayer"

    const-string v10, "mStatusReceiver - headset is removed."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->SetSRS(I)V

    .line 2127
    sget-object v9, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v9}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v8

    .line 2129
    .local v8, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    if-nez v8, :cond_1b

    .line 2130
    const-string v9, "MoviePlayer"

    const-string v10, "mStatusReceiver - headset is removed. surfaceView is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2134
    :cond_1b
    invoke-virtual {v8}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->updateSRSBtn()V

    .line 2138
    :try_start_3
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2140
    sget-boolean v9, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPauseEnable:Z

    if-eqz v9, :cond_1c

    .line 2141
    invoke-virtual {v8}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->pause()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 2146
    :catch_3
    move-exception v9

    move-object v3, v9

    .line 2148
    .local v3, e:Landroid/os/RemoteException;
    const-string v9, "MoviePlayer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Headset is removed : RemoteException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2143
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_1c
    :try_start_4
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->stop()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0
.end method
