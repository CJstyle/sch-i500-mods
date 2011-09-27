.class public Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;
.super Landroid/os/AsyncTask;
.source "CorePlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/service/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnpluggedHeadsetTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/player/service/CorePlayerService;

.field private unpluggedItem:I


# direct methods
.method public constructor <init>(Lcom/android/music/player/service/CorePlayerService;I)V
    .locals 1
    .parameter
    .parameter "what"

    .prologue
    .line 2608
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2606
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->unpluggedItem:I

    .line 2609
    iput p2, p0, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->unpluggedItem:I

    .line 2610
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Object;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2615
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v1}, Lcom/android/music/player/service/CorePlayerService;->access$1300(Lcom/android/music/player/service/CorePlayerService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    .line 2617
    .local v0, bBtOn:Z
    const-string v1, "CorePlayerService"

    const-string v2, "UnpluggedHeadsetTask...."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    if-nez v0, :cond_3

    .line 2621
    sget-object v1, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v1, v1, v4

    const/high16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 2622
    sget-object v1, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/high16 v2, 0x40

    aput v2, v1, v4

    .line 2625
    :cond_0
    sget-object v1, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v1, v1, v3

    const v2, 0x8000

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v1, v1, v3

    const/high16 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 2627
    :cond_1
    sget-object v1, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/16 v2, 0x1000

    aput v2, v1, v3

    .line 2628
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/music/common/util/MusicValueSaveController;->setEffect(I)V

    .line 2629
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v1}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/music/common/util/MusicValueSaveController;->saveSettingValue(Landroid/content/Context;)V

    .line 2631
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v1, v1, Lcom/android/music/player/service/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v2}, Lcom/android/music/player/service/CorePlayerService;->access$2200(Lcom/android/music/player/service/CorePlayerService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2632
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v1, v1, Lcom/android/music/player/service/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v2}, Lcom/android/music/player/service/CorePlayerService;->access$2200(Lcom/android/music/player/service/CorePlayerService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2635
    :cond_2
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v1}, Lcom/android/music/player/service/CorePlayerService;->access$2300(Lcom/android/music/player/service/CorePlayerService;)V

    .line 2638
    :cond_3
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v2, "musicPlayer.service.HEADSET_PLUG_CHANGE"

    invoke-virtual {v1, v2}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 2640
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2604
    check-cast p1, [Landroid/content/Context;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->doInBackground([Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
