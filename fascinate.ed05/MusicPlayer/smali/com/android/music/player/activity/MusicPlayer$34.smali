.class Lcom/android/music/player/activity/MusicPlayer$34;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/activity/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field newposition:D

.field final synthetic this$0:Lcom/android/music/player/activity/MusicPlayer;


# direct methods
.method constructor <init>(Lcom/android/music/player/activity/MusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 5630
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$34;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 5600
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$34;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSeekListener: onProgressChanged(progress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",fromUser="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mMediaDuration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$34;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5603
    if-eqz p3, :cond_0

    .line 5609
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$34;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5610
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$34;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v1, v1, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4059

    div-double/2addr v1, v3

    int-to-double v3, p2

    mul-double/2addr v1, v3

    iput-wide v1, p0, Lcom/android/music/player/activity/MusicPlayer$34;->newposition:D

    .line 5613
    :try_start_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$34;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    iget-wide v2, p0, Lcom/android/music/player/activity/MusicPlayer$34;->newposition:D

    double-to-int v2, v2

    invoke-interface {v1, v2}, Lcom/android/music/player/service/ICorePlayerService;->setPosition(I)V

    .line 5614
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$34;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-wide v2, p0, Lcom/android/music/player/activity/MusicPlayer$34;->newposition:D

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/music/player/activity/MusicPlayer;->refreshPlayedTime(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5622
    :cond_0
    :goto_0
    return-void

    .line 5616
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 5618
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 5626
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$34;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5628
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 5632
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$34;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5634
    return-void
.end method
