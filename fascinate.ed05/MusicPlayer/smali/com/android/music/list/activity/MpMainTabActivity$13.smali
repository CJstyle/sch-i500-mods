.class Lcom/android/music/list/activity/MpMainTabActivity$13;
.super Landroid/content/BroadcastReceiver;
.source "MpMainTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/activity/MpMainTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/activity/MpMainTabActivity;


# direct methods
.method constructor <init>(Lcom/android/music/list/activity/MpMainTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2484
    iput-object p1, p0, Lcom/android/music/list/activity/MpMainTabActivity$13;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

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

    .line 2486
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2504
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/music/common/util/BatteryChecker;->mShowPopup:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/music/common/util/BatteryChecker;->mFinishApp:Z

    if-nez v1, :cond_1

    .line 2506
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity$13;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v1}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1000(Lcom/android/music/list/activity/MpMainTabActivity;)Lcom/android/music/common/util/BatteryChecker;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity$13;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v1}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1000(Lcom/android/music/list/activity/MpMainTabActivity;)Lcom/android/music/common/util/BatteryChecker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_0

    .line 2507
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity$13;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v1}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1000(Lcom/android/music/list/activity/MpMainTabActivity;)Lcom/android/music/common/util/BatteryChecker;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 2510
    :cond_0
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity$13;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    new-instance v3, Lcom/android/music/common/util/BatteryChecker;

    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity$13;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    iget-object v4, v1, Lcom/android/music/list/activity/MpMainTabActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity$13;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v1}, Lcom/android/music/list/activity/MpMainTabActivity;->access$600(Lcom/android/music/list/activity/MpMainTabActivity;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/music/common/util/OnLowBatteryListener;

    invoke-direct {v3, v4, v1}, Lcom/android/music/common/util/BatteryChecker;-><init>(Lcom/android/music/player/service/ICorePlayerService;Lcom/android/music/common/util/OnLowBatteryListener;)V

    invoke-static {v2, v3}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1002(Lcom/android/music/list/activity/MpMainTabActivity;Lcom/android/music/common/util/BatteryChecker;)Lcom/android/music/common/util/BatteryChecker;

    .line 2511
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity$13;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v1}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1000(Lcom/android/music/list/activity/MpMainTabActivity;)Lcom/android/music/common/util/BatteryChecker;

    move-result-object v1

    new-array v2, v5, [Landroid/app/Activity;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity$13;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/music/common/util/BatteryChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2514
    :cond_1
    return-void
.end method
