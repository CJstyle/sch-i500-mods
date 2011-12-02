.class Lcom/android/music/list/activity/MediaPickerActivity$3;
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
    .line 313
    iput-object p1, p0, Lcom/android/music/list/activity/MediaPickerActivity$3;->this$0:Lcom/android/music/list/activity/MediaPickerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 314
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/music/list/activity/MediaPickerActivity$3;->this$0:Lcom/android/music/list/activity/MediaPickerActivity;

    const-string v4, ""

    invoke-static {v3, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 316
    .local v1, mToast:Landroid/widget/Toast;
    iget-object v3, p0, Lcom/android/music/list/activity/MediaPickerActivity$3;->this$0:Lcom/android/music/list/activity/MediaPickerActivity;

    invoke-static {v3}, Lcom/android/music/list/activity/MediaPickerActivity;->access$000(Lcom/android/music/list/activity/MediaPickerActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 319
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 320
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 343
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 325
    iget-object v3, p0, Lcom/android/music/list/activity/MediaPickerActivity$3;->this$0:Lcom/android/music/list/activity/MediaPickerActivity;

    const v4, 0x7f0a00ec

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/music/list/activity/MediaPickerActivity$3;->this$0:Lcom/android/music/list/activity/MediaPickerActivity;

    const/high16 v7, 0x7f0a

    invoke-virtual {v6, v7}, Lcom/android/music/list/activity/MediaPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v3, v4, v5}, Lcom/android/music/list/activity/MediaPickerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 326
    invoke-virtual {v1, v8}, Landroid/widget/Toast;->setDuration(I)V

    .line 327
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 328
    iget-object v3, p0, Lcom/android/music/list/activity/MediaPickerActivity$3;->this$0:Lcom/android/music/list/activity/MediaPickerActivity;

    invoke-virtual {v3}, Lcom/android/music/list/activity/MediaPickerActivity;->finish()V

    goto :goto_0

    .line 332
    :cond_2
    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 335
    iget-object v3, p0, Lcom/android/music/list/activity/MediaPickerActivity$3;->this$0:Lcom/android/music/list/activity/MediaPickerActivity;

    iput-boolean v8, v3, Lcom/android/music/list/activity/MediaPickerActivity;->mMediaScannerRunCheck:Z

    .line 336
    const v3, 0x7f0a00eb

    invoke-virtual {v1, v3}, Landroid/widget/Toast;->setText(I)V

    .line 337
    invoke-virtual {v1, v8}, Landroid/widget/Toast;->setDuration(I)V

    .line 338
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 339
    iget-object v3, p0, Lcom/android/music/list/activity/MediaPickerActivity$3;->this$0:Lcom/android/music/list/activity/MediaPickerActivity;

    invoke-virtual {v3}, Lcom/android/music/list/activity/MediaPickerActivity;->finish()V

    goto :goto_0
.end method
