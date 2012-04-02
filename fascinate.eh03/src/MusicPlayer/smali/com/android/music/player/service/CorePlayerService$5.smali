.class Lcom/android/music/player/service/CorePlayerService$5;
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
    .line 514
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$5;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 516
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 519
    const-string v5, "CorePlayerService"

    const-string v6, "mSystemReceiver:onReceive(action=ACTION_SHUTDOWN) is called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$5;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v5}, Lcom/android/music/player/service/CorePlayerService;->stop()V

    .line 522
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$5;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v5}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/music/common/util/MusicUtils;->forceStopPackage(Landroid/content/Context;)V

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 524
    const-string v5, "level"

    const/16 v6, 0x64

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 525
    .local v1, battScale:I
    const-string v5, "plugged"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 527
    .local v2, plugType:I
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$5;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/16 v6, 0xa

    if-gt v1, v6, :cond_2

    if-nez v2, :cond_2

    move v6, v8

    :goto_1
    invoke-static {v5, v6}, Lcom/android/music/player/service/CorePlayerService;->access$1502(Lcom/android/music/player/service/CorePlayerService;Z)Z

    .line 528
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$5;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v5}, Lcom/android/music/player/service/CorePlayerService;->access$1500(Lcom/android/music/player/service/CorePlayerService;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 529
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$5;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v5}, Lcom/android/music/player/service/CorePlayerService;->stop()V

    .line 530
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$5;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v5}, Lcom/android/music/player/service/CorePlayerService;->access$1600(Lcom/android/music/player/service/CorePlayerService;)Landroid/app/ActivityManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 531
    .local v3, rt:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    .line 532
    .local v4, runningTask:Ljava/lang/String;
    const-string v5, "com.android.music"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 533
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$5;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v5}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a00f7

    invoke-static {v5, v6}, Lcom/android/music/common/util/MusicUtils;->makeNoti_New_MessageForClosingAPK(Landroid/content/Context;I)V

    .line 534
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$5;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v5}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/music/common/util/MusicUtils;->forceStopPackage(Landroid/content/Context;)V

    goto :goto_0

    .end local v3           #rt:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v4           #runningTask:Ljava/lang/String;
    :cond_2
    move v6, v7

    .line 527
    goto :goto_1
.end method
