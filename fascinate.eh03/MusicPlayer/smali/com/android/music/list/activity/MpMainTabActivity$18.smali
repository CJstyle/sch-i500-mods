.class Lcom/android/music/list/activity/MpMainTabActivity$18;
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
    .line 3122
    iput-object p1, p0, Lcom/android/music/list/activity/MpMainTabActivity$18;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

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

    .line 3125
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3126
    .local v0, action:Ljava/lang/String;
    sget-object v1, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    if-nez v1, :cond_1

    .line 3127
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity$18;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v1}, Lcom/android/music/list/activity/MpMainTabActivity;->access$000(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mActivityUpdateReceiver : MusicPlayerUtil.sService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    :cond_0
    :goto_0
    return-void

    .line 3133
    :cond_1
    const-string v1, "musicPlayer.service.startUpdateStatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3135
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity$18;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v1}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1500(Lcom/android/music/list/activity/MpMainTabActivity;)Z

    move-result v1

    if-ne v1, v4, :cond_0

    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    if-eqz v1, :cond_0

    .line 3138
    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    invoke-virtual {v1, v2}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    invoke-virtual {v1, v3}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3141
    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    invoke-virtual {v1, v2, v5, v6}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3144
    :cond_2
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3146
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity$18;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v1}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1500(Lcom/android/music/list/activity/MpMainTabActivity;)Z

    move-result v1

    if-ne v1, v4, :cond_0

    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    if-eqz v1, :cond_0

    .line 3149
    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    invoke-virtual {v1, v2}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    invoke-virtual {v1, v3}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3152
    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    invoke-virtual {v1, v2, v5, v6}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
