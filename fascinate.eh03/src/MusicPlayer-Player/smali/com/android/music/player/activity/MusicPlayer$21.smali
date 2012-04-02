.class Lcom/android/music/player/activity/MusicPlayer$21;
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
    .line 3021
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$21;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 3029
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$21;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v0, p2}, Lcom/android/music/player/activity/MusicPlayer;->access$800(Lcom/android/music/player/activity/MusicPlayer;I)V

    .line 3031
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$21;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/activity/MusicPlayer;->showVolumePanel()V

    .line 3032
    return-void
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 3036
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$21;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/music/player/activity/MusicPlayer;->access$900(Lcom/android/music/player/activity/MusicPlayer;ILcom/sec/android/touchwiz/widget/TwSeekBar;)V

    .line 3037
    return-void
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 3041
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$21;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 3042
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$21;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 3043
    return-void
.end method
