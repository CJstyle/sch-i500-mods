.class Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;
.super Landroid/os/Handler;
.source "KiesUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/KiesConnectivity/KiesUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KiesUsbManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;


# direct methods
.method constructor <init>(Lcom/android/server/KiesConnectivity/KiesUsbManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "l"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    .line 144
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 145
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const-string v2, "adb_enabled"

    const-string v2, "ASKON"

    const-string v5, "KiesUsbManager"

    .line 148
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-static {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$000(Lcom/android/server/KiesConnectivity/KiesUsbManager;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usb_setting_mode"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 150
    .local v1, usb_mode:I
    const-string v2, "KiesUsbManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "usb mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 155
    :sswitch_0
    const-string v2, "KiesUsbManager"

    const-string v3, "UsbMode.online"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 158
    const-string v2, "KiesUsbManager"

    const-string v3, "USBMODE is ASK ON"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 244
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 162
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0xfa0

    if-ne v2, v3, :cond_2

    .line 163
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$102(Lcom/android/server/KiesConnectivity/KiesUsbManager;Z)Z

    .line 164
    const-string v2, "KiesUsbManager"

    const-string v3, "USBMODE is VTP"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    :cond_2
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-static {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbManager;)Z

    move-result v2

    if-ne v2, v6, :cond_3

    .line 169
    const-string v2, "KiesUsbManager"

    const-string v3, "kiesRun -> ignore event"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :cond_3
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$300(Lcom/android/server/KiesConnectivity/KiesUsbManager;Z)V

    .line 174
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    const-string v3, "START"

    invoke-static {v2, v3}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$400(Lcom/android/server/KiesConnectivity/KiesUsbManager;Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-static {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$500(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V

    .line 177
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x3ea

    if-eq v2, v3, :cond_0

    .line 178
    const-string v2, "KiesUsbManager"

    const-string v3, "chage mode -> KIES"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    const-string v3, "KIES"

    invoke-static {v2, v3}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$600(Lcom/android/server/KiesConnectivity/KiesUsbManager;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :sswitch_1
    const-string v2, "KiesUsbManager"

    const-string v3, "UsbMode.offline"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$300(Lcom/android/server/KiesConnectivity/KiesUsbManager;Z)V

    .line 189
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    const-string v3, "INIT"

    invoke-static {v2, v3}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$400(Lcom/android/server/KiesConnectivity/KiesUsbManager;Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-static {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$700(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V

    .line 192
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 193
    const-string v2, "KiesUsbManager"

    const-string v3, "Ask off"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-static {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$000(Lcom/android/server/KiesConnectivity/KiesUsbManager;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 195
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    const-string v3, "ASKON"

    invoke-static {v2, v3}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$600(Lcom/android/server/KiesConnectivity/KiesUsbManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    :cond_4
    const-string v2, "KiesUsbManager"

    const-string v3, "Kies off"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-static {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$000(Lcom/android/server/KiesConnectivity/KiesUsbManager;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 199
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    const-string v3, "KIES"

    invoke-static {v2, v3}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$600(Lcom/android/server/KiesConnectivity/KiesUsbManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 206
    :sswitch_2
    const-string v2, "KiesUsbManager"

    const-string v3, "UsbMode.cdfs_eject"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-static {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$100(Lcom/android/server/KiesConnectivity/KiesUsbManager;)Z

    move-result v2

    if-ne v2, v6, :cond_5

    .line 210
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$102(Lcom/android/server/KiesConnectivity/KiesUsbManager;Z)Z

    goto/16 :goto_0

    .line 214
    :cond_5
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$300(Lcom/android/server/KiesConnectivity/KiesUsbManager;Z)V

    .line 215
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-static {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$700(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V

    .line 216
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-static {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$000(Lcom/android/server/KiesConnectivity/KiesUsbManager;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 218
    packed-switch v1, :pswitch_data_0

    .line 235
    :pswitch_0
    const-string v2, "KiesUsbManager"

    const-string v3, "UsbMode is unknown"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    const-string v3, "KIES_REAL"

    invoke-static {v2, v3}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$600(Lcom/android/server/KiesConnectivity/KiesUsbManager;Ljava/lang/String;)V

    .line 240
    :goto_1
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    const-string v3, "STOP"

    invoke-static {v2, v3}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$400(Lcom/android/server/KiesConnectivity/KiesUsbManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 220
    :pswitch_1
    const-string v2, "KiesUsbManager"

    const-string v3, "MTP"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    const-string v3, "MTP"

    invoke-static {v2, v3}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$600(Lcom/android/server/KiesConnectivity/KiesUsbManager;Ljava/lang/String;)V

    goto :goto_1

    .line 225
    :pswitch_2
    const-string v2, "KiesUsbManager"

    const-string v3, "UMS"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    const-string v3, "UMS"

    invoke-static {v2, v3}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$600(Lcom/android/server/KiesConnectivity/KiesUsbManager;Ljava/lang/String;)V

    goto :goto_1

    .line 230
    :pswitch_3
    const-string v2, "KiesUsbManager"

    const-string v3, "ASKON"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    const-string v3, "ASKON"

    invoke-static {v2, v3}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$600(Lcom/android/server/KiesConnectivity/KiesUsbManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 153
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x1388 -> :sswitch_2
    .end sparse-switch

    .line 218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
