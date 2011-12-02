.class Lcom/android/music/player/service/CorePlayerService$2;
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
    .line 580
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$2;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v7, "state"

    .line 581
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, action:Ljava/lang/String;
    sget-object v2, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHeadsetReceiver:onReceive(action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is called"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 584
    const-string v2, "state"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_3

    move v2, v5

    :goto_0
    sput-boolean v2, Lcom/android/music/common/util/MusicPlayerUtil;->mIsHeadsetPlugged:Z

    .line 587
    sget-boolean v2, Lcom/android/music/common/util/MusicPlayerUtil;->mIsHeadsetPlugged:Z

    if-nez v2, :cond_1

    .line 588
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$2;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService;->asyncHeadsetTask:Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$2;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService;->asyncHeadsetTask:Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

    invoke-virtual {v2}, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_0

    .line 589
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$2;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService;->asyncHeadsetTask:Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

    invoke-virtual {v2, v5}, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->cancel(Z)Z

    .line 591
    :cond_0
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$2;->this$0:Lcom/android/music/player/service/CorePlayerService;

    new-instance v3, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$2;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {v3, v4, v6}, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;-><init>(Lcom/android/music/player/service/CorePlayerService;I)V

    iput-object v3, v2, Lcom/android/music/player/service/CorePlayerService;->asyncHeadsetTask:Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

    .line 592
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$2;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService;->asyncHeadsetTask:Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

    new-array v3, v5, [Landroid/content/Context;

    aput-object p1, v3, v6

    invoke-virtual {v2, v3}, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 594
    :cond_1
    const-string v2, "CorePlayerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_HEADSET_PLUG "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/music/common/util/MusicPlayerUtil;->mIsHeadsetPlugged:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v2, v6

    .line 584
    goto :goto_0

    .line 596
    :cond_4
    const-string v2, "android.intent.action.CRADLE_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 598
    const-string v2, "state"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 600
    .local v1, isDockPlugged:I
    if-nez v1, :cond_2

    .line 601
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$2;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService;->asyncHeadsetTask:Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$2;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService;->asyncHeadsetTask:Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

    invoke-virtual {v2}, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_5

    .line 602
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$2;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService;->asyncHeadsetTask:Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

    invoke-virtual {v2, v5}, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->cancel(Z)Z

    .line 604
    :cond_5
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$2;->this$0:Lcom/android/music/player/service/CorePlayerService;

    new-instance v3, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$2;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {v3, v4, v5}, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;-><init>(Lcom/android/music/player/service/CorePlayerService;I)V

    iput-object v3, v2, Lcom/android/music/player/service/CorePlayerService;->asyncHeadsetTask:Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

    .line 605
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$2;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService;->asyncHeadsetTask:Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

    new-array v3, v5, [Landroid/content/Context;

    aput-object p1, v3, v6

    invoke-virtual {v2, v3}, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method
