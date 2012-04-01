.class public Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;
.super Ljava/lang/Object;
.source "VideoDetailsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;,
        Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsListAdapter;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private before_setting:Z

.field private mContext:Landroid/content/Context;

.field private mIsDrm:Z

.field private mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mListAdapter:Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsListAdapter;

.field private mPath:Ljava/lang/String;

.field private mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

.field private mVideoId:J

.field private mVideoUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "VideoDetails"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->TAG:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    .line 45
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoUri:Landroid/net/Uri;

    .line 46
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    .line 47
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mListAdapter:Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsListAdapter;

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoId:J

    .line 50
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mPath:Ljava/lang/String;

    .line 51
    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mIsDrm:Z

    .line 52
    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->before_setting:Z

    .line 113
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$1;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 56
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->before_setting:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->before_setting:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getDateTaken(Landroid/net/Uri;)J
    .locals 10
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 308
    const-wide/16 v7, 0x0

    .line 309
    .local v7, datetTaken:J
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "datetaken"

    aput-object v0, v2, v1

    .line 313
    .local v2, projection:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 315
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 319
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v7

    .line 324
    :cond_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 332
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-wide v7

    .line 324
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 328
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 330
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "VideoDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteException occured  10 :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDateTime(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "video_uri"

    .prologue
    const-string v7, " "

    .line 285
    const-string v0, ""

    .line 287
    .local v0, dateString:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->getDateTaken(Landroid/net/Uri;)J

    move-result-wide v2

    .line 289
    .local v2, dateTaken:J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-eqz v5, :cond_1

    .line 291
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    .line 292
    .local v4, shortDateFormat:Ljava/text/DateFormat;
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 294
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 295
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    const/16 v7, 0x81

    invoke-static {v6, v2, v3, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v1, v0

    .line 302
    .end local v0           #dateString:Ljava/lang/String;
    .end local v4           #shortDateFormat:Ljava/text/DateFormat;
    .local v1, dateString:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 297
    .end local v1           #dateString:Ljava/lang/String;
    .restart local v0       #dateString:Ljava/lang/String;
    .restart local v4       #shortDateFormat:Ljava/text/DateFormat;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    const/16 v7, 0x41

    invoke-static {v6, v2, v3, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .end local v4           #shortDateFormat:Ljava/text/DateFormat;
    :cond_1
    move-object v1, v0

    .line 302
    .end local v0           #dateString:Ljava/lang/String;
    .restart local v1       #dateString:Ljava/lang/String;
    goto :goto_1
.end method

.method private getDisplayName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .parameter "video_uri"

    .prologue
    const/4 v4, 0x0

    .line 337
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_0

    .line 341
    :try_start_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->getDisplayName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 348
    :goto_0
    return-object v1

    .line 342
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 343
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "VideoDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 344
    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    move-object v1, v4

    .line 348
    goto :goto_0
.end method

.method private getFileFormat(J)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 276
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getMimeType(J)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, format:Ljava/lang/String;
    const-string v1, "VideoDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileFormat() - format :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-object v0
.end method

.method private getFileSize(Landroid/net/Uri;)Ljava/lang/String;
    .locals 14
    .parameter "video_uri"

    .prologue
    const-wide/16 v11, 0x0

    const-string v13, "VideoDetails"

    .line 359
    const-wide/16 v8, 0x0

    .line 361
    .local v8, fileSize:J
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_0

    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 396
    :goto_0
    return-object v0

    .line 368
    :cond_1
    if-nez p1, :cond_2

    .line 369
    const-string v0, "VideoDetails"

    const-string v0, "getFileSize() - video_uri is null"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 374
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 377
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 379
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 380
    const-string v0, "_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 382
    .local v10, idx:I
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .line 385
    .end local v10           #idx:I
    :cond_3
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 392
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_4
    :goto_1
    cmp-long v0, v8, v11

    if-eqz v0, :cond_5

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 385
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 388
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 389
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "VideoDetails"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteException occured  14 :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 396
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getForwardingType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 352
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsShare(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f07003d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 355
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f07003e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getResolution(J)Ljava/lang/String;
    .locals 12
    .parameter "id"

    .prologue
    const/16 v6, 0x13

    const/16 v5, 0x12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 253
    const/4 v1, 0x0

    .local v1, W:I
    const/4 v0, 0x0

    .line 254
    .local v0, H:I
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v4, p1, p2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFilePathbyId(J)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, mFilePath:Ljava/lang/String;
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 258
    .local v3, retriever:Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v3, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v3, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 261
    invoke-virtual {v3, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 263
    :cond_0
    invoke-virtual {v3, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 264
    invoke-virtual {v3, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 269
    :cond_1
    const-string v4, "VideoDetails"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getResolution() - dimensionsString :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%d x %d"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v4, "%dx%d"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private updateAdapter()V
    .locals 14

    .prologue
    .line 176
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v8, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;>;"
    const/4 v10, 0x0

    .line 178
    .local v10, drmInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;>;"
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f07001d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 180
    .local v9, dateTime:Ljava/lang/String;
    const-string v0, " & "

    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f07002e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 183
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f070029

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->getDisplayName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    iget-wide v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f07002d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoId:J

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->getFileFormat(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f07002b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoId:J

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->getResolution(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f07002a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->getFileSize(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->getDateTime(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v9

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f07003c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->getForwardingType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mIsDrm:Z

    if-eqz v0, :cond_1

    .line 204
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getDetailInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 206
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mIsDrm:Z

    if-eqz v0, :cond_6

    if-eqz v10, :cond_6

    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mIsMovieStore:Z

    if-nez v0, :cond_6

    .line 208
    const-string v0, "VideoDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRightStatus() start. mIsDrm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mIsDrm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 211
    .local v13, permissionCount:I
    if-lez v13, :cond_6

    .line 213
    const-string v0, "VideoDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRightStatus() start. permissionCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v11, 0x0

    .end local v9           #dateTime:Ljava/lang/String;
    .local v11, i:I
    :goto_0
    if-ge v11, v13, :cond_6

    .line 217
    const/4 v4, 0x0

    .line 218
    .local v4, roCount:Ljava/lang/String;
    const/4 v5, 0x0

    .line 219
    .local v5, availableUse:Ljava/lang/String;
    const/4 v6, 0x0

    .line 220
    .local v6, typeStr:Ljava/lang/String;
    const/4 v7, 0x0

    .line 222
    .local v7, validity:Ljava/lang/String;
    const-string v0, "(%d/%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    add-int/lit8 v3, v11, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 224
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;

    .line 226
    .local v12, info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    iget v0, v12, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->permissionStr:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 227
    const-string v0, "%s : %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f07005a

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local v5           #availableUse:Ljava/lang/String;
    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    iget v5, v12, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->permissionStr:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 229
    .restart local v5       #availableUse:Ljava/lang/String;
    :cond_2
    iget-object v0, v12, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 231
    iget-object v0, v12, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 232
    const-string v0, "%s-%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    iget-object v6, v12, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    .end local v6           #typeStr:Ljava/lang/String;
    const/4 v9, 0x0

    aget v6, v6, v9

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    iget-object v6, v12, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    const/4 v9, 0x1

    aget v6, v6, v9

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 236
    .restart local v6       #typeStr:Ljava/lang/String;
    :goto_1
    const-string v0, "%s : %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    const v9, 0x7f07001e

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 239
    :cond_3
    iget-object v0, v12, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 240
    const-string v0, "%s : %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    const v7, 0x7f07005b

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local v7           #validity:Ljava/lang/String;
    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, v12, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 242
    .restart local v7       #validity:Ljava/lang/String;
    :cond_4
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 235
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    iget-object v1, v12, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 248
    .end local v4           #roCount:Ljava/lang/String;
    .end local v5           #availableUse:Ljava/lang/String;
    .end local v6           #typeStr:Ljava/lang/String;
    .end local v7           #validity:Ljava/lang/String;
    .end local v11           #i:I
    .end local v12           #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    .end local v13           #permissionCount:I
    :cond_6
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v8}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsListAdapter;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mListAdapter:Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsListAdapter;

    .line 249
    return-void
.end method


# virtual methods
.method public initdatas()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const-string v6, "VideoDetails"

    .line 61
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v2, :cond_0

    .line 65
    :try_start_0
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v2}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v2}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->pause()V

    .line 69
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->before_setting:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getID()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoId:J

    .line 81
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    iget-wide v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoId:J

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFilePathbyId(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mPath:Ljava/lang/String;

    .line 84
    sget-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mIsMovieStore:Z

    if-eqz v2, :cond_1

    .line 86
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getVideoUri()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mPath:Ljava/lang/String;

    .line 87
    sget v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_1

    .line 88
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getPreviewFilePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mPath:Ljava/lang/String;

    .line 93
    :cond_1
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsDrm(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    iput-boolean v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mIsDrm:Z

    .line 96
    :cond_2
    iget-wide v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoId:J

    invoke-static {v2, v3}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getUriByVideoId(J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoUri:Landroid/net/Uri;

    .line 98
    const-string v2, "VideoDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoDetailsDialog . mVideoId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mVideoUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    if-nez v2, :cond_3

    .line 101
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    .line 103
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->updateAdapter()V

    .line 105
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f07000a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 107
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mListAdapter:Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 109
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mDetailPopup:Landroid/app/AlertDialog;

    .line 110
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mDetailPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 111
    return-void

    .line 73
    .end local v0           #dialog:Landroid/app/AlertDialog$Builder;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 75
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 76
    const-string v2, "VideoDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured  1 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
