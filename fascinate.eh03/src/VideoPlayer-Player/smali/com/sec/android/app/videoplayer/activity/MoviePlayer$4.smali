.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createSettingPopup()V
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
    .line 2244
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

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
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2247
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 2271
    :goto_0
    return v0

    .line 2251
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2253
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSettingPopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2400(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2254
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSettingPopup:Landroid/app/AlertDialog;
    invoke-static {v0, v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2402(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2255
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->OnVideoLockStateChanged(II)V

    .line 2256
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->resumeByDialog()V
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2200(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    :cond_0
    move v0, v1

    .line 2258
    goto :goto_0

    .line 2262
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 2264
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSettingPopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2400(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2265
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSettingPopup:Landroid/app/AlertDialog;
    invoke-static {v0, v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2402(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2266
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->resumeByDialog()V
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2200(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    :cond_1
    move v0, v1

    .line 2268
    goto :goto_0

    .line 2247
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method
