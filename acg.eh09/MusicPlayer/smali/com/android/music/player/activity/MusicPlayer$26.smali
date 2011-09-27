.class Lcom/android/music/player/activity/MusicPlayer$26;
.super Landroid/os/Handler;
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
    .line 3616
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$26;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 3622
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$26;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v1, :cond_1

    .line 3627
    :try_start_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$26;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v1, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/android/music/player/service/ICorePlayerService;->playIt(Landroid/net/Uri;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3655
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 3656
    return-void

    .line 3631
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3633
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3635
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$26;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v1, :cond_2

    .line 3640
    :try_start_1
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$26;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v1, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/android/music/player/service/ICorePlayerService;->playIt(Landroid/net/Uri;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3644
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 3646
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3648
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method
