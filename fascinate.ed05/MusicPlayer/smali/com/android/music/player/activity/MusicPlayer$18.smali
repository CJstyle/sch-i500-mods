.class Lcom/android/music/player/activity/MusicPlayer$18;
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
    .line 1774
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$18;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown()V
    .locals 2

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$18;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "mRewController::onDown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$18;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/activity/MusicPlayer;->onRewDown()V

    .line 1767
    return-void
.end method

.method public onOutOfView()V
    .locals 4

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$18;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "mRewController::onOutOfView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$18;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/16 v1, 0xd

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 1777
    return-void
.end method

.method public onUp(J)V
    .locals 2
    .parameter "interval"

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$18;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "mRewController::onUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$18;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/android/music/player/activity/MusicPlayer;->onRewUp(J)V

    .line 1772
    return-void
.end method
