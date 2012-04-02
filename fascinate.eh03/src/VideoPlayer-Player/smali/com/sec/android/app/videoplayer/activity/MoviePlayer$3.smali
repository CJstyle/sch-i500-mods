.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 2198
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2201
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 2228
    :goto_0
    return v0

    .line 2205
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2207
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->OnVideoLockStateChanged(II)V

    .line 2208
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setVideoPlayerBrightness()V
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    .line 2209
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2210
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->resumeByDialog()V
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2200(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    :cond_0
    move v0, v1

    .line 2213
    goto :goto_0

    .line 2218
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 2220
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setVideoPlayerBrightness()V
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    .line 2221
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2222
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createSettingPopup()V
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2300(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    :cond_1
    move v0, v1

    .line 2224
    goto :goto_0

    .line 2201
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method
