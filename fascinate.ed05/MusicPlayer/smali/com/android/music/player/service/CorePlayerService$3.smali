.class Lcom/android/music/player/service/CorePlayerService$3;
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
    .line 614
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "com.android.music"

    .line 615
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, action:Ljava/lang/String;
    sget-object v5, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSystemReceiver:onReceive(action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") is called"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 619
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v5}, Lcom/android/music/player/service/CorePlayerService;->access$000(Lcom/android/music/player/service/CorePlayerService;)V

    .line 620
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v5}, Lcom/android/music/common/util/MusicValueSaveController;->saveSettingValue(Landroid/content/Context;)V

    .line 623
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 625
    .local v1, am:Landroid/app/ActivityManager;
    const-string v5, "com.android.music"

    invoke-virtual {v1, v10}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 643
    .end local v1           #am:Landroid/app/ActivityManager;
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 628
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v6, "level"

    const/16 v7, 0x64

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/music/player/service/CorePlayerService;->access$202(Lcom/android/music/player/service/CorePlayerService;I)I

    .line 629
    const-string v5, "status"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 632
    .local v2, battStatus:I
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v5}, Lcom/android/music/player/service/CorePlayerService;->access$200(Lcom/android/music/player/service/CorePlayerService;)I

    move-result v5

    const/16 v6, 0xa

    if-gt v5, v6, :cond_0

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v5}, Lcom/android/music/player/service/CorePlayerService;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 634
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v5, v5, Lcom/android/music/player/service/CorePlayerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v5, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 635
    .local v3, rt:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    .line 636
    .local v4, runningTask:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-boolean v5, v5, Lcom/android/music/player/service/CorePlayerService;->mIsShowErrorTost:Z

    if-nez v5, :cond_0

    const-string v5, "com.android.music"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 637
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const v6, 0x7f0a00ef

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 638
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService$3;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v5}, Lcom/android/music/player/service/CorePlayerService;->access$000(Lcom/android/music/player/service/CorePlayerService;)V

    goto :goto_0
.end method
