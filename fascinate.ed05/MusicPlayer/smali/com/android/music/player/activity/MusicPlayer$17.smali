.class Lcom/android/music/player/activity/MusicPlayer$17;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener$TouchHandler;


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
    .line 1756
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$17;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown()V
    .locals 2

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$17;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "MusicPlayer::mFFController::onDown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$17;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/activity/MusicPlayer;->onFFDown()V

    .line 1749
    return-void
.end method

.method public onOutOfView()V
    .locals 4

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$17;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "MusicPlayer::mFFController::onOutOfView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$17;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/16 v1, 0xb

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 1759
    return-void
.end method

.method public onUp(J)V
    .locals 2
    .parameter "interval"

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$17;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "MusicPlayer::mFFController::onUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$17;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/android/music/player/activity/MusicPlayer;->onFFUp(J)V

    .line 1754
    return-void
.end method
