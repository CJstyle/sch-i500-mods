.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$8;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createOutdoorvisibilityPopup()V
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
    .line 2449
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$8;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2452
    packed-switch p2, :pswitch_data_0

    .line 2465
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$8;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mOutdoorPopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$3400(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$8;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mOutdoorPopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$3400(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2466
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$8;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mOutdoorPopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$3400(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2467
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$8;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mOutdoorPopup:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$3402(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2471
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$8;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createSettingPopup()V
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2300(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    .line 2472
    return-void

    .line 2455
    :pswitch_0
    invoke-static {v1}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    .line 2456
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setOutdoorvisibility(Z)V

    goto :goto_0

    .line 2459
    :pswitch_1
    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    .line 2460
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setOutdoorvisibility(Z)V

    goto :goto_0

    .line 2452
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
