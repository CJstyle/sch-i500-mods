.class Lcom/sec/android/app/videoplayer/activity/VideoList$1;
.super Landroid/content/BroadcastReceiver;
.source "VideoList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/activity/VideoList;->registerMediaReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/VideoList;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

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

    const/4 v3, 0x1

    const-string v4, "VideoList"

    .line 213
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 217
    const-string v2, "VideoList"

    const-string v2, "mMediaReceiver() - SD card UnMounted."

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #setter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mPausing:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$002(Lcom/sec/android/app/videoplayer/activity/VideoList;Z)Z

    .line 220
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mMenu:Landroid/view/Menu;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$100(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/view/Menu;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mMenu:Landroid/view/Menu;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$100(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/Menu;->close()V

    .line 223
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$200(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 225
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$200(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 226
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #setter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v5}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$202(Lcom/sec/android/app/videoplayer/activity/VideoList;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 229
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->MediaToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$300(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 230
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->MediaToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$300(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 231
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->finish()V

    .line 270
    :cond_2
    :goto_0
    return-void

    .line 234
    :cond_3
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 236
    const-string v2, "VideoList"

    const-string v2, "mMediaReceiver() - ACTION_MEDIA_SCANNER_STARTED."

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #setter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mPausing:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$002(Lcom/sec/android/app/videoplayer/activity/VideoList;Z)Z

    .line 240
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mMenu:Landroid/view/Menu;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$100(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/view/Menu;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 241
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mMenu:Landroid/view/Menu;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$100(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/Menu;->close()V

    .line 243
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$200(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 245
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$200(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 246
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #setter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v5}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$202(Lcom/sec/android/app/videoplayer/activity/VideoList;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 249
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->SDToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$400(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 250
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->SDToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$400(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 251
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->finish()V

    goto :goto_0

    .line 254
    :cond_6
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 258
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #calls: Lcom/sec/android/app/videoplayer/activity/VideoList;->batteryCheck()Z
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$500(Lcom/sec/android/app/videoplayer/activity/VideoList;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 259
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #calls: Lcom/sec/android/app/videoplayer/activity/VideoList;->popupLowBattery(Landroid/content/Context;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$600(Lcom/sec/android/app/videoplayer/activity/VideoList;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$700(Lcom/sec/android/app/videoplayer/activity/VideoList;)Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 269
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$700(Lcom/sec/android/app/videoplayer/activity/VideoList;)Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 261
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 263
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 264
    const-string v2, "VideoList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMediaReceiver() - BatteryChecker IOException occured :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
