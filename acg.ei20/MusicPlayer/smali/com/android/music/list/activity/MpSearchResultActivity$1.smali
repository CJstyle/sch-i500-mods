.class Lcom/android/music/list/activity/MpSearchResultActivity$1;
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
    .line 1071
    iput-object p1, p0, Lcom/android/music/list/activity/MpSearchResultActivity$1;->this$0:Lcom/android/music/list/activity/MpSearchResultActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1074
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1076
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1080
    :cond_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity$1;->this$0:Lcom/android/music/list/activity/MpSearchResultActivity;

    invoke-virtual {v1}, Lcom/android/music/list/activity/MpSearchResultActivity;->finish()V

    .line 1090
    :cond_1
    :goto_0
    return-void

    .line 1082
    :cond_2
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1083
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity$1;->this$0:Lcom/android/music/list/activity/MpSearchResultActivity;

    invoke-virtual {v1}, Lcom/android/music/list/activity/MpSearchResultActivity;->finish()V

    goto :goto_0

    .line 1084
    :cond_3
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1085
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity$1;->this$0:Lcom/android/music/list/activity/MpSearchResultActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mMediaScannerRunCheck:Z

    .line 1086
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity$1;->this$0:Lcom/android/music/list/activity/MpSearchResultActivity;

    invoke-virtual {v1}, Lcom/android/music/list/activity/MpSearchResultActivity;->finish()V

    goto :goto_0

    .line 1087
    :cond_4
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1088
    iget-object v1, p0, Lcom/android/music/list/activity/MpSearchResultActivity$1;->this$0:Lcom/android/music/list/activity/MpSearchResultActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/music/list/activity/MpSearchResultActivity;->mMediaScannerRunCheck:Z

    goto :goto_0
.end method
