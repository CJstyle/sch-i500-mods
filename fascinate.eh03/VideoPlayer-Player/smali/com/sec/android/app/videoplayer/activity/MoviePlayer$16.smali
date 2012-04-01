.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->popupLowBattery(Landroid/app/Activity;)V
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
    .line 2901
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v3, "MoviePlayer"

    .line 2905
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 2933
    :goto_0
    return v0

    .line 2907
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2908
    const-string v0, "MoviePlayer"

    const-string v0, "VideoDetails - KEYCODE_POWER_ACTION_UP"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLowBtteryPopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$3800(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2910
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    .line 2911
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPopupLowBattShow:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$3702(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z

    :cond_0
    move v0, v1

    .line 2913
    goto :goto_0

    .line 2916
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 2917
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLowBtteryPopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$3800(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2918
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    .line 2919
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPopupLowBattShow:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$3702(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z

    :cond_1
    move v0, v1

    .line 2921
    goto :goto_0

    .line 2924
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 2925
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLowBtteryPopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$3800(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2926
    const-string v0, "MoviePlayer"

    const-string v0, "in popup lowbattery ok"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    .line 2928
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPopupLowBattShow:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$3702(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z

    :cond_2
    move v0, v1

    .line 2930
    goto :goto_0

    .line 2905
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x1a -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method
