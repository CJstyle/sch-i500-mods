.class public Lcom/android/music/common/util/MusicUtils;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mCashId:I

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

    .line 32
    const-class v0, Lcom/android/music/common/util/MusicUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/util/MusicUtils;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/music/common/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .line 35
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/music/common/util/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 36
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/util/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/music/common/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    .line 44
    sget-object v0, Lcom/android/music/common/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 45
    sget-object v0, Lcom/android/music/common/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 47
    sget-object v0, Lcom/android/music/common/util/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 48
    sget-object v0, Lcom/android/music/common/util/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAlbumArtCache()V
    .locals 2

    .prologue
    .line 287
    sget-object v0, Lcom/android/music/common/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 288
    :try_start_0
    sget-object v1, Lcom/android/music/common/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 289
    monitor-exit v0

    .line 290
    return-void

    .line 289
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getArtworkBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "context"
    .parameter "imagePath"

    .prologue
    const-string v11, "fail to close input stream."

    const-string v10, "IOException occured 6 :"

    const-string v9, "MusicUtils"

    .line 219
    const/4 v0, 0x0

    .line 221
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 222
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 223
    .local v5, uri:Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 225
    .local v4, res:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 227
    .local v3, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 228
    const/4 v6, 0x0

    sget-object v7, Lcom/android/music/common/util/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v3, v6, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 234
    if-eqz v3, :cond_0

    .line 236
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 247
    .end local v3           #in:Ljava/io/InputStream;
    .end local v4           #res:Landroid/content/ContentResolver;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v0

    .line 237
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v4       #res:Landroid/content/ContentResolver;
    .restart local v5       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 238
    .local v1, e:Ljava/io/IOException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 239
    sget-object v6, Lcom/android/music/common/util/MusicUtils;->TAG:Ljava/lang/String;

    const-string v7, "fail to close input stream."

    invoke-static {v6, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v6, "MusicUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException occured 6 :"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 230
    .local v2, ex:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 231
    sget-object v6, Lcom/android/music/common/util/MusicUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to find image file. imagePath : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v6, "MusicUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileNotFoundException occured 5 :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    if-eqz v3, :cond_0

    .line 236
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 237
    :catch_2
    move-exception v1

    .line 238
    .restart local v1       #e:Ljava/io/IOException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 239
    sget-object v6, Lcom/android/music/common/util/MusicUtils;->TAG:Ljava/lang/String;

    const-string v7, "fail to close input stream."

    invoke-static {v6, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v6, "MusicUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException occured 6 :"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 234
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #ex:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_1

    .line 236
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 241
    :cond_1
    :goto_1
    throw v6

    .line 237
    :catch_3
    move-exception v1

    .line 238
    .restart local v1       #e:Ljava/io/IOException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 239
    sget-object v7, Lcom/android/music/common/util/MusicUtils;->TAG:Ljava/lang/String;

    const-string v8, "fail to close input stream."

    invoke-static {v7, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v7, "MusicUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException occured 6 :"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static getCachedArtwork(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "context"
    .parameter "artIndex"

    .prologue
    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, b:Landroid/graphics/Bitmap;
    sget-object v3, Lcom/android/music/common/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 54
    :try_start_0
    sget-object v2, Lcom/android/music/common/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 55
    sget-object v2, Lcom/android/music/common/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v4, 0x1e

    if-le v2, v4, :cond_0

    .line 56
    const-string v2, "MusicUtils"

    const-string v4, ">>>Cache.clear()<<<"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-object v2, Lcom/android/music/common/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 58
    const/4 v1, 0x0

    .line 60
    :cond_0
    monitor-exit v3

    .line 61
    return-object v1

    .line 60
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static isMediaScannerScanning(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const-string v12, "com.android.music"

    const-string v11, "activity"

    .line 66
    const/4 v9, 0x0

    .line 68
    .local v9, result:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 69
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

    .line 71
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 73
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v10, :cond_0

    .line 75
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 76
    const-string v1, "external"

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 78
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 80
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

    .line 108
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v7           #cursor:Landroid/database/Cursor;
    :goto_0
    return v9

    .line 81
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 89
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

    .line 90
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 91
    const-string v1, "activity"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 92
    .local v6, am:Landroid/app/ActivityManager;
    const-string v1, "com.android.music"

    invoke-virtual {v6, v12}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    move-object v8, v1

    .line 102
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 103
    const-string v1, "activity"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 104
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v1, "com.android.music"

    invoke-virtual {v6, v12}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static makeNotiMessageForClosingAPK(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const v12, 0x7f0a00b6

    const/4 v11, 0x0

    .line 255
    const-string v10, "notification"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 256
    .local v4, notiManager:Landroid/app/NotificationManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 257
    .local v8, when:J
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 258
    .local v7, tickerText:Ljava/lang/CharSequence;
    new-instance v5, Landroid/app/Notification;

    const v10, 0x7f020148

    invoke-direct {v5, v10, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 259
    .local v5, notification:Landroid/app/Notification;
    iget v10, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v5, Landroid/app/Notification;->flags:I

    .line 261
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 262
    .local v6, notificationIntent:Landroid/content/Intent;
    invoke-static {p0, v11, v6, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 264
    .local v1, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/high16 v11, 0x7f0a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 265
    .local v3, contentTitle:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 267
    .local v2, contentText:Ljava/lang/CharSequence;
    invoke-virtual {v5, p0, v3, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 269
    const/4 v0, 0x1

    .line 270
    .local v0, HELLO_ID:I
    invoke-virtual {v4, v0, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 272
    invoke-virtual {v4, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 273
    return-void
.end method
