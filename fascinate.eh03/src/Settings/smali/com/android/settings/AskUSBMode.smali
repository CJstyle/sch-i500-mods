.class public Lcom/android/settings/AskUSBMode;
.super Landroid/app/Activity;
.source "AskUSBMode.java"


# static fields
.field private static final askon:[B

.field private static mMTP_Button:Landroid/widget/Button;

.field private static mUMS_Button:Landroid/widget/Button;

.field private static final mtp:[B

.field private static final ums:[B


# instance fields
.field private mContext:Landroid/content/Context;

.field private final maskOnConnectionReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 38
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/AskUSBMode;->mtp:[B

    .line 39
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/AskUSBMode;->ums:[B

    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/AskUSBMode;->askon:[B

    return-void

    .line 38
    :array_0
    .array-data 0x1
        0x4dt
        0x54t
        0x50t
        0x0t
    .end array-data

    .line 39
    :array_1
    .array-data 0x1
        0x55t
        0x4dt
        0x53t
        0x0t
    .end array-data

    .line 41
    :array_2
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
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 213
    new-instance v0, Lcom/android/settings/AskUSBMode$3;

    invoke-direct {v0, p0}, Lcom/android/settings/AskUSBMode$3;-><init>(Lcom/android/settings/AskUSBMode;)V

    iput-object v0, p0, Lcom/android/settings/AskUSBMode;->maskOnConnectionReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AskUSBMode;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/AskUSBMode;->selectUsb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/AskUSBMode;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/AskUSBMode;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private registerBroadCastRec()V
    .locals 3

    .prologue
    .line 206
    const-string v1, "ASKUSBMODE"

    const-string v2, "< AskUSBMODE > Registering BroadCast receiver :::::"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 208
    .local v0, lIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/android/settings/AskUSBMode;->maskOnConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/AskUSBMode;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 211
    return-void
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
    .line 144
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/sys/devices/platform/android_usb/AskOnMenuSel"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 151
    .local v2, out:Ljava/io/FileOutputStream;
    const-string v3, "VTP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 152
    const-string v3, "ASKUSBMODE"

    const-string v4, "sending disable intent"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 154
    .local v1, i:Landroid/content/Intent;
    const-string v3, "com.android.samsung.IcsService"

    const-string v4, "com.android.samsung.IcsService.IcsService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v1}, Lcom/android/settings/AskUSBMode;->stopService(Landroid/content/Intent;)Z

    .line 165
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    :try_start_0
    const-string v3, "MTP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 166
    sget-object v3, Lcom/android/settings/AskUSBMode;->mtp:[B

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 188
    :goto_1
    return-void

    .line 169
    :cond_2
    :try_start_1
    const-string v3, "UMS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 170
    sget-object v3, Lcom/android/settings/AskUSBMode;->ums:[B

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 183
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    .line 177
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_3
    const-string v3, "ASKON"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    sget-object v3, Lcom/android/settings/AskUSBMode;->askon:[B

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/AskUSBMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/AskUSBMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usb_askon_mtp_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/AskUSBMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AskUSBMode;->mContext:Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Lcom/android/settings/AskUSBMode;->registerBroadCastRec()V

    .line 70
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/android/settings/AskUSBMode;->setContentView(I)V

    .line 73
    const v0, 0x7f0b0005

    invoke-virtual {p0, v0}, Lcom/android/settings/AskUSBMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/settings/AskUSBMode;->mMTP_Button:Landroid/widget/Button;

    .line 74
    const v0, 0x7f0b0006

    invoke-virtual {p0, v0}, Lcom/android/settings/AskUSBMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/settings/AskUSBMode;->mUMS_Button:Landroid/widget/Button;

    .line 95
    sget-object v0, Lcom/android/settings/AskUSBMode;->mMTP_Button:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/AskUSBMode$1;

    invoke-direct {v1, p0}, Lcom/android/settings/AskUSBMode$1;-><init>(Lcom/android/settings/AskUSBMode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    sget-object v0, Lcom/android/settings/AskUSBMode;->mUMS_Button:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/AskUSBMode$2;

    invoke-direct {v1, p0}, Lcom/android/settings/AskUSBMode$2;-><init>(Lcom/android/settings/AskUSBMode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 58
    iget-object v0, p0, Lcom/android/settings/AskUSBMode;->maskOnConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/AskUSBMode;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 59
    return-void
.end method
