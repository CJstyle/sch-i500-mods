.class Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "VideoListNoSdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 130
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->access$000(Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mMediaReceiver() - SD card mounted."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/high16 v3, 0x7f07

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, app:Ljava/lang/String;
    const v3, 0x7f07005e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, str:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->access$100(Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 138
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->finish()V

    .line 143
    .end local v1           #app:Ljava/lang/String;
    .end local v2           #str:Ljava/lang/String;
    :cond_0
    return-void
.end method
