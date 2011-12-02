.class public Lcom/android/music/common/util/BatteryChecker;
.super Landroid/os/AsyncTask;
.source "BatteryChecker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/app/Activity;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static mFinishApp:Z

.field public static mShowPopup:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field private batteryMessageBox:Landroid/app/AlertDialog;

.field private mContext:Lcom/android/music/common/util/OnLowBatteryListener;

.field private mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

.field private mHandler:Landroid/os/Handler;

.field private mLowBattery:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    sput-boolean v0, Lcom/android/music/common/util/BatteryChecker;->mShowPopup:Z

    .line 37
    sput-boolean v0, Lcom/android/music/common/util/BatteryChecker;->mFinishApp:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/music/player/service/ICorePlayerService;Lcom/android/music/common/util/OnLowBatteryListener;)V
    .locals 1
    .parameter "corePlayer"
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    const-class v0, Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/common/util/BatteryChecker;->TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/common/util/BatteryChecker;->batteryMessageBox:Landroid/app/AlertDialog;

    .line 236
    new-instance v0, Lcom/android/music/common/util/BatteryChecker$2;

    invoke-direct {v0, p0}, Lcom/android/music/common/util/BatteryChecker$2;-><init>(Lcom/android/music/common/util/BatteryChecker;)V

    iput-object v0, p0, Lcom/android/music/common/util/BatteryChecker;->mLowBattery:Ljava/lang/Runnable;

    .line 40
    iput-object p1, p0, Lcom/android/music/common/util/BatteryChecker;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    .line 41
    iput-object p2, p0, Lcom/android/music/common/util/BatteryChecker;->mContext:Lcom/android/music/common/util/OnLowBatteryListener;

    .line 42
    iget-object v0, p0, Lcom/android/music/common/util/BatteryChecker;->mContext:Lcom/android/music/common/util/OnLowBatteryListener;

    invoke-interface {v0}, Lcom/android/music/common/util/OnLowBatteryListener;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/common/util/BatteryChecker;->mHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/common/util/BatteryChecker;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/music/common/util/BatteryChecker;->batteryMessageBox:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/common/util/BatteryChecker;)Lcom/android/music/common/util/OnLowBatteryListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/music/common/util/BatteryChecker;->mContext:Lcom/android/music/common/util/OnLowBatteryListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/common/util/BatteryChecker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/music/common/util/BatteryChecker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private batteryCheck()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v9, 0x0

    .line 72
    .local v9, voltage:I
    const-string v0, "/sys/class/power_supply/battery/charging_source"

    .line 74
    .local v0, CHARGESOURCE_FILE:Ljava/lang/String;
    const/4 v5, 0x0

    .line 75
    .local v5, in:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 76
    .local v2, charging_source:I
    const/16 v10, 0xa

    new-array v1, v10, [B

    .line 77
    .local v1, buffer:[B
    const/4 v8, 0x0

    .line 78
    .local v8, value:Ljava/lang/String;
    const/4 v7, 0x0

    .line 81
    .local v7, length:I
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    const-string v10, "/sys/class/power_supply/battery/charging_source"

    invoke-direct {v6, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #in:Ljava/io/InputStream;
    .local v6, in:Ljava/io/InputStream;
    move-object v5, v6

    .line 89
    .end local v6           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :goto_0
    if-eqz v5, :cond_0

    .line 91
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 95
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 99
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    .line 100
    new-instance v8, Ljava/lang/String;

    .end local v8           #value:Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v11, 0x1

    sub-int v11, v7, v11

    invoke-direct {v8, v1, v10, v11}, Ljava/lang/String;-><init>([BII)V

    .line 106
    .restart local v8       #value:Ljava/lang/String;
    :goto_2
    if-nez v8, :cond_2

    .line 107
    const/4 v10, 0x1

    .line 132
    :goto_3
    return v10

    .line 82
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 83
    .local v3, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 85
    iget-object v10, p0, Lcom/android/music/common/util/BatteryChecker;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "charging_source FileNotFoundException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 93
    .local v3, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v10

    .line 103
    :cond_1
    iget-object v10, p0, Lcom/android/music/common/util/BatteryChecker;->TAG:Ljava/lang/String;

    const-string v11, "batteryCheck : read in length is 0.."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 108
    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 109
    iget-object v10, p0, Lcom/android/music/common/util/BatteryChecker;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "batteryCheck : charging_source is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    if-nez v2, :cond_5

    .line 114
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4
    const/4 v10, 0x5

    if-ge v4, v10, :cond_3

    .line 115
    :try_start_3
    invoke-direct {p0}, Lcom/android/music/common/util/BatteryChecker;->getVoltage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v10

    add-int/2addr v9, v10

    .line 114
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 117
    :catch_2
    move-exception v10

    move-object v3, v10

    .line 118
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 120
    iget-object v10, p0, Lcom/android/music/common/util/BatteryChecker;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "batteryCheck : IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v3           #e:Ljava/io/IOException;
    :cond_3
    div-int/lit8 v10, v9, 0x5

    const/16 v11, 0xa

    if-gt v10, v11, :cond_4

    .line 125
    iget-object v10, p0, Lcom/android/music/common/util/BatteryChecker;->TAG:Ljava/lang/String;

    const-string v11, "batteryCheck : Low Battery.."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 129
    :cond_4
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 132
    .end local v4           #i:I
    :cond_5
    const/4 v10, 0x1

    goto/16 :goto_3
.end method

.method private getVoltage()Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x64

    const/4 v12, 0x0

    .line 137
    iget-object v9, p0, Lcom/android/music/common/util/BatteryChecker;->TAG:Ljava/lang/String;

    const-string v10, "getVoltage() is called"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v0, "/sys/class/power_supply/battery/capacity"

    .line 139
    .local v0, BATT_FILE:Ljava/lang/String;
    const/16 v1, 0x64

    .line 141
    .local v1, MAX_BUFFER_SIZE:I
    const/4 v5, 0x0

    .line 142
    .local v5, in:Ljava/io/InputStream;
    new-array v2, v11, [B

    .line 143
    .local v2, buffer:[B
    const/4 v8, 0x0

    .line 144
    .local v8, value:Ljava/lang/String;
    const/4 v7, 0x0

    .line 146
    .local v7, length:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v11, :cond_0

    .line 147
    aput-byte v12, v2, v4

    .line 146
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 151
    :cond_0
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    const-string v9, "/sys/class/power_supply/battery/capacity"

    invoke-direct {v6, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #in:Ljava/io/InputStream;
    .local v6, in:Ljava/io/InputStream;
    move-object v5, v6

    .line 158
    .end local v6           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :goto_1
    if-eqz v5, :cond_1

    .line 160
    :try_start_1
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 164
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 168
    :cond_1
    :goto_2
    if-eqz v7, :cond_2

    .line 169
    new-instance v8, Ljava/lang/String;

    .end local v8           #value:Ljava/lang/String;
    const/4 v9, 0x1

    sub-int v9, v7, v9

    invoke-direct {v8, v2, v12, v9}, Ljava/lang/String;-><init>([BII)V

    .line 171
    .restart local v8       #value:Ljava/lang/String;
    :cond_2
    return-object v8

    .line 152
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 153
    .local v3, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 155
    iget-object v9, p0, Lcom/android/music/common/util/BatteryChecker;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getVoltage : FileNotFoundException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 161
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 162
    .local v3, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_2

    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v9
.end method


# virtual methods
.method public closeAlertDialog()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/music/common/util/BatteryChecker;->batteryMessageBox:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/music/common/util/BatteryChecker;->batteryMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 248
    :cond_0
    return-void
.end method

.method protected varargs doInBackground([Landroid/app/Activity;)Ljava/lang/Object;
    .locals 4
    .parameter "params"

    .prologue
    .line 53
    :try_start_0
    invoke-direct {p0}, Lcom/android/music/common/util/BatteryChecker;->batteryCheck()Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/android/music/common/util/BatteryChecker;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/music/common/util/BatteryChecker;->mLowBattery:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    iget-object v1, p0, Lcom/android/music/common/util/BatteryChecker;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/music/common/util/BatteryChecker;->mLowBattery:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 60
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 63
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/music/common/util/BatteryChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException occured 2 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    check-cast p1, [Landroid/app/Activity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/music/common/util/BatteryChecker;->doInBackground([Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeCallback()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/music/common/util/BatteryChecker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/music/common/util/BatteryChecker;->mLowBattery:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method

.method public showLowBatteryMsg(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 175
    iget-object v5, p0, Lcom/android/music/common/util/BatteryChecker;->TAG:Ljava/lang/String;

    const-string v6, "showLowBatteryMsg() is called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v5, p0, Lcom/android/music/common/util/BatteryChecker;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v5, :cond_0

    .line 178
    :try_start_0
    iget-object v5, p0, Lcom/android/music/common/util/BatteryChecker;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v5}, Lcom/android/music/player/service/ICorePlayerService;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/music/common/util/BatteryChecker;->mContext:Lcom/android/music/common/util/OnLowBatteryListener;

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/music/common/util/BatteryChecker;->batteryMessageBox:Landroid/app/AlertDialog;

    if-nez v5, :cond_2

    .line 190
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/music/common/util/BatteryChecker;->mContext:Lcom/android/music/common/util/OnLowBatteryListener;

    check-cast v5, Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/android/music/common/util/BatteryChecker;->mContext:Lcom/android/music/common/util/OnLowBatteryListener;

    check-cast v5, Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 193
    .local v2, mLayoutInflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03000a

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 194
    .local v3, myView:Landroid/view/View;
    const v5, 0x7f0c0032

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 195
    .local v4, text:Landroid/widget/TextView;
    const v5, 0x7f0a00d6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 196
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 197
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a00a5

    new-instance v7, Lcom/android/music/common/util/BatteryChecker$1;

    invoke-direct {v7, p0}, Lcom/android/music/common/util/BatteryChecker$1;-><init>(Lcom/android/music/common/util/BatteryChecker;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 216
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/common/util/BatteryChecker;->batteryMessageBox:Landroid/app/AlertDialog;

    .line 219
    sget-boolean v5, Lcom/android/music/list/activity/MpMainTabActivity;->isShownmediaMessageBox:Z

    if-ne v5, v8, :cond_1

    .line 220
    sget-object v5, Lcom/android/music/list/activity/MpMainTabActivity;->mediaMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-ne v5, v8, :cond_1

    .line 221
    sget-object v5, Lcom/android/music/list/activity/MpMainTabActivity;->mediaMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 222
    sput-boolean v9, Lcom/android/music/list/activity/MpMainTabActivity;->isShownmediaMessageBox:Z

    .line 227
    :cond_1
    iget-object v5, p0, Lcom/android/music/common/util/BatteryChecker;->batteryMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 228
    sput-boolean v8, Lcom/android/music/common/util/BatteryChecker;->mShowPopup:Z

    .line 232
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #mLayoutInflater:Landroid/view/LayoutInflater;
    .end local v3           #myView:Landroid/view/View;
    .end local v4           #text:Landroid/widget/TextView;
    :cond_2
    return-void

    .line 179
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 181
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "MusicPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException occured :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
