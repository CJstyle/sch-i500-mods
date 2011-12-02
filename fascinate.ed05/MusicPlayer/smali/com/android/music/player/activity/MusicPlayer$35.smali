.class Lcom/android/music/player/activity/MusicPlayer$35;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/activity/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/player/activity/MusicPlayer;


# direct methods
.method constructor <init>(Lcom/android/music/player/activity/MusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 5660
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$35;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 5662
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5663
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$35;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v2}, Lcom/android/music/player/activity/MusicPlayer;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 5666
    .local v1, mLowBatteryWarningLevel:I
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/music/common/util/BatteryChecker;->mShowPopup:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/music/common/util/BatteryChecker;->mFinishApp:Z

    if-nez v2, :cond_0

    .line 5668
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$35;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    new-instance v4, Lcom/android/music/common/util/BatteryChecker;

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$35;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v2, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$35;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/music/common/util/OnLowBatteryListener;

    invoke-direct {v4, v5, v2}, Lcom/android/music/common/util/BatteryChecker;-><init>(Lcom/android/music/player/service/ICorePlayerService;Lcom/android/music/common/util/OnLowBatteryListener;)V

    invoke-static {v3, v4}, Lcom/android/music/player/activity/MusicPlayer;->access$2102(Lcom/android/music/player/activity/MusicPlayer;Lcom/android/music/common/util/BatteryChecker;)Lcom/android/music/common/util/BatteryChecker;

    .line 5669
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$35;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v2}, Lcom/android/music/player/activity/MusicPlayer;->access$2100(Lcom/android/music/player/activity/MusicPlayer;)Lcom/android/music/common/util/BatteryChecker;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/app/Activity;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$35;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/music/common/util/BatteryChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5684
    :cond_0
    return-void
.end method
