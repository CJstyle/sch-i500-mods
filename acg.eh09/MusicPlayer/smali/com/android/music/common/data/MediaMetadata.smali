.class public Lcom/android/music/common/data/MediaMetadata;
.super Ljava/lang/Object;
.source "MediaMetadata.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field public album:Ljava/lang/String;

.field public albumImagePath:Ljava/lang/String;

.field public artist:Ljava/lang/String;

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

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v2, p0, Lcom/android/music/common/data/MediaMetadata;->currentAlbumId:I

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/music/common/data/MediaMetadata;->currentMediaId:J

    .line 33
    iput-boolean v2, p0, Lcom/android/music/common/data/MediaMetadata;->isParsed:Z

    .line 35
    iput-object v3, p0, Lcom/android/music/common/data/MediaMetadata;->musicDB:Lcom/android/music/common/data/MusicDB;

    .line 36
    iput-object v3, p0, Lcom/android/music/common/data/MediaMetadata;->cursor:Landroid/database/Cursor;

    .line 38
    const-string v0, "MediaMetadata"

    iput-object v0, p0, Lcom/android/music/common/data/MediaMetadata;->TAG:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/android/music/common/data/MediaMetadata;->musicDB:Lcom/android/music/common/data/MusicDB;

    .line 42
    return-void
.end method

.method private parseInternal(Landroid/database/Cursor;)Z
    .locals 12
    .parameter "cursor"

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    const/4 v8, 0x0

    .line 205
    :goto_0
    return v8

    .line 130
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_1

    .line 132
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 133
    const/4 v8, 0x0

    goto :goto_0

    .line 135
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 138
    :try_start_0
    sget-object v8, Lcom/android/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 139
    .local v5, index:I
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    .line 141
    sget-object v8, Lcom/android/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    const/4 v9, 0x6

    aget-object v8, v8, v9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 142
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    .line 144
    sget-object v8, Lcom/android/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 145
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->album:Ljava/lang/String;

    .line 147
    sget-object v8, Lcom/android/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    const/4 v9, 0x7

    aget-object v8, v8, v9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 148
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 149
    .local v6, millisecond:I
    int-to-long v8, v6

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/music/common/util/MusicUtils;->getTimeString(JZ)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->duration:Ljava/lang/String;

    .line 151
    sget-object v8, Lcom/android/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 152
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->size:Ljava/lang/String;

    .line 154
    sget-object v8, Lcom/android/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    const/4 v9, 0x4

    aget-object v8, v8, v9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 155
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 157
    .local v1, dateLong:J
    sget-object v8, Lcom/android/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    const/16 v9, 0x9

    aget-object v8, v8, v9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 158
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->track:Ljava/lang/String;

    .line 160
    sget-object v8, Lcom/android/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    const/16 v9, 0xa

    aget-object v8, v8, v9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 161
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->year:Ljava/lang/String;

    .line 163
    sget-object v8, Lcom/android/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    const/16 v9, 0xb

    aget-object v8, v8, v9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 164
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->filetype:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 170
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 171
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 172
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

    .line 189
    const-string v8, "album_id"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, p0, Lcom/android/music/common/data/MediaMetadata;->currentAlbumId:I

    .line 190
    iget-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->musicDB:Lcom/android/music/common/data/MusicDB;

    iget v9, p0, Lcom/android/music/common/data/MediaMetadata;->currentAlbumId:I

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Lcom/android/music/common/data/MusicDB;->getAlbumArt(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->albumImagePath:Ljava/lang/String;

    .line 192
    const-string v8, "genre_name"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->genre:Ljava/lang/String;

    .line 194
    const-string v7, "<unknown>"

    .line 195
    .local v7, unknown:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 196
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    .line 197
    :cond_2
    iget-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->album:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 198
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/music/common/data/MediaMetadata;->album:Ljava/lang/String;

    .line 200
    :cond_3
    if-eqz p1, :cond_4

    .line 201
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_4
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 165
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v1           #dateLong:J
    .end local v3           #date_:Ljava/util/Date;
    .end local v5           #index:I
    .end local v6           #millisecond:I
    .end local v7           #unknown:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 166
    .local v4, e:Ljava/lang/Exception;
    const/4 v8, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public parse(Landroid/net/Uri;)Z
    .locals 7
    .parameter "uri"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 69
    const/4 v0, -0x1

    .line 71
    .local v0, audioId:I
    iget-object v1, p0, Lcom/android/music/common/data/MediaMetadata;->musicDB:Lcom/android/music/common/data/MusicDB;

    if-nez v1, :cond_0

    .line 72
    iput-boolean v5, p0, Lcom/android/music/common/data/MediaMetadata;->isParsed:Z

    .line 97
    :goto_0
    iget-boolean v1, p0, Lcom/android/music/common/data/MediaMetadata;->isParsed:Z

    :goto_1
    return v1

    .line 78
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    long-to-int v0, v1

    .line 82
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

    .line 85
    int-to-long v1, v0

    iget-wide v3, p0, Lcom/android/music/common/data/MediaMetadata;->currentMediaId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 87
    iput-boolean v6, p0, Lcom/android/music/common/data/MediaMetadata;->isParsed:Z

    .line 88
    iget-boolean v1, p0, Lcom/android/music/common/data/MediaMetadata;->isParsed:Z

    goto :goto_1

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/android/music/common/data/MediaMetadata;->musicDB:Lcom/android/music/common/data/MusicDB;

    sget-object v2, Lcom/android/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/android/music/common/data/MusicDB;->getFileDetails(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/common/data/MediaMetadata;->cursor:Landroid/database/Cursor;

    .line 92
    int-to-long v1, v0

    iput-wide v1, p0, Lcom/android/music/common/data/MediaMetadata;->currentMediaId:J

    .line 94
    iget-object v1, p0, Lcom/android/music/common/data/MediaMetadata;->cursor:Landroid/database/Cursor;

    invoke-direct {p0, v1}, Lcom/android/music/common/data/MediaMetadata;->parseInternal(Landroid/database/Cursor;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/music/common/data/MediaMetadata;->isParsed:Z

    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    goto :goto_2
.end method
