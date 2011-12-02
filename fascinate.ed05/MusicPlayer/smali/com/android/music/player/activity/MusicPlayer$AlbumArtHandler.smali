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
.field private mAlbumId:I

.field private priorBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/android/music/player/activity/MusicPlayer;


# direct methods
.method public constructor <init>(Lcom/android/music/player/activity/MusicPlayer;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter "looper"

    .prologue
    .line 4662
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    .line 4663
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4659
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->mAlbumId:I

    .line 4660
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->priorBitmap:Landroid/graphics/Bitmap;

    .line 4664
    iget-object v0, p1, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "AlbumArtHandler() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4665
    return-void
.end method


# virtual methods
.method public getAlbumId()I
    .locals 2

    .prologue
    .line 4715
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getAlbumId() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4716
    iget v0, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->mAlbumId:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/16 v7, 0x9

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 4668
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v4, "handleMessage() is called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4669
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 4671
    .local v1, currentAlbumId:Ljava/lang/Integer;
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_0

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v7, :cond_4

    .line 4672
    :cond_0
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v4, "AlbumArtHandler: msg.what == GET_ALBUM_ART"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4674
    const/4 v0, 0x0

    .line 4675
    .local v0, albumBitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v3}, Lcom/android/music/player/activity/MusicPlayer;->access$1600(Lcom/android/music/player/activity/MusicPlayer;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_1

    .line 4676
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v3, v1, v5}, Lcom/android/music/player/activity/MusicPlayer;->access$1700(Lcom/android/music/player/activity/MusicPlayer;Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;

    .line 4678
    :cond_1
    iget v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->mAlbumId:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_6

    .line 4679
    :cond_2
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4, v5}, Lcom/android/music/player/activity/MusicPlayer;->access$1800(Lcom/android/music/player/activity/MusicPlayer;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4681
    if-nez v0, :cond_5

    .line 4682
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v3}, Lcom/android/music/player/activity/MusicPlayer;->access$1600(Lcom/android/music/player/activity/MusicPlayer;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4683
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->priorBitmap:Landroid/graphics/Bitmap;

    .line 4691
    :goto_0
    if-eqz v0, :cond_3

    .line 4692
    const/4 v2, 0x0

    .line 4693
    .local v2, numsg:Landroid/os/Message;
    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->priorBitmap:Landroid/graphics/Bitmap;

    .line 4694
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4695
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

    .line 4696
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mVisualizationType:I

    if-nez v3, :cond_7

    .line 4697
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 4700
    :goto_1
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4706
    .end local v2           #numsg:Landroid/os/Message;
    :cond_3
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AlbumArtHandler: mAlbumId :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->mAlbumId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4708
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->mAlbumId:I

    .line 4712
    .end local v0           #albumBitmap:Landroid/graphics/Bitmap;
    :cond_4
    return-void

    .line 4685
    .restart local v0       #albumBitmap:Landroid/graphics/Bitmap;
    :cond_5
    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->priorBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 4688
    :cond_6
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->priorBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 4699
    .restart local v2       #numsg:Landroid/os/Message;
    :cond_7
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_1
.end method
