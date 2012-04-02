.class public Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;
.super Landroid/os/Handler;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/activity/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlbumArtHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/player/activity/MusicPlayer;


# direct methods
.method public constructor <init>(Lcom/android/music/player/activity/MusicPlayer;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter "looper"

    .prologue
    .line 3474
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    .line 3475
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3476
    iget-object v0, p1, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "AlbumArtHandler() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x0

    const/16 v6, 0x9

    .line 3480
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v4, "handleMessage() is called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3481
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3483
    .local v1, currentAlbumId:Ljava/lang/Integer;
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_0

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v6, :cond_4

    .line 3486
    :cond_0
    const/4 v0, 0x0

    .line 3488
    .local v0, albumBitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v3}, Lcom/android/music/player/activity/MusicPlayer;->access$1200(Lcom/android/music/player/activity/MusicPlayer;)I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_6

    .line 3489
    :cond_1
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v4, "AlbumArtHandler: Before getArtwork()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3490
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4, v5}, Lcom/android/music/player/activity/MusicPlayer;->access$1300(Lcom/android/music/player/activity/MusicPlayer;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3491
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v4, "AlbumArtHandler: After getArtwork()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3493
    if-nez v0, :cond_5

    .line 3494
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v3}, Lcom/android/music/player/activity/MusicPlayer;->access$1400(Lcom/android/music/player/activity/MusicPlayer;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_2

    .line 3495
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v3, v1, v5}, Lcom/android/music/player/activity/MusicPlayer;->access$1500(Lcom/android/music/player/activity/MusicPlayer;Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;

    .line 3497
    :cond_2
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v3}, Lcom/android/music/player/activity/MusicPlayer;->access$1400(Lcom/android/music/player/activity/MusicPlayer;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3498
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/music/player/activity/MusicPlayer;->access$1602(Lcom/android/music/player/activity/MusicPlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 3505
    :goto_0
    if-eqz v0, :cond_3

    .line 3506
    const/4 v2, 0x0

    .line 3507
    .local v2, numsg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v3, v0}, Lcom/android/music/player/activity/MusicPlayer;->access$1602(Lcom/android/music/player/activity/MusicPlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 3508
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 3509
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3510
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ALBUM_ART_VISUALIZATION mVisualizationType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v5, v5, Lcom/android/music/player/activity/MusicPlayer;->mVisualizationType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " albumBitmap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3511
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mVisualizationType:I

    if-nez v3, :cond_7

    .line 3512
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3515
    :goto_1
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3523
    .end local v2           #numsg:Landroid/os/Message;
    :cond_3
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/music/player/activity/MusicPlayer;->access$1202(Lcom/android/music/player/activity/MusicPlayer;I)I

    .line 3527
    .end local v0           #albumBitmap:Landroid/graphics/Bitmap;
    :cond_4
    return-void

    .line 3500
    .restart local v0       #albumBitmap:Landroid/graphics/Bitmap;
    :cond_5
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v3, v0}, Lcom/android/music/player/activity/MusicPlayer;->access$1602(Lcom/android/music/player/activity/MusicPlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 3503
    :cond_6
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v3}, Lcom/android/music/player/activity/MusicPlayer;->access$1600(Lcom/android/music/player/activity/MusicPlayer;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 3514
    .restart local v2       #numsg:Landroid/os/Message;
    :cond_7
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_1
.end method
