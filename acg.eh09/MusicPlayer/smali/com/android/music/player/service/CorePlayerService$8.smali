.class Lcom/android/music/player/service/CorePlayerService$8;
.super Landroid/os/Handler;
.source "CorePlayerService.java"


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
    .line 2436
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$8;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 2439
    const-string v0, "CorePlayerService"

    const-string v1, "mServiceHandler:%s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2453
    :goto_0
    return-void

    .line 2443
    :sswitch_0
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$8;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$8;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v1}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/player/service/CorePlayerService;->doSaveNowPlayingMediaInfo(Landroid/net/Uri;)V

    goto :goto_0

    .line 2446
    :sswitch_1
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$8;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$8;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v1}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/music/player/service/CorePlayerService;->access$2100(Lcom/android/music/player/service/CorePlayerService;Ljava/lang/String;Z)I

    goto :goto_0

    .line 2449
    :sswitch_2
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$8;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$8;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v1}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/music/player/service/CorePlayerService;->access$2100(Lcom/android/music/player/service/CorePlayerService;Ljava/lang/String;Z)I

    goto :goto_0

    .line 2441
    nop

    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_0
        0x12c -> :sswitch_2
        0x12d -> :sswitch_1
    .end sparse-switch
.end method
