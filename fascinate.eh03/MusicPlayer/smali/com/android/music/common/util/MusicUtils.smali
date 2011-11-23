.class public Lcom/android/music/common/util/MusicUtils;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sArtCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final sArtworkUri:Landroid/net/Uri;

.field private static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private static final sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    const-class v0, Lcom/android/music/common/util/MusicUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/util/MusicUtils;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/music/common/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .line 46
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/music/common/util/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 47
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/util/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/music/common/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    .line 55
    sget-object v0, Lcom/android/music/common/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 56
    sget-object v0, Lcom/android/music/common/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 58
    sget-object v0, Lcom/android/music/common/util/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 59
    sget-object v0, Lcom/android/music/common/util/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forceStopPackage(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 317
    sget-object v1, Lcom/android/music/common/util/MusicUtils;->TAG:Ljava/lang/String;

    const-string v2, "forceStopPackage()..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 320
    .local v0, am:Landroid/app/ActivityManager;
    const-string v1, "com.android.music"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public static getTimeString(JZ)Ljava/lang/String;
    .locals 9
    .parameter "millisecond"
    .parameter "isElapsed"

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 326
    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-nez v3, :cond_0

    .line 327
    const/4 v2, 0x0

    .line 328
    .local v2, sec:I
    const/4 v1, 0x0

    .line 329
    .local v1, min:I
    const/4 v0, 0x0

    .line 346
    .local v0, hr:I
    :goto_0
    if-nez v0, :cond_3

    .line 347
    if-eqz p2, :cond_2

    .line 348
    const-string v3, "%02d:%02d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 355
    :goto_1
    return-object v3

    .line 331
    .end local v0           #hr:I
    .end local v1           #min:I
    .end local v2           #sec:I
    :cond_0
    const-wide/16 v3, 0x3e8

    div-long v3, p0, v3

    long-to-int v2, v3

    .line 333
    .restart local v2       #sec:I
    if-nez v2, :cond_1

    .line 334
    const/4 v1, 0x0

    .line 335
    .restart local v1       #min:I
    const/4 v0, 0x0

    .line 339
    :goto_2
    rem-int/lit8 v2, v2, 0x3c

    .line 340
    div-int/lit8 v0, v1, 0x3c

    .line 341
    .restart local v0       #hr:I
    rem-int/lit8 v1, v1, 0x3c

    goto :goto_0

    .line 337
    .end local v0           #hr:I
    .end local v1           #min:I
    :cond_1
    div-int/lit8 v1, v2, 0x3c

    .restart local v1       #min:I
    goto :goto_2

    .line 350
    .restart local v0       #hr:I
    :cond_2
    const-string v3, "-%02d:%02d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 352
    :cond_3
    if-eqz p2, :cond_4

    .line 353
    const-string v3, "%d:%02d:%02d"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 355
    :cond_4
    const-string v3, "-%d:%02d:%02d"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static isFactoryTest()Z
    .locals 4

    .prologue
    .line 421
    const-string v1, "ril.IMEI"

    .line 422
    .local v1, IMEI:Ljava/lang/String;
    const-string v0, "357858010034783"

    .line 423
    .local v0, DEFAULT_IMEI:Ljava/lang/String;
    sget-object v2, Lcom/android/music/common/util/MusicUtils;->TAG:Ljava/lang/String;

    const-string v3, "isFactoryTest() checked."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const-string v2, "gsm.default.esn"

    const-string v3, "Unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TRUE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isMediaScannerScanning(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const-string v12, "com.android.music"

    const-string v11, "activity"

    .line 77
    const/4 v9, 0x0

    .line 79
    .local v9, result:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 80
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "volume"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 82
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 84
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v10, :cond_0

    .line 86
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 87
    const-string v1, "external"

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 89
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_1
    sget-object v1, Lcom/android/music/common/util/MusicUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMediaScannerScanning() is called"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v7           #cursor:Landroid/database/Cursor;
    :goto_0
    return v9

    .line 92
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 99
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    sget-object v1, Lcom/android/music/common/util/MusicUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteFullException getMusicMainListCursor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 101
    const-string v1, "activity"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 102
    .local v6, am:Landroid/app/ActivityManager;
    const-string v1, "com.android.music"

    invoke-virtual {v6, v12}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    move-object v8, v1

    .line 111
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 112
    const-string v1, "activity"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 113
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v1, "com.android.music"

    invoke-virtual {v6, v12}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isMusicPlayerTopActivity(Landroid/content/Context;Z)Z
    .locals 8
    .parameter "context"
    .parameter "bCheckActivity"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 399
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 402
    .local v0, mActivityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 403
    .local v1, rt:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 404
    .local v4, topTask:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, runningTaskActivity:Ljava/lang/String;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 407
    .local v3, runningTaskPackage:Ljava/lang/String;
    const-string v5, "com.android.music"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 408
    if-nez p1, :cond_0

    move v5, v6

    .line 416
    :goto_0
    return v5

    .line 412
    :cond_0
    const-string v5, "MusicPlayer"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    .line 413
    goto :goto_0

    :cond_1
    move v5, v7

    .line 416
    goto :goto_0
.end method

.method public static makeNotiMessageForClosingAPK(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 292
    const v0, 0x7f0a00bd

    invoke-static {p0, v0}, Lcom/android/music/common/util/MusicUtils;->makeNoti_New_MessageForClosingAPK(Landroid/content/Context;I)V

    .line 293
    return-void
.end method

.method public static makeNoti_New_MessageForClosingAPK(Landroid/content/Context;I)V
    .locals 12
    .parameter "context"
    .parameter "strId"

    .prologue
    const/4 v11, 0x0

    .line 296
    const-string v10, "notification"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 297
    .local v4, notiManager:Landroid/app/NotificationManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 298
    .local v8, when:J
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 299
    .local v7, tickerText:Ljava/lang/CharSequence;
    new-instance v5, Landroid/app/Notification;

    const v10, 0x7f020148

    invoke-direct {v5, v10, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 300
    .local v5, notification:Landroid/app/Notification;
    iget v10, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v5, Landroid/app/Notification;->flags:I

    .line 302
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 303
    .local v6, notificationIntent:Landroid/content/Intent;
    invoke-static {p0, v11, v6, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 305
    .local v1, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/high16 v11, 0x7f0a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 306
    .local v3, contentTitle:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 308
    .local v2, contentText:Ljava/lang/CharSequence;
    invoke-virtual {v5, p0, v3, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 310
    const/4 v0, 0x1

    .line 311
    .local v0, HELLO_ID:I
    invoke-virtual {v4, v0, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 313
    invoke-virtual {v4, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 314
    return-void
.end method
