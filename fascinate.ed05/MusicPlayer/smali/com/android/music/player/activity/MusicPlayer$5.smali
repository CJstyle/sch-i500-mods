.class Lcom/android/music/player/activity/MusicPlayer$5;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


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
    .line 791
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$5;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 792
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$5;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v3, "menuDetailsOnClickListener:onMenuItemClick() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$5;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/music/common/richinfo/RichInformationMainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 796
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$5;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v2, :cond_0

    .line 797
    const-string v2, "playing_uri"

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$5;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v3}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMedia()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 800
    const-string v2, "media.duration"

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$5;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v3}, Lcom/android/music/player/service/ICorePlayerService;->getDuration()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 801
    const-string v2, "media.launch.mode"

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$5;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$5;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v2, v1}, Lcom/android/music/player/activity/MusicPlayer;->startActivity(Landroid/content/Intent;)V

    .line 807
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$5;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const v3, 0x7f04000a

    const v4, 0x7f04000b

    invoke-virtual {v2, v3, v4}, Lcom/android/music/player/activity/MusicPlayer;->overridePendingTransition(II)V

    .line 809
    const/4 v2, 0x0

    return v2

    .line 803
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 804
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$5;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException occured 28 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
