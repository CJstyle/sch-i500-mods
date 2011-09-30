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

    .line 40
    sput-boolean v0, Lcom/android/music/common/util/BatteryChecker;->mShowPopup:Z

    .line 42
    sput-boolean v0, Lcom/android/music/common/util/BatteryChecker;->mFinishApp:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/music/common/util/OnLowBatteryListener;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 35
    const-class v0, Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/common/util/BatteryChecker;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/common/util/BatteryChecker;->batteryMessageBox:Landroid/app/AlertDialog;

    .line 275
    new-instance v0, Lcom/android/music/common/util/BatteryChecker$3;

    invoke-direct {v0, p0}, Lcom/android/music/common/util/BatteryChecker$3;-><init>(Lcom/android/music/common/util/BatteryChecker;)V

    iput-object v0, p0, Lcom/android/music/common/util/BatteryChecker;->mLowBattery:Ljava/lang/Runnable;

    .line 53
    iput-object p1, p0, Lcom/android/music/common/util/BatteryChecker;->mContext:Lcom/android/music/common/util/OnLowBatteryListener;

    .line 54
    iget-object v0, p0, Lcom/android/music/common/util/BatteryChecker;->mContext:Lcom/android/music/common/util/OnLowBatteryListener;

    invoke-interface {v0}, Lcom/android/music/common/util/OnLowBatteryListener;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/common/util/BatteryChecker;->mHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/common/util/BatteryChecker;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/music/common/util/BatteryChecker;->batteryMessageBox:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/common/util/BatteryChecker;)Lcom/android/music/common/util/OnLowBatteryListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/music/common/util/BatteryChecker;->mContext:Lcom/android/music/common/util/OnLowBatteryListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/common/util/BatteryChecker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
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
    .line 82
    const/4 v9, 0x0

    .line 84
    .local v9, voltage:I
    const-string v0, "/sys/class/power_supply/battery/charging_source"

    .line 86
    .local v0, CHARGESOURCE_FILE:Ljava/lang/String;
    const/4 v5, 0x0

    .line 87
    .local v5, in:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 88
    .local v2, charging_source:I
    const/16 v10, 0xa

    new-array v1, v10, [B

    .line 89
    .local v1, buffer:[B
    const/4 v8, 0x0

    .line 90
    .local v8, value:Ljava/lang/String;
    const/4 v7, 0x0

    .line 93
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

    .line 101
    .end local v6           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :goto_0
    if-eqz v5, :cond_0

    .line 103
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 107
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 111
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    .line 112
    new-instance v8, Ljava/lang/String;

    .end local v8           #value:Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v11, 0x1

    sub-int v11, v7, v11

    invoke-direct {v8, v1, v10, v11}, Ljava/lang/String;-><init>([BII)V

    .line 118
    .restart local v8       #value:Ljava/lang/String;
    :goto_2
    if-nez v8, :cond_2

    .line 119
    const/4 v10, 0x1

    .line 144
    :goto_3
    return v10

    .line 94
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 95
    .local v3, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 97
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

    .line 104
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 105
    .local v3, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v10

    .line 115
    :cond_1
    iget-object v10, p0, Lcom/android/music/common/util/BatteryChecker;->TAG:Ljava/lang/String;

    const-string v11, "batteryCheck : read in length is 0.."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 120
    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 121
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

    .line 124
    if-nez v2, :cond_5

    .line 126
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4
    const/4 v10, 0x5

    if-ge v4, v10, :cond_3

    .line 127
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

    .line 126
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 129
    :catch_2
    move-exception v10

    move-object v3, v10

    .line 130
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 132
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

    .line 136
    .end local v3           #e:Ljava/io/IOException;
    :cond_3
    div-int/lit8 v10, v9, 0x5

    const/16 v11, 0xa

    if-gt v10, v11, :cond_4

    .line 137
    iget-object v10, p0, Lcom/android/music/common/util/BatteryChecker;->TAG:Ljava/lang/String;

    const-string v11, "batteryCheck : Low Battery.."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 141
    :cond_4
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 144
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

    .line 149
    iget-object v9, p0, Lcom/android/music/common/util/BatteryChecker;->TAG:Ljava/lang/String;

    const-string v10, "getVoltage() is called"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v0, "/sys/class/power_supply/battery/capacity"

    .line 151
    .local v0, BATT_FILE:Ljava/lang/String;
    const/16 v1, 0x64

    .line 153
    .local v1, MAX_BUFFER_SIZE:I
    const/4 v5, 0x0

    .line 154
    .local v5, in:Ljava/io/InputStream;
    new-array v2, v11, [B

    .line 155
    .local v2, buffer:[B
    const/4 v8, 0x0

    .line 156
    .local v8, value:Ljava/lang/String;
    const/4 v7, 0x0

    .line 158
    .local v7, length:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v11, :cond_0

    .line 159
    aput-byte v12, v2, v4

    .line 158
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 163
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

    .line 170
    .end local v6           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :goto_1
    if-eqz v5, :cond_1

    .line 172
    :try_start_1
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 176
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 180
    :cond_1
    :goto_2
    if-eqz v7, :cond_2

    .line 181
    new-instance v8, Ljava/lang/String;

    .end local v8           #value:Ljava/lang/String;
    const/4 v9, 0x1

    sub-int v9, v7, v9

    invoke-direct {v8, v2, v12, v9}, Ljava/lang/String;-><init>([BII)V

    .line 183
    .restart local v8       #value:Ljava/lang/String;
    :cond_2
    return-object v8

    .line 164
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 165
    .local v3, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 167
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

    .line 173
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 174
    .local v3, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
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
    .line 285
    iget-object v0, p0, Lcom/android/music/common/util/BatteryChecker;->batteryMessageBox:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/music/common/util/BatteryChecker;->batteryMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 287
    :cond_0
    return-void
.end method

.method protected varargs doInBackground([Landroid/app/Activity;)Ljava/lang/Object;
    .locals 4
    .parameter "params"

    .prologue
    .line 65
    :try_start_0
    invoke-direct {p0}, Lcom/android/music/common/util/BatteryChecker;->batteryCheck()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/music/common/util/BatteryChecker;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/music/common/util/BatteryChecker;->mLowBattery:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    iget-object v1, p0, Lcom/android/music/common/util/BatteryChecker;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/music/common/util/BatteryChecker;->mLowBattery:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 72
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 75
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
    .line 33
    check-cast p1, [Landroid/app/Activity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/music/common/util/BatteryChecker;->doInBackground([Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeCallback()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/music/common/util/BatteryChecker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/music/common/util/BatteryChecker;->mLowBattery:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method

.method public showLowBatteryMsg(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 187
    iget-object v2, p0, Lcom/android/music/common/util/BatteryChecker;->TAG:Ljava/lang/String;

    const-string v3, "showLowBatteryMsg() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v2, p0, Lcom/android/music/common/util/BatteryChecker;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v2, :cond_0

    .line 190
    :try_start_0
    iget-object v2, p0, Lcom/android/music/common/util/BatteryChecker;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v2}, Lcom/android/music/player/service/ICorePlayerService;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/music/common/util/BatteryChecker;->mContext:Lcom/android/music/common/util/OnLowBatteryListener;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/music/common/util/BatteryChecker;->batteryMessageBox:Landroid/app/AlertDialog;

    if-nez v2, :cond_1

    .line 202
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/music/common/util/BatteryChecker;->mContext:Lcom/android/music/common/util/OnLowBatteryListener;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 204
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a00fb

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 205
    const v2, 0x7f0a00dd

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 208
    const v2, 0x104000a

    new-instance v3, Lcom/android/music/common/util/BatteryChecker$1;

    invoke-direct {v3, p0}, Lcom/android/music/common/util/BatteryChecker$1;-><init>(Lcom/android/music/common/util/BatteryChecker;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 218
    new-instance v2, Lcom/android/music/common/util/BatteryChecker$2;

    invoke-direct {v2, p0}, Lcom/android/music/common/util/BatteryChecker$2;-><init>(Lcom/android/music/common/util/BatteryChecker;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 254
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/common/util/BatteryChecker;->batteryMessageBox:Landroid/app/AlertDialog;

    .line 266
    iget-object v2, p0, Lcom/android/music/common/util/BatteryChecker;->batteryMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 267
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/music/common/util/BatteryChecker;->mShowPopup:Z

    .line 271
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    return-void

    .line 191
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 193
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "MusicPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException occured :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
