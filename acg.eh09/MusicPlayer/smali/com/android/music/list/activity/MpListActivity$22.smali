.class Lcom/android/music/list/activity/MpListActivity$22;
.super Landroid/content/BroadcastReceiver;
.source "MpListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/activity/MpListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/activity/MpListActivity;


# direct methods
.method constructor <init>(Lcom/android/music/list/activity/MpListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2965
    iput-object p1, p0, Lcom/android/music/list/activity/MpListActivity$22;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2969
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2974
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/music/common/util/BatteryChecker;->mShowPopup:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/music/common/util/BatteryChecker;->mFinishApp:Z

    if-nez v1, :cond_0

    .line 2976
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity$22;->this$0:Lcom/android/music/list/activity/MpListActivity;

    new-instance v3, Lcom/android/music/common/util/BatteryChecker;

    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity$22;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-static {v1}, Lcom/android/music/list/activity/MpListActivity;->access$000(Lcom/android/music/list/activity/MpListActivity;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/music/common/util/OnLowBatteryListener;

    invoke-direct {v3, v1}, Lcom/android/music/common/util/BatteryChecker;-><init>(Lcom/android/music/common/util/OnLowBatteryListener;)V

    invoke-static {v2, v3}, Lcom/android/music/list/activity/MpListActivity;->access$902(Lcom/android/music/list/activity/MpListActivity;Lcom/android/music/common/util/BatteryChecker;)Lcom/android/music/common/util/BatteryChecker;

    .line 2977
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity$22;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-static {v1}, Lcom/android/music/list/activity/MpListActivity;->access$900(Lcom/android/music/list/activity/MpListActivity;)Lcom/android/music/common/util/BatteryChecker;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/app/Activity;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity$22;->this$0:Lcom/android/music/list/activity/MpListActivity;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/music/common/util/BatteryChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2979
    :cond_0
    return-void
.end method
