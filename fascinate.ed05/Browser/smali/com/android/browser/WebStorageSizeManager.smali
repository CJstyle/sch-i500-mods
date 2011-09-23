.class Lcom/android/browser/WebStorageSizeManager;
.super Ljava/lang/Object;
.source "WebStorageSizeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/WebStorageSizeManager$WebKitAppCacheInfo;,
        Lcom/android/browser/WebStorageSizeManager$AppCacheInfo;,
        Lcom/android/browser/WebStorageSizeManager$StatFsDiskInfo;,
        Lcom/android/browser/WebStorageSizeManager$DiskInfo;
    }
.end annotation


# static fields
.field public static final APPCACHE_MAXSIZE_PADDING:J = 0x80000L

.field private static final LOGD_ENABLED:Z = true

.field private static final LOGTAG:Ljava/lang/String; = "browser"

.field private static final LOGV_ENABLED:Z = false

.field private static final NOTIFICATION_INTERVAL:J = 0x493e0L

.field public static final ORIGIN_DEFAULT_QUOTA:J = 0x300000L

.field private static final OUT_OF_SPACE_ID:I = 0x1

.field public static final QUOTA_INCREASE_STEP:J = 0x100000L

.field private static final RESET_NOTIFICATION_INTERVAL:J = 0xbb8L

.field private static mLastOutOfSpaceNotificationTime:J


# instance fields
.field private mAppCacheMaxSize:J

.field private final mContext:Landroid/content/Context;

.field private mDiskInfo:Lcom/android/browser/WebStorageSizeManager$DiskInfo;

.field private final mGlobalLimit:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 103
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/browser/WebStorageSizeManager;->mLastOutOfSpaceNotificationTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/WebStorageSizeManager$DiskInfo;Lcom/android/browser/WebStorageSizeManager$AppCacheInfo;)V
    .locals 4
    .parameter "ctx"
    .parameter "diskInfo"
    .parameter "appCacheInfo"

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/android/browser/WebStorageSizeManager;->mContext:Landroid/content/Context;

    .line 191
    iput-object p2, p0, Lcom/android/browser/WebStorageSizeManager;->mDiskInfo:Lcom/android/browser/WebStorageSizeManager$DiskInfo;

    .line 192
    invoke-direct {p0}, Lcom/android/browser/WebStorageSizeManager;->getGlobalLimit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/WebStorageSizeManager;->mGlobalLimit:J

    .line 195
    iget-wide v0, p0, Lcom/android/browser/WebStorageSizeManager;->mGlobalLimit:J

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    invoke-interface {p3}, Lcom/android/browser/WebStorageSizeManager$AppCacheInfo;->getAppCacheSizeBytes()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/WebStorageSizeManager;->mAppCacheMaxSize:J

    .line 197
    return-void
.end method

.method static calculateGlobalLimit(JJ)J
    .locals 4
    .parameter "fileSystemSizeBytes"
    .parameter "freeSpaceBytes"

    .prologue
    .line 364
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    cmp-long v0, p2, p0

    if-lez v0, :cond_1

    .line 367
    :cond_0
    const-wide/16 p0, 0x0

    .line 383
    .end local p0
    .end local p2
    :goto_0
    return-wide p0

    .line 370
    .restart local p0
    .restart local p2
    :cond_1
    const/4 v0, 0x2

    const-wide/32 v1, 0x100000

    div-long v1, p0, v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    shl-int/2addr v0, v1

    int-to-long v0, v0

    .line 373
    .local v0, fileSystemSizeRatio:J
    div-long/2addr p0, v0

    .end local p0
    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    const-wide/16 v0, 0x2

    div-long/2addr p2, v0

    .end local v0           #fileSystemSizeRatio:J
    .end local p2
    long-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    double-to-long p0, p0

    .line 378
    .local p0, maxSizeBytes:J
    const-wide/32 p2, 0x100000

    .line 379
    .local p2, maxSizeStepBytes:J
    cmp-long v0, p0, p2

    if-gez v0, :cond_2

    .line 380
    const-wide/16 p0, 0x0

    goto :goto_0

    .line 382
    :cond_2
    rem-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    .line 383
    .local v0, roundingExtra:J
    :goto_1
    div-long/2addr p0, p2

    .end local p0           #maxSizeBytes:J
    add-long/2addr p0, v0

    mul-long/2addr p0, p2

    goto :goto_0

    .line 382
    .end local v0           #roundingExtra:J
    .restart local p0       #maxSizeBytes:J
    :cond_3
    const-wide/16 v0, 0x1

    goto :goto_1
.end method

.method private getGlobalLimit()J
    .locals 6

    .prologue
    .line 357
    iget-object v4, p0, Lcom/android/browser/WebStorageSizeManager;->mDiskInfo:Lcom/android/browser/WebStorageSizeManager$DiskInfo;

    invoke-interface {v4}, Lcom/android/browser/WebStorageSizeManager$DiskInfo;->getFreeSpaceSizeBytes()J

    move-result-wide v2

    .line 358
    .local v2, freeSpace:J
    iget-object v4, p0, Lcom/android/browser/WebStorageSizeManager;->mDiskInfo:Lcom/android/browser/WebStorageSizeManager$DiskInfo;

    invoke-interface {v4}, Lcom/android/browser/WebStorageSizeManager$DiskInfo;->getTotalSizeBytes()J

    move-result-wide v0

    .line 359
    .local v0, fileSystemSize:J
    invoke-static {v0, v1, v2, v3}, Lcom/android/browser/WebStorageSizeManager;->calculateGlobalLimit(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method static resetLastOutOfSpaceNotificationTime()V
    .locals 4

    .prologue
    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/browser/WebStorageSizeManager;->mLastOutOfSpaceNotificationTime:J

    .line 352
    return-void
.end method

.method private scheduleOutOfSpaceNotification()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 393
    iget-object v10, p0, Lcom/android/browser/WebStorageSizeManager;->mContext:Landroid/content/Context;

    if-nez v10, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    sget-wide v10, Lcom/android/browser/WebStorageSizeManager;->mLastOutOfSpaceNotificationTime:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sget-wide v12, Lcom/android/browser/WebStorageSizeManager;->mLastOutOfSpaceNotificationTime:J

    sub-long/2addr v10, v12

    const-wide/32 v12, 0x493e0

    cmp-long v10, v10, v12

    if-lez v10, :cond_0

    .line 400
    :cond_2
    const v1, 0x108008a

    .line 401
    .local v1, icon:I
    iget-object v10, p0, Lcom/android/browser/WebStorageSizeManager;->mContext:Landroid/content/Context;

    const v11, 0x7f0900eb

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 403
    .local v7, title:Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/android/browser/WebStorageSizeManager;->mContext:Landroid/content/Context;

    const v11, 0x7f0900ec

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 405
    .local v6, text:Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 406
    .local v8, when:J
    new-instance v2, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/browser/WebStorageSizeManager;->mContext:Landroid/content/Context;

    const-class v11, Lcom/android/browser/WebsiteSettingsActivity;

    invoke-direct {v2, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 407
    .local v2, intent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/browser/WebStorageSizeManager;->mContext:Landroid/content/Context;

    invoke-static {v10, v14, v2, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 409
    .local v0, contentIntent:Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4, v1, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 410
    .local v4, notification:Landroid/app/Notification;
    iget-object v10, p0, Lcom/android/browser/WebStorageSizeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10, v7, v6, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 411
    iget v10, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v4, Landroid/app/Notification;->flags:I

    .line 413
    const-string v5, "notification"

    .line 414
    .local v5, ns:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/browser/WebStorageSizeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 416
    .local v3, mgr:Landroid/app/NotificationManager;
    if-eqz v3, :cond_0

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sput-wide v10, Lcom/android/browser/WebStorageSizeManager;->mLastOutOfSpaceNotificationTime:J

    .line 418
    const/4 v10, 0x1

    invoke-virtual {v3, v10, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method


# virtual methods
.method public getAppCacheMaxSize()J
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/android/browser/WebStorageSizeManager;->mAppCacheMaxSize:J

    return-wide v0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 13
    .parameter "url"
    .parameter "databaseIdentifier"
    .parameter "currentQuota"
    .parameter "estimatedSize"
    .parameter "totalUsedQuota"
    .parameter "quotaUpdater"

    .prologue
    .line 234
    iget-wide v9, p0, Lcom/android/browser/WebStorageSizeManager;->mGlobalLimit:J

    sub-long v9, v9, p7

    iget-wide v11, p0, Lcom/android/browser/WebStorageSizeManager;->mAppCacheMaxSize:J

    sub-long v7, v9, v11

    .line 236
    .local v7, totalUnusedQuota:J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gtz v9, :cond_1

    .line 239
    const-wide/16 v9, 0x0

    cmp-long v9, p7, v9

    if-lez v9, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/android/browser/WebStorageSizeManager;->scheduleOutOfSpaceNotification()V

    .line 248
    :cond_0
    move-object/from16 v0, p9

    move-wide/from16 v1, p3

    invoke-interface {v0, v1, v2}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 298
    :goto_0
    return-void

    .line 256
    :cond_1
    move-wide/from16 v3, p3

    .line 257
    .local v3, newOriginQuota:J
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-nez v9, :cond_4

    .line 262
    cmp-long v9, v7, p5

    if-ltz v9, :cond_3

    .line 263
    move-wide/from16 v3, p5

    .line 292
    :cond_2
    :goto_1
    move-object/from16 v0, p9

    move-wide v1, v3

    invoke-interface {v0, v1, v2}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_0

    .line 272
    :cond_3
    const-wide/16 v3, 0x0

    goto :goto_1

    .line 281
    :cond_4
    const-wide/16 v9, 0x0

    cmp-long v9, p5, v9

    if-nez v9, :cond_5

    const-wide/32 v9, 0x100000

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    move-wide v5, v9

    .line 284
    .local v5, quotaIncrease:J
    :goto_2
    add-long/2addr v3, v5

    .line 286
    cmp-long v9, v5, v7

    if-lez v9, :cond_2

    .line 288
    move-wide/from16 v3, p3

    goto :goto_1

    .end local v5           #quotaIncrease:J
    :cond_5
    move-wide/from16 v5, p5

    .line 281
    goto :goto_2
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 10
    .parameter "spaceNeeded"
    .parameter "totalUsedQuota"
    .parameter "quotaUpdater"

    .prologue
    const-wide/32 v8, 0x80000

    const-wide/16 v6, 0x0

    .line 316
    iget-wide v2, p0, Lcom/android/browser/WebStorageSizeManager;->mGlobalLimit:J

    sub-long/2addr v2, p3

    iget-wide v4, p0, Lcom/android/browser/WebStorageSizeManager;->mAppCacheMaxSize:J

    sub-long v0, v2, v4

    .line 318
    .local v0, totalUnusedQuota:J
    add-long v2, p1, v8

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 321
    cmp-long v2, p3, v6

    if-lez v2, :cond_0

    .line 328
    invoke-direct {p0}, Lcom/android/browser/WebStorageSizeManager;->scheduleOutOfSpaceNotification()V

    .line 330
    :cond_0
    invoke-interface {p5, v6, v7}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 344
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-wide v2, p0, Lcom/android/browser/WebStorageSizeManager;->mAppCacheMaxSize:J

    add-long v4, p1, v8

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/browser/WebStorageSizeManager;->mAppCacheMaxSize:J

    .line 338
    iget-wide v2, p0, Lcom/android/browser/WebStorageSizeManager;->mAppCacheMaxSize:J

    invoke-interface {p5, v2, v3}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_0
.end method
