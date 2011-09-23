.class Lcom/android/server/BatteryService;
.super Landroid/os/Binder;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryService$LowBatteryPowerOffCheckThread;
    }
.end annotation


# static fields
.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field static final BATTERY_SCALE:I = 0x64

.field private static final BATTERY_STATS_SERVICE_NAME:Ljava/lang/String; = "batteryinfo"

.field private static final CRITICAL_BATTERY_LEVEL:I = 0x5

.field private static final DUMPSYS_ARGS:[Ljava/lang/String; = null

.field private static final DUMPSYS_DATA_PATH:Ljava/lang/String; = "/data/system/"

.field private static final DUMP_MAX_LENGTH:I = 0x6000

.field public static final FUELGAUGE_RELEASE_BATT_LEVEL:I = 0x6

.field private static final LOCAL_LOGV:Z

.field public static final SHUTDOWNBATLEVEL:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private lpoThread:Lcom/android/server/BatteryService$LowBatteryPowerOffCheckThread;

.field private mAcOnline:Z

.field private mBatteryDecimalPoint:I

.field private mBatteryFullBeforeSystemReady:Z

.field private mBatteryFullNotification:Landroid/app/Notification;

.field private mBatteryHealth:I

.field private mBatteryLevel:I

.field private mBatteryLevelCritical:Z

.field private mBatteryPresent:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryStatus:I

.field private mBatteryTechnology:Ljava/lang/String;

.field private mBatteryTemperature:I

.field private mBatteryVoltage:I

.field private final mContext:Landroid/content/Context;

.field private mDischargeStartLevel:I

.field private mDischargeStartTime:J

.field private mLastBatteryHealth:I

.field private mLastBatteryLevel:I

.field private mLastBatteryLevelCritical:Z

.field private mLastBatteryPresent:Z

.field private mLastBatteryStatus:I

.field private mLastBatteryTemperature:I

.field private mLastBatteryVoltage:I

.field private mLastPlugType:I

.field private mLowBattAlert:Z

.field private mLowBatteryCloseWarningLevel:I

.field private mLowBatteryWarningLevel:I

.field private mPlugNotification:Landroid/app/Notification;

.field private mPlugType:I

.field private mSentLowBatteryBroadcast:Z

.field private mUEventObserver:Landroid/os/UEventObserver;

.field private mUsbOnline:Z

.field private mWasBatteryLowButNotSend:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    const-class v0, Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "--checkin"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-u"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 114
    iput v1, p0, Lcom/android/server/BatteryService;->mBatteryDecimalPoint:I

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 137
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 139
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mWasBatteryLowButNotSend:Z

    .line 141
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mBatteryFullBeforeSystemReady:Z

    .line 189
    new-instance v0, Lcom/android/server/BatteryService$1;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mUEventObserver:Landroid/os/UEventObserver;

    .line 383
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mLowBattAlert:Z

    .line 147
    iput-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 148
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 150
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 152
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 155
    iget-object v0, p0, Lcom/android/server/BatteryService;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v1, "SUBSYSTEM=power_supply"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lcom/android/server/BatteryService;->update()V

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BatteryService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/server/BatteryService;->update()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/BatteryService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/BatteryService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/server/BatteryService;->native_update()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/BatteryService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/BatteryService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryDecimalPoint:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/BatteryService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/BatteryService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/BatteryService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfNoPower()V

    return-void
.end method

.method private final getIcon(I)I
    .locals 2
    .parameter "level"

    .prologue
    .line 734
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 735
    const v0, 0x10802ac

    .line 742
    :goto_0
    return v0

    .line 736
    :cond_0
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 737
    const v0, 0x10802a5

    goto :goto_0

    .line 738
    :cond_1
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 740
    :cond_2
    const v0, 0x108029d

    goto :goto_0

    .line 742
    :cond_3
    const v0, 0x10802ad

    goto :goto_0
.end method

.method private final logBatteryStats()V
    .locals 12

    .prologue
    const-string v9, "BATTERY_DISCHARGE_INFO"

    const-string v11, "failed to delete temporary dumpsys file: "

    const-string v10, "failed to close dumpsys output stream"

    .line 667
    const-string v7, "batteryinfo"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 668
    .local v0, batteryInfoService:Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v8, "dropbox"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    .line 671
    .local v1, db:Landroid/os/DropBoxManager;
    if-eqz v1, :cond_0

    const-string v7, "BATTERY_DISCHARGE_INFO"

    invoke-virtual {v1, v9}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 673
    const/4 v2, 0x0

    .line 674
    .local v2, dumpFile:Ljava/io/File;
    const/4 v4, 0x0

    .line 677
    .local v4, dumpStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/system/batteryinfo.dump"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 678
    .end local v2           #dumpFile:Ljava/io/File;
    .local v3, dumpFile:Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 679
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .local v5, dumpStream:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    sget-object v8, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 680
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V

    .line 683
    const-string v7, "BATTERY_DISCHARGE_INFO"

    const/4 v8, 0x2

    invoke-virtual {v1, v7, v3, v8}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 690
    if-eqz v5, :cond_2

    .line 692
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 697
    :cond_2
    :goto_1
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_7

    .line 698
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_0

    .line 693
    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    .line 694
    .local v6, e:Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 684
    .end local v3           #dumpFile:Ljava/io/File;
    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .end local v6           #e:Ljava/io/IOException;
    .restart local v2       #dumpFile:Ljava/io/File;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v7

    move-object v6, v7

    .line 685
    .local v6, e:Landroid/os/RemoteException;
    :goto_2
    :try_start_4
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to dump battery service"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 690
    if-eqz v4, :cond_3

    .line 692
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 697
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_3
    :goto_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 698
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 693
    .restart local v6       #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v6

    .line 694
    .local v6, e:Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 686
    .end local v6           #e:Ljava/io/IOException;
    :catch_3
    move-exception v7

    move-object v6, v7

    .line 687
    .restart local v6       #e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to write dumpsys file"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 690
    if-eqz v4, :cond_4

    .line 692
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 697
    :cond_4
    :goto_5
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 698
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 693
    :catch_4
    move-exception v6

    .line 694
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 690
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v4, :cond_5

    .line 692
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 697
    :cond_5
    :goto_7
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_6

    .line 698
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to delete temporary dumpsys file: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    throw v7

    .line 693
    :catch_5
    move-exception v6

    .line 694
    .restart local v6       #e:Ljava/io/IOException;
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "failed to close dumpsys output stream"

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 690
    .end local v2           #dumpFile:Ljava/io/File;
    .end local v6           #e:Ljava/io/IOException;
    .restart local v3       #dumpFile:Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_6

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_6

    .line 686
    .end local v2           #dumpFile:Ljava/io/File;
    .restart local v3       #dumpFile:Ljava/io/File;
    :catch_6
    move-exception v7

    move-object v6, v7

    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_4

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v7

    move-object v6, v7

    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_4

    .line 684
    .end local v2           #dumpFile:Ljava/io/File;
    .restart local v3       #dumpFile:Ljava/io/File;
    :catch_8
    move-exception v7

    move-object v6, v7

    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto/16 :goto_2

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v7

    move-object v6, v7

    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto/16 :goto_2

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :cond_7
    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto/16 :goto_0
.end method

.method private final logOutlier(J)V
    .locals 10
    .parameter "duration"

    .prologue
    .line 705
    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 706
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v7, "battery_discharge_threshold"

    invoke-static {v0, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 708
    .local v2, dischargeThresholdString:Ljava/lang/String;
    const-string v7, "battery_discharge_duration_threshold"

    invoke-static {v0, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 711
    .local v5, durationThresholdString:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v5, :cond_0

    .line 713
    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 714
    .local v3, durationThreshold:J
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 715
    .local v1, dischargeThreshold:I
    cmp-long v7, p1, v3

    if-gtz v7, :cond_0

    iget v7, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    sub-int/2addr v7, v8

    if-lt v7, v1, :cond_0

    .line 718
    invoke-direct {p0}, Lcom/android/server/BatteryService;->logBatteryStats()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    .end local v1           #dischargeThreshold:I
    .end local v3           #durationThreshold:J
    :cond_0
    :goto_0
    return-void

    .line 724
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 725
    .local v6, e:Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid DischargeThresholds GService string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " or "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native native_update()V
.end method

.method private final notifyIfBatteryFull()V
    .locals 15

    .prologue
    const/4 v13, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x5

    const/4 v12, 0x0

    const-string v14, "notification"

    .line 305
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v8

    if-nez v8, :cond_2

    .line 306
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    if-ne v10, v8, :cond_1

    .line 307
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "System is not ready and Battery is full"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iput-boolean v11, p0, Lcom/android/server/BatteryService;->mBatteryFullBeforeSystemReady:Z

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iput-boolean v12, p0, Lcom/android/server/BatteryService;->mBatteryFullBeforeSystemReady:Z

    goto :goto_0

    .line 313
    :cond_2
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v8, v9, :cond_3

    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mBatteryFullBeforeSystemReady:Z

    if-eqz v8, :cond_0

    .line 314
    :cond_3
    iput-boolean v12, p0, Lcom/android/server/BatteryService;->mBatteryFullBeforeSystemReady:Z

    .line 316
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    if-ne v10, v8, :cond_9

    .line 317
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "Battery is full"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v8, "power"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v5

    .line 322
    .local v5, powerManager:Landroid/os/IPowerManager;
    if-nez v5, :cond_4

    .line 323
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "notifyIfBatteryFull : fail to get PowerManager reference"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface {v5, v8, v9, v10, v11}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_1
    iget-object v8, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 334
    .local v3, notificationManager:Landroid/app/NotificationManager;
    if-nez v3, :cond_5

    .line 335
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "notifyIfBatteryFull : fail to get NotificationManager reference"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 339
    :cond_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 340
    .local v6, r:Landroid/content/res/Resources;
    const v8, 0x1040474

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 341
    .local v7, title:Ljava/lang/CharSequence;
    const v8, 0x1040476

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 343
    .local v2, message:Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    if-nez v8, :cond_6

    .line 344
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    iput-object v8, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    .line 345
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    const v9, 0x10803a3

    iput v9, v8, Landroid/app/Notification;->icon:I

    .line 346
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Landroid/app/Notification;->when:J

    .line 349
    :cond_6
    iget-object v8, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 351
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    if-ne v8, v13, :cond_8

    .line 352
    :cond_7
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    const-string v9, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, v8, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 353
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    iget v9, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v9, v9, -0x3

    iput v9, v8, Landroid/app/Notification;->defaults:I

    .line 358
    :goto_2
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    iput v13, v8, Landroid/app/Notification;->flags:I

    .line 359
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    iput-object v2, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 361
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 362
    .local v1, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-static {v8, v12, v1, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 364
    .local v4, pi:Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    iget-object v9, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v7, v2, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 366
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    iget v8, v8, Landroid/app/Notification;->icon:I

    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    invoke-virtual {v3, v8, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 355
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #pi:Landroid/app/PendingIntent;
    :cond_8
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    iget v9, v8, Landroid/app/Notification;->defaults:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v8, Landroid/app/Notification;->defaults:I

    goto :goto_2

    .line 367
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v2           #message:Ljava/lang/CharSequence;
    .end local v3           #notificationManager:Landroid/app/NotificationManager;
    .end local v5           #powerManager:Landroid/os/IPowerManager;
    .end local v6           #r:Landroid/content/res/Resources;
    .end local v7           #title:Ljava/lang/CharSequence;
    :cond_9
    iget v8, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v10, v8, :cond_0

    .line 368
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "Battery was full but is not full now"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v8, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 371
    .restart local v3       #notificationManager:Landroid/app/NotificationManager;
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    if-eqz v8, :cond_a

    .line 372
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    iget v8, v8, Landroid/app/Notification;->icon:I

    invoke-virtual {v3, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 374
    :cond_a
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "have not registered notification."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 329
    .end local v3           #notificationManager:Landroid/app/NotificationManager;
    .restart local v5       #powerManager:Landroid/os/IPowerManager;
    :catch_0
    move-exception v8

    goto/16 :goto_1
.end method

.method private final notifyPlugCharger()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    .line 250
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long v3, v7, v9

    .line 251
    .local v3, now:J
    const-wide/16 v7, 0x28

    cmp-long v7, v3, v7

    if-gez v7, :cond_1

    .line 252
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "If you want to hear notification sound for TA detecting, Time should be reach 40 sec from boot. But now is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " sec"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget v7, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    iget v8, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-eq v7, v8, :cond_2

    .line 255
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CHARGER :: mBatteryStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_2
    iget v7, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    iget v8, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-eq v7, v8, :cond_0

    iget v7, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    if-ne v7, v11, :cond_0

    .line 260
    :try_start_0
    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 261
    .local v2, notificationManager:Landroid/app/NotificationManager;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/BatteryService;->mPlugNotification:Landroid/app/Notification;

    .line 262
    iget-object v7, p0, Lcom/android/server/BatteryService;->mPlugNotification:Landroid/app/Notification;

    if-nez v7, :cond_3

    .line 263
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    iput-object v7, p0, Lcom/android/server/BatteryService;->mPlugNotification:Landroid/app/Notification;

    .line 264
    iget-object v7, p0, Lcom/android/server/BatteryService;->mPlugNotification:Landroid/app/Notification;

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Landroid/app/Notification;->when:J

    .line 267
    :cond_3
    if-eqz v2, :cond_0

    .line 268
    const v1, 0x108001e

    .line 270
    .local v1, notificationId:I
    const/4 v5, -0x1

    .line 272
    .local v5, ringerMode:I
    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    .line 273
    .local v6, tAM:Landroid/media/AudioManager;
    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    .line 276
    if-ne v5, v11, :cond_4

    .line 277
    iget-object v7, p0, Lcom/android/server/BatteryService;->mPlugNotification:Landroid/app/Notification;

    const-string v8, "system/media/audio/ui/Charger_Connection.ogg"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, v7, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 281
    :goto_1
    const v7, 0x108001e

    iget-object v8, p0, Lcom/android/server/BatteryService;->mPlugNotification:Landroid/app/Notification;

    invoke-virtual {v2, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    .end local v1           #notificationId:I
    .end local v2           #notificationManager:Landroid/app/NotificationManager;
    .end local v5           #ringerMode:I
    .end local v6           #tAM:Landroid/media/AudioManager;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 286
    .local v0, ex:Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 279
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #notificationId:I
    .restart local v2       #notificationManager:Landroid/app/NotificationManager;
    .restart local v5       #ringerMode:I
    .restart local v6       #tAM:Landroid/media/AudioManager;
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/android/server/BatteryService;->mPlugNotification:Landroid/app/Notification;

    iget v8, v7, Landroid/app/Notification;->defaults:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v7, Landroid/app/Notification;->defaults:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private final sendIntent()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    .line 630
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 631
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x6000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 634
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-interface {v2, v3, v4}, Lcom/android/internal/app/IBatteryStats;->setOnBattery(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    :goto_1
    iget v2, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->getIcon(I)I

    move-result v0

    .line 641
    .local v0, icon:I
    const-string v2, "status"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 642
    const-string v2, "health"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 643
    const-string v2, "present"

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 644
    const-string v2, "level"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 645
    const-string v2, "scale"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 646
    const-string v2, "icon-small"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 647
    const-string v2, "plugged"

    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 648
    const-string v2, "voltage"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 649
    const-string v2, "temperature"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 650
    const-string v2, "technology"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryTechnology:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBattery level:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scale:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " health:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " present:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " voltage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " temperature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " technology: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryTechnology:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AC powered:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " USB powered:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " icon:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 664
    return-void

    .line 634
    .end local v0           #icon:I
    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 635
    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method

.method private final shutdownIfNoPower()V
    .locals 3

    .prologue
    .line 226
    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryDecimalPoint:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->isPowered()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 230
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 231
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 232
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "No power and Send ACTION_REQUEST_SHUTDOWN"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private final shutdownIfOverTemp()V
    .locals 3

    .prologue
    .line 296
    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    const/16 v2, 0x2a8

    if-le v1, v2, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 299
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 300
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 302
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private final declared-synchronized update()V
    .locals 12

    .prologue
    .line 447
    monitor-enter p0

    :try_start_0
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "update start"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-direct {p0}, Lcom/android/server/BatteryService;->native_update()V

    .line 450
    const/4 v2, 0x0

    .line 451
    .local v2, logOutlier:Z
    const-wide/16 v0, 0x0

    .line 452
    .local v0, dischargeDuration:J
    iget-object v8, p0, Lcom/android/server/BatteryService;->lpoThread:Lcom/android/server/BatteryService$LowBatteryPowerOffCheckThread;

    if-nez v8, :cond_0

    new-instance v8, Lcom/android/server/BatteryService$LowBatteryPowerOffCheckThread;

    invoke-direct {v8, p0}, Lcom/android/server/BatteryService$LowBatteryPowerOffCheckThread;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v8, p0, Lcom/android/server/BatteryService;->lpoThread:Lcom/android/server/BatteryService$LowBatteryPowerOffCheckThread;

    .line 456
    :cond_0
    #invoke-direct {p0}, Lcom/android/server/BatteryService;->notifyIfBatteryFull()V

    .line 458
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    const/4 v9, 0x5

    if-gt v8, v9, :cond_11

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    .line 459
    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    if-eqz v8, :cond_12

    .line 460
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 467
    :goto_1
    invoke-direct {p0}, Lcom/android/server/BatteryService;->notifyPlugCharger()V

    .line 469
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v8, v9, :cond_1

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v8, v9, :cond_1

    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    iget-boolean v9, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v8, v9, :cond_1

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v8, v9, :cond_1

    iget v8, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-ne v8, v9, :cond_1

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    if-ne v8, v9, :cond_1

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    if-eq v8, v9, :cond_10

    .line 477
    :cond_1
    iget v8, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v8, v9, :cond_2

    .line 478
    iget v8, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v8, :cond_14

    .line 483
    iget-wide v8, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget v9, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    if-eq v8, v9, :cond_2

    .line 484
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v0, v8, v10

    .line 485
    const/4 v2, 0x1

    .line 486
    const/16 v8, 0xaaa

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget v11, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget v11, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 489
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 497
    :cond_2
    :goto_2
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v8, v9, :cond_3

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v8, v9, :cond_3

    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    iget-boolean v9, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v8, v9, :cond_3

    iget v8, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v8, v9, :cond_4

    .line 501
    :cond_3
    const/16 v8, 0xaa3

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget v11, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-boolean v11, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    if-eqz v11, :cond_15

    const/4 v11, 0x1

    :goto_3
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget v11, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    iget-object v11, p0, Lcom/android/server/BatteryService;->mBatteryTechnology:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 505
    :cond_4
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v8, v9, :cond_5

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    if-ne v8, v9, :cond_5

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    if-eq v8, v9, :cond_6

    .line 508
    :cond_5
    const/16 v8, 0xaa2

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget v11, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget v11, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 511
    :cond_6
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-eq v8, v9, :cond_7

    iget v8, p0, Lcom/android/server/BatteryService;->mPlugType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_7

    .line 516
    :try_start_1
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v9, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-interface {v8, v9}, Lcom/android/internal/app/IBatteryStats;->recordCurrentLevel(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 521
    :cond_7
    :goto_4
    :try_start_2
    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v8, :cond_8

    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    if-nez v8, :cond_8

    iget v8, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v8, :cond_8

    .line 525
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v0, v8, v10

    .line 526
    const/4 v2, 0x1

    .line 529
    :cond_8
    iget v8, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v8, :cond_16

    const/4 v8, 0x1

    move v4, v8

    .line 530
    .local v4, plugged:Z
    :goto_5
    iget v8, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v8, :cond_17

    const/4 v8, 0x1

    move v3, v8

    .line 538
    .local v3, oldPlugged:Z
    :goto_6
    if-nez v4, :cond_18

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_18

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v8, v9, :cond_18

    if-nez v3, :cond_9

    iget v8, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-le v8, v9, :cond_18

    :cond_9
    const/4 v8, 0x1

    move v6, v8

    .line 543
    .local v6, sendBatteryLow:Z
    :goto_7
    if-nez v4, :cond_19

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_19

    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v8, :cond_19

    if-nez v3, :cond_a

    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    if-nez v8, :cond_19

    :cond_a
    const/4 v8, 0x1

    move v5, v8

    .line 548
    .local v5, sendBatteryCritical:Z
    :goto_8
    invoke-direct {p0}, Lcom/android/server/BatteryService;->sendIntent()V

    .line 553
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 554
    .local v7, statusIntent:Landroid/content/Intent;
    const/high16 v8, 0x1000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 555
    iget v8, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v8, :cond_1a

    iget v8, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v8, :cond_1a

    .line 556
    const-string v8, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    iget-object v8, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 564
    :cond_b
    :goto_9
    if-nez v6, :cond_c

    if-nez v5, :cond_c

    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mWasBatteryLowButNotSend:Z

    if-eqz v8, :cond_d

    .line 565
    :cond_c
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v8

    if-nez v8, :cond_1b

    .line 566
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "Battery is (critical) low but system is not ready"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/BatteryService;->mWasBatteryLowButNotSend:Z

    .line 568
    const/4 v6, 0x0

    .line 569
    const/4 v5, 0x0

    .line 585
    :cond_d
    :goto_a
    if-eqz v5, :cond_20

    .line 586
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 587
    const-string v8, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    iget-object v8, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 589
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "Battery is critical and send ACTION_BATTERY_LOW"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_e
    :goto_b
    if-eqz v2, :cond_f

    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-eqz v8, :cond_f

    .line 614
    invoke-direct {p0, v0, v1}, Lcom/android/server/BatteryService;->logOutlier(J)V

    .line 617
    :cond_f
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    iput v8, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 618
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    iput v8, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    .line 619
    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    iput-boolean v8, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    .line 620
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iput v8, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 621
    iget v8, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iput v8, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 622
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    iput v8, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    .line 623
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    iput v8, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    .line 624
    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    iput-boolean v8, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 626
    .end local v3           #oldPlugged:Z
    .end local v4           #plugged:Z
    .end local v5           #sendBatteryCritical:Z
    .end local v6           #sendBatteryLow:Z
    .end local v7           #statusIntent:Landroid/content/Intent;
    :cond_10
    monitor-exit p0

    return-void

    .line 458
    :cond_11
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 461
    :cond_12
    :try_start_3
    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    if-eqz v8, :cond_13

    .line 462
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/server/BatteryService;->mPlugType:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 447
    .end local v0           #dischargeDuration:J
    .end local v2           #logOutlier:Z
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 464
    .restart local v0       #dischargeDuration:J
    .restart local v2       #logOutlier:Z
    :cond_13
    const/4 v8, 0x0

    :try_start_4
    iput v8, p0, Lcom/android/server/BatteryService;->mPlugType:I

    goto/16 :goto_1

    .line 491
    :cond_14
    iget v8, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v8, :cond_2

    .line 493
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 494
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iput v8, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    goto/16 :goto_2

    .line 501
    :cond_15
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 529
    :cond_16
    const/4 v8, 0x0

    move v4, v8

    goto/16 :goto_5

    .line 530
    .restart local v4       #plugged:Z
    :cond_17
    const/4 v8, 0x0

    move v3, v8

    goto/16 :goto_6

    .line 538
    .restart local v3       #oldPlugged:Z
    :cond_18
    const/4 v8, 0x0

    move v6, v8

    goto/16 :goto_7

    .line 543
    .restart local v6       #sendBatteryLow:Z
    :cond_19
    const/4 v8, 0x0

    move v5, v8

    goto/16 :goto_8

    .line 559
    .restart local v5       #sendBatteryCritical:Z
    .restart local v7       #statusIntent:Landroid/content/Intent;
    :cond_1a
    iget v8, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v8, :cond_b

    iget v8, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v8, :cond_b

    .line 560
    const-string v8, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    iget-object v8, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 570
    :cond_1b
    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mWasBatteryLowButNotSend:Z

    if-eqz v8, :cond_1d

    if-nez v4, :cond_1c

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-le v8, v9, :cond_1d

    .line 571
    :cond_1c
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "System is ready now but battery is not low"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/BatteryService;->mWasBatteryLowButNotSend:Z

    .line 573
    const/4 v6, 0x0

    .line 574
    const/4 v5, 0x0

    goto/16 :goto_a

    .line 576
    :cond_1d
    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mWasBatteryLowButNotSend:Z

    if-eqz v8, :cond_1e

    .line 577
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "System was not ready but system is ready now"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_1e
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/BatteryService;->mWasBatteryLowButNotSend:Z

    .line 580
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v8, v9, :cond_1f

    const/4 v8, 0x1

    move v6, v8

    .line 581
    :goto_c
    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    goto/16 :goto_a

    .line 580
    :cond_1f
    const/4 v8, 0x0

    move v6, v8

    goto :goto_c

    .line 590
    :cond_20
    if-eqz v6, :cond_21

    .line 591
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 592
    const-string v8, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    iget-object v8, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 594
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "Battery is low and send ACTION_BATTERY_LOW"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 595
    :cond_21
    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    if-eqz v8, :cond_e

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v8, v9, :cond_e

    .line 596
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 597
    const-string v8, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    iget-object v8, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 599
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "Battery is recovered and send ACTION_BATTERY_OKAY"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_b

    .line 517
    .end local v3           #oldPlugged:Z
    .end local v4           #plugged:Z
    .end local v5           #sendBatteryCritical:Z
    .end local v6           #sendBatteryLow:Z
    .end local v7           #statusIntent:Landroid/content/Intent;
    :catch_0
    move-exception v8

    goto/16 :goto_4
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump Battery service from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 771
    :goto_0
    return-void

    .line 758
    :cond_0
    monitor-enter p0

    .line 759
    :try_start_0
    const-string v0, "Current Battery Service state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  AC powered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  USB powered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  health: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  present: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 766
    const-string v0, "  scale: 100"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  voltage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  temperature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  technology: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryTechnology:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 770
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final getBatteryDecimalPoint()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryDecimalPoint:I

    return v0
.end method

.method final getBatteryHealth()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    return v0
.end method

.method final getBatteryLevel()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    return v0
.end method

.method final getBatteryStatus()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    return v0
.end method

.method final getPlugType()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    return v0
.end method

.method final isPowered()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 163
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isPowered(I)Z
    .locals 4
    .parameter "plugTypeSet"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 169
    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    if-ne v1, v2, :cond_0

    move v1, v2

    .line 182
    :goto_0
    return v1

    .line 172
    :cond_0
    if-nez p1, :cond_1

    move v1, v3

    .line 173
    goto :goto_0

    .line 175
    :cond_1
    const/4 v0, 0x0

    .line 176
    .local v0, plugTypeBit:I
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    if-eqz v1, :cond_2

    .line 177
    or-int/lit8 v0, v0, 0x1

    .line 179
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    if-eqz v1, :cond_3

    .line 180
    or-int/lit8 v0, v0, 0x2

    .line 182
    :cond_3
    and-int v1, p1, v0

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_0
.end method

.method systemReady()V
    .locals 2

    .prologue
    .line 214
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfNoPower()V

    .line 219
    return-void
.end method
