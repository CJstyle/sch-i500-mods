.class Lcom/android/server/DockObserver$2;
.super Landroid/os/Handler;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method constructor <init>(Lcom/android/server/DockObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 189
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 257
    :goto_0
    return-void

    .line 191
    :pswitch_0
    monitor-enter p0

    .line 192
    :try_start_0
    invoke-static {}, Lcom/android/server/DockObserver;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dock state changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v9}, Lcom/android/server/DockObserver;->access$200(Lcom/android/server/DockObserver;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v7, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v7}, Lcom/android/server/DockObserver;->access$500(Lcom/android/server/DockObserver;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 196
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v7, "device_provisioned"

    const/4 v8, 0x0

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_0

    .line 198
    invoke-static {}, Lcom/android/server/DockObserver;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Device not provisioned, skipping dock broadcast"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    monitor-exit p0

    goto :goto_0

    .line 254
    .end local v1           #cr:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 202
    .restart local v1       #cr:Landroid/content/ContentResolver;
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.DOCK_EVENT"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v2, intent:Landroid/content/Intent;
    const/high16 v7, 0x2000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 204
    const-string v7, "android.intent.extra.DOCK_STATE"

    iget-object v8, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v8}, Lcom/android/server/DockObserver;->access$200(Lcom/android/server/DockObserver;)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    iget-object v7, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v7}, Lcom/android/server/DockObserver;->access$200(Lcom/android/server/DockObserver;)I

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v7}, Lcom/android/server/DockObserver;->access$000(Lcom/android/server/DockObserver;)Z

    move-result v7

    if-ne v7, v10, :cond_5

    .line 207
    iget-object v7, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v7}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)V

    .line 213
    :cond_1
    :goto_1
    invoke-static {}, Landroid/server/BluetoothService;->readDockBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 215
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 220
    :cond_2
    const-string v7, "dock_sounds_enabled"

    const/4 v8, 0x1

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v10, :cond_4

    .line 223
    const/4 v6, 0x0

    .line 224
    .local v6, whichSound:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v7}, Lcom/android/server/DockObserver;->access$200(Lcom/android/server/DockObserver;)I

    move-result v7

    if-nez v7, :cond_7

    .line 225
    iget-object v7, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v7}, Lcom/android/server/DockObserver;->access$600(Lcom/android/server/DockObserver;)I

    move-result v7

    if-ne v7, v10, :cond_6

    .line 226
    const-string v6, "desk_undock_sound"

    .line 238
    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    .line 239
    invoke-static {v1, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, soundPath:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 241
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 242
    .local v5, soundUri:Landroid/net/Uri;
    if-eqz v5, :cond_4

    .line 243
    iget-object v7, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v7}, Lcom/android/server/DockObserver;->access$500(Lcom/android/server/DockObserver;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    .line 244
    .local v3, sfx:Landroid/media/Ringtone;
    if-eqz v3, :cond_4

    .line 245
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 246
    invoke-virtual {v3}, Landroid/media/Ringtone;->play()V

    .line 253
    .end local v3           #sfx:Landroid/media/Ringtone;
    .end local v4           #soundPath:Ljava/lang/String;
    .end local v5           #soundUri:Landroid/net/Uri;
    .end local v6           #whichSound:Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v7}, Lcom/android/server/DockObserver;->access$500(Lcom/android/server/DockObserver;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 254
    monitor-exit p0

    goto/16 :goto_0

    .line 208
    .end local v0           #address:Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v7}, Lcom/android/server/DockObserver;->access$200(Lcom/android/server/DockObserver;)I

    move-result v7

    if-nez v7, :cond_1

    .line 209
    iget-object v7, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v7}, Lcom/android/server/DockObserver;->access$400(Lcom/android/server/DockObserver;)V

    goto :goto_1

    .line 227
    .restart local v0       #address:Ljava/lang/String;
    .restart local v6       #whichSound:Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v7}, Lcom/android/server/DockObserver;->access$600(Lcom/android/server/DockObserver;)I

    move-result v7

    if-ne v7, v11, :cond_3

    .line 228
    const-string v6, "car_undock_sound"

    goto :goto_2

    .line 231
    :cond_7
    iget-object v7, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v7}, Lcom/android/server/DockObserver;->access$200(Lcom/android/server/DockObserver;)I

    move-result v7

    if-ne v7, v10, :cond_8

    .line 232
    const-string v6, "desk_dock_sound"

    goto :goto_2

    .line 233
    :cond_8
    iget-object v7, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v7}, Lcom/android/server/DockObserver;->access$200(Lcom/android/server/DockObserver;)I

    move-result v7

    if-ne v7, v11, :cond_3

    .line 234
    const-string v6, "car_dock_sound"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
