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
    .line 3853
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3851
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->unpluggedItem:I

    .line 3854
    iput p2, p0, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->unpluggedItem:I

    .line 3855
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Object;
    .locals 5
    .parameter "params"

    .prologue
    .line 3861
    const/4 v0, 0x0

    .line 3865
    .local v0, actionName:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v3, "UnpluggedHeadsetTask...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3868
    sget-object v2, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    const/high16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 3869
    sget-object v2, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v3, 0x2

    const/high16 v4, 0x40

    aput v4, v2, v3

    .line 3872
    :cond_0
    iget v2, p0, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->unpluggedItem:I

    if-nez v2, :cond_3

    .line 3873
    sget-object v2, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const v3, 0x8000

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/high16 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 3875
    :cond_1
    sget-object v2, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v3, "UnpluggedHeadset:doInBackground() Effect->Normal"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3876
    sget-object v2, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v3, 0x1

    const/16 v4, 0x1000

    aput v4, v2, v3

    .line 3877
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/music/common/util/MusicValueSaveController;->setEffect(I)V

    .line 3879
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3}, Lcom/android/music/player/service/CorePlayerService;->access$1300(Lcom/android/music/player/service/CorePlayerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3880
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3}, Lcom/android/music/player/service/CorePlayerService;->access$1300(Lcom/android/music/player/service/CorePlayerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3892
    :cond_2
    const-string v0, "musicPlayer.service.HEADSET_PLUG_CHANGE"

    .line 3897
    :goto_0
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService;->mBinder:Lcom/android/music/player/service/ICorePlayerService$Stub;

    invoke-virtual {v2}, Lcom/android/music/player/service/ICorePlayerService$Stub;->setR2VSMode()V

    .line 3898
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v2, v0}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 3904
    :goto_1
    const/4 v2, 0x0

    return-object v2

    .line 3894
    :cond_3
    const-string v0, "musicPlayer.service.DOCK_PLUG_CHANGE"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3900
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 3901
    .local v1, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnpluggedHeadset:doInBackground() RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3849
    check-cast p1, [Landroid/content/Context;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->doInBackground([Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
