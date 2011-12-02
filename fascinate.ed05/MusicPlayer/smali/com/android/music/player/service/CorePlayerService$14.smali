.class Lcom/android/music/player/service/CorePlayerService$14;
.super Ljava/lang/Object;
.source "CorePlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 3553
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$14;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3555
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v2, "mNextPlay:run()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$14;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v1}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$14;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget v1, v1, Lcom/android/music/player/service/CorePlayerService;->mErrorCount:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$14;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v1}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/player/data/MusicPlayerController;->getItemCountFromDB()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 3559
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v2, "mNextPlay:mMusicPlayerController != null&& mMusicPlayerController.getItemCount() > 1&& mErrorCount > 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3563
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3564
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "next"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3567
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$14;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v1, v0}, Lcom/android/music/player/service/CorePlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3576
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 3569
    :cond_0
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$14;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v2, "musicPlayer.service.updateMediaInfo"

    invoke-virtual {v1, v2}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 3570
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$14;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v2, "musicPlayer.service.updatePlayInfo"

    invoke-virtual {v1, v2}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 3573
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$14;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$14;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v2}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/music/player/data/MusicPlayerController;->getItemCount()I

    move-result v2

    iput v2, v1, Lcom/android/music/player/service/CorePlayerService;->mErrorCount:I

    goto :goto_0
.end method
