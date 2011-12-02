.class Lcom/android/music/player/service/CorePlayerService$15;
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
    .line 3581
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$15;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3583
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v2, "mPrevPlay:run()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$15;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v1}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$15;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget v1, v1, Lcom/android/music/player/service/CorePlayerService;->mErrorCount:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$15;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v1}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/player/data/MusicPlayerController;->getItemCountFromDB()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 3587
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v2, "mPrevPlay:mMusicPlayerController != null&& mMusicPlayerController.getItemCount() > 1&& mErrorCount > 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3591
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3592
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "previous"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3595
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$15;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v1, v0}, Lcom/android/music/player/service/CorePlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3605
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method
