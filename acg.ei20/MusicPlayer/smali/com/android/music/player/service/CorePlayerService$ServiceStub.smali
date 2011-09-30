.class Lcom/android/music/player/service/CorePlayerService$ServiceStub;
.super Lcom/android/music/player/service/ICorePlayerService$Stub;
.source "CorePlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/service/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceStub"
.end annotation


# instance fields
.field mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/music/player/service/CorePlayerService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/music/player/service/CorePlayerService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 3423
    invoke-direct {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;-><init>()V

    .line 3424
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    .line 3425
    return-void
.end method


# virtual methods
.method public InitIndex()V
    .locals 0

    .prologue
    .line 3714
    return-void
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 3518
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3480
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3486
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioId()I
    .locals 1

    .prologue
    .line 3512
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {p0}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getCurAudioId()I

    move-result v0

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 3548
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getCurrentFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3568
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {p0}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMedia()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3557
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {p0}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    .line 3559
    .local v0, musicPlayerController:Lcom/android/music/player/data/MusicPlayerController;
    if-eqz v0, :cond_1

    .line 3560
    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v1

    .line 3561
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3563
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    return-object v2

    .restart local v1       #uri:Landroid/net/Uri;
    :cond_0
    move-object v2, v3

    .line 3561
    goto :goto_0

    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    move-object v2, v3

    .line 3563
    goto :goto_0
.end method

.method public getCurrentMediaListType()I
    .locals 2

    .prologue
    .line 3576
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3578
    const-string v0, "CorePlayerService"

    const-string v1, "getCurrentMediaListType : mMusicPlayerController is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3579
    const/4 v0, -0x1

    .line 3581
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {p0}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentMediaListType()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentVolume()I
    .locals 1

    .prologue
    .line 3750
    const/4 v0, 0x1

    return v0
.end method

.method public getCurrent_ID()I
    .locals 1

    .prologue
    .line 3493
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {p0}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getCurrent_ID()I

    move-result v0

    return v0
.end method

.method public getIndexOfPlayList()I
    .locals 1

    .prologue
    .line 3572
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {p0}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getItemCountFromDB()I
    .locals 1

    .prologue
    .line 3602
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {p0}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getItemCountFromDB()I

    move-result v0

    return v0
.end method

.method public getLaunchMode()I
    .locals 1

    .prologue
    .line 3757
    const/4 v0, 0x1

    return v0
.end method

.method public getMediaMountedCount()I
    .locals 1

    .prologue
    .line 3544
    const/4 v0, 0x0

    return v0
.end method

.method public getMpListFilter()Lcom/android/music/common/data/MpListFilter;
    .locals 1

    .prologue
    .line 3585
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {p0}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getMpListFilter()Lcom/android/music/common/data/MpListFilter;

    move-result-object v0

    return-object v0
.end method

.method public getNext(Z)Landroid/net/Uri;
    .locals 1
    .parameter "ignoreRepeatOne"

    .prologue
    .line 3721
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {p0}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/music/player/data/MusicPlayerController;->getNext(Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3508
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayListType()I
    .locals 1

    .prologue
    .line 3689
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {p0}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentMediaListType()I

    move-result v0

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 3746
    const/4 v0, 0x1

    return v0
.end method

.method public getPrev()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 3717
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {p0}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getPrev()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 3452
    const/4 v0, 0x0

    return v0
.end method

.method public getRealEQdata([I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 3681
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {p0}, Lcom/android/music/player/service/CorePlayerService;->access$000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->getSubRealEQdata([I)V

    .line 3682
    return-void
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 3541
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getShuffle()Z
    .locals 1

    .prologue
    .line 3739
    const/4 v0, 0x1

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 3527
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getShuffleMode()I

    move-result v0

    return v0
.end method

.method public getTotalMediaCount()I
    .locals 1

    .prologue
    .line 3598
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {p0}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3477
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideNotificationInfo()V
    .locals 1

    .prologue
    .line 3705
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->hideNotification()V

    .line 3706
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3697
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {p0}, Lcom/android/music/player/service/CorePlayerService;->access$000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 3459
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isStop()Z
    .locals 1

    .prologue
    .line 3693
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {p0}, Lcom/android/music/player/service/CorePlayerService;->access$000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->isStop()Z

    move-result v0

    return v0
.end method

.method public isThereLastPlayedFile()Z
    .locals 1

    .prologue
    .line 3448
    const/4 v0, 0x1

    return v0
.end method

.method public moveQueueItem(II)V
    .locals 0
    .parameter "from"
    .parameter "to"

    .prologue
    .line 3506
    return-void
.end method

.method public next()V
    .locals 1

    .prologue
    .line 3474
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->next(Z)Z

    .line 3475
    return-void
.end method

.method public offRealEQdata()V
    .locals 1

    .prologue
    .line 3685
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {p0}, Lcom/android/music/player/service/CorePlayerService;->access$000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->offSubRealEQdata()V

    .line 3686
    return-void
.end method

.method public openCurrent(Z)V
    .locals 1
    .parameter "bPlay"

    .prologue
    .line 3436
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3437
    if-eqz p1, :cond_0

    .line 3438
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->play()V

    .line 3444
    :cond_0
    :goto_0
    return-void

    .line 3440
    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$3200(Lcom/android/music/player/service/CorePlayerService;)Z

    .line 3441
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3442
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->play()V

    goto :goto_0
.end method

.method public openFile(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 3429
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {p0, p1}, Lcom/android/music/player/service/CorePlayerService;->open(Ljava/lang/String;)Z

    .line 3430
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 3465
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->pause()V

    .line 3466
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 3468
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->play()V

    .line 3469
    return-void
.end method

.method public playIt(Landroid/net/Uri;Z)V
    .locals 1
    .parameter "media"
    .parameter "toNext"

    .prologue
    .line 3725
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/music/player/service/CorePlayerService;->playIt(Landroid/net/Uri;Z)V

    .line 3726
    return-void
.end method

.method public playNext(Z)V
    .locals 0
    .parameter "ignoreRepeatOne"

    .prologue
    .line 3733
    return-void
.end method

.method public playPrev(Z)V
    .locals 0
    .parameter "ignoreRepeatOne"

    .prologue
    .line 3736
    return-void
.end method

.method public playSeek(J)V
    .locals 1
    .parameter "seekTime"

    .prologue
    .line 3553
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/music/player/service/CorePlayerService;->playAfterSeek(J)V

    .line 3554
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 3515
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public prepare(Z)V
    .locals 0
    .parameter "bPlay"

    .prologue
    .line 3743
    return-void
.end method

.method public prepareWithLastPlayedFile(Z)V
    .locals 2
    .parameter "bPlay"

    .prologue
    .line 3677
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/music/player/service/CorePlayerService;->access$3300(Lcom/android/music/player/service/CorePlayerService;ZJ)V

    .line 3678
    return-void
.end method

.method public prev()V
    .locals 1

    .prologue
    .line 3471
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->prev()V

    .line 3472
    return-void
.end method

.method public removeTrack(J)I
    .locals 1
    .parameter "id"

    .prologue
    .line 3534
    const/4 v0, 0x0

    return v0
.end method

.method public removeTracks(II)I
    .locals 1
    .parameter "first"
    .parameter "last"

    .prologue
    .line 3530
    const/4 v0, 0x0

    return v0
.end method

.method public seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 3521
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/music/player/service/CorePlayerService;->seek(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setLaunchMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 3754
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
    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    const-string v6, "CorePlayerService"

    .line 3607
    const-string v1, "CorePlayerService"

    const-string v1, "mBinder:setPlayIterator() is called"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3608
    const/4 v0, 0x0

    .line 3610
    .local v0, listFilter:Lcom/android/music/common/data/MpListFilter;
    const-string v1, "CorePlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayIterator : LAUNCH_NORMAL, _id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",listType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",filterId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",strFilter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",filterId2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",strFilter2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3615
    if-gt p5, v3, :cond_0

    if-eqz p6, :cond_2

    .line 3616
    :cond_0
    new-instance v0, Lcom/android/music/common/data/MpListFilter;

    .end local v0           #listFilter:Lcom/android/music/common/data/MpListFilter;
    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 3618
    .restart local v0       #listFilter:Lcom/android/music/common/data/MpListFilter;
    iget-object v1, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq p5, v3, :cond_1

    move v3, v4

    :goto_0
    invoke-direct {v2, v0, v3, p5, p6}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v2, v1, v4

    .line 3627
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->setPlayIteratorWithFilter(ILcom/android/music/common/data/MpListFilter;)V

    .line 3628
    return-void

    :cond_1
    move v3, v5

    .line 3618
    goto :goto_0

    .line 3621
    :cond_2
    new-instance v0, Lcom/android/music/common/data/MpListFilter;

    .end local v0           #listFilter:Lcom/android/music/common/data/MpListFilter;
    invoke-direct {v0, p2, v4}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 3623
    .restart local v0       #listFilter:Lcom/android/music/common/data/MpListFilter;
    iget-object v1, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq p3, v3, :cond_3

    move v3, v4

    :goto_2
    invoke-direct {v2, v0, v3, p3, p4}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v2, v1, v5

    goto :goto_1

    :cond_3
    move v3, v5

    goto :goto_2
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

    .line 3632
    const-string v2, "CorePlayerService"

    const-string v3, "setPlayIteratorWithFilter() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    const/4 v1, 0x1

    .line 3635
    .local v1, result:Z
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v2, v4}, Lcom/android/music/player/service/CorePlayerService;->access$2902(Lcom/android/music/player/service/CorePlayerService;Z)Z

    .line 3636
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v2, v4}, Lcom/android/music/player/service/CorePlayerService;->access$3102(Lcom/android/music/player/service/CorePlayerService;Z)Z

    .line 3637
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v2}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/music/player/data/MusicPlayerController;->initIterator(ILcom/android/music/common/data/MpListFilter;)Z

    move-result v1

    .line 3638
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/music/player/service/CorePlayerService;

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/music/player/data/MusicPlayerController;->getItemCountFromDB()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/music/player/service/CorePlayerService;->access$2502(Lcom/android/music/player/service/CorePlayerService;I)I

    .line 3640
    if-eqz v1, :cond_0

    .line 3641
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v2}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v0

    .line 3642
    .local v0, playUri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 3643
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/music/player/service/CorePlayerService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/music/player/service/CorePlayerService;->access$400(Lcom/android/music/player/service/CorePlayerService;Z)V

    .line 3644
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/music/player/service/CorePlayerService;->open(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3645
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->play()V

    .line 3648
    .end local v0           #playUri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public setPlayIteratorWithUri(Ljava/lang/String;)V
    .locals 9
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3651
    const/4 v2, 0x1

    .line 3653
    .local v2, result:Z
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3, v7}, Lcom/android/music/player/service/CorePlayerService;->access$2902(Lcom/android/music/player/service/CorePlayerService;Z)Z

    .line 3654
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3, v7}, Lcom/android/music/player/service/CorePlayerService;->access$3102(Lcom/android/music/player/service/CorePlayerService;Z)Z

    .line 3656
    const-string v3, "CorePlayerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPlayIterator : uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3657
    if-nez p1, :cond_1

    .line 3658
    const/4 v2, 0x0

    .line 3665
    :goto_0
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/music/player/service/CorePlayerService;

    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v4}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/music/player/data/MusicPlayerController;->getItemCountFromDB()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/music/player/service/CorePlayerService;->access$2502(Lcom/android/music/player/service/CorePlayerService;I)I

    .line 3666
    if-eqz v2, :cond_0

    .line 3667
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v1

    .line 3668
    .local v1, playUri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 3669
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3, v8}, Lcom/android/music/player/service/CorePlayerService;->access$400(Lcom/android/music/player/service/CorePlayerService;Z)V

    .line 3670
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/music/player/service/CorePlayerService;->open(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3671
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->play()V

    .line 3674
    .end local v1           #playUri:Landroid/net/Uri;
    :cond_0
    return-void

    .line 3660
    .restart local p0
    :cond_1
    new-instance v0, Lcom/android/music/common/data/MpListFilter;

    invoke-direct {v0, v7, v7}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 3661
    .local v0, listFilter:Lcom/android/music/common/data/MpListFilter;
    iget-object v3, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v4, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct {v4, v0, v7, v5, v6}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v4, v3, v8

    .line 3662
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/android/music/player/data/MusicPlayerController;->initIterator(Landroid/net/Uri;Lcom/android/music/common/data/MpListFilter;)Z

    move-result v2

    goto :goto_0
.end method

.method public setQueuePosition(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 3457
    return-void
.end method

.method public setR2VSMode()V
    .locals 1

    .prologue
    .line 3589
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {p0}, Lcom/android/music/player/service/CorePlayerService;->access$2300(Lcom/android/music/player/service/CorePlayerService;)V

    .line 3590
    return-void
.end method

.method public setR2VSUserEQ(I[I)V
    .locals 1
    .parameter "mode"
    .parameter "eq"

    .prologue
    .line 3593
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3594
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {p0}, Lcom/android/music/player/service/CorePlayerService;->access$000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->internalSetUserEQ(I[I)V

    .line 3595
    :cond_0
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "repeatmode"

    .prologue
    .line 3538
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {p0, p1}, Lcom/android/music/player/service/CorePlayerService;->setRepeatMode(I)V

    .line 3539
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1
    .parameter "shufflemode"

    .prologue
    .line 3524
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->setShuffleMode(Ljava/lang/Boolean;)V

    .line 3525
    return-void

    .line 3524
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setUlpBypass(Z)V
    .locals 1
    .parameter "bUlpByPass"

    .prologue
    .line 3729
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {p0, p1}, Lcom/android/music/player/service/CorePlayerService;->access$3400(Lcom/android/music/player/service/CorePlayerService;Z)V

    .line 3730
    return-void
.end method

.method public showNotificationInfo()V
    .locals 1

    .prologue
    .line 3701
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->showNotification()V

    .line 3702
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 3462
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->stop()V

    .line 3463
    return-void
.end method
