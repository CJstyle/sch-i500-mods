.class Lcom/android/music/player/activity/MusicPlayer$14;
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
    .line 1679
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$14;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doHandle()V
    .locals 2

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$14;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v0}, Lcom/android/music/player/activity/MusicPlayer;->access$500(Lcom/android/music/player/activity/MusicPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1681
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$14;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/activity/MusicPlayer;->hideVolumePanel()V

    .line 1686
    :goto_0
    return-void

    .line 1683
    :cond_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$14;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->access$600(Lcom/android/music/player/activity/MusicPlayer;I)V

    .line 1684
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$14;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/activity/MusicPlayer;->showVolumePanel()V

    goto :goto_0
.end method
