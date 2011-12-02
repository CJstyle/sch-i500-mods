.class public Lcom/android/music/common/data/MediaMetadata;
.super Ljava/lang/Object;
.source "MediaMetadata.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field public album:Ljava/lang/String;

.field public albumImagePath:Ljava/lang/String;

.field public albumart:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public artistAlbum:Ljava/lang/String;

.field public currentAlbumId:I

.field public currentMediaId:J

.field private cursor:Landroid/database/Cursor;

.field public date:Ljava/lang/String;

.field public duration:Ljava/lang/String;

.field public filetype:Ljava/lang/String;

.field public genre:Ljava/lang/String;

.field public isParsed:Z

.field private musicDB:Lcom/android/music/common/data/MusicDB;

.field public size:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public track:Ljava/lang/String;

.field public year:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/music/common/data/MusicDB;)V
    .locals 4
    .parameter "musicDB"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v2, p0, Lcom/android/music/common/data/MediaMetadata;->currentAlbumId:I

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/music/common/data/MediaMetadata;->currentMediaId:J

    .line 32
    iput-boolean v2, p0, Lcom/android/music/common/data/MediaMetadata;->isParsed:Z

    .line 34
    iput-object v3, p0, Lcom/android/music/common/data/MediaMetadata;->musicDB:Lcom/android/music/common/data/MusicDB;

    .line 35
    iput-object v3, p0, Lcom/android/music/common/data/MediaMetadata;->cursor:Landroid/database/Cursor;

    .line 37
    const-string v0, "MediaMetadata"

    iput-object v0, p0, Lcom/android/music/common/data/MediaMetadata;->TAG:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/android/music/common/data/MediaMetadata;->musicDB:Lcom/android/music/common/data/MusicDB;

    .line 41
    return-void
.end method

.method public static getTimeString(IZ)Ljava/lang/String;
    .locals 9
    .parameter "millisecond"
    .parameter "isElapsed"

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 281
    if-nez p0, :cond_0

    .line 282
    const/4 v2, 0x0

    .line 283
    .local v2, sec:I
    const/4 v1, 0x0

    .line 284
    .local v1, min:I
    const/4 v0, 0x0

    .line 305
    .local v0, hr:I
    :goto_0
    if-nez v0, :cond_3

    .line 306
    if-eqz p1, :cond_2

    .line 307
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

    .line 314
    :goto_1
    return-object v3

    .line 286
    .end local v0           #hr:I
    .end local v1           #min:I
    .end local v2           #sec:I
    :cond_0
    div-int/lit16 v2, p0, 0x3e8

    .line 292
    .restart local v2       #sec:I
    if-nez v2, :cond_1

    .line 293
    const/4 v1, 0x0

    .line 294
    .restart local v1       #min:I
    const/4 v0, 0x0

    .line 298
    :goto_2
    rem-int/lit8 v2, v2, 0x3c

    .line 299
    div-int/lit8 v0, v1, 0x3c

    .line 300
    .restart local v0       #hr:I
    rem-int/lit8 v1, v1, 0x3c

    goto :goto_0

    .line 296
    .end local v0           #hr:I
    .end local v1           #min:I
    :cond_1
    div-int/lit8 v1, v2, 0x3c

    .restart local v1       #min:I
    goto :goto_2

    .line 309
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

    .line 311
    :cond_3
    if-eqz p1, :cond_4

    .line 312
    const-string v3, "%d:%02d:%02d"

    new-array v4, v4, [Ljava/lang/Object;

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

    .line 314
    :cond_4
    const-string v3, "-%d:%02d:%02d"

    new-array v4, v4, [Ljava/lang/Object;

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

.method private parseInternal(Landroid/database/Cursor;)Z
    .locals 12
    .parameter "cursor"

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 126
    const/4 v8, 0x0

    .line 203
    :goto_0
    return v8

    .line 128
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_1

    .line 130
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 131
    const/4 v8, 0x0

    goto :goto_0

    .line 133
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 136
    :try_start_0
    sget-object v8, Lcom/android/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 137
    .local v5, index:I
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    .line 139
    sget-object v8, Lcom/android/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    const/4 v9, 0x6

    aget-object v8, v8, v9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 140
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    .line 142
    sget-object v8, Lcom/android/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 143
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->album:Ljava/lang/String;

    .line 145
    sget-object v8, Lcom/android/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    const/4 v9, 0x7

    aget-object v8, v8, v9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 146
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 147
    .local v6, millisecond:I
    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcom/android/music/common/data/MediaMetadata;->getTimeString(IZ)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->duration:Ljava/lang/String;

    .line 149
    sget-object v8, Lcom/android/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 150
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->size:Ljava/lang/String;

    .line 152
    sget-object v8, Lcom/android/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    const/4 v9, 0x4

    aget-object v8, v8, v9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 153
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 155
    .local v1, dateLong:J
    sget-object v8, Lcom/android/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    const/16 v9, 0x9

    aget-object v8, v8, v9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 156
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->track:Ljava/lang/String;

    .line 158
    sget-object v8, Lcom/android/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    const/16 v9, 0xa

    aget-object v8, v8, v9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 159
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->year:Ljava/lang/String;

    .line 161
    sget-object v8, Lcom/android/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    const/16 v9, 0xb

    aget-object v8, v8, v9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 162
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->filetype:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 168
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 169
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 170
    .local v3, date_:Ljava/util/Date;
    const-string v8, "%04d/%02d/%02d %02d:%02d:%02d"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v3}, Ljava/util/Date;->getYear()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3}, Ljava/util/Date;->getMonth()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v3}, Ljava/util/Date;->getDay()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-virtual {v3}, Ljava/util/Date;->getHours()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-virtual {v3}, Ljava/util/Date;->getMinutes()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-virtual {v3}, Ljava/util/Date;->getSeconds()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->date:Ljava/lang/String;

    .line 187
    const-string v8, "album_id"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, p0, Lcom/android/music/common/data/MediaMetadata;->currentAlbumId:I

    .line 188
    iget-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->musicDB:Lcom/android/music/common/data/MusicDB;

    iget v9, p0, Lcom/android/music/common/data/MediaMetadata;->currentAlbumId:I

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Lcom/android/music/common/data/MusicDB;->getAlbumArt(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->albumImagePath:Ljava/lang/String;

    .line 190
    const-string v8, "genre_name"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->genre:Ljava/lang/String;

    .line 192
    const-string v7, "<unknown>"

    .line 193
    .local v7, unknown:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 194
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    .line 195
    :cond_2
    iget-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->album:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 196
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->album:Ljava/lang/String;

    .line 198
    :cond_3
    if-eqz p1, :cond_4

    .line 199
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 203
    :cond_4
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 163
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v1           #dateLong:J
    .end local v3           #date_:Ljava/util/Date;
    .end local v5           #index:I
    .end local v6           #millisecond:I
    .end local v7           #unknown:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 164
    .local v4, e:Ljava/lang/Exception;
    const/4 v8, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public makeUIData(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/music/common/data/MediaMetadata;->album:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/common/data/MediaMetadata;->artistAlbum:Ljava/lang/String;

    .line 228
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/android/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/music/common/data/MediaMetadata;->album:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/android/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/music/common/data/MediaMetadata;->artistAlbum:Ljava/lang/String;

    goto :goto_0

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/android/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/music/common/data/MediaMetadata;->album:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/android/music/common/data/MediaMetadata;->album:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/music/common/data/MediaMetadata;->artistAlbum:Ljava/lang/String;

    goto :goto_0

    .line 226
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/common/data/MediaMetadata;->album:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/common/data/MediaMetadata;->artistAlbum:Ljava/lang/String;

    goto :goto_0
.end method

.method public makeUIDataFromUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 3
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 249
    if-nez p2, :cond_0

    move v1, v2

    .line 267
    :goto_0
    return v1

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/android/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 252
    invoke-static {p2}, Lcom/android/music/common/util/UriUtil;->getType(Landroid/net/Uri;)I

    move-result v0

    .line 254
    .local v0, type:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 259
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    .line 264
    .end local v0           #type:I
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 265
    const/4 v1, 0x1

    goto :goto_0

    .line 260
    .restart local v0       #type:I
    :cond_3
    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 261
    const-string v1, "<unknown>"

    iput-object v1, p0, Lcom/android/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    goto :goto_1

    .end local v0           #type:I
    :cond_4
    move v1, v2

    .line 267
    goto :goto_0
.end method

.method public parse(Landroid/net/Uri;)Z
    .locals 7
    .parameter "uri"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 67
    const/4 v0, -0x1

    .line 69
    .local v0, audioId:I
    iget-object v1, p0, Lcom/android/music/common/data/MediaMetadata;->musicDB:Lcom/android/music/common/data/MusicDB;

    if-nez v1, :cond_0

    .line 70
    iput-boolean v5, p0, Lcom/android/music/common/data/MediaMetadata;->isParsed:Z

    .line 95
    :goto_0
    iget-boolean v1, p0, Lcom/android/music/common/data/MediaMetadata;->isParsed:Z

    :goto_1
    return v1

    .line 76
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    long-to-int v0, v1

    .line 80
    :goto_2
    const-string v1, "MediaMetadata"

    const-string v2, "audioId[%d], currentMediaId[%d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-wide v4, p0, Lcom/android/music/common/data/MediaMetadata;->currentMediaId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    int-to-long v1, v0

    iget-wide v3, p0, Lcom/android/music/common/data/MediaMetadata;->currentMediaId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 85
    iput-boolean v6, p0, Lcom/android/music/common/data/MediaMetadata;->isParsed:Z

    .line 86
    iget-boolean v1, p0, Lcom/android/music/common/data/MediaMetadata;->isParsed:Z

    goto :goto_1

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/android/music/common/data/MediaMetadata;->musicDB:Lcom/android/music/common/data/MusicDB;

    sget-object v2, Lcom/android/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/android/music/common/data/MusicDB;->getFileDetails(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/common/data/MediaMetadata;->cursor:Landroid/database/Cursor;

    .line 90
    int-to-long v1, v0

    iput-wide v1, p0, Lcom/android/music/common/data/MediaMetadata;->currentMediaId:J

    .line 92
    iget-object v1, p0, Lcom/android/music/common/data/MediaMetadata;->cursor:Landroid/database/Cursor;

    invoke-direct {p0, v1}, Lcom/android/music/common/data/MediaMetadata;->parseInternal(Landroid/database/Cursor;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/music/common/data/MediaMetadata;->isParsed:Z

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    goto :goto_2
.end method
