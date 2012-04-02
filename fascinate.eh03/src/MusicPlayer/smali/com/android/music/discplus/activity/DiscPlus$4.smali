.class Lcom/android/music/discplus/activity/DiscPlus$4;
.super Landroid/content/BroadcastReceiver;
.source "DiscPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/discplus/activity/DiscPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/discplus/activity/DiscPlus;


# direct methods
.method constructor <init>(Lcom/android/music/discplus/activity/DiscPlus;)V
    .locals 0
    .parameter

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/music/discplus/activity/DiscPlus$4;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 546
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/music/common/util/BatteryChecker;->mShowPopup:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/music/common/util/BatteryChecker;->mFinishApp:Z

    if-nez v1, :cond_1

    .line 549
    iget-object v1, p0, Lcom/android/music/discplus/activity/DiscPlus$4;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    invoke-static {v1}, Lcom/android/music/discplus/activity/DiscPlus;->access$400(Lcom/android/music/discplus/activity/DiscPlus;)Lcom/android/music/common/util/BatteryChecker;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/discplus/activity/DiscPlus$4;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    invoke-static {v1}, Lcom/android/music/discplus/activity/DiscPlus;->access$400(Lcom/android/music/discplus/activity/DiscPlus;)Lcom/android/music/common/util/BatteryChecker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_0

    .line 550
    iget-object v1, p0, Lcom/android/music/discplus/activity/DiscPlus$4;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    invoke-static {v1}, Lcom/android/music/discplus/activity/DiscPlus;->access$400(Lcom/android/music/discplus/activity/DiscPlus;)Lcom/android/music/common/util/BatteryChecker;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 553
    :cond_0
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus$4;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    new-instance v3, Lcom/android/music/common/util/BatteryChecker;

    iget-object v1, p0, Lcom/android/music/discplus/activity/DiscPlus$4;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    invoke-static {v1}, Lcom/android/music/discplus/activity/DiscPlus;->access$500(Lcom/android/music/discplus/activity/DiscPlus;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/music/common/util/OnLowBatteryListener;

    invoke-direct {v3, v1}, Lcom/android/music/common/util/BatteryChecker;-><init>(Lcom/android/music/common/util/OnLowBatteryListener;)V

    invoke-static {v2, v3}, Lcom/android/music/discplus/activity/DiscPlus;->access$402(Lcom/android/music/discplus/activity/DiscPlus;Lcom/android/music/common/util/BatteryChecker;)Lcom/android/music/common/util/BatteryChecker;

    .line 554
    iget-object v1, p0, Lcom/android/music/discplus/activity/DiscPlus$4;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    invoke-static {v1}, Lcom/android/music/discplus/activity/DiscPlus;->access$400(Lcom/android/music/discplus/activity/DiscPlus;)Lcom/android/music/common/util/BatteryChecker;

    move-result-object v1

    new-array v2, v4, [Landroid/app/Activity;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/music/discplus/activity/DiscPlus$4;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/music/common/util/BatteryChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 556
    :cond_1
    return-void
.end method
