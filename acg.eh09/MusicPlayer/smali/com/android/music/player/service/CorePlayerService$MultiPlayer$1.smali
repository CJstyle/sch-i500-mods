.class Lcom/android/music/player/service/CorePlayerService$MultiPlayer$1;
.super Ljava/lang/Object;
.source "CorePlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/service/CorePlayerService$MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;


# direct methods
.method constructor <init>(Lcom/android/music/player/service/CorePlayerService$MultiPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 3099
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$1;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 3101
    const-string v0, "MultiPlayer"

    const-string v1, "onCompletion()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$1;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$700(Lcom/android/music/player/service/CorePlayerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3108
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$1;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->access$2600(Lcom/android/music/player/service/CorePlayerService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3109
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$1;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->access$2600(Lcom/android/music/player/service/CorePlayerService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3110
    return-void
.end method
