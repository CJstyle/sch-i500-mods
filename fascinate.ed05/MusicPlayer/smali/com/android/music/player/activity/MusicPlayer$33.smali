.class Lcom/android/music/player/activity/MusicPlayer$33;
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
    .line 4792
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$33;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v1, "MusicPlayer"

    const-string v1, ")"

    .line 4795
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$33;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v1, :cond_1

    .line 4798
    :try_start_0
    const-string v2, "MusicPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playNext("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4799
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$33;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v1, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/android/music/player/service/ICorePlayerService;->playIt(Landroid/net/Uri;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4822
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$33;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iput-boolean v4, v1, Lcom/android/music/player/activity/MusicPlayer;->bCorePlayerStatusRefeshed:Z

    .line 4826
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4827
    return-void

    .line 4803
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4805
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 4807
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$33;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v1, :cond_2

    .line 4810
    :try_start_1
    const-string v2, "MusicPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playPrev("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4811
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$33;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v1, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/android/music/player/service/ICorePlayerService;->playIt(Landroid/net/Uri;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4815
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 4817
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 4819
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 4820
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$33;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v1, v3}, Lcom/android/music/player/activity/MusicPlayer;->access$1902(Lcom/android/music/player/activity/MusicPlayer;Z)Z

    goto :goto_0
.end method
