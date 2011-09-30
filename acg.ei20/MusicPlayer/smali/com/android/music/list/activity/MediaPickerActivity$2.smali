.class Lcom/android/music/list/activity/MediaPickerActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MediaPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/activity/MediaPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/activity/MediaPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/music/list/activity/MediaPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/music/list/activity/MediaPickerActivity$2;->this$0:Lcom/android/music/list/activity/MediaPickerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 308
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/music/list/activity/MediaPickerActivity$2;->this$0:Lcom/android/music/list/activity/MediaPickerActivity;

    const-string v3, ""

    invoke-static {v2, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 310
    .local v1, mToast:Landroid/widget/Toast;
    iget-object v2, p0, Lcom/android/music/list/activity/MediaPickerActivity$2;->this$0:Lcom/android/music/list/activity/MediaPickerActivity;

    invoke-static {v2}, Lcom/android/music/list/activity/MediaPickerActivity;->access$000(Lcom/android/music/list/activity/MediaPickerActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 319
    iget-object v2, p0, Lcom/android/music/list/activity/MediaPickerActivity$2;->this$0:Lcom/android/music/list/activity/MediaPickerActivity;

    const v3, 0x7f0a00f4

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/music/list/activity/MediaPickerActivity$2;->this$0:Lcom/android/music/list/activity/MediaPickerActivity;

    const/high16 v6, 0x7f0a

    invoke-virtual {v5, v6}, Lcom/android/music/list/activity/MediaPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/android/music/list/activity/MediaPickerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 320
    invoke-virtual {v1, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 321
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 322
    iget-object v2, p0, Lcom/android/music/list/activity/MediaPickerActivity$2;->this$0:Lcom/android/music/list/activity/MediaPickerActivity;

    invoke-virtual {v2}, Lcom/android/music/list/activity/MediaPickerActivity;->finish()V

    goto :goto_0

    .line 326
    :cond_2
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    iget-object v2, p0, Lcom/android/music/list/activity/MediaPickerActivity$2;->this$0:Lcom/android/music/list/activity/MediaPickerActivity;

    iput-boolean v7, v2, Lcom/android/music/list/activity/MediaPickerActivity;->mMediaScannerRunCheck:Z

    .line 330
    const v2, 0x7f0a00f3

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 331
    invoke-virtual {v1, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 332
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 333
    iget-object v2, p0, Lcom/android/music/list/activity/MediaPickerActivity$2;->this$0:Lcom/android/music/list/activity/MediaPickerActivity;

    invoke-virtual {v2}, Lcom/android/music/list/activity/MediaPickerActivity;->finish()V

    goto :goto_0
.end method
