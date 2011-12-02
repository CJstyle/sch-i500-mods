.class Lcom/android/music/list/activity/MpMainTabActivity$16;
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
    .line 2636
    iput-object p1, p0, Lcom/android/music/list/activity/MpMainTabActivity$16;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

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

    .line 2637
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2638
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity$16;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    iget-object v1, v1, Lcom/android/music/list/activity/MpMainTabActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-nez v1, :cond_1

    .line 2664
    :cond_0
    :goto_0
    return-void

    .line 2642
    :cond_1
    const-string v1, "musicPlayer.service.startUpdateStatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2644
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity$16;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v1}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1500(Lcom/android/music/list/activity/MpMainTabActivity;)Z

    move-result v1

    if-ne v1, v4, :cond_0

    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    if-eqz v1, :cond_0

    .line 2647
    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    invoke-virtual {v1, v2}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    invoke-virtual {v1, v3}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2650
    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    invoke-virtual {v1, v2, v5, v6}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2653
    :cond_2
    const-string v1, "musicPlayer.service.updateMediaInfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2655
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity$16;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v1}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1500(Lcom/android/music/list/activity/MpMainTabActivity;)Z

    move-result v1

    if-ne v1, v4, :cond_0

    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    if-eqz v1, :cond_0

    .line 2658
    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    invoke-virtual {v1, v2}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    invoke-virtual {v1, v3}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2661
    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    invoke-virtual {v1, v2, v5, v6}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
