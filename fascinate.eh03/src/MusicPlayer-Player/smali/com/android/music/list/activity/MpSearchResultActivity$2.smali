.class Lcom/android/music/list/activity/MpSearchResultActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MpSearchResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/activity/MpSearchResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/activity/MpSearchResultActivity;


# direct methods
.method constructor <init>(Lcom/android/music/list/activity/MpSearchResultActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/android/music/list/activity/MpSearchResultActivity$2;->this$0:Lcom/android/music/list/activity/MpSearchResultActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1094
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1099
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/music/common/util/BatteryChecker;->mShowPopup:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/music/common/util/BatteryChecker;->mFinishApp:Z

    if-nez v1, :cond_0

    .line 1101
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity$2;->this$0:Lcom/android/music/list/activity/MpSearchResultActivity;

    new-instance v2, Lcom/android/music/common/util/BatteryChecker;

    iget-object v3, p0, Lcom/android/music/list/activity/MpSearchResultActivity$2;->this$0:Lcom/android/music/list/activity/MpSearchResultActivity;

    invoke-direct {v2, v3}, Lcom/android/music/common/util/BatteryChecker;-><init>(Lcom/android/music/common/util/OnLowBatteryListener;)V

    invoke-static {v1, v2}, Lcom/android/music/list/activity/MpSearchResultActivity;->access$002(Lcom/android/music/list/activity/MpSearchResultActivity;Lcom/android/music/common/util/BatteryChecker;)Lcom/android/music/common/util/BatteryChecker;

    .line 1102
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity$2;->this$0:Lcom/android/music/list/activity/MpSearchResultActivity;

    invoke-static {v1}, Lcom/android/music/list/activity/MpSearchResultActivity;->access$000(Lcom/android/music/list/activity/MpSearchResultActivity;)Lcom/android/music/common/util/BatteryChecker;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/app/Activity;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/music/list/activity/MpSearchResultActivity$2;->this$0:Lcom/android/music/list/activity/MpSearchResultActivity;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/music/common/util/BatteryChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1104
    :cond_0
    return-void
.end method
