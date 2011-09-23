.class Lcom/sec/android/app/camera/Camera$1;
.super Landroid/content/BroadcastReceiver;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const v8, 0x7f0700cb

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v5, "Camera"

    .line 202
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, action:Ljava/lang/String;
    const-string v3, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Z

    move-result v3

    if-ne v3, v6, :cond_1

    .line 205
    const-string v3, "Camera"

    const-string v3, "onReceive - camera is destroying"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 212
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$500(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/MenuResourceData;

    move-result-object v3

    const v4, 0x7f030038

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/StorageMenu;

    .line 213
    .local v1, menu:Lcom/sec/android/app/camera/StorageMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/StorageMenu;->getVisibility()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 214
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 219
    :cond_3
    invoke-static {}, Landroid/media/MiniThumbFile;->reset()V

    .line 220
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->searchForInitialLastContentUri()V

    .line 221
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->updateThumbnailButton()V

    .line 222
    const v3, 0x7f0700d4

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, str:Ljava/lang/String;
    invoke-static {p1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 224
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto :goto_0

    .line 233
    .end local v1           #menu:Lcom/sec/android/app/camera/StorageMenu;
    .end local v2           #str:Ljava/lang/String;
    :cond_4
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 234
    const v3, 0x7f0700d2

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 236
    .restart local v2       #str:Ljava/lang/String;
    invoke-static {p1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 237
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto/16 :goto_0

    .line 239
    .end local v2           #str:Ljava/lang/String;
    :cond_5
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 240
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->searchForInitialLastContentUri()V

    .line 241
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->updateQuickViewButtonDimmed()V

    goto/16 :goto_0

    .line 246
    :cond_6
    const-string v3, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 247
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->updateRemainStorageIndicator()V

    goto/16 :goto_0

    .line 248
    :cond_7
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 249
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v3, p2}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 250
    :cond_8
    const-string v3, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 251
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->handleLowBattery()V

    goto/16 :goto_0

    .line 252
    :cond_9
    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 253
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 255
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 256
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto/16 :goto_0
.end method
