.class Lcom/android/music/player/service/CorePlayerService$7;
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
    .line 1234
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$1700(Lcom/android/music/player/service/CorePlayerService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$1900(Lcom/android/music/player/service/CorePlayerService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->isStop()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1248
    :cond_0
    :goto_0
    return-void

    .line 1247
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v1}, Lcom/android/music/player/service/CorePlayerService;->access$2000(Lcom/android/music/player/service/CorePlayerService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/music/player/service/CorePlayerService;->stopSelf(I)V

    goto :goto_0
.end method
