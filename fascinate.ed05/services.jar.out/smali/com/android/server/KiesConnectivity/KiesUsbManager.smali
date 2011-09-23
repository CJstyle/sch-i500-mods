.class public Lcom/android/server/KiesConnectivity/KiesUsbManager;
.super Ljava/lang/Object;
.source "KiesUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;
    }
.end annotation


# static fields
.field private static final KIES_CONNECTED:Ljava/lang/String; = "com.android.server.KiesConnectivity.action.MTP_CONNECTED"

.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "KiesUsbManager"

.field private static final USB_SETTING_MODE:Ljava/lang/String; = "usb_setting_mode"


# instance fields
.field private final INIT:[B

.field private final KIESSTATUS_PATH:Ljava/lang/String;

.field private final START:[B

.field private final STOP:[B

.field private final USBMENUSEL_PATH:Ljava/lang/String;

.field private final askon:[B

.field private context:Landroid/content/Context;

.field private final kies:[B

.field private final kies_real:[B

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mKiesRun:Z

.field private mVTPRun:Z

.field private final mtp:[B

.field private final ums:[B


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "mContext"

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v1, 0x5

    const-string v2, "KiesUsbManager"

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "/sys/class/sec/switch/UsbMenuSel"

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->USBMENUSEL_PATH:Ljava/lang/String;

    .line 33
    const-string v0, "/sys/class/sec/switch/KiesStatus"

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->KIESSTATUS_PATH:Ljava/lang/String;

    .line 34
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->kies:[B

    .line 35
    new-array v0, v4, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mtp:[B

    .line 36
    new-array v0, v4, [B

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->ums:[B

    .line 37
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->kies_real:[B

    .line 38
    new-array v0, v5, [B

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->askon:[B

    .line 39
    new-array v0, v5, [B

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->START:[B

    .line 40
    new-array v0, v1, [B

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->STOP:[B

    .line 41
    new-array v0, v1, [B

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->INIT:[B

    .line 49
    iput-boolean v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mKiesRun:Z

    .line 50
    iput-boolean v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mVTPRun:Z

    .line 53
    const-string v0, "KiesUsbManager"

    const-string v0, "KiesUsbManager"

    invoke-static {v2, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iput-object p1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->context:Landroid/content/Context;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 56
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KiesUsbManager"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 57
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 58
    new-instance v0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;

    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;-><init>(Lcom/android/server/KiesConnectivity/KiesUsbManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mHandler:Landroid/os/Handler;

    .line 60
    return-void

    .line 34
    :array_0
    .array-data 0x1
        0x4bt
        0x49t
        0x45t
        0x53t
        0x0t
    .end array-data

    .line 35
    nop

    :array_1
    .array-data 0x1
        0x4dt
        0x54t
        0x50t
        0x0t
    .end array-data

    .line 36
    :array_2
    .array-data 0x1
        0x55t
        0x4dt
        0x53t
        0x0t
    .end array-data

    .line 37
    :array_3
    .array-data 0x1
        0x4bt
        0x49t
        0x45t
        0x53t
        0x5ft
        0x52t
        0x45t
        0x41t
        0x4ct
        0x0t
    .end array-data

    .line 38
    nop

    :array_4
    .array-data 0x1
        0x41t
        0x53t
        0x4bt
        0x4ft
        0x4et
        0x0t
    .end array-data

    .line 39
    nop

    :array_5
    .array-data 0x1
        0x53t
        0x54t
        0x41t
        0x52t
        0x54t
        0x0t
    .end array-data

    .line 40
    nop

    :array_6
    .array-data 0x1
        0x53t
        0x54t
        0x4ft
        0x50t
        0x0t
    .end array-data

    .line 41
    nop

    :array_7
    .array-data 0x1
        0x49t
        0x4et
        0x49t
        0x54t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/KiesConnectivity/KiesUsbManager;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/KiesConnectivity/KiesUsbManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mVTPRun:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/KiesConnectivity/KiesUsbManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mVTPRun:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/KiesConnectivity/KiesUsbManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->getKiesRun()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/KiesConnectivity/KiesUsbManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->setKiesRun(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/KiesConnectivity/KiesUsbManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->setKiesStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->setCDFSInsert()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/KiesConnectivity/KiesUsbManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->selectUsb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->setCDFSEject()V

    return-void
.end method

.method private getKiesRun()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mKiesRun:Z

    return v0
.end method

.method private selectUsb(Ljava/lang/String;)V
    .locals 7
    .parameter "usb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v4, "/sys/class/sec/switch/UsbMenuSel"

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 86
    .local v2, out:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 89
    .local v3, usbConfig:[B
    :try_start_0
    const-string v4, "KIES"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 90
    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->kies:[B

    .line 101
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 102
    const-string v4, "KiesUsbManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectUsb -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 106
    :cond_1
    iget-object v4, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->kies_real:[B

    if-eq v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mtp:[B

    if-ne v3, v4, :cond_3

    .line 107
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.server.KiesConnectivity.action.MTP_CONNECTED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "KIES_CONNECT"

    const-string v5, "UMS_DISCONNECTED"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iget-object v4, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->context:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    :goto_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 116
    return-void

    .line 91
    :cond_4
    :try_start_1
    const-string v4, "KIES_REAL"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 92
    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->kies_real:[B

    goto :goto_0

    .line 93
    :cond_5
    const-string v4, "ASKON"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 94
    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->askon:[B

    goto :goto_0

    .line 95
    :cond_6
    const-string v4, "UMS"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 96
    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->ums:[B

    goto :goto_0

    .line 97
    :cond_7
    const-string v4, "MTP"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mtp:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 112
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 114
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v4
.end method

.method private setCDFSEject()V
    .locals 2

    .prologue
    .line 71
    const-string v0, "KiesUsbManager"

    const-string v1, "setCDFSEject"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v0, "cdfs.state"

    const-string v1, "disable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method private setCDFSInsert()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "KiesUsbManager"

    const-string v1, "setCDFSInsert"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v0, "cdfs.state"

    const-string v1, "enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method private setKiesRun(Z)V
    .locals 3
    .parameter "bRun"

    .prologue
    .line 76
    const-string v0, "KiesUsbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKiesRun -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iput-boolean p1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mKiesRun:Z

    .line 78
    return-void
.end method

.method private setKiesStatus(Ljava/lang/String;)V
    .locals 6
    .parameter "strKiesStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/sys/class/sec/switch/KiesStatus"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 120
    .local v2, out:Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 123
    .local v1, kiesStatus:[B
    :try_start_0
    const-string v3, "INIT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 124
    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->INIT:[B

    .line 131
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 132
    const-string v3, "KiesUsbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setKiesStatus -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 140
    return-void

    .line 125
    :cond_2
    :try_start_1
    const-string v3, "START"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 126
    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->START:[B

    goto :goto_0

    .line 127
    :cond_3
    const-string v3, "STOP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->STOP:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 136
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 138
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v3
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
