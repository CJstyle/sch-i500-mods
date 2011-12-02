.class Lcom/android/music/player/service/CorePlayerService$8;
.super Ljava/lang/Object;
.source "CorePlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/service/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/player/service/CorePlayerService;


# direct methods
.method constructor <init>(Lcom/android/music/player/service/CorePlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 3215
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$8;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mp"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3216
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "mLibraryMediaPlayerCompletionListener:onCompletion() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3219
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$8;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v1, "musicPlayer.service.updatePlayComplete"

    invoke-virtual {v0, v1}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 3220
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$8;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->canStartMediaPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3221
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$8;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const v1, 0x11080

    iput v1, v0, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 3229
    :goto_0
    invoke-static {v2}, Lcom/android/music/common/util/MusicPlayerUtil;->setIsPlaying(Z)V

    .line 3231
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$8;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0, v3, v2, v2}, Lcom/android/music/player/service/CorePlayerService;->internalPlayNext(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3232
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$8;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v1, "musicPlayer.service.updateMediaInfo"

    invoke-virtual {v0, v1}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 3242
    :goto_1
    return-void

    .line 3223
    :cond_0
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "onCompletion...but it is error case"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3234
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$8;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$000(Lcom/android/music/player/service/CorePlayerService;)V

    .line 3239
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$8;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v1, "musicPlayer.service.stopPlay"

    invoke-virtual {v0, v1}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 3240
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$8;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0, v3}, Lcom/android/music/player/service/CorePlayerService;->sendMediaPlayInfo(Z)V

    goto :goto_1
.end method
