.class Lcom/android/music/player/service/CorePlayerService$10;
.super Ljava/lang/Object;
.source "CorePlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
    .line 3332
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$10;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 3
    .parameter "player"
    .parameter "percentage"

    .prologue
    .line 3333
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnBufferingUpdateListener:onBufferingUpdate(percentage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3338
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$10;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iput p2, v0, Lcom/android/music/player/service/CorePlayerService;->mBufferPercentage:I

    .line 3339
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$10;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v1, "musicPlayer.service.updateStreamBufferStatus"

    invoke-virtual {v0, v1}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 3340
    return-void
.end method
