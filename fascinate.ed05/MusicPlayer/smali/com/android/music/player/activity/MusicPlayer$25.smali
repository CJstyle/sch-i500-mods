.class Lcom/android/music/player/activity/MusicPlayer$25;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;


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
    .line 4043
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$25;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 4029
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$25;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVolumeSeekBarChangeListener:onProgressChanged( progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fromTouch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4033
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$25;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v0, p2}, Lcom/android/music/player/activity/MusicPlayer;->access$1100(Lcom/android/music/player/activity/MusicPlayer;I)V

    .line 4035
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$25;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/activity/MusicPlayer;->showVolumePanel()V

    .line 4036
    return-void
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 4039
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$25;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onStartTrackingTouch() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4040
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$25;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/music/player/activity/MusicPlayer;->access$1200(Lcom/android/music/player/activity/MusicPlayer;ILcom/sec/android/touchwiz/widget/TwSeekBar;)V

    .line 4041
    return-void
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 4044
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$25;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onStopTrackingTouch() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4045
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$25;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 4046
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$25;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 4047
    return-void
.end method
