.class public Lcom/android/settings/UsbSettings;
.super Landroid/app/ListActivity;
.source "UsbSettings.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "Usb Settings"

.field private static final USBMENUSEL_PATH:Ljava/lang/String; = "/sys/devices/platform/android_usb/UsbMenuSel"

.field public static final USBMODE_ASKON:I = 0x4

.field public static final USBMODE_KIES:I = 0x0

.field public static final USBMODE_MTP:I = 0x1

.field public static final USBMODE_UMS:I = 0x2

.field private static final USB_SETTING_MODE:Ljava/lang/String; = "usb_setting_mode"

.field private static final UsbProperty:Ljava/lang/String; = "persist.service.usb.setting"

.field private static final askon:[B

.field private static final kies:[B

.field private static final mUSBItems:[Ljava/lang/String;

.field private static final mtp:[B

.field private static final ums:[B


# instance fields
.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/settings/UsbSettings;->mUSBItems:[Ljava/lang/String;

    .line 153
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/UsbSettings;->kies:[B

    .line 154
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/UsbSettings;->mtp:[B

    .line 155
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/UsbSettings;->ums:[B

    .line 159
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/UsbSettings;->askon:[B

    return-void

    .line 153
    nop

    :array_0
    .array-data 0x1
        0x4bt
        0x49t
        0x45t
        0x53t
        0x0t
    .end array-data

    .line 154
    nop

    :array_1
    .array-data 0x1
        0x4dt
        0x54t
        0x50t
        0x0t
    .end array-data

    .line 155
    :array_2
    .array-data 0x1
        0x55t
        0x4dt
        0x53t
        0x0t
    .end array-data

    .line 159
    :array_3
    .array-data 0x1
        0x41t
        0x53t
        0x4bt
        0x4ft
        0x4et
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 288
    new-instance v0, Lcom/android/settings/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/UsbSettings$1;-><init>(Lcom/android/settings/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/UsbSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private isKiesEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 299
    const/4 v0, 0x0

    .line 301
    .local v0, enabled:I
    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tool_launcher_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 302
    if-nez v0, :cond_0

    .line 304
    const/4 v1, 0x1

    .line 307
    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method private selectUsb(Ljava/lang/String;)V
    .locals 5
    .parameter "usb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "adb_enabled"

    .line 247
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/devices/platform/android_usb/UsbMenuSel"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 250
    .local v1, out:Ljava/io/FileOutputStream;
    :try_start_0
    const-string v2, "KIES"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    sget-object v2, Lcom/android/settings/UsbSettings;->kies:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 279
    :goto_1
    return-void

    .line 254
    :cond_1
    :try_start_1
    const-string v2, "MTP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 255
    sget-object v2, Lcom/android/settings/UsbSettings;->mtp:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 274
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    .line 257
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_3
    const-string v2, "UMS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 258
    sget-object v2, Lcom/android/settings/UsbSettings;->ums:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v2

    .line 269
    :cond_3
    :try_start_4
    const-string v2, "ASKON"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    sget-object v2, Lcom/android/settings/UsbSettings;->askon:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v7, 0x1

    const-string v8, "Usb Settings"

    .line 64
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v4, 0x7f030055

    invoke-virtual {p0, v4}, Lcom/android/settings/UsbSettings;->setContentView(I)V

    .line 68
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    iget-object v4, p0, Lcom/android/settings/UsbSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1, v5, v5}, Lcom/android/settings/UsbSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "usb_setting_mode"

    invoke-static {v4, v5, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 78
    .local v0, default_usb_setting_mode:I
    sget-object v4, Lcom/android/settings/UsbSettings;->mUSBItems:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09053c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 79
    sget-object v4, Lcom/android/settings/UsbSettings;->mUSBItems:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09053e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 80
    sget-object v4, Lcom/android/settings/UsbSettings;->mUSBItems:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090540

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    .line 91
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x109000f

    sget-object v6, Lcom/android/settings/UsbSettings;->mUSBItems:[Ljava/lang/String;

    invoke-direct {v4, p0, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/android/settings/UsbSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 96
    .local v2, listView:Landroid/widget/ListView;
    invoke-virtual {v2, v9}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 97
    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 98
    const-string v4, "Usb Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "default usb value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v4, "Usb Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUSBItems[0]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/UsbSettings;->mUSBItems:[Ljava/lang/String;

    aget-object v5, v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v4, "Usb Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUSBItems[1]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/UsbSettings;->mUSBItems:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v4, "Usb Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUSBItems[2]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/UsbSettings;->mUSBItems:[Ljava/lang/String;

    aget-object v5, v5, v10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    packed-switch v0, :pswitch_data_0

    .line 118
    :pswitch_0
    const/4 v3, 0x1

    .line 140
    .local v3, position:I
    :goto_0
    invoke-virtual {v2, v3, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 150
    return-void

    .line 109
    .end local v3           #position:I
    :pswitch_1
    const/4 v3, 0x0

    .line 110
    .restart local v3       #position:I
    goto :goto_0

    .line 112
    .end local v3           #position:I
    :pswitch_2
    const/4 v3, 0x1

    .line 113
    .restart local v3       #position:I
    goto :goto_0

    .line 115
    .end local v3           #position:I
    :pswitch_3
    const/4 v3, 0x2

    .line 116
    .restart local v3       #position:I
    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 284
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 285
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/UsbSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 286
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const-string v2, "KIES"

    .line 170
    const/4 v1, 0x2

    .line 185
    .local v1, mode:I
    packed-switch p3, :pswitch_data_0

    .line 241
    :goto_0
    const-string v2, "persist.service.usb.setting"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usb_setting_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->finish()V

    .line 244
    return-void

    .line 187
    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/UsbSettings;->isKiesEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    const-string v2, "KIES"

    invoke-direct {p0, v2}, Lcom/android/settings/UsbSettings;->selectUsb(Ljava/lang/String;)V

    .line 192
    :goto_1
    const/4 v1, 0x0

    .line 193
    goto :goto_0

    .line 190
    :cond_0
    const-string v2, "KIES"

    invoke-direct {p0, v2}, Lcom/android/settings/UsbSettings;->selectUsb(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 238
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 239
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 196
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/settings/UsbSettings;->isKiesEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 197
    const-string v2, "UMS"

    invoke-direct {p0, v2}, Lcom/android/settings/UsbSettings;->selectUsb(Ljava/lang/String;)V

    .line 201
    :goto_2
    const/4 v1, 0x2

    .line 202
    goto :goto_0

    .line 199
    :cond_1
    const-string v2, "KIES"

    invoke-direct {p0, v2}, Lcom/android/settings/UsbSettings;->selectUsb(Ljava/lang/String;)V

    goto :goto_2

    .line 205
    :pswitch_2
    const-string v2, "ASKON"

    invoke-direct {p0, v2}, Lcom/android/settings/UsbSettings;->selectUsb(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 206
    const/4 v1, 0x4

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
