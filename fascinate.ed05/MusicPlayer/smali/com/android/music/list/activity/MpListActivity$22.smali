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
    .line 2737
    iput-object p1, p0, Lcom/android/music/list/activity/MpListActivity$22;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 2738
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2740
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2741
    :cond_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity$22;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-static {v1, v2}, Lcom/android/music/list/activity/MpListActivity;->access$902(Lcom/android/music/list/activity/MpListActivity;Z)Z

    .line 2742
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity$22;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-static {v1}, Lcom/android/music/list/activity/MpListActivity;->access$1000(Lcom/android/music/list/activity/MpListActivity;)Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->setVisibility(I)V

    .line 2744
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity$22;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-virtual {v1}, Lcom/android/music/list/activity/MpListActivity;->finish()V

    .line 2754
    :cond_1
    :goto_0
    return-void

    .line 2746
    :cond_2
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2747
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity$22;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-virtual {v1}, Lcom/android/music/list/activity/MpListActivity;->finish()V

    goto :goto_0

    .line 2748
    :cond_3
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2749
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity$22;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iput-boolean v2, v1, Lcom/android/music/list/activity/MpListActivity;->mMediaScannerRunCheck:Z

    .line 2750
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity$22;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-virtual {v1}, Lcom/android/music/list/activity/MpListActivity;->finish()V

    goto :goto_0

    .line 2751
    :cond_4
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2752
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity$22;->this$0:Lcom/android/music/list/activity/MpListActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/music/list/activity/MpListActivity;->mMediaScannerRunCheck:Z

    goto :goto_0
.end method
