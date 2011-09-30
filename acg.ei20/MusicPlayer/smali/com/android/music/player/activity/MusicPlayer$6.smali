.class Lcom/android/music/player/activity/MusicPlayer$6;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener$TouchHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/player/activity/MusicPlayer;->initializeControls()V
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
    .line 1126
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$6;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doHandle()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1129
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$6;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-boolean v0, v0, Lcom/android/music/player/activity/MusicPlayer;->isShownAdditionalBar:Z

    if-eqz v0, :cond_1

    .line 1130
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$6;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/activity/MusicPlayer;->hideAdditionalPanel()V

    .line 1134
    :goto_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$6;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$6;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/activity/MusicPlayer;->hideVolumePanel()V

    .line 1137
    :cond_0
    return-void

    .line 1132
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$6;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v0, v1, v1}, Lcom/android/music/player/activity/MusicPlayer;->showAdditionalPanel(ZZ)V

    goto :goto_0
.end method
