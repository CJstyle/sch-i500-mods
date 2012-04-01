.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$17;
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
    .line 2944
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$17;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const-string v6, "MoviePlayer"

    .line 2947
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2949
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2951
    const-string v4, "MoviePlayer"

    const-string v4, "mMediaReceiver() - SD card mounted."

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    const/high16 v4, 0x7f07

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2953
    .local v1, app:Ljava/lang/String;
    const v4, 0x7f07005e

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2954
    .local v3, str:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$17;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2955
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$17;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    .line 3006
    .end local v1           #app:Ljava/lang/String;
    .end local v3           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2958
    :cond_1
    const-string v4, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2960
    const-string v4, "MoviePlayer"

    const-string v4, "mMediaReceiver() - ACTION_MEDIA_SCANNER_STARTED."

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$17;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getMediaToast()Landroid/widget/Toast;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$3900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 2962
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$17;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getMediaToast()Landroid/widget/Toast;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$3900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2963
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$17;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto :goto_0

    .line 2966
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$17;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v4

    const/16 v5, 0x1d

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$17;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v4

    const/16 v5, 0x1e

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$17;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v4

    const/16 v5, 0x15

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$17;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v4

    const/16 v5, 0x17

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$17;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v4

    const/16 v5, 0x19

    if-eq v4, v5, :cond_0

    .line 2971
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2973
    const-string v4, "MoviePlayer"

    const-string v4, "mMediaReceiver() - SD card unmounted"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$17;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2996
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$17;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3003
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$17;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto :goto_0

    .line 2998
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 3000
    .local v2, e:Landroid/os/RemoteException;
    const-string v4, "MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException occured  7 :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
