.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$18;
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
    .line 3009
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$18;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3012
    if-nez p2, :cond_1

    .line 3028
    :cond_0
    :goto_0
    return-void

    .line 3016
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3017
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 3018
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$18;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setVolume()V
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$4000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    .line 3020
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v0

    .line 3022
    .local v0, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    if-eqz v0, :cond_0

    .line 3024
    iget-object v1, v0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateVolumeBtn()V

    goto :goto_0
.end method
