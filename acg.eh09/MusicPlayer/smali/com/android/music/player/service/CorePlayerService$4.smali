.class Lcom/android/music/player/service/CorePlayerService$4;
.super Landroid/content/BroadcastReceiver;
.source "CorePlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/service/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/player/service/CorePlayerService;


# direct methods
.method constructor <init>(Lcom/android/music/player/service/CorePlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 484
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 487
    const-string v1, "state"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_2

    move v1, v5

    :goto_0
    sput-boolean v1, Lcom/android/music/common/util/MusicPlayerUtil;->mIsHeadsetPlugged:Z

    .line 490
    sget-boolean v1, Lcom/android/music/common/util/MusicPlayerUtil;->mIsHeadsetPlugged:Z

    if-nez v1, :cond_4

    .line 491
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v1}, Lcom/android/music/player/service/CorePlayerService;->access$1200(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v1}, Lcom/android/music/player/service/CorePlayerService;->access$1200(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_0

    .line 492
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v1}, Lcom/android/music/player/service/CorePlayerService;->access$1200(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->cancel(Z)Z

    .line 494
    :cond_0
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    new-instance v2, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {v2, v3, v4}, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;-><init>(Lcom/android/music/player/service/CorePlayerService;I)V

    invoke-static {v1, v2}, Lcom/android/music/player/service/CorePlayerService;->access$1202(Lcom/android/music/player/service/CorePlayerService;Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;)Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

    .line 495
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v1}, Lcom/android/music/player/service/CorePlayerService;->access$1200(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

    move-result-object v1

    new-array v2, v5, [Landroid/content/Context;

    aput-object p1, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 497
    invoke-static {}, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->resetHeadsetReceiver()V

    .line 498
    const-string v1, "service.brcm.bt.avkey"

    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v2}, Lcom/android/music/player/service/CorePlayerService;->access$1300(Lcom/android/music/player/service/CorePlayerService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "play"

    :goto_1
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :goto_2
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    sget-boolean v2, Lcom/android/music/common/util/MusicPlayerUtil;->mIsHeadsetPlugged:Z

    invoke-static {v1, v2}, Lcom/android/music/player/service/CorePlayerService;->access$1400(Lcom/android/music/player/service/CorePlayerService;Z)V

    .line 511
    :cond_1
    return-void

    :cond_2
    move v1, v4

    .line 487
    goto :goto_0

    .line 498
    :cond_3
    const-string v2, "pause"

    goto :goto_1

    .line 501
    :cond_4
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$4;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v2, "musicPlayer.service.HEADSET_PLUG_CHANGE"

    invoke-virtual {v1, v2}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    goto :goto_2
.end method
