.class public Lcom/android/music/player/activity/MusicPlayer$OnGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/activity/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/player/activity/MusicPlayer;


# direct methods
.method public constructor <init>(Lcom/android/music/player/activity/MusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 4830
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$OnGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 4834
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$OnGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "OnGestureListener:onDown() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4835
    if-nez p1, :cond_0

    .line 4836
    const-string v0, "MusicPlayer"

    const-string v1, "Player, Sweep, MotionEvent : NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4839
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
