.class Lcom/android/music/player/service/CorePlayerService$7;
.super Lcom/android/music/player/service/ICorePlayerService$Stub;
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2143
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public InitIndex()V
    .locals 2

    .prologue
    .line 2139
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "mBinder:InitIndex() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->InitIndex()V

    .line 2141
    return-void
.end method

.method public getBufferStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1405
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "getBufferStatus() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget v0, v0, Lcom/android/music/player/service/CorePlayerService;->mBufferPercentage:I

    return v0
.end method

.method public getChannelCount()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1870
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v2, "mBinder:getChannelCount() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    const/4 v0, 0x0

    .line 1872
    .local v0, c:I
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v1, v1, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v1}, Lcom/android/music/player/service/CorePlayerService;->canStartMediaPlayer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1873
    const/4 v0, 0x3

    .line 1876
    :goto_0
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBinder:getChannelCount()["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    return v0

    .line 1875
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentAlbumInfo()Lcom/android/music/player/data/MusicAlbumInfo;
    .locals 4

    .prologue
    .line 1462
    const/4 v0, 0x0

    .line 1464
    .local v0, albumInfo:Lcom/android/music/player/data/MusicAlbumInfo;
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentPosition()I

    move-result v1

    .line 1465
    .local v1, curPos:I
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/music/player/data/MusicPlayerController;->getMpListFilter()Lcom/android/music/common/data/MpListFilter;

    move-result-object v2

    .line 1466
    .local v2, listFilter:Lcom/android/music/common/data/MpListFilter;
    if-eqz v2, :cond_0

    .line 1468
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v3, v3, Lcom/android/music/player/service/CorePlayerService;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v3, v2, v1}, Lcom/android/music/common/data/MusicDB;->getAlbumInfo(Lcom/android/music/common/data/MpListFilter;I)Lcom/android/music/player/data/MusicAlbumInfo;

    move-result-object v0

    .line 1471
    :cond_0
    return-object v0
.end method

.method public getCurrentFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1641
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "mBinder:getCurrentFilePath() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMedia()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1619
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v2, "mBinder:getCurrentMedia() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v1}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1622
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v1}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v0

    .line 1623
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1625
    .end local v0           #uri:Landroid/net/Uri;
    :goto_0
    return-object v1

    .restart local v0       #uri:Landroid/net/Uri;
    :cond_0
    move-object v1, v3

    .line 1623
    goto :goto_0

    .end local v0           #uri:Landroid/net/Uri;
    :cond_1
    move-object v1, v3

    .line 1625
    goto :goto_0
.end method

.method public getCurrentMediaAudioId()I
    .locals 1

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getCurAudioId()I

    move-result v0

    return v0
.end method

.method public getCurrentMediaListType()I
    .locals 1

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentMediaListType()I

    move-result v0

    return v0
.end method

.method public getCurrentVolume()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1698
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "mBinder:getCurrentVolume() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public getCurrent_ID()I
    .locals 2

    .prologue
    .line 2066
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "mBinder:get_ID() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getCurrent_ID()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1573
    const/4 v0, -0x1

    .line 1575
    .local v0, duration:I
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v1, v1, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v1}, Lcom/android/music/player/service/CorePlayerService;->canStartMediaPlayer()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget v1, v1, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    const v2, 0x10010

    if-ne v1, v2, :cond_1

    .line 1576
    :cond_0
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v1, v1, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 1581
    :goto_0
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBinder:getDuration()["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    return v0

    .line 1578
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIndexOfPlayList()I
    .locals 2

    .prologue
    .line 2061
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "mBinder:getIndexOfPlayList() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getLaunchMode()I
    .locals 2

    .prologue
    .line 2041
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "mBinder:getLaunchMode() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getLaunchMode()I

    move-result v0

    return v0
.end method

.method public getLyric()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1667
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "mBinder:getLyric() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMMediaFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1646
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "mBinder:getMMediaFilePath() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mMediaFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxVolume()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1693
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "mBinder:getMaxVolume() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public getMpListFilter()Lcom/android/music/common/data/MpListFilter;
    .locals 1

    .prologue
    .line 2072
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getMpListFilter()Lcom/android/music/common/data/MpListFilter;

    move-result-object v0

    return-object v0
.end method

.method public getNext(Z)Landroid/net/Uri;
    .locals 2
    .parameter "ignoreRepeatOne"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iput-boolean p1, v0, Lcom/android/music/player/service/CorePlayerService;->bIsUserAction:Z

    .line 1450
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-boolean v1, v1, Lcom/android/music/player/service/CorePlayerService;->bIsUserAction:Z

    invoke-virtual {v0, v1}, Lcom/android/music/player/service/CorePlayerService;->internalGetNext(Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getNextAlbumInfo()Lcom/android/music/player/data/MusicAlbumInfo;
    .locals 5

    .prologue
    .line 1497
    new-instance v0, Lcom/android/music/player/data/MusicAlbumInfo;

    invoke-direct {v0}, Lcom/android/music/player/data/MusicAlbumInfo;-><init>()V

    .line 1499
    .local v0, albumInfo:Lcom/android/music/player/data/MusicAlbumInfo;
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/music/player/data/MusicPlayerController;->getMpListFilter()Lcom/android/music/common/data/MpListFilter;

    move-result-object v1

    .line 1511
    .local v1, listFilter:Lcom/android/music/common/data/MpListFilter;
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/music/player/data/MusicPlayerController;->getNextPosition()I

    move-result v2

    .line 1513
    .local v2, nextPos:I
    if-gez v2, :cond_0

    .line 1514
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v4, "getNextAlbumInfo : mMusicPlayerController.getNextPosition() return -1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    :goto_0
    return-object v0

    .line 1516
    :cond_0
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v3, v3, Lcom/android/music/player/service/CorePlayerService;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v3, v1, v2}, Lcom/android/music/common/data/MusicDB;->getAlbumInfo(Lcom/android/music/common/data/MpListFilter;I)Lcom/android/music/player/data/MusicAlbumInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlayListType()I
    .locals 2

    .prologue
    .line 2056
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "mBinder:getPlayListType() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentMediaListType()I

    move-result v0

    return v0
.end method

.method public getPosition()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1607
    const/4 v0, 0x0

    .line 1609
    .local v0, p:I
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v1, v1, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v1}, Lcom/android/music/player/service/CorePlayerService;->canStartMediaPlayer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1610
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v1, v1, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 1615
    :goto_0
    return v0

    .line 1612
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrev()Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->internalGetPrev()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getPrevAlbumInfo()Lcom/android/music/player/data/MusicAlbumInfo;
    .locals 5

    .prologue
    .line 1475
    new-instance v0, Lcom/android/music/player/data/MusicAlbumInfo;

    invoke-direct {v0}, Lcom/android/music/player/data/MusicAlbumInfo;-><init>()V

    .line 1477
    .local v0, albumInfo:Lcom/android/music/player/data/MusicAlbumInfo;
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/music/player/data/MusicPlayerController;->getMpListFilter()Lcom/android/music/common/data/MpListFilter;

    move-result-object v1

    .line 1486
    .local v1, listFilter:Lcom/android/music/common/data/MpListFilter;
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/music/player/data/MusicPlayerController;->getPrevPosition()I

    move-result v2

    .line 1488
    .local v2, prevPos:I
    if-gez v2, :cond_0

    .line 1489
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v4, "getPrevAlbumInfo : mMusicPlayerController.getPrevPosition() return -1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    :goto_0
    return-object v0

    .line 1491
    :cond_0
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v3, v3, Lcom/android/music/player/service/CorePlayerService;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v3, v1, v2}, Lcom/android/music/common/data/MusicDB;->getAlbumInfo(Lcom/android/music/common/data/MpListFilter;I)Lcom/android/music/player/data/MusicAlbumInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getRealEQdata([I)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2145
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0, p1}, Lcom/android/music/player/service/CorePlayerService;->getSubRealEQdata([I)V

    .line 2146
    return-void
.end method

.method public getRepeat()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getSampleRate()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1881
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v2, "mBinder:getSampleRate() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    const/4 v0, 0x0

    .line 1883
    .local v0, s:I
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v1, v1, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v1}, Lcom/android/music/player/service/CorePlayerService;->canStartMediaPlayer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1884
    const/16 v0, 0xa

    .line 1887
    :goto_0
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBinder:getSampleRate()["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    return v0

    .line 1886
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShuffle()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1848
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "mBinder:getShuffle() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getShuffle()Z

    move-result v0

    return v0
.end method

.method public getTotalMediaCount()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1687
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "mBinder:getTotalMediaCount() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getItemCount()I

    move-result v0

    return v0
.end method

.method public hideNotificationInfo()V
    .locals 2

    .prologue
    .line 2134
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "mBinder:hideNotificationInfo() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->hideNotification()V

    .line 2136
    return-void
.end method

.method public isDuringCall()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1550
    const/4 v0, 0x1

    .line 1552
    .local v0, mIsDuringCall:Z
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1553
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_0

    .line 1554
    const/4 v0, 0x0

    .line 1557
    :cond_0
    sget-object v2, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBinder:isDuringCall()[mIsDuringCall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    return v0
.end method

.method public isPlaying()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStop()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->isInternalStop()Z

    move-result v0

    return v0
.end method

.method public isThereLastPlayedFile()Z
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2076
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "mBinder:isThereLastPlayedFile() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    const/4 v8, 0x0

    .line 2078
    .local v8, c:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 2080
    .local v10, filePath:Ljava/lang/String;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 2081
    .local v2, column:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://media/external/audio/media?limit=1"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "recently_played != 0 AND is_sound = 0"

    const/4 v4, 0x0

    const-string v5, "recently_played DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2083
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2084
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2085
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 2090
    :cond_0
    if-eqz v8, :cond_1

    .line 2091
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2094
    .end local v2           #column:[Ljava/lang/String;
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBinder:isThereLastPlayedFile():filepath="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    if-nez v10, :cond_3

    move v0, v12

    .line 2114
    :goto_1
    return v0

    .line 2087
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 2088
    .local v9, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHandler: getLastPlayed file, SQLiteFullException"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2090
    if-eqz v8, :cond_1

    .line 2091
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2090
    .end local v9           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 2091
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 2099
    :cond_3
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2100
    .local v11, tmpFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2101
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "mBinder:isThereLastPlayedFile():tmpFile.exists()==false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v12

    .line 2102
    goto :goto_1

    .line 2105
    :cond_4
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v0, v10}, Lcom/android/music/common/data/MusicDB;->getFileId(Ljava/lang/String;)J

    move-result-wide v6

    .line 2108
    .local v6, audioId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-gez v0, :cond_5

    .line 2109
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "mBinder:isThereLastPlayedFile():audioId <0 [false]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v12

    .line 2110
    goto :goto_1

    .line 2113
    :cond_5
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBinder:isThereLastPlayedFile():audioId ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v13

    .line 2114
    goto :goto_1
.end method

.method public pause()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1416
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "mBinder:pause() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-boolean v0, v0, Lcom/android/music/player/service/CorePlayerService;->mIsLiveStream:Z

    if-ne v0, v2, :cond_0

    .line 1422
    :goto_0
    return-void

    .line 1420
    :cond_0
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/player/service/CorePlayerService;->access$802(Lcom/android/music/player/service/CorePlayerService;Z)Z

    .line 1421
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0, v2}, Lcom/android/music/player/service/CorePlayerService;->pausePlay(Z)V

    goto :goto_0
.end method

.method public play()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1410
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "mBinder:play() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0, v2, v2}, Lcom/android/music/player/service/CorePlayerService;->startPlay(ZZ)V

    .line 1413
    return-void
.end method

.method public playIt(Landroid/net/Uri;Z)V
    .locals 3
    .parameter "media"
    .parameter "toNext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/music/player/service/CorePlayerService;->internalPlay(Landroid/net/Uri;ZZZ)Z

    .line 1459
    return-void
.end method

.method public playNext(Z)V
    .locals 4
    .parameter "ignoreRepeatOne"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1430
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBinder:playNext(ignoreRepeatOne="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-boolean v0, v0, Lcom/android/music/player/service/CorePlayerService;->mIsLiveStream:Z

    if-ne v0, v3, :cond_0

    .line 1437
    :goto_0
    return-void

    .line 1434
    :cond_0
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iput-boolean p1, v0, Lcom/android/music/player/service/CorePlayerService;->bIsUserAction:Z

    .line 1435
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iput-boolean v3, v0, Lcom/android/music/player/service/CorePlayerService;->bPlayNextMusic:Z

    .line 1436
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-boolean v2, v2, Lcom/android/music/player/service/CorePlayerService;->bIsUserAction:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/player/service/CorePlayerService;->internalPlayNext(ZZZ)Z

    goto :goto_0
.end method

.method public playPrev(Z)V
    .locals 4
    .parameter "ignoreRepeatOne"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1440
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBinder:playPrev(ignoreRepeatOne="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-boolean v0, v0, Lcom/android/music/player/service/CorePlayerService;->mIsLiveStream:Z

    if-ne v0, v3, :cond_0

    .line 1446
    :goto_0
    return-void

    .line 1443
    :cond_0
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iput-boolean p1, v0, Lcom/android/music/player/service/CorePlayerService;->bIsUserAction:Z

    .line 1444
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/music/player/service/CorePlayerService;->bPlayNextMusic:Z

    .line 1445
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0, p1, v3}, Lcom/android/music/player/service/CorePlayerService;->internalPlayPrev(ZZ)V

    goto :goto_0
.end method

.method public prepare(Z)V
    .locals 14
    .parameter "bPlay"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    const-string v0, "com.android.music"

    const-string v0, "activity"

    .line 1924
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBinder:prepare() is called "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    const/4 v1, 0x0

    .line 1926
    .local v1, uri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 1927
    .local v9, filePath:Ljava/lang/String;
    const/4 v10, -0x1

    .line 1929
    .local v10, result:I
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->canStartMediaPlayer()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    invoke-virtual {v0}, Lcom/android/music/common/manager/MusicDrmManager;->isDrmPopupShown()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1933
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v1

    .line 1934
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBinder:prepare() prepare....."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    if-eqz v1, :cond_2

    .line 1937
    const/4 v7, 0x0

    .line 1938
    .local v7, c:Landroid/database/Cursor;
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v13

    .line 1941
    .local v2, column:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1942
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1943
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1944
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 1963
    :cond_0
    if-eqz v7, :cond_1

    .line 1964
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1966
    :cond_1
    :goto_1
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepare() filePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    if-nez v9, :cond_7

    .line 1969
    const/4 v1, 0x0

    .line 1977
    .end local v2           #column:[Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    :cond_2
    :goto_2
    if-nez v1, :cond_3

    .line 1978
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->doFindMediaToPlay()Landroid/net/Uri;

    move-result-object v1

    .line 1980
    :cond_3
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/util/UriUtil;->IsUsedMediaProvider(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1981
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0, v1, v12}, Lcom/android/music/player/service/CorePlayerService;->access$1000(Lcom/android/music/player/service/CorePlayerService;Landroid/net/Uri;Z)I

    move-result v10

    .line 1985
    :goto_3
    if-nez v10, :cond_9

    .line 1986
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v3, "prepare():result == CHECK_DRM_CALL_PREPARE_PLAY"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0, v1, p1}, Lcom/android/music/player/service/CorePlayerService;->preparePlay(Landroid/net/Uri;Z)Z

    .line 1999
    :cond_4
    :goto_4
    return-void

    :cond_5
    move-object v4, v5

    .line 1934
    goto :goto_0

    .line 1946
    .restart local v2       #column:[Ljava/lang/String;
    .restart local v7       #c:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 1947
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepare, SQLiteFullException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 1951
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 1952
    .local v6, am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1963
    if-eqz v7, :cond_1

    .line 1964
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1954
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 1955
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_2
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepare, SQLiteDiskIOException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 1959
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 1960
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1963
    if-eqz v7, :cond_1

    .line 1964
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1963
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 1964
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 1971
    :cond_7
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1972
    .local v11, tmpFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1973
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 1983
    .end local v2           #column:[Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v11           #tmpFile:Ljava/io/File;
    :cond_8
    const/16 v10, -0xa

    goto/16 :goto_3

    .line 1989
    :cond_9
    if-eq v10, v12, :cond_a

    const/16 v0, -0xa

    if-ne v10, v0, :cond_4

    .line 1990
    :cond_a
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v3, "prepare():result == CHECK_DRM_CALL_INTERNAL_NEXT"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0, v13, v12, v12}, Lcom/android/music/player/service/CorePlayerService;->internalPlayNext(ZZZ)Z

    goto/16 :goto_4

    .line 1995
    :cond_b
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->canStartMediaPlayer()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 1996
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v3, "mBinder:prepare() start play....."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0, v12, v13}, Lcom/android/music/player/service/CorePlayerService;->startPlay(ZZ)V

    goto/16 :goto_4
.end method

.method public prepareWithLastPlayedFile(Z)V
    .locals 5
    .parameter "bPlay"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 2002
    sget-object v2, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v3, "mBinder:prepareWithLastPlayedFile() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    const/4 v1, 0x0

    .line 2004
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, -0x1

    .line 2006
    .local v0, result:I
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    invoke-virtual {v2}, Lcom/android/music/common/manager/MusicDrmManager;->isDrmPopupShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2009
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v2}, Lcom/android/music/player/service/CorePlayerService;->doFindMediaToPlay()Landroid/net/Uri;

    move-result-object v1

    .line 2011
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v3, "musicPlayer.service.updateMediaInfo"

    invoke-virtual {v2, v3}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 2013
    if-eqz v1, :cond_3

    .line 2014
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v2, v1, v4}, Lcom/android/music/player/service/CorePlayerService;->access$1000(Lcom/android/music/player/service/CorePlayerService;Landroid/net/Uri;Z)I

    move-result v0

    .line 2016
    if-nez v0, :cond_1

    .line 2018
    sget-object v2, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v3, "prepareWithLastPlayedFile():result == CHECK_DRM_CALL_PREPARE_PLAY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v2, v1, p1}, Lcom/android/music/player/service/CorePlayerService;->preparePlay(Landroid/net/Uri;Z)Z

    .line 2033
    :cond_0
    :goto_0
    return-void

    .line 2023
    :cond_1
    if-eq v0, v4, :cond_2

    const/16 v2, -0xa

    if-ne v0, v2, :cond_0

    .line 2024
    :cond_2
    sget-object v2, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v3, "prepareWithLastPlayedFile():result == CHECK_DRM_CALL_INTERNAL_NEXT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4, v4}, Lcom/android/music/player/service/CorePlayerService;->internalPlayNext(ZZZ)Z

    goto :goto_0

    .line 2030
    :cond_3
    sget-object v2, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v3, "prepareWithLastPlayedFile(), There is not a last played song and any songs..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCurrentVolume(I)V
    .locals 3
    .parameter "volume"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1703
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBinder:setCurrentVolume(volume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1705
    return-void
.end method

.method public setLaunchMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 2036
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBinder:setLaunchMode(mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/music/player/data/MusicPlayerController;->setLaunchMode(I)V

    .line 2038
    return-void
.end method

.method public setPlayIterator(IIILjava/lang/String;ILjava/lang/String;)V
    .locals 7
    .parameter "_id"
    .parameter "listType"
    .parameter "filterId"
    .parameter "strFilter"
    .parameter "filterId2"
    .parameter "strFilter2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 1710
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v2, "mBinder:setPlayIterator() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    const/4 v0, 0x0

    .line 1713
    .local v0, listFilter:Lcom/android/music/common/data/MpListFilter;
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget v1, v1, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    const v2, 0x10008

    if-ne v1, v2, :cond_0

    .line 1714
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v2, "setPlayIterator : It is during preparing...."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    :goto_0
    return-void

    .line 1719
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService$7;->getLaunchMode()I

    move-result v1

    if-nez v1, :cond_2

    .line 1720
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPlayIterator : LAUNCH_NORMAL, _id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",listType= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",filterId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",strFilter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",filterId2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",strFilter2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    if-gt p5, v5, :cond_1

    if-eqz p6, :cond_4

    .line 1726
    :cond_1
    new-instance v0, Lcom/android/music/common/data/MpListFilter;

    .end local v0           #listFilter:Lcom/android/music/common/data/MpListFilter;
    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 1728
    .restart local v0       #listFilter:Lcom/android/music/common/data/MpListFilter;
    iget-object v1, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq p5, v5, :cond_3

    move v3, v4

    :goto_1
    invoke-direct {v2, v0, v3, p5, p6}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v2, v1, v4

    .line 1740
    :cond_2
    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/android/music/player/service/CorePlayerService$7;->setPlayIteratorWithFilter(ILcom/android/music/common/data/MpListFilter;)V

    goto :goto_0

    :cond_3
    move v3, v6

    .line 1728
    goto :goto_1

    .line 1732
    :cond_4
    new-instance v0, Lcom/android/music/common/data/MpListFilter;

    .end local v0           #listFilter:Lcom/android/music/common/data/MpListFilter;
    invoke-direct {v0, p2, v4}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 1734
    .restart local v0       #listFilter:Lcom/android/music/common/data/MpListFilter;
    iget-object v1, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq p3, v5, :cond_5

    move v3, v4

    :goto_3
    invoke-direct {v2, v0, v3, p3, p4}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v2, v1, v6

    goto :goto_2

    :cond_5
    move v3, v6

    goto :goto_3
.end method

.method public setPlayIteratorWithFilter(ILcom/android/music/common/data/MpListFilter;)V
    .locals 5
    .parameter "_id"
    .parameter "filter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1746
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v2, "mBinder:setPlayIteratorWithFilter() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    const/4 v0, 0x1

    .line 1749
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget v1, v1, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    const v2, 0x10008

    if-ne v1, v2, :cond_1

    .line 1750
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v2, "setPlayIterator : It is during preparing...."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    :cond_0
    :goto_0
    return-void

    .line 1756
    :cond_1
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService$7;->getLaunchMode()I

    move-result v1

    if-nez v1, :cond_2

    .line 1757
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPlayIteratorWithFilter : LAUNCH_NORMAL, _id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v1}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/music/player/data/MusicPlayerController;->initIterator(ILcom/android/music/common/data/MpListFilter;)Z

    move-result v0

    .line 1763
    :cond_2
    if-eqz v0, :cond_0

    .line 1764
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v2}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/android/music/player/service/CorePlayerService;->preparePlay(Landroid/net/Uri;Z)Z

    .line 1765
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iput-boolean v4, v1, Lcom/android/music/player/service/CorePlayerService;->bIsUserAction:Z

    .line 1766
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iput-boolean v4, v1, Lcom/android/music/player/service/CorePlayerService;->bPlayNextMusic:Z

    goto :goto_0
.end method

.method public setPlayIteratorWithUri(Ljava/lang/String;)V
    .locals 8
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 1771
    sget-object v2, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v3, "mBinder:setPlayIteratorWithUri() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    const/4 v1, 0x1

    .line 1774
    .local v1, result:Z
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget v2, v2, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    const v3, 0x10008

    if-ne v2, v3, :cond_1

    .line 1775
    sget-object v2, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v3, "setPlayIterator : It is during preparing...."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    :cond_0
    :goto_0
    return-void

    .line 1779
    :cond_1
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService$7;->getLaunchMode()I

    move-result v2

    if-nez v2, :cond_2

    .line 1780
    sget-object v2, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPlayIterator : LAUNCH_NORMAL, uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    if-nez p1, :cond_3

    .line 1782
    const/4 v1, 0x0

    .line 1789
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 1790
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Lcom/android/music/player/service/CorePlayerService;->preparePlay(Landroid/net/Uri;Z)Z

    .line 1791
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iput-boolean v7, v2, Lcom/android/music/player/service/CorePlayerService;->bIsUserAction:Z

    .line 1792
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iput-boolean v7, v2, Lcom/android/music/player/service/CorePlayerService;->bPlayNextMusic:Z

    goto :goto_0

    .line 1784
    :cond_3
    new-instance v0, Lcom/android/music/common/data/MpListFilter;

    invoke-direct {v0, v7, v7}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 1785
    .local v0, listFilter:Lcom/android/music/common/data/MpListFilter;
    iget-object v2, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v3, 0x0

    new-instance v4, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct {v4, v0, v7, v5, v6}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v4, v2, v3

    .line 1786
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v2}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/music/player/data/MusicPlayerController;->initIterator(Landroid/net/Uri;Lcom/android/music/common/data/MpListFilter;)Z

    move-result v1

    goto :goto_1
.end method

.method public setPosition(I)V
    .locals 3
    .parameter "seekTo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1587
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPosition :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-boolean v0, v0, Lcom/android/music/player/service/CorePlayerService;->mIsSeekable:Z

    if-nez v0, :cond_1

    .line 1604
    :cond_0
    :goto_0
    return-void

    .line 1591
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-boolean v0, v0, Lcom/android/music/player/service/CorePlayerService;->mIsLiveStream:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1599
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->canStartMediaPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1600
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method public setPreviewUri(Ljava/lang/String;I)V
    .locals 3
    .parameter "uri"
    .parameter "sortOrder"

    .prologue
    .line 2046
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBinder:setPreviewUri(uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

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

    .line 2047
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/music/player/data/MusicPlayerController;->setPreviewUri(Ljava/lang/String;I)V

    .line 2048
    return-void
.end method

.method public setPreviewUriAndFilePath(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter "uri"
    .parameter "filePath"
    .parameter "sortOrder"

    .prologue
    .line 2051
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "mBinder:setPreviewUriAndFilePath(uri=%s,%s,%d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/music/player/data/MusicPlayerController;->setPreviewUriAndFilePath(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2053
    return-void
.end method

.method public setR2VSMode()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$900(Lcom/android/music/player/service/CorePlayerService;)V

    .line 1859
    return-void
.end method

.method public setR2VSUserEQ(I[I)V
    .locals 3
    .parameter "mode"
    .parameter "eq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1864
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBinder:setR2VSUserEQ(mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->canStartMediaPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1866
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/music/player/service/CorePlayerService;->internalSetUserEQ(I[I)V

    .line 1867
    :cond_0
    return-void
.end method

.method public setRepeat(I)V
    .locals 3
    .parameter "repeat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1825
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBinder:setRepeat(repeat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0, p1}, Lcom/android/music/player/service/CorePlayerService;->setRepeatMode(I)V

    .line 1828
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->savePreferences()V

    .line 1829
    return-void
.end method

.method public setShuffle(Z)V
    .locals 3
    .parameter "shuffle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1840
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBinder:setShuffle(shuffle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/music/player/data/MusicPlayerController;->setShuffle(Z)V

    .line 1844
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->savePreferences()V

    .line 1845
    return-void
.end method

.method public showNotificationInfo()V
    .locals 4

    .prologue
    .line 2129
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "mBinder:showNotificationInfo() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/16 v1, 0x64

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/music/player/service/CorePlayerService;->access$300(Lcom/android/music/player/service/CorePlayerService;IJ)V

    .line 2131
    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1425
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "mBinder:stop() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$000(Lcom/android/music/player/service/CorePlayerService;)V

    .line 1427
    return-void
.end method

.method public stopIfNowPlaying(Ljava/lang/String;)V
    .locals 7
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1896
    sget-object v2, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBinder:stopIfNowPlaying(uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    if-nez p1, :cond_1

    .line 1921
    :cond_0
    :goto_0
    return-void

    .line 1900
    :cond_1
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 1902
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1905
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v2}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v1

    .line 1908
    .local v1, currentUri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 1911
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1912
    .local v0, currentStrUri:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1915
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1917
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v2, v5}, Lcom/android/music/player/service/CorePlayerService;->access$802(Lcom/android/music/player/service/CorePlayerService;Z)Z

    .line 1918
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v2, v6}, Lcom/android/music/player/service/CorePlayerService;->pausePlay(Z)V

    .line 1919
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$7;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v2, v5, v5, v6}, Lcom/android/music/player/service/CorePlayerService;->internalPlayNext(ZZZ)Z

    goto :goto_0
.end method
