.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$20;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 3140
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$20;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const-string v2, "MoviePlayer"

    .line 3143
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v0

    .line 3144
    .local v0, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    if-nez v0, :cond_0

    .line 3146
    const-string v1, "MoviePlayer"

    const-string v1, "mSensorOn - videoView is NULL."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    :goto_0
    return-void

    .line 3149
    :cond_0
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3151
    const-string v1, "MoviePlayer"

    const-string v1, "call setControllerUpdate 8"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setControllerUpdate()V

    .line 3154
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setTitleName()V

    .line 3155
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setChangeViewDone(Z)V

    .line 3156
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$20;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setRequestedOrientation(I)V

    goto :goto_0
.end method
