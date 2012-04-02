.class Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener$2;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3790
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener$2;->this$1:Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;

    iput-object p2, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener$2;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    .line 3792
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener$2;->this$1:Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3793
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener$2;->this$1:Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v0}, Lcom/android/music/player/activity/MusicPlayer;->access$1700(Lcom/android/music/player/activity/MusicPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3794
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener$2;->this$1:Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v0}, Lcom/android/music/player/activity/MusicPlayer;->access$1700(Lcom/android/music/player/activity/MusicPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3796
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener$2;->this$1:Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v0}, Lcom/android/music/player/activity/MusicPlayer;->access$1700(Lcom/android/music/player/activity/MusicPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener$2;->this$1:Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v1}, Lcom/android/music/player/activity/MusicPlayer;->access$1700(Lcom/android/music/player/activity/MusicPlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener$2;->val$uri:Landroid/net/Uri;

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3801
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 3805
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 3808
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener$2;->this$1:Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3810
    return-void
.end method
