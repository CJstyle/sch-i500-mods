.class Lcom/android/music/list/activity/MpListReorderActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MpListReorderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/activity/MpListReorderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/activity/MpListReorderActivity;


# direct methods
.method constructor <init>(Lcom/android/music/list/activity/MpListReorderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/music/list/activity/MpListReorderActivity$1;->this$0:Lcom/android/music/list/activity/MpListReorderActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 261
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/android/music/list/activity/MpListReorderActivity$1;->this$0:Lcom/android/music/list/activity/MpListReorderActivity;

    invoke-static {v1}, Lcom/android/music/list/activity/MpListReorderActivity;->access$000(Lcom/android/music/list/activity/MpListReorderActivity;)Lcom/android/music/list/layout/MpReorderListScreenLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/music/list/layout/MpReorderListScreenLayout;->setVisibility(I)V

    .line 266
    iget-object v1, p0, Lcom/android/music/list/activity/MpListReorderActivity$1;->this$0:Lcom/android/music/list/activity/MpListReorderActivity;

    invoke-virtual {v1}, Lcom/android/music/list/activity/MpListReorderActivity;->finish()V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 269
    iget-object v1, p0, Lcom/android/music/list/activity/MpListReorderActivity$1;->this$0:Lcom/android/music/list/activity/MpListReorderActivity;

    invoke-virtual {v1}, Lcom/android/music/list/activity/MpListReorderActivity;->finish()V

    goto :goto_0

    .line 270
    :cond_2
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 271
    iget-object v1, p0, Lcom/android/music/list/activity/MpListReorderActivity$1;->this$0:Lcom/android/music/list/activity/MpListReorderActivity;

    invoke-virtual {v1}, Lcom/android/music/list/activity/MpListReorderActivity;->finish()V

    goto :goto_0

    .line 272
    :cond_3
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method
