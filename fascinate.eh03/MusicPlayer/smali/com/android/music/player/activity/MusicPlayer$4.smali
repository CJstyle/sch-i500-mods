.class Lcom/android/music/player/activity/MusicPlayer$4;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 1047
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$4;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1051
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1052
    .local v0, action:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    sub-long v1, v3, v5

    .line 1054
    .local v1, pressdTime:J
    if-nez v0, :cond_1

    .line 1055
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$4;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v3, v8}, Lcom/android/music/player/activity/MusicPlayer;->access$102(Lcom/android/music/player/activity/MusicPlayer;Z)Z

    .line 1056
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$4;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v3}, Lcom/android/music/player/activity/MusicPlayer;->onFFDown()V

    .line 1062
    :cond_0
    :goto_0
    return v7

    .line 1057
    :cond_1
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$4;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v3}, Lcom/android/music/player/activity/MusicPlayer;->access$100(Lcom/android/music/player/activity/MusicPlayer;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eq v0, v8, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1058
    :cond_2
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$4;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v3, v7}, Lcom/android/music/player/activity/MusicPlayer;->access$102(Lcom/android/music/player/activity/MusicPlayer;Z)Z

    .line 1059
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$4;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v3, v1, v2}, Lcom/android/music/player/activity/MusicPlayer;->onFFUp(J)V

    goto :goto_0
.end method
