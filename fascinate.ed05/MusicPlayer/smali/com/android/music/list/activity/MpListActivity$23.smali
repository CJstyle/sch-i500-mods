.class Lcom/android/music/list/activity/MpListActivity$23;
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
    .line 2759
    iput-object p1, p0, Lcom/android/music/list/activity/MpListActivity$23;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 2760
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2761
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity$23;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v1, v1, Lcom/android/music/list/activity/MpListActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity$23;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-static {v1}, Lcom/android/music/list/activity/MpListActivity;->access$900(Lcom/android/music/list/activity/MpListActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2786
    :cond_0
    :goto_0
    return-void

    .line 2765
    :cond_1
    const-string v1, "musicPlayer.service.startUpdateStatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2766
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity$23;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-boolean v1, v1, Lcom/android/music/list/activity/MpListActivity;->activityCheck:Z

    if-ne v1, v4, :cond_0

    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    if-eqz v1, :cond_0

    .line 2768
    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    invoke-virtual {v1, v2}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    invoke-virtual {v1, v3}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2772
    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    invoke-virtual {v1, v2, v5, v6}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2775
    :cond_2
    const-string v1, "musicPlayer.service.updateMediaInfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2776
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity$23;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-boolean v1, v1, Lcom/android/music/list/activity/MpListActivity;->activityCheck:Z

    if-ne v1, v4, :cond_0

    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    if-eqz v1, :cond_0

    .line 2778
    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    invoke-virtual {v1, v2}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    invoke-virtual {v1, v3}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2782
    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    invoke-virtual {v1, v2, v5, v6}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
