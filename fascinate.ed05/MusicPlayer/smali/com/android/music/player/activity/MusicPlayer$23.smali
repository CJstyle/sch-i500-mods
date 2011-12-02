.class Lcom/android/music/player/activity/MusicPlayer$23;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/activity/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/player/activity/MusicPlayer;


# direct methods
.method constructor <init>(Lcom/android/music/player/activity/MusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 3476
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$23;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 3477
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$23;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "mProgressBarRecceiver:onReceive() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3479
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "musicplayer.show.progressbar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3480
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$23;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v0, v2, v2}, Lcom/android/music/player/activity/MusicPlayer;->showAdditionalPanel(ZZ)V

    .line 3486
    :cond_0
    :goto_0
    return-void

    .line 3482
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$23;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-boolean v0, v0, Lcom/android/music/player/activity/MusicPlayer;->additionalPanelFromAlbumArt:Z

    if-nez v0, :cond_0

    .line 3483
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$23;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/16 v1, 0x20

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    goto :goto_0
.end method
