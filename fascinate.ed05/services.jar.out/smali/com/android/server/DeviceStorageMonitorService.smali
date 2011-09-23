.class Lcom/android/server/DeviceStorageMonitorService;
.super Landroid/os/Binder;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceStorageMonitorService$DBCachePackageDataObserver;,
        Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;
    }
.end annotation


# static fields
.field private static final CACHE_PATH:Ljava/lang/String; = "/cache"

.field private static final DATABASE_PATH:Ljava/lang/String; = "/dbdata"

.field private static final DATA_PATH:Ljava/lang/String; = "/data"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_CHECK_INTERVAL:J = 0xea60L

.field private static final DEFAULT_DISK_FREE_CHANGE_REPORTING_THRESHOLD:J = 0x200000L

.field private static final DEFAULT_FREE_STORAGE_LOG_INTERVAL_IN_MINUTES:I = 0x2d0

.field private static final DEFAULT_THRESHOLD_PERCENTAGE:I = 0xa

.field private static final DEVICE_MEMORY_WHAT:I = 0x1

.field private static final LOW_MEMORY_NOTIFICATION_ID:I = 0x1

.field private static final MONITOR_INTERVAL:I = 0x1

.field static final SERVICE:Ljava/lang/String; = "devicestoragemonitor"

.field private static final SYSTEM_PATH:Ljava/lang/String; = "/system"

.field private static final TAG:Ljava/lang/String; = "DeviceStorageMonitorService"

.field private static final _FALSE:I = 0x0

.field private static final _TRUE:I = 0x1

.field private static final localLOGV:Z


# instance fields
.field private isRunnableMode:Z

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCacheFileStats:Landroid/os/StatFs;

.field private mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

.field private mClearDBCacheObserver:Lcom/android/server/DeviceStorageMonitorService$DBCachePackageDataObserver;

.field private mClearDBSucceeded:Z

.field private mClearSucceeded:Z

.field private mClearingCache:Z

.field private mClearingDBCache:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDataFileStats:Landroid/os/StatFs;

.field private mDatabaseFileStats:Landroid/os/StatFs;

.field private mFreeDatabaseMem:J

.field private mFreeMem:J

.field mHandler:Landroid/os/Handler;

.field private mLastReportedFreeMem:J

.field private mLastReportedFreeMemTime:J

.field private mLowMemFlag:Z

.field private mLowOnSpaceType:I

.field private mStorageDatabaseLowIntent:Landroid/content/Intent;

.field private mStorageDatabaseOkIntent:Landroid/content/Intent;

.field private mStorageLowIntent:Landroid/content/Intent;

.field private mStorageOkIntent:Landroid/content/Intent;

.field private mSystemFileStats:Landroid/os/StatFs;

.field private mThreadStartTime:J

.field private mTotalDatabaseMemory:J

.field private mTotalMemory:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const-wide/16 v5, 0x64

    const/4 v3, 0x0

    const/high16 v4, 0x1000

    const/4 v2, 0x0

    .line 383
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 82
    iput-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    .line 95
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    .line 96
    iput-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    .line 97
    iput-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearDBSucceeded:Z

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOnSpaceType:I

    .line 111
    iput-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->isRunnableMode:Z

    .line 119
    new-instance v0, Lcom/android/server/DeviceStorageMonitorService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceStorageMonitorService$1;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    new-instance v0, Lcom/android/server/DeviceStorageMonitorService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceStorageMonitorService$2;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    .line 385
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 388
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    .line 389
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    .line 390
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    .line 392
    new-instance v0, Landroid/os/StatFs;

    const-string v1, "/data"

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    .line 393
    new-instance v0, Landroid/os/StatFs;

    const-string v1, "/system"

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    .line 394
    new-instance v0, Landroid/os/StatFs;

    const-string v1, "/cache"

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    .line 395
    new-instance v0, Landroid/os/StatFs;

    const-string v1, "/dbdata"

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mDatabaseFileStats:Landroid/os/StatFs;

    .line 397
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    div-long/2addr v0, v5

    iput-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    .line 399
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mDatabaseFileStats:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mDatabaseFileStats:Landroid/os/StatFs;

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    div-long/2addr v0, v5

    iput-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalDatabaseMemory:J

    .line 401
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    .line 402
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 403
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    .line 404
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DB_DEVICE_STORAGE_LOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageDatabaseLowIntent:Landroid/content/Intent;

    .line 405
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DB_DEVICE_STORAGE_OK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageDatabaseOkIntent:Landroid/content/Intent;

    .line 406
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 407
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/DeviceStorageMonitorService;->checkMemory(Z)V

    .line 408
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->isRunnableMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/DeviceStorageMonitorService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/DeviceStorageMonitorService;->checkMemory(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/DeviceStorageMonitorService;ZJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearDBSucceeded:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingDBCache:Z

    return p1
.end method

.method private final cancelNotification()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 486
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 490
    .local v0, mNotificationMgr:Landroid/app/NotificationManager;
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 492
    iget v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOnSpaceType:I

    if-ne v1, v3, :cond_1

    .line 493
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 495
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iget v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOnSpaceType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 497
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageDatabaseLowIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 499
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageDatabaseOkIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private final checkMemory(Z)V
    .locals 10
    .parameter "checkCache"

    .prologue
    .line 264
    iget-boolean v6, p0, Lcom/android/server/DeviceStorageMonitorService;->isRunnableMode:Z

    if-nez v6, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->restatDataDir()V

    .line 266
    const/4 v6, 0x1

    const-wide/32 v7, 0xea60

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    .line 344
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-boolean v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    if-eqz v6, :cond_2

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    sub-long v0, v6, v8

    .line 278
    .local v0, diffTime:J
    const-wide/32 v6, 0x927c0

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 279
    const-string v6, "DeviceStorageMonitorService"

    const-string v7, "Thread that clears cache file seems to run for ever"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .end local v0           #diffTime:J
    :cond_1
    :goto_1
    const/4 v6, 0x1

    const-wide/32 v7, 0xea60

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    goto :goto_0

    .line 281
    :cond_2
    iget-boolean v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingDBCache:Z

    if-eqz v6, :cond_3

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    sub-long v0, v6, v8

    .line 285
    .restart local v0       #diffTime:J
    const-wide/32 v6, 0x927c0

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 286
    const-string v6, "DeviceStorageMonitorService"

    const-string v7, "Thread that clears cache file seems to run for ever"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 289
    .end local v0           #diffTime:J
    :cond_3
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->restatDataDir()V

    .line 293
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->getMemThreshold()J

    move-result-wide v4

    .line 294
    .local v4, memThreshold:J
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->getMemDatabaseThreshold()J

    move-result-wide v2

    .line 295
    .local v2, memDatabaseThreshold:J
    iget-wide v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_5

    .line 296
    iget-boolean v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-nez v6, :cond_1

    .line 297
    if-eqz p1, :cond_4

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    .line 302
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    .line 303
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->clearCache()V

    goto :goto_1

    .line 305
    :cond_4
    const-string v6, "DeviceStorageMonitorService"

    const-string v7, "Running low on memory. Sending notification"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOnSpaceType:I

    .line 307
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->sendNotification()V

    .line 308
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    goto :goto_1

    .line 314
    :cond_5
    iget-wide v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeDatabaseMem:J

    cmp-long v6, v6, v2

    if-gez v6, :cond_7

    .line 315
    iget-boolean v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-nez v6, :cond_1

    .line 316
    if-eqz p1, :cond_6

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    .line 321
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearDBSucceeded:Z

    .line 322
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->clearDBCache()V

    goto :goto_1

    .line 324
    :cond_6
    const-string v6, "DeviceStorageMonitorService"

    const-string v7, "Running database low on memory. Sending notification"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOnSpaceType:I

    .line 326
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->sendNotification()V

    .line 327
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    goto/16 :goto_1

    .line 334
    :cond_7
    iget-boolean v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-eqz v6, :cond_1

    .line 335
    const-string v6, "DeviceStorageMonitorService"

    const-string v7, "Memory available. Cancelling notification"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->cancelNotification()V

    .line 337
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    goto/16 :goto_1
.end method

.method private final clearCache()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 228
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    if-nez v1, :cond_0

    .line 230
    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    .line 232
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    .line 235
    :try_start_0
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->getMemThreshold()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 238
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get handle for PackageManger Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iput-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    .line 240
    iput-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    goto :goto_0
.end method

.method private final clearDBCache()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 245
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearDBCacheObserver:Lcom/android/server/DeviceStorageMonitorService$DBCachePackageDataObserver;

    if-nez v1, :cond_0

    .line 247
    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$DBCachePackageDataObserver;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceStorageMonitorService$DBCachePackageDataObserver;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearDBCacheObserver:Lcom/android/server/DeviceStorageMonitorService$DBCachePackageDataObserver;

    .line 249
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingDBCache:Z

    .line 252
    :try_start_0
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->getMemDatabaseThreshold()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearDBCacheObserver:Lcom/android/server/DeviceStorageMonitorService$DBCachePackageDataObserver;

    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 255
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get handle for PackageManger Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iput-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingDBCache:Z

    .line 257
    iput-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearDBSucceeded:Z

    goto :goto_0
.end method

.method private getMemDatabaseThreshold()J
    .locals 5

    .prologue
    .line 370
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "sys_storage_threshold_percentage"

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 376
    .local v0, value:I
    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalDatabaseMemory:J

    int-to-long v3, v0

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method private getMemThreshold()J
    .locals 5

    .prologue
    .line 360
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "sys_storage_threshold_percentage"

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 366
    .local v0, value:I
    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    int-to-long v3, v0

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method private postCheckMemoryMsg(ZJ)V
    .locals 5
    .parameter "clearCache"
    .parameter "delay"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 348
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 349
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v1, v3, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 352
    return-void

    :cond_0
    move v2, v4

    .line 349
    goto :goto_0
.end method

.method private final restatDataDir()V
    .locals 23

    .prologue
    .line 165
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v18, v0

    const-string v19, "/data"

    invoke-virtual/range {v18 .. v19}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getBlockSize()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mDatabaseFileStats:Landroid/os/StatFs;

    move-object/from16 v18, v0

    const-string v19, "/dbdata"

    invoke-virtual/range {v18 .. v19}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mDatabaseFileStats:Landroid/os/StatFs;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mDatabaseFileStats:Landroid/os/StatFs;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getBlockSize()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DeviceStorageMonitorService;->mFreeDatabaseMem:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 175
    :goto_0
    const-string v18, "debug.freemem"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, debugFreeMem:Ljava/lang/String;
    const-string v18, ""

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 177
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    .line 178
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DeviceStorageMonitorService;->mFreeDatabaseMem:J

    .line 181
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "sys_free_storage_log_interval"

    const-wide/16 v20, 0x2d0

    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v18

    const-wide/16 v20, 0x3c

    mul-long v18, v18, v20

    const-wide/16 v20, 0x3e8

    mul-long v8, v18, v20

    .line 185
    .local v8, freeMemLogInterval:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 186
    .local v3, currTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    move-wide/from16 v18, v0

    sub-long v18, v3, v18

    cmp-long v18, v18, v8

    if-ltz v18, :cond_2

    .line 188
    :cond_1
    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    .line 189
    const-wide/16 v14, -0x1

    .local v14, mFreeSystem:J
    const-wide/16 v10, -0x1

    .local v10, mFreeCache:J
    const-wide/16 v12, -0x1

    .line 191
    .local v12, mFreeDatabase:J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    move-object/from16 v18, v0

    const-string v19, "/system"

    invoke-virtual/range {v18 .. v19}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v14, v18, v20

    .line 198
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    move-object/from16 v18, v0

    const-string v19, "/cache"

    invoke-virtual/range {v18 .. v19}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v10, v18, v20

    .line 205
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mDatabaseFileStats:Landroid/os/StatFs;

    move-object/from16 v18, v0

    const-string v19, "/dbdata"

    invoke-virtual/range {v18 .. v19}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mDatabaseFileStats:Landroid/os/StatFs;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mDatabaseFileStats:Landroid/os/StatFs;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v12, v18, v20

    .line 211
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    move-object/from16 v18, v0

    const-string v19, "/cache"

    invoke-virtual/range {v18 .. v19}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 212
    const/16 v18, 0xaba

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 216
    .end local v10           #mFreeCache:J
    .end local v12           #mFreeDatabase:J
    .end local v14           #mFreeSystem:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "disk_free_change_reporting_threshold"

    const-wide/32 v20, 0x200000

    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v16

    .line 220
    .local v16, threshold:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    move-wide/from16 v20, v0

    sub-long v6, v18, v20

    .line 221
    .local v6, delta:J
    cmp-long v18, v6, v16

    if-gtz v18, :cond_3

    move-wide/from16 v0, v16

    neg-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v18, v6, v18

    if-gez v18, :cond_4

    .line 222
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    .line 223
    const/16 v18, 0xab8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v19, v0

    invoke-static/range {v18 .. v20}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 225
    :cond_4
    return-void

    .line 208
    .end local v6           #delta:J
    .end local v16           #threshold:J
    .restart local v10       #mFreeCache:J
    .restart local v12       #mFreeDatabase:J
    .restart local v14       #mFreeSystem:J
    :catch_0
    move-exception v18

    goto/16 :goto_3

    .line 201
    :catch_1
    move-exception v18

    goto/16 :goto_2

    .line 194
    :catch_2
    move-exception v18

    goto/16 :goto_1

    .line 171
    .end local v3           #currTime:J
    .end local v5           #debugFreeMem:Ljava/lang/String;
    .end local v8           #freeMemLogInterval:J
    .end local v10           #mFreeCache:J
    .end local v12           #mFreeDatabase:J
    .end local v14           #mFreeSystem:J
    :catch_3
    move-exception v18

    goto/16 :goto_0
.end method

.method private final sendNotification()V
    .locals 15

    .prologue
    .line 419
    const/16 v10, 0xab9

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-wide v13, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-wide v13, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeDatabaseMem:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 421
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v6, lowMemIntent:Landroid/content/Intent;
    iget v10, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOnSpaceType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 423
    const-string v10, "memory"

    iget-wide v11, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v6, v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 426
    :cond_0
    :goto_0
    const/high16 v10, 0x1000

    invoke-virtual {v6, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 427
    iget-object v10, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 430
    .local v7, mNotificationMgr:Landroid/app/NotificationManager;
    iget-object v10, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v11, 0x10403d7

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 431
    .local v9, title:Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 432
    .local v4, details:Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 433
    .local v3, alertTitle:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 434
    .local v1, alertMessage1:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 435
    .local v2, alertMessage2:Ljava/lang/CharSequence;
    iget v10, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOnSpaceType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 436
    iget-object v10, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v11, 0x1040496

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 439
    :cond_1
    :goto_1
    iget-object v10, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 440
    .local v5, intent:Landroid/app/PendingIntent;
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    .line 441
    .local v8, notification:Landroid/app/Notification;
    const v10, 0x1080297

    iput v10, v8, Landroid/app/Notification;->icon:I

    .line 442
    iput-object v9, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 443
    iget v10, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x20

    iput v10, v8, Landroid/app/Notification;->flags:I

    .line 444
    iget-object v10, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v10, v9, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 445
    const/4 v10, 0x1

    invoke-virtual {v7, v10, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 446
    const-string v10, "activity"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->testIsSystemReady()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 447
    iget v10, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOnSpaceType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 448
    iget-object v10, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v10, v11}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 449
    iget-object v10, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v11, 0x1040497

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 451
    iget-object v10, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v11, 0x1040498

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 453
    iget-object v10, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v11, 0x1040499

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 468
    :cond_2
    :goto_2
    iget-object v10, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_3

    .line 469
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x104000a

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 475
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x7d8

    invoke-virtual {v10, v11}, Landroid/view/Window;->setType(I)V

    .line 477
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 479
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    :cond_3
    return-void

    .line 424
    .end local v1           #alertMessage1:Ljava/lang/CharSequence;
    .end local v2           #alertMessage2:Ljava/lang/CharSequence;
    .end local v3           #alertTitle:Ljava/lang/CharSequence;
    .end local v4           #details:Ljava/lang/CharSequence;
    .end local v5           #intent:Landroid/app/PendingIntent;
    .end local v7           #mNotificationMgr:Landroid/app/NotificationManager;
    .end local v8           #notification:Landroid/app/Notification;
    .end local v9           #title:Ljava/lang/CharSequence;
    :cond_4
    iget v10, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOnSpaceType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 425
    const-string v10, "memory"

    iget-wide v11, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeDatabaseMem:J

    invoke-virtual {v6, v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto/16 :goto_0

    .line 437
    .restart local v1       #alertMessage1:Ljava/lang/CharSequence;
    .restart local v2       #alertMessage2:Ljava/lang/CharSequence;
    .restart local v3       #alertTitle:Ljava/lang/CharSequence;
    .restart local v4       #details:Ljava/lang/CharSequence;
    .restart local v7       #mNotificationMgr:Landroid/app/NotificationManager;
    .restart local v9       #title:Ljava/lang/CharSequence;
    :cond_5
    iget v10, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOnSpaceType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 438
    iget-object v10, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v11, 0x104049a

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto/16 :goto_1

    .line 456
    .restart local v5       #intent:Landroid/app/PendingIntent;
    .restart local v8       #notification:Landroid/app/Notification;
    :cond_6
    iget v10, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOnSpaceType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 457
    iget-object v10, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageDatabaseLowIntent:Landroid/content/Intent;

    invoke-virtual {v10, v11}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 458
    iget-object v10, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v11, 0x104049b

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 460
    iget-object v10, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v11, 0x104049c

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 462
    iget-object v10, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v11, 0x104049d

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_2
.end method


# virtual methods
.method public updateMemory()V
    .locals 4

    .prologue
    .line 505
    invoke-static {}, Lcom/android/server/DeviceStorageMonitorService;->getCallingUid()I

    move-result v0

    .line 506
    .local v0, callingUid:I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 511
    :goto_0
    return-void

    .line 510
    :cond_0
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    goto :goto_0
.end method
