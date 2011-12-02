.class Lcom/android/music/player/activity/MusicPlayer$24;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 3953
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$24;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v6, 0x12c

    const-wide/16 v4, 0x0

    .line 3954
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$24;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mProgressBarKeyListener(keyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3956
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$24;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 3958
    .local v0, progress:I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 3960
    packed-switch p2, :pswitch_data_0

    .line 3984
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 3962
    :pswitch_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$24;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v6, v7}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    goto :goto_0

    .line 3966
    :pswitch_1
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$24;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v6, v7}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    goto :goto_0

    .line 3971
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3972
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 3974
    :pswitch_2
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$24;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    goto :goto_0

    .line 3978
    :pswitch_3
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$24;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    goto :goto_0

    .line 3960
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3972
    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
