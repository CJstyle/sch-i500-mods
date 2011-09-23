.class public Landroid/media/Ringtone;
.super Ljava/lang/Object;
.source "Ringtone.java"


# static fields
.field private static final DRM_COLUMNS:[Ljava/lang/String;

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private mAudio:Landroid/media/MediaPlayer;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioMode:I

.field private mContext:Landroid/content/Context;

.field private mFileDescriptor:Ljava/io/FileDescriptor;

.field private mStreamType:I

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v6, "_data"

    .line 44
    const-string v0, "Ringtone"

    sput-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    .line 46
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v6, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 52
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v6, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/Ringtone;->DRM_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/Ringtone;->mStreamType:I

    .line 72
    iput-object p1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    .line 74
    return-void
.end method

.method private checkMidFile(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 212
    if-nez p1, :cond_0

    move v0, v2

    .line 227
    :goto_0
    return v0

    .line 214
    :cond_0
    const-string v0, ".mid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 215
    goto :goto_0

    .line 216
    :cond_1
    const-string v0, ".midi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 217
    goto :goto_0

    .line 218
    :cond_2
    const-string v0, ".xmf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 219
    goto :goto_0

    .line 220
    :cond_3
    const-string v0, ".mxmf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 221
    goto :goto_0

    .line 222
    :cond_4
    const-string v0, ".smf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 223
    goto :goto_0

    .line 224
    :cond_5
    const-string v0, ".imy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 225
    goto :goto_0

    :cond_6
    move v0, v2

    .line 227
    goto :goto_0
.end method

.method private getAudioFilePath(Landroid/net/Uri;Landroid/content/Context;)Z
    .locals 10
    .parameter "uri"
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    const-string v5, "_data"

    .line 233
    const/4 v8, 0x0

    .line 234
    .local v8, str:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 235
    .local v7, fileUri:Ljava/lang/String;
    const/4 v6, 0x0

    .line 236
    .local v6, cursor:Landroid/database/Cursor;
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inside  getAudioFilePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_data"

    aput-object v5, v2, v1

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 239
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 240
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 241
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 242
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The actual path is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :cond_0
    if-eqz v6, :cond_1

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/Ringtone;->checkMidFile(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 245
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 245
    :cond_2
    throw v0
.end method

.method private getRingTonePath(Landroid/net/Uri;Landroid/content/Context;)Z
    .locals 12
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 253
    if-nez p1, :cond_1

    .line 254
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "uri is null : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v0, 0x0

    .line 304
    :cond_0
    :goto_0
    return v0

    .line 258
    :cond_1
    const/4 v1, 0x0

    .line 259
    .local v1, tempUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 260
    .local v9, fileUri:Ljava/lang/String;
    const/4 v7, 0x0

    .line 261
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 262
    .local v10, str:Ljava/lang/String;
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings Ringtone is going to play : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string/jumbo v0, "video_call_ringtone"

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 264
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "it is a video Ringtone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "video_call_ringtone"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 266
    .local v6, actual_uri:Ljava/lang/String;
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Actual URI for the  video Ringtone is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    if-eqz v6, :cond_2

    .line 268
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 277
    .end local v6           #actual_uri:Ljava/lang/String;
    :cond_2
    :goto_1
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Temp URI for media play is  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content://media/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 279
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "it is a valid Media DB URI   : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 284
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 285
    .end local v1           #tempUri:Landroid/net/Uri;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 286
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 287
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The actual path is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    if-eqz v7, :cond_3

    .line 297
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_3
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/Ringtone;->checkMidFile(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 271
    .restart local v1       #tempUri:Landroid/net/Uri;
    :cond_4
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #tempUri:Landroid/net/Uri;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "it is a Non video Ringtone URI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v11

    .line 273
    .local v11, type:I
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "it is a Ringtone type is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {p2, v11}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #tempUri:Landroid/net/Uri;
    goto/16 :goto_1

    .line 289
    .end local v1           #tempUri:Landroid/net/Uri;
    .end local v11           #type:I
    :cond_5
    :try_start_1
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string v1, "Cursor is NULL:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 290
    const/4 v0, 0x0

    .line 296
    if-eqz v7, :cond_0

    .line 297
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 292
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 293
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string v1, "Exception occured "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    if-eqz v7, :cond_3

    goto :goto_2

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 297
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 296
    :cond_6
    throw v0

    .line 301
    .restart local v1       #tempUri:Landroid/net/Uri;
    :cond_7
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string v1, "Ringtone URI is null or not from Media DB  : "

    .end local v1           #tempUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private static getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "uri"
    .parameter "followSettingsUri"

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 159
    const/4 v9, 0x0

    .line 160
    .local v9, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 162
    .local v0, res:Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 164
    .local v10, title:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    .line 167
    .local v8, authority:Ljava/lang/String;
    const-string/jumbo v1, "settings"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 168
    if-eqz p2, :cond_0

    .line 169
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    .line 171
    .local v7, actualUri:Landroid/net/Uri;
    invoke-static {p0, v7, v4}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, actualTitle:Ljava/lang/String;
    const v1, 0x10403f6

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v6, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 199
    .end local v6           #actualTitle:Ljava/lang/String;
    .end local v7           #actualUri:Landroid/net/Uri;
    .end local v8           #authority:Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v10, :cond_1

    .line 200
    const v1, 0x10403f9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 202
    if-nez v10, :cond_1

    .line 203
    const-string v10, ""

    :cond_1
    move-object v1, v10

    .line 207
    :cond_2
    :goto_1
    return-object v1

    .line 178
    .restart local v8       #authority:Ljava/lang/String;
    :cond_3
    const-string v1, "drm"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 179
    sget-object v2, Landroid/media/Ringtone;->DRM_COLUMNS:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 185
    :cond_4
    :goto_2
    if-eqz v9, :cond_6

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v11, :cond_6

    .line 186
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 187
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 192
    if-eqz v9, :cond_2

    .line 193
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 180
    :cond_5
    const-string v1, "media"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 181
    sget-object v2, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_2

    .line 189
    :cond_6
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 192
    if-eqz v9, :cond_0

    .line 193
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_7

    .line 193
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 192
    :cond_7
    throw v1
.end method

.method private openMediaPlayer()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    .line 311
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 312
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 315
    const/4 v6, 0x0

    .line 316
    .local v6, isMidFile:Z
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openMediaPlayer() mUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Landroid/media/Ringtone;->getAudioFilePath(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v6

    .line 322
    :cond_0
    :goto_0
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openMediaPlayer() isMidFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    if-eqz v6, :cond_1

    .line 324
    const/4 v0, 0x7

    iget v1, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-static {v0, v1}, Landroid/media/VolumeCustomizer;->getSituationVolume(II)F

    move-result v7

    .line 325
    .local v7, volFloat:F
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v7, v7}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 345
    .end local v6           #isMidFile:Z
    .end local v7           #volFloat:F
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget v1, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 346
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 347
    return-void

    .line 319
    .restart local v6       #isMidFile:Z
    :cond_2
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://settings/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Landroid/media/Ringtone;->getRingTonePath(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v6

    goto :goto_0

    .line 329
    .end local v6           #isMidFile:Z
    :cond_3
    iget-object v0, p0, Landroid/media/Ringtone;->mFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_4

    .line 330
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_1

    .line 331
    :cond_4
    iget-object v0, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_6

    .line 335
    iget-object v0, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 336
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_1

    .line 338
    :cond_5
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    iget-object v4, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_1

    .line 343
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No data source set."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getStreamType()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Landroid/media/Ringtone;->mStreamType:I

    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 136
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method open(Landroid/content/res/AssetFileDescriptor;)V
    .locals 0
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    iput-object p1, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 356
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V

    .line 357
    return-void
.end method

.method open(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    iput-object p1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    .line 361
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V

    .line 362
    return-void
.end method

.method open(Ljava/io/FileDescriptor;)V
    .locals 0
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    iput-object p1, p0, Landroid/media/Ringtone;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 351
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V

    .line 352
    return-void
.end method

.method public play()V
    .locals 3

    .prologue
    .line 368
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 370
    :try_start_0
    sget-object v1, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string v2, "play : mAudio == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 380
    sget-object v1, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string v2, "play : mAudio != null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 382
    sget-object v1, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string v2, "play : mAudioManager.getStreamVolume(mStreamType) != 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 384
    sget-object v1, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string v2, "play : mAudio.start()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_1
    :goto_1
    return-void

    .line 372
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 373
    .local v0, ex:Ljava/lang/Exception;
    sget-object v1, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string v2, "play() caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 386
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_2
    sget-object v1, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string v2, "play : mAudioManager.getStreamVolume(mStreamType) == 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setRepeat(Z)V
    .locals 3
    .parameter "repeate"

    .prologue
    .line 104
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 106
    :try_start_0
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 117
    :cond_1
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, ex:Ljava/lang/Exception;
    sget-object v1, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setLooping() caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public setRingerMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 147
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMode(I)V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string v1, "Couldn\'t set setRingerMode IN CALL MODE!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setStreamType(I)V
    .locals 3
    .parameter "streamType"

    .prologue
    .line 82
    iput p1, p0, Landroid/media/Ringtone;->mStreamType:I

    .line 84
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 90
    :try_start_0
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t set the stream type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 413
    iput-object p1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 414
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 395
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 397
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 398
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    .line 401
    :cond_0
    return-void
.end method
