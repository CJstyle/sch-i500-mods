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
    .line 4980
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

    .line 4965
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener$2;->this$1:Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4967
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener$2;->this$1:Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v0}, Lcom/android/music/player/activity/MusicPlayer;->access$2000(Lcom/android/music/player/activity/MusicPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4968
    const-string v0, "MusicPlayer"

    const-string v1, "FLING_IMAGE_TO_RIGHT queued."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4969
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener$2;->this$1:Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v0}, Lcom/android/music/player/activity/MusicPlayer;->access$2000(Lcom/android/music/player/activity/MusicPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener$2;->this$1:Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v1}, Lcom/android/music/player/activity/MusicPlayer;->access$2000(Lcom/android/music/player/activity/MusicPlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener$2;->val$uri:Landroid/net/Uri;

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4973
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener$2;->this$1:Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->access$1902(Lcom/android/music/player/activity/MusicPlayer;Z)Z

    .line 4974
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 4978
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 4981
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener$2;->this$1:Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4982
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener$2;->this$1:Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->access$1902(Lcom/android/music/player/activity/MusicPlayer;Z)Z

    .line 4983
    return-void
.end method
