.class Lcom/android/music/list/activity/MpPlayListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MpPlayListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/activity/MpPlayListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/activity/MpPlayListActivity;


# direct methods
.method constructor <init>(Lcom/android/music/list/activity/MpPlayListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/music/list/activity/MpPlayListActivity$1;->this$0:Lcom/android/music/list/activity/MpPlayListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 135
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpPlayListActivity$1;->this$0:Lcom/android/music/list/activity/MpPlayListActivity;

    invoke-virtual {v1}, Lcom/android/music/list/activity/MpPlayListActivity;->finish()V

    .line 151
    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 144
    iget-object v1, p0, Lcom/android/music/list/activity/MpPlayListActivity$1;->this$0:Lcom/android/music/list/activity/MpPlayListActivity;

    invoke-virtual {v1}, Lcom/android/music/list/activity/MpPlayListActivity;->finish()V

    goto :goto_0

    .line 145
    :cond_3
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 146
    iget-object v1, p0, Lcom/android/music/list/activity/MpPlayListActivity$1;->this$0:Lcom/android/music/list/activity/MpPlayListActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/music/list/activity/MpPlayListActivity;->mMediaScannerRunCheck:Z

    .line 147
    iget-object v1, p0, Lcom/android/music/list/activity/MpPlayListActivity$1;->this$0:Lcom/android/music/list/activity/MpPlayListActivity;

    invoke-virtual {v1}, Lcom/android/music/list/activity/MpPlayListActivity;->finish()V

    goto :goto_0

    .line 148
    :cond_4
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/android/music/list/activity/MpPlayListActivity$1;->this$0:Lcom/android/music/list/activity/MpPlayListActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/music/list/activity/MpPlayListActivity;->mMediaScannerRunCheck:Z

    goto :goto_0
.end method
