.class public Lcom/android/music/common/data/MusicDB;
.super Ljava/lang/Object;
.source "MusicDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/common/data/MusicDB$FileLocationInfo;
    }
.end annotation


# static fields
.field private static final CONTENT_PREFIX:Ljava/lang/String; = "content://media"

.field public static final CONTENT_TYPE:I = 0x2

.field public static final DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String; = null

.field public static final DEFAULT_PLAYLIST:Ljava/lang/String; = "Music_Default_Playlist"

.field public static final DRM_TYPE:I = 0x1

.field public static final EXTERNAL_MEDIA:I = 0x1

.field private static final EXTERNAL_VOLUME:Ljava/lang/String; = "external"

.field private static final FILE_PREFIX:Ljava/lang/String; = "file://"

.field public static final FILE_TYPE:I = 0x0

.field public static final IDTAG_FILE_DETAIL_COLS:[Ljava/lang/String; = null

.field public static final INTERNAL_MEDIA:I = 0x0

.field private static final INTERNAL_VOLUME:Ljava/lang/String; = "internal"

.field public static final MOST_PLAYED_COL:Ljava/lang/String; = "most_played"

.field public static MediaCount:I = 0x0

.field public static final RECENTLY_ADDED_REMOVED_FLAG_COL:Ljava/lang/String; = "recently_added_remove_flag"

.field public static final RECENTLY_PLAYED_COL:Ljava/lang/String; = "recently_played"

.field private static final TAG:Ljava/lang/String; = null

.field public static final UNKNOWN_META:Ljava/lang/String; = "Unknown"

.field public static final UNKNOWN_TYPE:I = -0x1

.field private static mInstance:Lcom/android/music/common/data/MusicDB;


# instance fields
.field protected mCollator:Ljava/text/Collator;

.field private mCollatorIndex:[Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mKeyForIndex:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    const-class v0, Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    .line 36
    sput v3, Lcom/android/music/common/data/MusicDB;->MediaCount:I

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/android/music/common/data/MusicDB;->mInstance:Lcom/android/music/common/data/MusicDB;

    .line 74
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "_display_name"

    aput-object v1, v0, v5

    const-string v1, "_size"

    aput-object v1, v0, v6

    const-string v1, "date_modified"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "track"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "year"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "genre_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    .line 93
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "track"

    aput-object v1, v0, v6

    const-string v1, "album"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "year"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/music/common/data/MusicDB;->IDTAG_FILE_DETAIL_COLS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    .line 39
    iput-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    .line 261
    iput-object v0, p0, Lcom/android/music/common/data/MusicDB;->mKeyForIndex:[Ljava/lang/String;

    .line 262
    iput-object v0, p0, Lcom/android/music/common/data/MusicDB;->mCollatorIndex:[Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    .line 108
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    .line 109
    return-void
.end method

.method private InitFocuesdIndexArray()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/android/music/common/data/MusicDB;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a006e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, alphabet:Ljava/lang/String;
    const-string v2, "TEST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Music alphabet : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/music/common/data/MusicDB;->mKeyForIndex:[Ljava/lang/String;

    .line 272
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/music/common/data/MusicDB;->mCollatorIndex:[Ljava/lang/String;

    .line 273
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/common/data/MusicDB;->mCollator:Ljava/text/Collator;

    .line 274
    iget-object v2, p0, Lcom/android/music/common/data/MusicDB;->mCollator:Ljava/text/Collator;

    invoke-virtual {v2, v6}, Ljava/text/Collator;->setStrength(I)V

    .line 276
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 277
    iget-object v2, p0, Lcom/android/music/common/data/MusicDB;->mCollatorIndex:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 278
    iget-object v2, p0, Lcom/android/music/common/data/MusicDB;->mKeyForIndex:[Ljava/lang/String;

    const-string v3, ".%s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/music/common/data/MusicDB;->mCollatorIndex:[Ljava/lang/String;

    aget-object v5, v5, v1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/database/DatabaseUtils;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    :cond_0
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;
    .locals 2
    .parameter "context"

    .prologue
    .line 164
    const-class v0, Lcom/android/music/common/data/MusicDB;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/music/common/data/MusicDB;->mInstance:Lcom/android/music/common/data/MusicDB;

    if-nez v1, :cond_1

    .line 165
    new-instance v1, Lcom/android/music/common/data/MusicDB;

    invoke-direct {v1, p0}, Lcom/android/music/common/data/MusicDB;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/music/common/data/MusicDB;->mInstance:Lcom/android/music/common/data/MusicDB;

    .line 171
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/music/common/data/MusicDB;->mInstance:Lcom/android/music/common/data/MusicDB;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 167
    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/music/common/data/MusicDB;->mInstance:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v1}, Lcom/android/music/common/data/MusicDB;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 168
    new-instance v1, Lcom/android/music/common/data/MusicDB;

    invoke-direct {v1, p0}, Lcom/android/music/common/data/MusicDB;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/music/common/data/MusicDB;->mInstance:Lcom/android/music/common/data/MusicDB;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static defaultAudioWhereClause()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4278
    .local v0, where:Ljava/lang/StringBuilder;
    const-string v1, "is_sound = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getFocusedIndexByCollator(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "word"

    .prologue
    const/4 v6, 0x1

    .line 285
    const/4 v2, 0x0

    .line 286
    .local v2, low:I
    iget-object v4, p0, Lcom/android/music/common/data/MusicDB;->mCollatorIndex:[Ljava/lang/String;

    array-length v4, v4

    sub-int v1, v4, v6

    .line 288
    .local v1, high:I
    const/4 v0, 0x0

    .line 290
    .local v0, compare:I
    :goto_0
    if-gt v2, v1, :cond_2

    .line 291
    add-int v4, v2, v1

    div-int/lit8 v3, v4, 0x2

    .line 292
    .local v3, mid:I
    iget-object v4, p0, Lcom/android/music/common/data/MusicDB;->mCollator:Ljava/text/Collator;

    iget-object v5, p0, Lcom/android/music/common/data/MusicDB;->mCollatorIndex:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, p1, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 293
    if-nez v0, :cond_0

    .line 295
    iget-object v4, p0, Lcom/android/music/common/data/MusicDB;->mCollatorIndex:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 308
    .end local v3           #mid:I
    :goto_1
    return-object v4

    .line 296
    .restart local v3       #mid:I
    :cond_0
    if-lez v0, :cond_1

    .line 297
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    .line 299
    :cond_1
    sub-int v1, v3, v6

    goto :goto_0

    .line 302
    .end local v3           #mid:I
    :cond_2
    if-ltz v1, :cond_3

    iget-object v4, p0, Lcom/android/music/common/data/MusicDB;->mKeyForIndex:[Ljava/lang/String;

    array-length v4, v4

    if-le v2, v4, :cond_4

    .line 304
    :cond_3
    const-string v4, "@"

    goto :goto_1

    .line 308
    :cond_4
    iget-object v4, p0, Lcom/android/music/common/data/MusicDB;->mCollatorIndex:[Ljava/lang/String;

    aget-object v4, v4, v1

    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Lcom/android/music/common/data/MusicDB;
    .locals 2

    .prologue
    .line 176
    const-class v0, Lcom/android/music/common/data/MusicDB;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/music/common/data/MusicDB;->mInstance:Lcom/android/music/common/data/MusicDB;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getMusicMainListCursor(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "listType"
    .parameter "columns"
    .parameter "limits"
    .parameter "groupBy"

    .prologue
    .line 320
    const/4 v8, 0x0

    .line 321
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 322
    .local v3, selection:Ljava/lang/String;
    const/4 v2, 0x0

    .line 324
    .local v2, cols:[Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 325
    .local v1, uri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/music/common/util/ListType;->getOrderBy(I)Ljava/lang/String;

    move-result-object v5

    .line 326
    .local v5, orderBy:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .local v7, builder:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 332
    .local v6, bIsNeedMerge:Z
    if-eqz p2, :cond_0

    .line 333
    move-object v2, p2

    .line 337
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 422
    :pswitch_0
    const/4 v0, 0x0

    .line 464
    .end local v2           #cols:[Ljava/lang/String;
    .end local v5           #orderBy:Ljava/lang/String;
    .end local v7           #builder:Ljava/lang/StringBuilder;
    :goto_1
    return-object v0

    .line 335
    .restart local v2       #cols:[Ljava/lang/String;
    .restart local v5       #orderBy:Ljava/lang/String;
    .restart local v7       #builder:Ljava/lang/StringBuilder;
    :cond_0
    invoke-static {p1}, Lcom/android/music/common/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 340
    :pswitch_1
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v3

    .line 426
    :goto_2
    :pswitch_2
    if-eqz p3, :cond_1

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1           #uri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 431
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_1
    if-eqz p4, :cond_3

    .line 434
    if-nez p3, :cond_2

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1           #uri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 438
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1           #uri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&groupBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 441
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_3
    const/4 v10, 0x0

    .line 443
    .local v10, mergedCursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 444
    if-nez v8, :cond_7

    .line 446
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v4, "MusicDB::getMusicMainListCursor - query return null"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    .end local v7           #builder:Ljava/lang/StringBuilder;
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v4, "         uri = %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .end local v10           #mergedCursor:Landroid/database/Cursor;
    aput-object v10, v7, v9

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v4, "         cols[0] = %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v2, v2, v10

    .end local v2           #cols:[Ljava/lang/String;
    aput-object v2, v7, v9

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v2, "         selection = %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v2, "         orderBy = %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Context : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 352
    .restart local v2       #cols:[Ljava/lang/String;
    .restart local v7       #builder:Ljava/lang/StringBuilder;
    :pswitch_3
    const-string v0, "composer is not null"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 361
    const/4 v6, 0x1

    .line 362
    goto/16 :goto_2

    .line 367
    :pswitch_4
    const/4 v6, 0x1

    .line 368
    goto/16 :goto_2

    .line 391
    :pswitch_5
    if-nez p3, :cond_4

    .line 392
    const-string p3, "50"

    .line 394
    :cond_4
    const-string v0, "recently_played != 0"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const-string v0, " AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 398
    goto/16 :goto_2

    .line 401
    :pswitch_6
    if-nez p3, :cond_5

    .line 402
    const-string p3, "50"

    .line 404
    :cond_5
    const-string v0, "most_played != 0"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const-string v0, " AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 408
    goto/16 :goto_2

    .line 411
    :pswitch_7
    if-nez p3, :cond_6

    .line 412
    const-string p3, "900"

    .line 414
    :cond_6
    const-string v0, "recently_added_remove_flag = 0"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    const-string v0, " AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 418
    goto/16 :goto_2

    .line 455
    .restart local v10       #mergedCursor:Landroid/database/Cursor;
    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/android/music/common/data/MusicDB;->MediaCount:I

    .line 456
    const-string v0, "MusicDB::getMusicMainListCursor -  cursor.getCount()= [%d]]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .end local v2           #cols:[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .end local v5           #orderBy:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 457
    .local v9, log:Ljava/lang/String;
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    if-eqz v6, :cond_8

    .line 460
    invoke-virtual {p0, v8, p1}, Lcom/android/music/common/data/MusicDB;->getMergedCursor(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v10

    :goto_3
    move-object v0, v10

    .line 464
    goto/16 :goto_1

    .line 462
    :cond_8
    move-object v10, v8

    goto :goto_3

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getMusicSubListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18
    .parameter "listType"
    .parameter "listFilter"
    .parameter "columns"
    .parameter "limits"
    .parameter "groupBy"

    .prologue
    .line 473
    const/4 v13, 0x0

    .line 474
    .local v13, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 475
    .local v9, selection:Ljava/lang/String;
    const/4 v10, 0x0

    .line 476
    .local v10, selectionArgs:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 478
    .local v8, cols:[Ljava/lang/String;
    const/4 v2, 0x0

    move/from16 v0, p1

    move v1, v2

    invoke-static {v0, v1}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v7

    .line 479
    .local v7, uri:Landroid/net/Uri;
    invoke-static/range {p1 .. p1}, Lcom/android/music/common/util/ListType;->getOrderBy(I)Ljava/lang/String;

    move-result-object v11

    .line 480
    .local v11, orderBy:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    .local v12, builder:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_0

    .line 484
    move-object/from16 v8, p3

    .line 488
    :goto_0
    if-nez p2, :cond_1

    .line 491
    const-string v2, "getMusicSubListCursor : listType[%s], listFilter is NULL"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/music/common/util/ListType;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 492
    .local v14, msg:Ljava/lang/String;
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    invoke-static {v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v14}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 486
    .end local v14           #msg:Ljava/lang/String;
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/music/common/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 497
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 633
    :goto_1
    :pswitch_0
    if-eqz p4, :cond_2

    .line 635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?&limit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 638
    :cond_2
    if-eqz p5, :cond_3

    .line 640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&groupBy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    :cond_3
    move-object/from16 v6, p0

    .line 643
    invoke-direct/range {v6 .. v11}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    move-object v2, v13

    .line 646
    :goto_2
    return-object v2

    .line 501
    :pswitch_1
    const/4 v15, -0x1

    .line 504
    .local v15, playlistId:I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->bIsID:Z

    if-nez v2, :cond_4

    .line 506
    const/16 v16, 0x0

    .line 508
    .local v16, tmpCursor:Landroid/database/Cursor;
    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v3

    .line 509
    .local v3, tmpUri:Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    .line 510
    .local v4, tmpCols:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name = \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->strFilterData:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 512
    .local v5, tmpSelection:Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v7           #uri:Landroid/net/Uri;
    move-result-object v16

    .line 513
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 514
    const-string v2, "_id"

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 515
    .local v17, tmpIndex:I
    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 516
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 524
    .end local v3           #tmpUri:Landroid/net/Uri;
    .end local v4           #tmpCols:[Ljava/lang/String;
    .end local v5           #tmpSelection:Ljava/lang/String;
    .end local v16           #tmpCursor:Landroid/database/Cursor;
    .end local v17           #tmpIndex:I
    :goto_3
    move/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v7

    .line 526
    .restart local v7       #uri:Landroid/net/Uri;
    goto/16 :goto_1

    .line 520
    :cond_4
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v15, v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    goto :goto_3

    .line 530
    .end local v15           #playlistId:I
    :pswitch_2
    const/4 v15, -0x1

    .line 533
    .restart local v15       #playlistId:I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v15, v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    .line 536
    move/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v7

    .line 538
    goto/16 :goto_1

    .line 542
    .end local v15           #playlistId:I
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "album_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    const-string v2, " AND "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 546
    goto/16 :goto_1

    .line 552
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "artist_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    const-string v2, " AND "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 556
    goto/16 :goto_1

    .line 562
    :pswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "artist_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    const-string v2, " AND "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 566
    goto/16 :goto_1

    .line 570
    :pswitch_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "artist_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 571
    goto/16 :goto_1

    .line 577
    :pswitch_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "artist_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "album_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v3, v0

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const-string v2, " AND "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 582
    goto/16 :goto_1

    .line 587
    :pswitch_8
    const-string v2, "genre_name = ?"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const-string v2, " AND "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 592
    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    .end local v10           #selectionArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->strFilterData:Ljava/lang/String;

    aput-object v3, v10, v2

    .line 593
    .restart local v10       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 597
    :pswitch_9
    const-string v2, "composer = ?"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    const-string v2, " AND "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 602
    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    .end local v10           #selectionArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->strFilterData:Ljava/lang/String;

    aput-object v3, v10, v2

    .line 603
    .restart local v10       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 607
    :pswitch_a
    const-string v2, "year_name = ?"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    const-string v2, " AND "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 612
    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    .end local v10           #selectionArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->strFilterData:Ljava/lang/String;

    aput-object v3, v10, v2

    .line 613
    .restart local v10       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 616
    :pswitch_b
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 497
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getUriType(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/music/common/data/MusicDB$FileLocationInfo;
    .locals 7
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x1

    const-string v5, "content://media"

    .line 4004
    new-instance v0, Lcom/android/music/common/data/MusicDB$FileLocationInfo;

    invoke-direct {v0}, Lcom/android/music/common/data/MusicDB$FileLocationInfo;-><init>()V

    .line 4008
    .local v0, fl:Lcom/android/music/common/data/MusicDB$FileLocationInfo;
    if-nez p1, :cond_0

    .line 4009
    iput v4, v0, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->type:I

    .line 4043
    :goto_0
    return-object v0

    .line 4013
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4014
    .local v1, uriPath:Ljava/lang/String;
    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4015
    iput v6, v0, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->type:I

    .line 4016
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->path:Ljava/lang/String;

    .line 4017
    iget-object v2, v0, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->path:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/music/common/data/MusicDB;->isInternalFile(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->isInternal:I

    goto :goto_0

    .line 4030
    :cond_1
    const-string v2, "content://media"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4031
    const/4 v2, 0x2

    iput v2, v0, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->type:I

    .line 4032
    iput-object p1, v0, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->uri:Landroid/net/Uri;

    .line 4033
    const-string v2, "content://media"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "internal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4034
    iput v6, v0, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->isInternal:I

    goto :goto_0

    .line 4035
    :cond_2
    const-string v2, "content://media"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "external"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4036
    const/4 v2, 0x1

    iput v2, v0, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->isInternal:I

    goto :goto_0

    .line 4038
    :cond_3
    iput v4, v0, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->isInternal:I

    goto :goto_0

    .line 4041
    :cond_4
    iput v4, v0, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->type:I

    goto :goto_0
.end method

.method private static isInternalFile(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 4047
    const-string v0, "/system/media"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4048
    const/4 v0, 0x0

    .line 4053
    :goto_0
    return v0

    .line 4050
    :cond_0
    const-string v0, "/sdcard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4051
    const/4 v0, 0x1

    goto :goto_0

    .line 4053
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 114
    const/4 v7, 0x0

    .line 118
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    .line 159
    :goto_0
    return-object v7

    .line 120
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 122
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteFullException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 126
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 127
    .local v6, am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 132
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteDiskIOException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 136
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 137
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_2
    move-exception v0

    move-object v8, v0

    .line 152
    .local v8, e:Ljava/lang/IllegalArgumentException;
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalArgumentException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 154
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 155
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addItem(Lcom/android/music/common/data/MpListFilter;I)Z
    .locals 17
    .parameter "listFilter"
    .parameter "iID"

    .prologue
    .line 2118
    const/4 v3, 0x1

    .line 2120
    .local v3, bResult:Z
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/music/common/data/MpListFilter;->listType:I

    move v6, v0

    .line 2124
    .local v6, listType:I
    const/16 v14, 0xd

    if-eq v6, v14, :cond_0

    const/16 v14, 0x9

    if-eq v6, v14, :cond_0

    .line 2129
    const/4 v14, 0x0

    .line 2213
    :goto_0
    return v14

    .line 2132
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v14, v0

    const/4 v15, 0x0

    aget-object v14, v14, v15

    iget v14, v14, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-static {v6, v14}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v11

    .line 2133
    .local v11, uri:Landroid/net/Uri;
    const/4 v13, 0x0

    .line 2135
    .local v13, values:Landroid/content/ContentValues;
    const/16 v14, 0x9

    if-ne v6, v14, :cond_3

    .line 2137
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/music/common/data/MusicDB;->isExistQuickList(I)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 2138
    sget-object v14, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "addItem(),QUICK_LIST "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is already added"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    const/4 v14, 0x0

    goto :goto_0

    .line 2142
    :cond_1
    new-instance v13, Landroid/content/ContentValues;

    .end local v13           #values:Landroid/content/ContentValues;
    const/4 v14, 0x2

    invoke-direct {v13, v14}, Landroid/content/ContentValues;-><init>(I)V

    .line 2144
    .restart local v13       #values:Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/common/data/MusicDB;->getQuickListMaxID()I

    move-result v5

    .line 2145
    .local v5, iMaxID:I
    const-string v14, "_id"

    add-int/lit8 v15, v5, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2146
    const-string v14, "audio_id"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2161
    .end local v5           #iMaxID:I
    :goto_1
    const/4 v12, 0x0

    .line 2165
    .local v12, uriResult:Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    move-object v14, v0

    invoke-virtual {v14, v11, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    .line 2203
    :goto_2
    invoke-static {v12}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    long-to-int v8, v14

    .line 2205
    .local v8, result:I
    const/4 v14, -0x1

    if-ne v8, v14, :cond_2

    .line 2209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    move-object v14, v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "addItem( listType["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], int iID["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]  is false"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 2210
    const/4 v3, 0x0

    :cond_2
    move v14, v3

    .line 2213
    goto/16 :goto_0

    .line 2150
    .end local v8           #result:I
    .end local v12           #uriResult:Landroid/net/Uri;
    :cond_3
    new-instance v13, Landroid/content/ContentValues;

    .end local v13           #values:Landroid/content/ContentValues;
    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 2152
    .restart local v13       #values:Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v14, v0

    const/4 v15, 0x0

    aget-object v14, v14, v15

    iget v14, v14, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/music/common/data/MusicDB;->getUserListMaxPlayOrder(I)I

    move-result v7

    .line 2154
    .local v7, playOrder:I
    const-string v9, "play_order"

    .line 2155
    .local v9, tmpCol1:Ljava/lang/String;
    const-string v10, "audio_id"

    .line 2158
    .local v10, tmpCol2:Ljava/lang/String;
    add-int/lit8 v14, v7, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v9, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2159
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v10, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 2166
    .end local v7           #playOrder:I
    .end local v9           #tmpCol1:Ljava/lang/String;
    .end local v10           #tmpCol2:Ljava/lang/String;
    .restart local v12       #uriResult:Landroid/net/Uri;
    :catch_0
    move-exception v14

    move-object v4, v14

    .line 2173
    .local v4, e:Landroid/database/sqlite/SQLiteFullException;
    sget-object v14, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SQLiteFullException getQuickListMaxID"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    move-object v14, v0

    const-string v15, "activity"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 2178
    .local v2, am:Landroid/app/ActivityManager;
    const-string v14, "com.android.music"

    invoke-virtual {v2, v14}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2180
    .end local v2           #am:Landroid/app/ActivityManager;
    .end local v4           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v14

    move-object v4, v14

    .line 2187
    .local v4, e:Landroid/database/sqlite/SQLiteDiskIOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    move-object v14, v0

    const-string v15, "activity"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 2190
    .restart local v2       #am:Landroid/app/ActivityManager;
    const-string v14, "com.android.music"

    invoke-virtual {v2, v14}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public addItems(Lcom/android/music/common/data/MpListFilter;I[I)I
    .locals 21
    .parameter "listFilter"
    .parameter "nCount"
    .parameter "iIDs"

    .prologue
    .line 2312
    const/4 v14, 0x0

    .line 2314
    .local v14, nResult:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/music/common/data/MpListFilter;->listType:I

    move v13, v0

    .line 2324
    .local v13, listType:I
    const/16 v3, 0xd

    if-eq v13, v3, :cond_0

    const/16 v3, 0x9

    if-eq v13, v3, :cond_0

    .line 2329
    const/4 v3, -0x1

    .line 2423
    :goto_0
    return v3

    .line 2332
    :cond_0
    const/16 v3, 0x9

    if-ne v13, v3, :cond_1

    :goto_1
    move v3, v14

    .line 2423
    goto :goto_0

    .line 2341
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/music/common/data/MusicDB;->getUserListMaxPlayOrder(I)I

    move-result v15

    .line 2342
    .local v15, playOrder:I
    add-int/lit8 v15, v15, 0x1

    .line 2344
    const-string v16, "play_order"

    .line 2346
    .local v16, tmpCol1:Ljava/lang/String;
    const-string v17, "audio_data"

    .line 2348
    .local v17, tmpCol2:Ljava/lang/String;
    move/from16 v0, p2

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v20, v0

    .line 2350
    .local v20, values:[Landroid/content/ContentValues;
    const/16 v18, 0x0

    .line 2351
    .local v18, tmpCursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 2352
    .local v9, _data:Ljava/lang/String;
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->FEATURE_MUSIC_PLAYLIST()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2353
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    move v0, v12

    move/from16 v1, p2

    if-ge v0, v1, :cond_5

    .line 2355
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    aput-object v3, v20, v12

    .line 2356
    aget-object v3, v20, v12

    add-int v4, v15, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, v3

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2359
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v4

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_data"

    aput-object v6, v5, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x1

    sub-int v6, p2, v6

    sub-int/2addr v6, v12

    aget v6, p3, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 2361
    if-eqz v18, :cond_3

    .line 2363
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 2365
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2366
    const/4 v3, 0x0

    move-object/from16 v0, v18

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2368
    :cond_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 2371
    :cond_3
    aget-object v3, v20, v12

    move-object v0, v3

    move-object/from16 v1, v17

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 2374
    .end local v12           #i:I
    :cond_4
    const-string v17, "audio_id"

    .line 2375
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_3
    move v0, v12

    move/from16 v1, p2

    if-ge v0, v1, :cond_5

    .line 2377
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    aput-object v3, v20, v12

    .line 2378
    aget-object v3, v20, v12

    add-int v4, v15, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, v3

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2379
    aget-object v3, v20, v12

    const/4 v4, 0x1

    sub-int v4, p2, v4

    sub-int/2addr v4, v12

    aget v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, v3

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2375
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 2383
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-static {v13, v3}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v19

    .line 2385
    .local v19, uri:Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v14

    goto/16 :goto_1

    .line 2386
    :catch_0
    move-exception v3

    move-object v11, v3

    .line 2396
    .local v11, e:Landroid/database/sqlite/SQLiteFullException;
    sget-object v3, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteFullException getQuickListMaxID"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    move-object v3, v0

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 2402
    .local v10, am:Landroid/app/ActivityManager;
    const-string v3, "com.android.music"

    invoke-virtual {v10, v3}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2404
    .end local v10           #am:Landroid/app/ActivityManager;
    .end local v11           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v3

    move-object v11, v3

    .line 2411
    .local v11, e:Landroid/database/sqlite/SQLiteDiskIOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    move-object v3, v0

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 2414
    .restart local v10       #am:Landroid/app/ActivityManager;
    const-string v3, "com.android.music"

    invoke-virtual {v10, v3}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public addItems(Lcom/android/music/common/data/MpListFilter;I[Lcom/android/music/common/data/MusicAddData;)I
    .locals 16
    .parameter "listFilter"
    .parameter "nCount"
    .parameter "addData"

    .prologue
    .line 2219
    const/4 v6, 0x0

    .line 2221
    .local v6, nResult:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/music/common/data/MpListFilter;->listType:I

    move v5, v0

    .line 2224
    .local v5, listType:I
    const/16 v13, 0xd

    if-eq v5, v13, :cond_0

    const/16 v13, 0x9

    if-eq v5, v13, :cond_0

    .line 2229
    const/4 v13, -0x1

    .line 2307
    :goto_0
    return v13

    .line 2232
    :cond_0
    const/16 v13, 0x9

    if-ne v5, v13, :cond_1

    :goto_1
    move v13, v6

    .line 2307
    goto :goto_0

    .line 2241
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v13, v0

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget v13, v13, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/android/music/common/data/MusicDB;->getUserListMaxPlayOrder(I)I

    move-result v7

    .line 2242
    .local v7, playOrder:I
    add-int/lit8 v7, v7, 0x1

    .line 2244
    const-string v8, "play_order"

    .line 2246
    .local v8, tmpCol1:Ljava/lang/String;
    const-string v9, "audio_data"

    .line 2248
    .local v9, tmpCol2:Ljava/lang/String;
    const-string v10, "audio_data_hashcode"

    .line 2251
    .local v10, tmpCol3:Ljava/lang/String;
    move/from16 v0, p2

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object v12, v0

    .line 2253
    .local v12, values:[Landroid/content/ContentValues;
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->FEATURE_MUSIC_PLAYLIST()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2254
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    move v0, v4

    move/from16 v1, p2

    if-ge v0, v1, :cond_3

    .line 2256
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    aput-object v13, v12, v4

    .line 2257
    aget-object v13, v12, v4

    add-int v14, v7, v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v8, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2258
    aget-object v13, v12, v4

    const/4 v14, 0x1

    sub-int v14, p2, v14

    sub-int/2addr v14, v4

    aget-object v14, p3, v14

    iget-object v14, v14, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    invoke-virtual {v13, v9, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    aget-object v13, v12, v4

    const/4 v14, 0x1

    sub-int v14, p2, v14

    sub-int/2addr v14, v4

    aget-object v14, p3, v14

    iget v14, v14, Lcom/android/music/common/data/MusicAddData;->mHashCode:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v10, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2254
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2262
    .end local v4           #i:I
    :cond_2
    const-string v9, "audio_id"

    .line 2263
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    move v0, v4

    move/from16 v1, p2

    if-ge v0, v1, :cond_3

    .line 2265
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    aput-object v13, v12, v4

    .line 2266
    aget-object v13, v12, v4

    add-int v14, v7, v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v8, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2267
    aget-object v13, v12, v4

    const/4 v14, 0x1

    sub-int v14, p2, v14

    sub-int/2addr v14, v4

    aget-object v14, p3, v14

    iget v14, v14, Lcom/android/music/common/data/MusicAddData;->mId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v9, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2263
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2271
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v13, v0

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget v13, v13, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-static {v5, v13}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v11

    .line 2273
    .local v11, uri:Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    move-object v13, v0

    invoke-virtual {v13, v11, v12}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    goto/16 :goto_1

    .line 2274
    :catch_0
    move-exception v13

    move-object v3, v13

    .line 2281
    .local v3, e:Landroid/database/sqlite/SQLiteFullException;
    sget-object v13, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SQLiteFullException getQuickListMaxID"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    move-object v13, v0

    const-string v14, "activity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 2287
    .local v2, am:Landroid/app/ActivityManager;
    const-string v13, "com.android.music"

    invoke-virtual {v2, v13}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2289
    .end local v2           #am:Landroid/app/ActivityManager;
    .end local v3           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v13

    move-object v3, v13

    .line 2296
    .local v3, e:Landroid/database/sqlite/SQLiteDiskIOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    move-object v13, v0

    const-string v14, "activity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 2298
    .restart local v2       #am:Landroid/app/ActivityManager;
    const-string v13, "com.android.music"

    invoke-virtual {v2, v13}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public createUserList(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 9
    .parameter "strName"
    .parameter "imageUri"
    .parameter "imagePath"

    .prologue
    .line 2836
    if-nez p1, :cond_0

    .line 2839
    iget-object v6, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v7, "createUserList : inParam is null"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 2840
    const/4 v6, -0x1

    .line 2911
    :goto_0
    return v6

    .line 2843
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/music/common/data/MusicDB;->isExistUserList(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2846
    iget-object v6, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createUserList : isExistUserList("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") is true"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 2847
    const/4 v6, -0x1

    goto :goto_0

    .line 2858
    :cond_1
    const/4 v2, -0x1

    .line 2859
    .local v2, imageID:I
    if-eqz p2, :cond_2

    .line 2860
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    long-to-int v2, v6

    .line 2862
    :cond_2
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 2863
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "name"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2864
    const-string v6, "images_id"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2865
    const-string v6, "thumbnail_uri"

    invoke-virtual {v5, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2867
    const/4 v4, 0x0

    .line 2870
    .local v4, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v6, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v7, 0x2

    const/4 v8, -0x1

    invoke-static {v7, v8}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 2902
    :goto_1
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    long-to-int v3, v6

    .line 2904
    .local v3, result:I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_3

    .line 2908
    iget-object v6, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v7, "createUserList : bResult is false"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :cond_3
    move v6, v3

    .line 2911
    goto :goto_0

    .line 2871
    .end local v3           #result:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 2878
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    sget-object v6, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SQLiteFullException getQuickListMaxID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    iget-object v6, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2882
    iget-object v6, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2884
    .local v0, am:Landroid/app/ActivityManager;
    const-string v6, "com.android.music"

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_1

    .line 2886
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 2894
    .local v1, e:Landroid/database/sqlite/SQLiteDiskIOException;
    iget-object v6, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2896
    iget-object v6, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2898
    .restart local v0       #am:Landroid/app/ActivityManager;
    const-string v6, "com.android.music"

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public deleteAllMusics()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3624
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteAllMusicsInSelectedCategory(IJ)V
    .locals 7
    .parameter "listType"
    .parameter "catId"

    .prologue
    .line 3634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3637
    .local v0, where:Ljava/lang/StringBuilder;
    const/16 v1, 0xf

    if-ne p1, v1, :cond_1

    .line 3638
    const-string v1, "artist_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3642
    :cond_0
    :goto_0
    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3646
    iget-object v1, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3653
    return-void

    .line 3639
    :cond_1
    const/16 v1, 0xe

    if-ne p1, v1, :cond_0

    .line 3640
    const-string v1, "album_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public deleteMusic(J)I
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 3628
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 3630
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getAlbumArt(J)Ljava/lang/String;
    .locals 11
    .parameter "albumId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v10, 0x0

    const-string v0, "album_art"

    const-string v0, "activity"

    .line 4165
    const/4 v6, 0x0

    .line 4166
    .local v6, albumArt:Ljava/lang/String;
    const/4 v3, 0x0

    .line 4168
    .local v3, where:Ljava/lang/String;
    const/4 v8, 0x0

    .line 4170
    .local v8, c:Landroid/database/Cursor;
    const-string v0, "%s = %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "_id"

    aput-object v2, v1, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 4173
    :try_start_0
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "album_art"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 4177
    if-nez v8, :cond_1

    .line 4212
    if-eqz v8, :cond_0

    .line 4213
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v10

    .line 4216
    :goto_0
    return-object v0

    .line 4179
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 4180
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4212
    if-eqz v8, :cond_2

    .line 4213
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    .line 4184
    :cond_3
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4185
    const-string v0, "album_art"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    .line 4212
    if-eqz v8, :cond_4

    .line 4213
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move-object v0, v6

    .line 4216
    goto :goto_0

    .line 4187
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 4188
    .local v9, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_3
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteFullException getAlbumArt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4189
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 4193
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    .line 4195
    .local v7, am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v7, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4212
    if-eqz v8, :cond_4

    .line 4213
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 4197
    .end local v7           #am:Landroid/app/ActivityManager;
    .end local v9           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 4205
    .local v9, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_4
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 4207
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    .line 4209
    .restart local v7       #am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v7, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4212
    if-eqz v8, :cond_4

    .line 4213
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 4212
    .end local v7           #am:Landroid/app/ActivityManager;
    .end local v9           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    .line 4213
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public getAlbumArtPath(J)Ljava/lang/String;
    .locals 11
    .parameter "id"

    .prologue
    .line 3656
    const/4 v9, 0x0

    .line 3657
    .local v9, path:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 3659
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v0, "_id = "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3660
    const-string v0, "(SELECT album_id"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3661
    const-string v0, " FROM audio WHERE _id = ?)"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3662
    const/4 v7, 0x0

    .line 3664
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "album_art"

    aput-object v4, v2, v3

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 3667
    if-nez v7, :cond_1

    .line 3668
    const/4 v0, 0x0

    .line 3699
    if-eqz v7, :cond_0

    .line 3700
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3704
    :cond_0
    :goto_0
    return-object v0

    .line 3671
    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3672
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3673
    const-string v0, "album_art"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 3699
    :cond_2
    if-eqz v7, :cond_3

    .line 3700
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move-object v0, v9

    .line 3704
    goto :goto_0

    .line 3676
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 3677
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_2
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteFullException getAlbumArtPath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3678
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3681
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 3683
    .local v6, am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3699
    if-eqz v7, :cond_3

    .line 3700
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 3685
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 3692
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_3
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3694
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 3696
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3699
    if-eqz v7, :cond_3

    .line 3700
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 3699
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 3700
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getAlbumID(ILandroid/database/Cursor;)I
    .locals 11
    .parameter "listType"
    .parameter "cursor"

    .prologue
    .line 1826
    const/4 v8, 0x2

    if-eq p1, v8, :cond_0

    const/16 v8, 0x19

    if-ne p1, v8, :cond_1

    .line 1832
    :cond_0
    const/4 v8, -0x1

    .line 1911
    :goto_0
    return v8

    .line 1837
    :cond_1
    const-string v8, "album_id"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1840
    .local v4, iAlbum_id:I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_4

    .line 1842
    const/4 v8, 0x1

    new-array v1, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "album_id"

    aput-object v9, v1, v8

    .line 1843
    .local v1, cols:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1844
    .local v7, tmpCursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1845
    .local v6, subListType:I
    const/4 v2, 0x0

    .line 1846
    .local v2, filterID:I
    const/4 v3, 0x0

    .line 1847
    .local v3, filterString:Ljava/lang/String;
    const/4 v0, 0x1

    .line 1848
    .local v0, bIsID:Z
    invoke-static {p1}, Lcom/android/music/common/util/ListType;->getSubListType(I)I

    move-result v6

    .line 1849
    new-instance v5, Lcom/android/music/common/data/MpListFilter;

    const/4 v8, 0x1

    invoke-direct {v5, v6, v8}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 1851
    .local v5, listFilter:Lcom/android/music/common/data/MpListFilter;
    sparse-switch p1, :sswitch_data_0

    .line 1894
    const/4 v8, -0x1

    goto :goto_0

    .line 1857
    :sswitch_0
    const-string v8, "_id"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1897
    :goto_1
    if-eqz v3, :cond_2

    .line 1898
    const/4 v0, 0x0

    .line 1899
    :cond_2
    iget-object v8, v5, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v9, 0x0

    new-instance v10, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v10, v5, v0, v2, v3}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v10, v8, v9

    .line 1901
    const-string v8, "1"

    invoke-virtual {p0, v6, v5, v1, v8}, Lcom/android/music/common/data/MusicDB;->getMusicListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1902
    if-eqz v7, :cond_4

    .line 1903
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1904
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 1905
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1907
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v0           #bIsID:Z
    .end local v1           #cols:[Ljava/lang/String;
    .end local v2           #filterID:I
    .end local v3           #filterString:Ljava/lang/String;
    .end local v5           #listFilter:Lcom/android/music/common/data/MpListFilter;
    .end local v6           #subListType:I
    .end local v7           #tmpCursor:Landroid/database/Cursor;
    :cond_4
    move v8, v4

    .line 1911
    goto :goto_0

    .line 1861
    .restart local v0       #bIsID:Z
    .restart local v1       #cols:[Ljava/lang/String;
    .restart local v2       #filterID:I
    .restart local v3       #filterString:Ljava/lang/String;
    .restart local v5       #listFilter:Lcom/android/music/common/data/MpListFilter;
    .restart local v6       #subListType:I
    .restart local v7       #tmpCursor:Landroid/database/Cursor;
    :sswitch_1
    const-string v8, "_id"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1862
    goto :goto_1

    .line 1868
    :sswitch_2
    const-string v8, "genre_name"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1870
    goto :goto_1

    .line 1873
    :sswitch_3
    const-string v8, "composer"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1874
    goto :goto_1

    .line 1880
    :sswitch_4
    const-string v8, "year_name"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1882
    goto :goto_1

    .line 1851
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method public getAlbumID(J)I
    .locals 12
    .parameter "id"

    .prologue
    const-string v0, "com.android.music"

    const-string v0, "album_id"

    const-string v0, "activity"

    .line 4220
    const/4 v6, -0x1

    .line 4221
    .local v6, albumID:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 4222
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v0, "_id = ?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4224
    const/4 v8, 0x0

    .line 4226
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "album_id"

    aput-object v4, v2, v3

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4231
    if-eqz v8, :cond_0

    .line 4233
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 4235
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4236
    const-string v0, "album_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .line 4265
    :cond_0
    if-eqz v8, :cond_1

    .line 4266
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4270
    :cond_1
    :goto_0
    return v6

    .line 4239
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 4240
    .local v9, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteFullException getItemPosition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4241
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 4246
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    .line 4248
    .local v7, am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v7, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4265
    if-eqz v8, :cond_1

    .line 4266
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4250
    .end local v7           #am:Landroid/app/ActivityManager;
    .end local v9           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 4258
    .local v9, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_2
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 4260
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    .line 4262
    .restart local v7       #am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v7, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4265
    if-eqz v8, :cond_1

    .line 4266
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4265
    .end local v7           #am:Landroid/app/ActivityManager;
    .end local v9           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 4266
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getAlbumID(Lcom/android/music/common/data/MpListFilter;I)I
    .locals 11
    .parameter "listFilter"
    .parameter "position"

    .prologue
    .line 1562
    const/4 v7, -0x1

    .line 1564
    .local v7, iAlbumID:I
    if-nez p1, :cond_0

    .line 1565
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v1, "getAlbumID() listFilter==null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 1595
    .end local v7           #iAlbumID:I
    .local v8, iAlbumID:I
    :goto_0
    return v8

    .line 1569
    .end local v8           #iAlbumID:I
    .restart local v7       #iAlbumID:I
    :cond_0
    iget v10, p1, Lcom/android/music/common/data/MpListFilter;->listType:I

    .line 1570
    .local v10, listType:I
    const/4 v9, -0x1

    .line 1571
    .local v9, iFilterID:I
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    if-eqz v0, :cond_1

    .line 1572
    iget-object v0, p1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v9, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    .line 1574
    :cond_1
    invoke-static {v10, v9}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 1575
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "album_id"

    aput-object v3, v2, v0

    .line 1576
    .local v2, cols:[Ljava/lang/String;
    const-string v0, "%s?limit=%d,1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1           #uri:Landroid/net/Uri;
    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1578
    .restart local v1       #uri:Landroid/net/Uri;
    invoke-static {v10}, Lcom/android/music/common/util/ListType;->getOrderBy(I)Ljava/lang/String;

    move-result-object v5

    .line 1579
    .local v5, orderby:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1581
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1583
    if-eqz v6, :cond_3

    .line 1585
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1587
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1589
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1592
    :cond_3
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v1, "getAlbumID : listType[%d], position[%d] return AlbumID[%d]"

    .end local v1           #uri:Landroid/net/Uri;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .end local v2           #cols:[Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 1595
    .end local v7           #iAlbumID:I
    .restart local v8       #iAlbumID:I
    goto :goto_0
.end method

.method public getAlbumInfo(Lcom/android/music/common/data/MpListFilter;I)Lcom/android/music/player/data/MusicAlbumInfo;
    .locals 12
    .parameter "listFilter"
    .parameter "position"

    .prologue
    const/4 v6, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1600
    new-instance v0, Lcom/android/music/player/data/MusicAlbumInfo;

    invoke-direct {v0}, Lcom/android/music/player/data/MusicAlbumInfo;-><init>()V

    .line 1602
    .local v0, albumInfo:Lcom/android/music/player/data/MusicAlbumInfo;
    iget v3, p1, Lcom/android/music/common/data/MpListFilter;->listType:I

    .line 1607
    .local v3, listType:I
    const/4 v2, 0x0

    .line 1608
    .local v2, cursor:Landroid/database/Cursor;
    const/4 v4, 0x5

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "title"

    aput-object v4, v1, v8

    const-string v4, "album"

    aput-object v4, v1, v9

    const-string v4, "artist"

    aput-object v4, v1, v10

    const-string v4, "album_id"

    aput-object v4, v1, v11

    const-string v4, "_data"

    aput-object v4, v1, v6

    .line 1613
    .local v1, cols:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, p1, v1, v4}, Lcom/android/music/common/data/MusicDB;->getMusicListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1615
    if-eqz v2, :cond_1

    .line 1617
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1619
    const-string v4, "title"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/music/player/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    .line 1620
    const-string v4, "album"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/music/player/data/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    .line 1621
    const-string v4, "artist"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/music/player/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    .line 1622
    const-string v4, "album_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v0, Lcom/android/music/player/data/MusicAlbumInfo;->mAlbumID:I

    .line 1623
    iget-object v4, v0, Lcom/android/music/player/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 1624
    const-string v4, "_data"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/music/common/util/ListUtil;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/music/player/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    .line 1627
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1630
    :cond_1
    sget-object v4, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v5, "MusicAlbumInfo : getAlbumID : listType[%d], position[%d] return Title[%s], AlbumID[%d]"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, v0, Lcom/android/music/player/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    aput-object v7, v6, v10

    iget v7, v0, Lcom/android/music/player/data/MusicAlbumInfo;->mAlbumID:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    return-object v0
.end method

.method public getAudioColumn(JLjava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "audio_id"
    .parameter "column"

    .prologue
    const/4 v10, 0x1

    const-string v0, "com.android.music"

    const-string v0, "activity"

    .line 3273
    const/4 v9, 0x0

    .line 3274
    .local v9, str:Ljava/lang/String;
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3275
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 3277
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3279
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 3280
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3281
    invoke-interface {v7, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 3300
    :cond_0
    if-eqz v7, :cond_1

    .line 3301
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3304
    :cond_1
    :goto_0
    return-object v9

    .line 3283
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 3284
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteFullException getAudioColumn"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3285
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3288
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 3289
    .local v6, am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3300
    if-eqz v7, :cond_1

    .line 3301
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3291
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 3293
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_2
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3296
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 3297
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3300
    if-eqz v7, :cond_1

    .line 3301
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3300
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 3301
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getAudioFilePath(J)Ljava/lang/String;
    .locals 1
    .parameter "audio_id"

    .prologue
    .line 3269
    const-string v0, "_data"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/music/common/data/MusicDB;->getAudioColumn(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .parameter "uri"

    .prologue
    const/4 v11, 0x1

    const-string v0, "com.android.music"

    const-string v0, "activity"

    const-string v0, "_data"

    .line 3220
    const/4 v9, 0x0

    .line 3222
    .local v9, str:Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v10, v9

    .line 3265
    .end local v9           #str:Ljava/lang/String;
    .local v10, str:Ljava/lang/String;
    :goto_0
    return-object v10

    .line 3224
    .end local v10           #str:Ljava/lang/String;
    .restart local v9       #str:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3225
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3226
    const/4 v0, 0x7

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 3227
    invoke-static {v9}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    .line 3229
    .end local v9           #str:Ljava/lang/String;
    .restart local v10       #str:Ljava/lang/String;
    goto :goto_0

    .line 3230
    .end local v10           #str:Ljava/lang/String;
    .restart local v9       #str:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v10, v9

    .line 3231
    .end local v9           #str:Ljava/lang/String;
    .restart local v10       #str:Ljava/lang/String;
    goto :goto_0

    .line 3234
    .end local v10           #str:Ljava/lang/String;
    .restart local v9       #str:Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    .line 3236
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3238
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v11, :cond_3

    .line 3239
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3240
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 3261
    :cond_3
    if-eqz v7, :cond_4

    .line 3262
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move-object v10, v9

    .line 3265
    .end local v9           #str:Ljava/lang/String;
    .restart local v10       #str:Ljava/lang/String;
    goto :goto_0

    .line 3243
    .end local v10           #str:Ljava/lang/String;
    .restart local v9       #str:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 3244
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteFullException getAudioFilePath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3245
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3248
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 3250
    .local v6, am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3261
    if-eqz v7, :cond_4

    .line 3262
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 3252
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 3254
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_2
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3257
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 3258
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3261
    if-eqz v7, :cond_4

    .line 3262
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 3261
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 3262
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public getAudioFilePath(Lcom/android/music/common/data/MpListFilter;I)Ljava/lang/String;
    .locals 11
    .parameter "listFilter"
    .parameter "_id"

    .prologue
    const/4 v4, 0x0

    const/16 v9, 0xd

    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 3176
    const/4 v7, 0x0

    .line 3178
    .local v7, filepath:Ljava/lang/String;
    iget v8, p1, Lcom/android/music/common/data/MpListFilter;->listType:I

    .line 3179
    .local v8, listType:I
    const/4 v1, 0x0

    .line 3180
    .local v1, uri:Landroid/net/Uri;
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v10

    .line 3181
    .local v2, cols:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 3183
    .local v3, selection:Ljava/lang/String;
    if-ne v8, v9, :cond_4

    .line 3185
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->FEATURE_MUSIC_PLAYLIST()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3187
    iget-object v0, p1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    aget-object v0, v0, v10

    iget v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-static {v9, v0}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 3188
    const-string v0, "music_audio_playlists_map._id = %d"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v10

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    :goto_0
    move-object v0, p0

    move-object v5, v4

    .line 3205
    invoke-direct/range {v0 .. v5}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3206
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 3208
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3210
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3212
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3215
    :cond_2
    return-object v7

    .line 3192
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3193
    const-string v0, "audio._id = ( SELECT audio_id FROM audio_playlists_map WHERE _id = %d)"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v10

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3196
    :cond_4
    const/16 v0, 0x9

    if-ne v8, v0, :cond_0

    goto :goto_0
.end method

.method public getAudioID(Lcom/android/music/common/data/MpListFilter;I)I
    .locals 11
    .parameter "listFilter"
    .parameter "_id"

    .prologue
    .line 1644
    iget v9, p1, Lcom/android/music/common/data/MpListFilter;->listType:I

    .line 1646
    .local v9, listType:I
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v1, "getAudioID - listType[%s], _id[%d]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v9}, Lcom/android/music/common/util/ListType;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    const/4 v0, 0x2

    if-lt v9, v0, :cond_0

    const/16 v0, 0x8

    if-gt v9, v0, :cond_0

    .line 1652
    const-string v0, "getAudioID - invaild listType[%s] : listType should be tracklist"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v9}, Lcom/android/music/common/util/ListType;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1653
    .local v10, msg:Ljava/lang/String;
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, v10}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1658
    .end local v10           #msg:Ljava/lang/String;
    :cond_0
    const/4 v6, -0x1

    .line 1660
    .local v6, audioID:I
    const/4 v2, 0x0

    .line 1661
    .local v2, columns:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1662
    .local v1, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 1664
    .local v3, selection:Ljava/lang/String;
    const/16 v0, 0xd

    if-ne v9, v0, :cond_2

    .line 1666
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->FEATURE_MUSIC_PLAYLIST()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1668
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    .end local v1           #uri:Landroid/net/Uri;
    move-result-object v1

    .line 1669
    .restart local v1       #uri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_data_hashcode = (SELECT audio_data_hashcode FROM music_audio_playlists_map WHERE _id = "

    .end local v2           #columns:[Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1670
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    .line 1692
    .restart local v2       #columns:[Ljava/lang/String;
    :goto_0
    const/4 v8, 0x0

    .line 1694
    .local v8, c:Landroid/database/Cursor;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1696
    if-nez v8, :cond_4

    .line 1698
    const-string v0, "getAudioID - uri[%s], selection[%s] return null cursor"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .end local v2           #columns:[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1           #uri:Landroid/net/Uri;
    aput-object v1, v2, v4

    const/4 v1, 0x1

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1699
    .restart local v10       #msg:Ljava/lang/String;
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, v10}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1674
    .end local v8           #c:Landroid/database/Cursor;
    .end local v10           #msg:Ljava/lang/String;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v2       #columns:[Ljava/lang/String;
    :cond_1
    iget-object v0, p1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .end local v1           #uri:Landroid/net/Uri;
    iget v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-static {v9, v0}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 1675
    .restart local v1       #uri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_playlists_map._id = "

    .end local v2           #columns:[Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1676
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "audio_id"

    aput-object v4, v2, v0

    .restart local v2       #columns:[Ljava/lang/String;
    goto :goto_0

    .line 1679
    :cond_2
    const/16 v0, 0x9

    if-ne v9, v0, :cond_3

    .line 1681
    const/4 v0, 0x0

    invoke-static {v9, v0}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 1682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    .end local v2           #columns:[Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1683
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "audio_id"

    aput-object v4, v2, v0

    .restart local v2       #columns:[Ljava/lang/String;
    goto :goto_0

    .line 1687
    :cond_3
    move v6, p2

    .line 1688
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v4, "getAudioID returns audioID[%d]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 1720
    .end local v6           #audioID:I
    .local v7, audioID:I
    :goto_1
    return v7

    .line 1704
    .end local v7           #audioID:I
    .restart local v6       #audioID:I
    .restart local v8       #c:Landroid/database/Cursor;
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 1706
    const-string v0, "getAudioID - uri[%s], selection[%s] return cursor.getCount() == 0"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .end local v2           #columns:[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1           #uri:Landroid/net/Uri;
    aput-object v1, v2, v4

    const/4 v1, 0x1

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1707
    .restart local v10       #msg:Ljava/lang/String;
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, v10}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1712
    .end local v10           #msg:Ljava/lang/String;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v2       #columns:[Ljava/lang/String;
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1714
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1716
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1718
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v4, "getAudioID returns audioID[%d]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .end local v8           #c:Landroid/database/Cursor;
    aput-object v8, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 1720
    .end local v6           #audioID:I
    .restart local v7       #audioID:I
    goto :goto_1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/android/music/common/data/MusicDB;->mInstance:Lcom/android/music/common/data/MusicDB;

    iget-object v0, v0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultCreatePlaylistName()Ljava/lang/String;
    .locals 14

    .prologue
    .line 3118
    const/4 v9, 0x0

    .line 3120
    .local v9, strName:Ljava/lang/String;
    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {p0, v10, v11, v12, v13}, Lcom/android/music/common/data/MusicDB;->getMusicMainListCursor(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3121
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 3123
    sget-object v10, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v11, "getDefaultCreatePlaylistName: cursor is null -> return null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    const/4 v10, 0x0

    .line 3170
    :goto_0
    return-object v10

    .line 3127
    :cond_0
    iget-object v10, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const v11, 0x7f0a007b

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3128
    .local v1, defaultName:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    .line 3130
    .local v7, nSizeOfDefaultName:I
    const/4 v8, 0x0

    .line 3131
    .local v8, playlistName:Ljava/lang/String;
    const/16 v10, 0x65

    new-array v6, v10, [I

    .line 3132
    .local v6, m_arrBit:[I
    const/4 v5, 0x0

    .line 3133
    .local v5, iListIdx:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3134
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-ge v3, v10, :cond_2

    .line 3136
    const-string v10, "name"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3137
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v8, v11, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3141
    :try_start_0
    invoke-virtual {v8, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3143
    if-lez v5, :cond_1

    const/16 v10, 0x64

    if-gt v5, v10, :cond_1

    .line 3145
    const/4 v10, 0x1

    sub-int v10, v5, v10

    const/4 v11, 0x1

    aput v11, v6, v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3153
    :cond_1
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 3134
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3148
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 3150
    .local v2, e:Ljava/lang/NumberFormatException;
    sget-object v10, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getDefaultCreatePlaylistName: NumberFormatException "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3156
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3158
    const/4 v3, 0x0

    .line 3159
    :goto_3
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    aget v10, v6, v3

    if-eqz v10, :cond_3

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_3

    .line 3164
    .end local v3           #i:I
    .restart local v4       #i:I
    :cond_3
    const/16 v10, 0x64

    if-le v4, v10, :cond_4

    .line 3165
    const/4 v10, 0x0

    goto :goto_0

    .line 3168
    :cond_4
    const-string v10, "%s %03d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    const/4 v12, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    .line 3170
    goto/16 :goto_0
.end method

.method public getFileDetails(J[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "id"
    .parameter "cols"

    .prologue
    const-string v10, "com.android.music"

    const-string v9, "activity"

    .line 3912
    const/4 v7, 0x0

    .line 3913
    .local v7, cursor:Landroid/database/Cursor;
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3916
    .local v1, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 3944
    :goto_0
    return-object v7

    .line 3918
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 3919
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteFullException getFileDetails"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3920
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3924
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 3926
    .local v6, am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v10}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 3928
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 3936
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3938
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 3940
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v10}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFileDetails(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "uri"
    .parameter "cols"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v12, "com.android.music"

    const-string v11, "activity"

    .line 3948
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/music/common/data/MusicDB;->getUriType(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/music/common/data/MusicDB$FileLocationInfo;

    move-result-object v9

    .line 3949
    .local v9, fl:Lcom/android/music/common/data/MusicDB$FileLocationInfo;
    const/4 v7, 0x0

    .line 3951
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget v0, v9, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 3952
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :cond_0
    :goto_0
    move-object v0, v7

    .line 4000
    :goto_1
    return-object v0

    .line 3954
    :cond_1
    iget v0, v9, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->type:I

    if-ne v0, v4, :cond_2

    .line 3955
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_0

    .line 3957
    :cond_2
    iget v0, v9, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->type:I

    if-nez v0, :cond_0

    .line 3958
    iget-object v0, v9, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->path:Ljava/lang/String;

    if-nez v0, :cond_3

    move-object v0, v3

    .line 3959
    goto :goto_1

    .line 3961
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 3962
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v0, "_data = ?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3964
    iget v0, v9, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->isInternal:I

    if-nez v0, :cond_4

    .line 3965
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3971
    .local v1, tmpUri:Landroid/net/Uri;
    :goto_2
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v5, v9, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->path:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_0

    .line 3966
    .end local v1           #tmpUri:Landroid/net/Uri;
    :cond_4
    iget v0, v9, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->isInternal:I

    if-ne v0, v4, :cond_5

    .line 3967
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .restart local v1       #tmpUri:Landroid/net/Uri;
    goto :goto_2

    .end local v1           #tmpUri:Landroid/net/Uri;
    :cond_5
    move-object v0, v3

    .line 3969
    goto :goto_1

    .line 3974
    .end local v10           #where:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 3975
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteFullException getFileDetails"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3976
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3980
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 3982
    .local v6, am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v12}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3985
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 3992
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3994
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 3996
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v12}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getFileDetails(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "filePath"
    .parameter "cols"

    .prologue
    const-string v11, "com.android.music"

    const-string v10, "activity"

    .line 3877
    const/4 v7, 0x0

    .line 3878
    .local v7, cursor:Landroid/database/Cursor;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 3879
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v0, "_data = ?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3881
    :try_start_0
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 3908
    :goto_0
    return-object v7

    .line 3883
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 3884
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteFullException getFileDetails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3885
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3889
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 3891
    .local v6, am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v11}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 3893
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 3901
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3903
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 3905
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v11}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFileDetails(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 12
    .parameter "filePath"
    .parameter "cols"
    .parameter "isInternal"

    .prologue
    const/4 v0, 0x1

    const-string v11, "com.android.music"

    const-string v10, "activity"

    .line 3838
    const/4 v7, 0x0

    .line 3840
    .local v7, c:Landroid/database/Cursor;
    if-nez p3, :cond_1

    .line 3841
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 3842
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v0, "_data = ?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3844
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3873
    .end local v9           #where:Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-object v7

    .line 3846
    :cond_1
    if-ne p3, v0, :cond_0

    .line 3847
    invoke-virtual {p0, p1, p2}, Lcom/android/music/common/data/MusicDB;->getFileDetails(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    goto :goto_0

    .line 3849
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 3850
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteFullException getFileDetails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3851
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3855
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 3857
    .local v6, am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v11}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 3859
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 3866
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3868
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 3870
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v11}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFileId(Landroid/net/Uri;)J
    .locals 11
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    const-string v0, "com.android.music"

    const-string v0, "activity"

    .line 3752
    const-wide/16 v9, -0x1

    .line 3753
    .local v9, id:J
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 3756
    .local v2, cols:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 3758
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3760
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3761
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3762
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v9

    .line 3788
    :cond_0
    if-eqz v7, :cond_1

    .line 3789
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3792
    :cond_1
    :goto_0
    return-wide v9

    .line 3764
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 3765
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteFullException getFileId"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3766
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3770
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 3772
    .local v6, am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3788
    if-eqz v7, :cond_1

    .line 3789
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3774
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 3781
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_2
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3783
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 3785
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3788
    if-eqz v7, :cond_1

    .line 3789
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3788
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 3789
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getFileId(Ljava/lang/String;)J
    .locals 12
    .parameter "filePath"

    .prologue
    const-string v0, "com.android.music"

    const-string v0, "activity"

    .line 3708
    const-wide/16 v9, -0x1

    .line 3709
    .local v9, id:J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 3710
    .local v11, where:Ljava/lang/StringBuilder;
    const-string v0, "_data = ?"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3711
    const/4 v7, 0x0

    .line 3714
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3717
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3718
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3719
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v9

    .line 3744
    :cond_0
    if-eqz v7, :cond_1

    .line 3745
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3748
    :cond_1
    :goto_0
    return-wide v9

    .line 3721
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 3722
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteFullException getFileId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3723
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3726
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 3728
    .local v6, am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3744
    if-eqz v7, :cond_1

    .line 3745
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3730
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 3737
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_2
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3739
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 3741
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3744
    if-eqz v7, :cond_1

    .line 3745
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3744
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 3745
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getGenre(J)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 4065
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 4066
    .local v0, baseuri:Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/android/music/common/data/MusicDB;->getGenre(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getGenre(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .parameter "baseuri"

    .prologue
    const/4 v3, 0x0

    const-string v0, "com.android.music"

    const-string v0, "activity"

    .line 4070
    const-string v0, "genres"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4071
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v3

    .line 4074
    .local v2, cols:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 4075
    .local v9, genre:Ljava/lang/String;
    const/4 v7, 0x0

    .line 4077
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4078
    if-eqz v7, :cond_0

    .line 4079
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4080
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 4107
    :cond_0
    if-eqz v7, :cond_1

    .line 4108
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4111
    :cond_1
    :goto_0
    return-object v9

    .line 4083
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 4084
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteFullException getGenre"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4085
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 4089
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 4091
    .local v6, am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4107
    if-eqz v7, :cond_1

    .line 4108
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4093
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 4100
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_2
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 4102
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 4104
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4107
    if-eqz v7, :cond_1

    .line 4108
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4107
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 4108
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getGenre(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "path"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "com.android.music"

    const-string v0, "activity"

    .line 4115
    const-wide/16 v9, 0x0

    .line 4116
    .local v9, id:J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 4117
    .local v11, selection:Ljava/lang/StringBuilder;
    const-string v0, "_data = ?"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4118
    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v2

    .line 4121
    .local v4, selectionArgs:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 4122
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 4124
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4127
    if-eqz v7, :cond_0

    .line 4128
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4129
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v9

    .line 4156
    :cond_0
    if-eqz v7, :cond_1

    .line 4157
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4160
    :cond_1
    :goto_0
    invoke-virtual {p0, v9, v10}, Lcom/android/music/common/data/MusicDB;->getGenre(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4132
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 4133
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteFullException getGenre"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4134
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 4138
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 4140
    .local v6, am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4156
    if-eqz v7, :cond_1

    .line 4157
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4142
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 4149
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_2
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 4151
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 4153
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4156
    if-eqz v7, :cond_1

    .line 4157
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4156
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 4157
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getItemContentUri(Lcom/android/music/common/data/MpListFilter;I)Landroid/net/Uri;
    .locals 11
    .parameter "listFilter"
    .parameter "index"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1340
    const/4 v4, 0x0

    .line 1342
    .local v4, mediaUri:Landroid/net/Uri;
    iget v3, p1, Lcom/android/music/common/data/MpListFilter;->listType:I

    .line 1344
    .local v3, listType:I
    sget-object v5, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v6, "getItemContentUri : listType[%s], index[%d]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/android/music/common/util/ListType;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    new-array v1, v10, [Ljava/lang/String;

    .line 1355
    .local v1, cols:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/music/common/util/ListType;->getAudioIdColumn(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v9

    .line 1357
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, p1, v1, v5}, Lcom/android/music/common/data/MusicDB;->getMusicListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1358
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 1359
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 1360
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1361
    aget-object v5, v1, v9

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1362
    .local v0, _id:I
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, v0

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1364
    .end local v0           #_id:I
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1367
    :cond_1
    return-object v4
.end method

.method public getItemCountInMxList(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .parameter "bucketID"
    .parameter "filePath"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1372
    const/4 v6, 0x0

    .line 1374
    .local v6, iCount:I
    const/4 v3, 0x0

    .line 1375
    .local v3, selection:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1376
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1378
    .local v2, cols:[Ljava/lang/String;
    const/16 v0, 0x1c

    const/4 v5, -0x1

    invoke-static {v0, v5}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 1380
    .local v1, uri:Landroid/net/Uri;
    if-nez p1, :cond_1

    .line 1381
    if-nez p2, :cond_0

    move v7, v6

    .line 1408
    .end local v6           #iCount:I
    .local v7, iCount:I
    :goto_0
    return v7

    .line 1383
    .end local v7           #iCount:I
    .restart local v6       #iCount:I
    :cond_0
    invoke-static {p2}, Lcom/android/music/common/util/ListUtil;->getBucketIDfromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1388
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " bucket_id = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1389
    new-array v2, v11, [Ljava/lang/String;

    .end local v2           #cols:[Ljava/lang/String;
    const-string v0, "count(_id)"

    aput-object v0, v2, v10

    .line 1390
    .restart local v2       #cols:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 1392
    .local v8, tmpC:Landroid/database/Cursor;
    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1394
    if-nez v8, :cond_2

    .line 1396
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v5, "getItemCountInMxList : tmpC is null"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    :goto_1
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v5, "getItemCountInMxList( bucketID[%s], filepath[%s] ) return [%d]"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v10

    aput-object p2, v9, v11

    const/4 v10, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 1408
    .end local v6           #iCount:I
    .restart local v7       #iCount:I
    goto :goto_0

    .line 1400
    .end local v7           #iCount:I
    .restart local v6       #iCount:I
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1401
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1402
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public getItemCountInPlaylist(I)I
    .locals 9
    .parameter "iPlaylistID"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 2428
    const/4 v7, 0x0

    .line 2430
    .local v7, iCount:I
    const/16 v0, 0xd

    invoke-static {v0, p1}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 2431
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 2433
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count( \'_id\' )"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2434
    if-eqz v6, :cond_1

    .line 2436
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2438
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 2440
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2443
    :cond_1
    return v7
.end method

.method public getItemFilePathMxList(ILjava/lang/String;I)Ljava/lang/String;
    .locals 9
    .parameter "sort_order"
    .parameter "bucketID"
    .parameter "index"

    .prologue
    .line 1529
    const/4 v7, 0x0

    .line 1531
    .local v7, filePath:Ljava/lang/String;
    const/16 v0, 0x1c

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 1532
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    .line 1533
    .local v2, cols:[Ljava/lang/String;
    const-string v3, "bucket_id = ?"

    .line 1534
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 1535
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-static {p1}, Lcom/android/music/common/util/ListType;->getOrderByMyFiles(I)Ljava/lang/String;

    move-result-object v5

    .line 1537
    .local v5, orderBy:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ",1"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1538
    .local v8, limit:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1           #uri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?&limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1539
    .restart local v1       #uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .local v6, c:Landroid/database/Cursor;
    move-object v0, p0

    .line 1541
    invoke-direct/range {v0 .. v5}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1543
    if-nez v6, :cond_0

    .line 1544
    new-instance v0, Ljava/lang/Error;

    const-string v1, "MusicDB:getItemFilePathMxList return null cursor"

    .end local v1           #uri:Landroid/net/Uri;
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1546
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1548
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1549
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1551
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1553
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v1, "getItemFilePathMxList: sort_order[%d], bucketID[%s], index[%d]"

    .end local v1           #uri:Landroid/net/Uri;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .end local v2           #cols:[Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v3           #selection:Ljava/lang/String;
    move-result-object v4

    .end local v4           #selectionArgs:[Ljava/lang/String;
    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v1, "                       return filePath[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    return-object v7
.end method

.method public getItemPosition(Lcom/android/music/common/data/MpListFilter;Landroid/net/Uri;I)I
    .locals 36
    .parameter "listFilter"
    .parameter "mediaUri"
    .parameter "_id"

    .prologue
    .line 742
    const/16 v23, -0x1

    .line 743
    .local v23, iPos:I
    const/16 v29, 0x0

    .line 744
    .local v29, selection:Ljava/lang/String;
    const/16 v30, 0x0

    .line 745
    .local v30, selectionArgs:[Ljava/lang/String;
    const-wide/16 v13, -0x1

    .line 746
    .local v13, audio_id:J
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/music/common/data/MpListFilter;->listType:I

    move/from16 v25, v0

    .line 749
    .local v25, listType:I
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v3, "getItemPosition : listType[%s], Uri[%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v25 .. v25}, Lcom/android/music/common/util/ListType;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    if-nez p2, :cond_1

    const-string v6, "null"

    :goto_0
    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const/16 v22, 0x0

    .line 752
    .local v22, iFilter_ID:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v2, v0

    if-eqz v2, :cond_0

    .line 753
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object v0, v2

    iget v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    move/from16 v22, v0

    .line 755
    :cond_0
    move/from16 v0, v25

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v35

    .line 756
    .local v35, uri:Landroid/net/Uri;
    invoke-static/range {v25 .. v25}, Lcom/android/music/common/util/ListType;->getOrderByKeyword(I)Ljava/lang/String;

    move-result-object v28

    .line 757
    .local v28, orderByKeyword:Ljava/lang/String;
    const/16 v27, 0x0

    .line 758
    .local v27, orderBy:Ljava/lang/String;
    const/4 v2, 0x1

    move v0, v2

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v2, 0x0

    const-string v3, "count(_id)"

    aput-object v3, v17, v2

    .line 759
    .local v17, cols:[Ljava/lang/String;
    const/16 v18, 0x0

    .line 761
    .local v18, cursor:Landroid/database/Cursor;
    const-string v11, "COLLATE LOCALIZED"

    .line 767
    .local v11, COLLATE:Ljava/lang/String;
    if-nez p2, :cond_2

    const-wide/16 v2, 0x0

    move-wide v13, v2

    .line 775
    :goto_1
    packed-switch v25, :pswitch_data_0

    .line 1309
    :pswitch_0
    const/4 v2, -0x1

    move-object/from16 v7, v17

    .end local v17           #cols:[Ljava/lang/String;
    .local v7, cols:[Ljava/lang/String;
    move-object/from16 v9, v30

    .end local v30           #selectionArgs:[Ljava/lang/String;
    .local v9, selectionArgs:[Ljava/lang/String;
    move-object/from16 v8, v29

    .line 1332
    .end local v29           #selection:Ljava/lang/String;
    .local v8, selection:Ljava/lang/String;
    :goto_2
    return v2

    .line 749
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local v11           #COLLATE:Ljava/lang/String;
    .end local v18           #cursor:Landroid/database/Cursor;
    .end local v22           #iFilter_ID:I
    .end local v27           #orderBy:Ljava/lang/String;
    .end local v28           #orderByKeyword:Ljava/lang/String;
    .end local v35           #uri:Landroid/net/Uri;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 767
    .restart local v11       #COLLATE:Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v18       #cursor:Landroid/database/Cursor;
    .restart local v22       #iFilter_ID:I
    .restart local v27       #orderBy:Ljava/lang/String;
    .restart local v28       #orderByKeyword:Ljava/lang/String;
    .restart local v35       #uri:Landroid/net/Uri;
    :cond_2
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    move-wide v13, v2

    goto :goto_1

    .line 782
    :pswitch_1
    const/16 v31, 0x0

    .line 785
    .local v31, tempCursor:Landroid/database/Cursor;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v28, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 803
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    .line 805
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_3

    .line 806
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v3, "tempCursor.getCount()<=0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 808
    const/16 v2, -0x64

    move-object/from16 v7, v17

    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    move-object/from16 v9, v30

    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v8, v29

    .end local v29           #selection:Ljava/lang/String;
    .restart local v8       #selection:Ljava/lang/String;
    goto :goto_2

    .line 811
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, v31

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 812
    .local v32, tempKey:Ljava/lang/String;
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 815
    const-string v2, "( %s < ? %s OR ( _id < %d AND %s = ? ) )"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v28, v3, v4

    const/4 v4, 0x1

    aput-object v11, v3, v4

    const/4 v4, 0x2

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v28, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 819
    .end local v29           #selection:Ljava/lang/String;
    .restart local v8       #selection:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 821
    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v32, v9, v2

    const/4 v2, 0x1

    aput-object v32, v9, v2

    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v7, v17

    .end local v17           #cols:[Ljava/lang/String;
    .end local v31           #tempCursor:Landroid/database/Cursor;
    .end local v32           #tempKey:Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    :goto_3
    move-object/from16 v5, p0

    move-object/from16 v6, v35

    move-object/from16 v10, v27

    .line 1313
    invoke-direct/range {v5 .. v10}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1315
    if-eqz v18, :cond_5

    .line 1316
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_e

    .line 1318
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1319
    const/4 v2, 0x0

    move-object/from16 v0, v18

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 1324
    :goto_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v2, v0

    if-eqz v2, :cond_4

    .line 1325
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v3, "MusicDB.getItemPostion : ListType[%s], FilterID[%d], audio_id[%d] ==> result position[%d] "

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v25 .. v25}, Lcom/android/music/common/util/ListType;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v6, v0

    const/4 v10, 0x0

    aget-object v6, v6, v10

    iget v6, v6, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :cond_4
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_5
    move/from16 v2, v23

    .line 1332
    goto/16 :goto_2

    .line 830
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :pswitch_2
    const-string v2, "( %s < ? %s OR ( %s = ? AND _id < %d ))"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v28, v3, v4

    const/4 v4, 0x1

    aput-object v11, v3, v4

    const/4 v4, 0x2

    aput-object v28, v3, v4

    const/4 v4, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 832
    .end local v29           #selection:Ljava/lang/String;
    .restart local v8       #selection:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->strFilterData:Ljava/lang/String;

    aput-object v3, v9, v2

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->strFilterData:Ljava/lang/String;

    aput-object v3, v9, v2

    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v7, v17

    .line 834
    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    goto/16 :goto_3

    .line 840
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id < ( select _id from music_quick_list_view where audio_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v29           #selection:Ljava/lang/String;
    .restart local v8       #selection:Ljava/lang/String;
    move-object/from16 v7, v17

    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    move-object/from16 v9, v30

    .line 842
    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_3

    .line 849
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > ( select "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from audio_meta where _id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 850
    .end local v29           #selection:Ljava/lang/String;
    .restart local v8       #selection:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 851
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <> 0 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 852
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v7, v17

    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    move-object/from16 v9, v30

    .line 854
    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_3

    .line 865
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :pswitch_5
    const/16 v33, 0x0

    .line 867
    .local v33, tmpCursor:Landroid/database/Cursor;
    const/16 v2, 0xa

    invoke-static {v2}, Lcom/android/music/common/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v4

    .line 868
    .local v4, tmpCols:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v33

    .line 879
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToFirst()Z

    .line 881
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_6

    .line 882
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v3, "tmpCursor.getCount()<=0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 884
    const/16 v2, -0x64

    move-object/from16 v7, v17

    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    move-object/from16 v9, v30

    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v8, v29

    .end local v29           #selection:Ljava/lang/String;
    .restart local v8       #selection:Ljava/lang/String;
    goto/16 :goto_2

    .line 887
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :cond_6
    const-string v2, "most_played"

    move-object/from16 v0, v33

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 890
    .local v26, nDbMostPlayed:I
    const/16 v20, 0x0

    .line 891
    .local v20, dbTitleKey:Ljava/lang/String;
    const/16 v21, 0x0

    .line 893
    .local v21, iAudioID:I
    const-string v2, "_id"

    move-object/from16 v0, v33

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 895
    const-string v2, "title"

    move-object/from16 v0, v33

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 899
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 902
    const-string v2, "( %s > %d OR ( %s = %d AND title < ? %s ) OR ( %s = %d AND _id < %d AND title = ? ) )"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v28, v3, v4

    .end local v4           #tmpCols:[Ljava/lang/String;
    const/4 v4, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v28, v3, v4

    const/4 v4, 0x3

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object v11, v3, v4

    const/4 v4, 0x5

    aput-object v28, v3, v4

    const/4 v4, 0x6

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 908
    .end local v29           #selection:Ljava/lang/String;
    .restart local v8       #selection:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 910
    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v20, v9, v2

    const/4 v2, 0x1

    aput-object v20, v9, v2

    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v7, v17

    .line 912
    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    goto/16 :goto_3

    .line 922
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local v20           #dbTitleKey:Ljava/lang/String;
    .end local v21           #iAudioID:I
    .end local v26           #nDbMostPlayed:I
    .end local v33           #tmpCursor:Landroid/database/Cursor;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :pswitch_6
    const/16 v33, 0x0

    .line 924
    .restart local v33       #tmpCursor:Landroid/database/Cursor;
    const/16 v2, 0xc

    invoke-static {v2}, Lcom/android/music/common/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v4

    .line 925
    .restart local v4       #tmpCols:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v33

    .line 935
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToFirst()Z

    .line 937
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_7

    .line 938
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v3, "tmpCursor.getCount()<=0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 940
    const/16 v2, -0x64

    move-object/from16 v7, v17

    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    move-object/from16 v9, v30

    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v8, v29

    .end local v29           #selection:Ljava/lang/String;
    .restart local v8       #selection:Ljava/lang/String;
    goto/16 :goto_2

    .line 943
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 944
    .local v19, date_added:I
    const-string v2, "_id"

    move-object/from16 v0, v33

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 945
    .restart local v21       #iAudioID:I
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 947
    const-string v2, "( %s > %d OR ( %s = %d AND _id < %d ) ) AND recently_added_remove_flag = 0"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v28, v3, v4

    .end local v4           #tmpCols:[Ljava/lang/String;
    const/4 v4, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v28, v3, v4

    const/4 v4, 0x3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 949
    .end local v29           #selection:Ljava/lang/String;
    .restart local v8       #selection:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v7, v17

    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    move-object/from16 v9, v30

    .line 951
    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_3

    .line 958
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local v19           #date_added:I
    .end local v21           #iAudioID:I
    .end local v33           #tmpCursor:Landroid/database/Cursor;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :pswitch_7
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "count()"

    aput-object v3, v7, v2

    .line 960
    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->FEATURE_MUSIC_PLAYLIST()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 961
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > (select "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from music_audio_playlists_map where _id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v29           #selection:Ljava/lang/String;
    .restart local v8       #selection:Ljava/lang/String;
    move-object/from16 v9, v30

    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_3

    .line 963
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > (select "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from audio_playlists_map where _id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v29           #selection:Ljava/lang/String;
    .restart local v8       #selection:Ljava/lang/String;
    move-object/from16 v9, v30

    .line 965
    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_3

    .line 975
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :pswitch_8
    const/16 v33, 0x0

    .line 977
    .restart local v33       #tmpCursor:Landroid/database/Cursor;
    const/16 v2, 0xe

    invoke-static {v2}, Lcom/android/music/common/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v4

    .line 978
    .restart local v4       #tmpCols:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v33

    .line 989
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToFirst()Z

    .line 991
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_9

    .line 992
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v3, "tmpCursor.getCount()<=0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 994
    const/16 v2, -0x64

    move-object/from16 v7, v17

    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    move-object/from16 v9, v30

    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v8, v29

    .end local v29           #selection:Ljava/lang/String;
    .restart local v8       #selection:Ljava/lang/String;
    goto/16 :goto_2

    .line 997
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :cond_9
    const-string v2, "track"

    move-object/from16 v0, v33

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 998
    .local v24, iTrack:I
    const-string v2, "_id"

    move-object/from16 v0, v33

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 999
    .restart local v21       #iAudioID:I
    const/16 v20, 0x0

    .line 1001
    .restart local v20       #dbTitleKey:Ljava/lang/String;
    const-string v2, "title"

    move-object/from16 v0, v33

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1005
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 1007
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "album_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .end local v4           #tmpCols:[Ljava/lang/String;
    iget v3, v3, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1008
    .end local v29           #selection:Ljava/lang/String;
    .restart local v8       #selection:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1011
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "( %s < %d OR (%s = %d AND %s < ? %s) OR (%s = %d AND %s = ? AND _id < %d) )"

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "track"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "track"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "title"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object v11, v4, v5

    const/4 v5, 0x6

    const-string v6, "track"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "title"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1020
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1022
    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v20, v9, v2

    const/4 v2, 0x1

    aput-object v20, v9, v2

    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v7, v17

    .line 1024
    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    goto/16 :goto_3

    .line 1030
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local v20           #dbTitleKey:Ljava/lang/String;
    .end local v21           #iAudioID:I
    .end local v24           #iTrack:I
    .end local v33           #tmpCursor:Landroid/database/Cursor;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :pswitch_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "artist_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1031
    .end local v29           #selection:Ljava/lang/String;
    .restart local v8       #selection:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1033
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < ( select "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from audio_meta where _id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1036
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v7, v17

    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    move-object/from16 v9, v30

    .line 1038
    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_3

    .line 1052
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :pswitch_a
    const/16 v33, 0x0

    .line 1054
    .restart local v33       #tmpCursor:Landroid/database/Cursor;
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/android/music/common/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v4

    .line 1055
    .restart local v4       #tmpCols:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v33

    .line 1066
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1068
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_a

    .line 1069
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v3, "tmpCursor.getCount()<=0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 1071
    const/16 v2, -0x64

    move-object/from16 v7, v17

    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    move-object/from16 v9, v30

    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v8, v29

    .end local v29           #selection:Ljava/lang/String;
    .restart local v8       #selection:Ljava/lang/String;
    goto/16 :goto_2

    .line 1074
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :cond_a
    const-string v2, "track"

    move-object/from16 v0, v33

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 1075
    .local v34, trackNum:I
    const/4 v12, 0x0

    .line 1076
    .local v12, albumName:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1077
    .local v15, colAlbum:Ljava/lang/String;
    const/16 v16, 0x0

    .line 1078
    .local v16, colTitle:Ljava/lang/String;
    const/16 v20, 0x0

    .line 1081
    .restart local v20       #dbTitleKey:Ljava/lang/String;
    const-string v2, "album"

    move-object/from16 v0, v33

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1082
    const-string v15, "album"

    .line 1083
    const-string v16, "title"

    .line 1084
    const-string v2, "title"

    move-object/from16 v0, v33

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1093
    const-string v2, "_id"

    move-object/from16 v0, v33

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 1094
    .restart local v21       #iAudioID:I
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 1096
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "artist_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .end local v4           #tmpCols:[Ljava/lang/String;
    iget v3, v3, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1097
    .end local v29           #selection:Ljava/lang/String;
    .restart local v8       #selection:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "( %s < ? %s OR (%s = ? AND %s < %d) OR (%s = ? AND %s = %d AND %s < ? %s) OR (%s = ? AND %s = %d AND %s = ? AND _id < %d) )"

    const/16 v4, 0xf

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v15, v4, v5

    const/4 v5, 0x1

    aput-object v11, v4, v5

    const/4 v5, 0x2

    aput-object v15, v4, v5

    const/4 v5, 0x3

    const-string v6, "track"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object v15, v4, v5

    const/4 v5, 0x6

    const-string v6, "track"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    aput-object v16, v4, v5

    const/16 v5, 0x9

    aput-object v11, v4, v5

    const/16 v5, 0xa

    aput-object v15, v4, v5

    const/16 v5, 0xb

    const-string v6, "track"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xd

    aput-object v16, v4, v5

    const/16 v5, 0xe

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1113
    const/4 v2, 0x6

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v12, v9, v2

    const/4 v2, 0x1

    aput-object v12, v9, v2

    const/4 v2, 0x2

    aput-object v12, v9, v2

    const/4 v2, 0x3

    aput-object v20, v9, v2

    const/4 v2, 0x4

    aput-object v12, v9, v2

    const/4 v2, 0x5

    aput-object v20, v9, v2

    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v7, v17

    .line 1119
    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    goto/16 :goto_3

    .line 1123
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local v12           #albumName:Ljava/lang/String;
    .end local v15           #colAlbum:Ljava/lang/String;
    .end local v16           #colTitle:Ljava/lang/String;
    .end local v20           #dbTitleKey:Ljava/lang/String;
    .end local v21           #iAudioID:I
    .end local v33           #tmpCursor:Landroid/database/Cursor;
    .end local v34           #trackNum:I
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :pswitch_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "artist_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1124
    .end local v29           #selection:Ljava/lang/String;
    .restart local v8       #selection:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "album_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v3, v0

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "track < ( select track from audio_meta where _id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v7, v17

    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    move-object/from16 v9, v30

    .line 1130
    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_3

    .line 1139
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :pswitch_c
    const/16 v31, 0x0

    .line 1141
    .restart local v31       #tempCursor:Landroid/database/Cursor;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v28, v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 1152
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1154
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_b

    .line 1155
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v3, "tmpCursor.getCount()<=0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 1157
    const/16 v2, -0x64

    move-object/from16 v7, v17

    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    move-object/from16 v9, v30

    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v8, v29

    .end local v29           #selection:Ljava/lang/String;
    .restart local v8       #selection:Ljava/lang/String;
    goto/16 :goto_2

    .line 1160
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, v31

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 1161
    .restart local v32       #tempKey:Ljava/lang/String;
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 1165
    const-string v8, "genre_name = ?"

    .line 1166
    .end local v29           #selection:Ljava/lang/String;
    .restart local v8       #selection:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(%s < ? %s OR ( %s = ? AND _id < %d ))"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    const/4 v5, 0x1

    aput-object v11, v4, v5

    const/4 v5, 0x2

    aput-object v28, v4, v5

    const/4 v5, 0x3

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1174
    const/4 v2, 0x3

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->strFilterData:Ljava/lang/String;

    aput-object v3, v9, v2

    const/4 v2, 0x1

    aput-object v32, v9, v2

    const/4 v2, 0x2

    aput-object v32, v9, v2

    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v7, v17

    .line 1176
    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    goto/16 :goto_3

    .line 1184
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local v31           #tempCursor:Landroid/database/Cursor;
    .end local v32           #tempKey:Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :pswitch_d
    const/16 v31, 0x0

    .line 1186
    .restart local v31       #tempCursor:Landroid/database/Cursor;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v28, v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 1197
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1198
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_c

    .line 1199
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v3, "tmpCursor.getCount()<=0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 1201
    const/16 v2, -0x64

    move-object/from16 v7, v17

    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    move-object/from16 v9, v30

    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v8, v29

    .end local v29           #selection:Ljava/lang/String;
    .restart local v8       #selection:Ljava/lang/String;
    goto/16 :goto_2

    .line 1204
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, v31

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 1205
    .restart local v32       #tempKey:Ljava/lang/String;
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 1208
    const-string v8, "composer = ?"

    .line 1209
    .end local v29           #selection:Ljava/lang/String;
    .restart local v8       #selection:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "( %s < ? %s OR (%s = ? AND _id < %d) )"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    const/4 v5, 0x1

    aput-object v11, v4, v5

    const/4 v5, 0x2

    aput-object v28, v4, v5

    const/4 v5, 0x3

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1216
    const/4 v2, 0x3

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->strFilterData:Ljava/lang/String;

    aput-object v3, v9, v2

    const/4 v2, 0x1

    aput-object v32, v9, v2

    const/4 v2, 0x2

    aput-object v32, v9, v2

    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v7, v17

    .line 1218
    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    goto/16 :goto_3

    .line 1223
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local v31           #tempCursor:Landroid/database/Cursor;
    .end local v32           #tempKey:Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :pswitch_e
    const/16 v31, 0x0

    .line 1225
    .restart local v31       #tempCursor:Landroid/database/Cursor;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v28, v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 1235
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1236
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_d

    .line 1237
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v3, "tmpCursor.getCount()<=0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 1239
    const/16 v2, -0x64

    move-object/from16 v7, v17

    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    move-object/from16 v9, v30

    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v8, v29

    .end local v29           #selection:Ljava/lang/String;
    .restart local v8       #selection:Ljava/lang/String;
    goto/16 :goto_2

    .line 1242
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, v31

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 1243
    .restart local v32       #tempKey:Ljava/lang/String;
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 1247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "year_name = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->strFilterData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1248
    .end local v29           #selection:Ljava/lang/String;
    .restart local v8       #selection:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "( %s < ? %s OR (%s = ? AND _id < %d) )"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    const/4 v5, 0x1

    aput-object v11, v4, v5

    const/4 v5, 0x2

    aput-object v28, v4, v5

    const/4 v5, 0x3

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1258
    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v32, v9, v2

    const/4 v2, 0x1

    aput-object v32, v9, v2

    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v7, v17

    .line 1263
    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    goto/16 :goto_3

    .line 1321
    .end local v31           #tempCursor:Landroid/database/Cursor;
    .end local v32           #tempKey:Ljava/lang/String;
    :cond_e
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v3, "MusicDB.getItemPostion: cursor.getCount()<=0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 769
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 775
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public getItemPositionMxList(ILjava/lang/String;Ljava/lang/String;)I
    .locals 12
    .parameter "sort_order"
    .parameter "bucketID"
    .parameter "filePath"

    .prologue
    .line 1429
    const/4 v8, -0x1

    .line 1432
    .local v8, iPos:I
    invoke-static {p1}, Lcom/android/music/common/util/ListType;->getOrderByKeywordMyFiles(I)Ljava/lang/String;

    move-result-object v10

    .line 1433
    .local v10, orderByKeyword:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1434
    .local v7, cmpKey:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1435
    .local v3, selection:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1436
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1443
    .local v2, cols:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1453
    const-string v7, " < "

    .line 1457
    :goto_0
    const/16 v0, 0x1c

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 1459
    .local v1, uri:Landroid/net/Uri;
    if-nez p2, :cond_0

    .line 1460
    invoke-static {p3}, Lcom/android/music/common/util/ListUtil;->getBucketIDfromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1464
    :cond_0
    const-string v3, "_data = ?"

    .line 1465
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4           #selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p3, v4, v0

    .line 1466
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .end local v2           #cols:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object v10, v2, v0

    .line 1467
    .restart local v2       #cols:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 1468
    .local v11, tmpC:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1470
    .local v6, c:Landroid/database/Cursor;
    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1477
    if-nez v11, :cond_1

    .line 1479
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v1, "getItemPositionMxList - ( tmpC == null ) !! Music DB is not available "

    .end local v1           #uri:Landroid/net/Uri;
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    const/4 v0, -0x1

    .line 1521
    .end local v7           #cmpKey:Ljava/lang/String;
    :goto_1
    return v0

    .line 1446
    .end local v6           #c:Landroid/database/Cursor;
    .end local v11           #tmpC:Landroid/database/Cursor;
    .restart local v7       #cmpKey:Ljava/lang/String;
    :pswitch_0
    const-string v7, " > "

    .line 1447
    goto :goto_0

    .line 1484
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v11       #tmpC:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v5, 0x1

    if-ge v0, v5, :cond_2

    .line 1486
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #uri:Landroid/net/Uri;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getItemPositionMxList - ( tmpC.getCount < 1 ) is false!! ... In audioDB, not exist the filePath - "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1488
    const/4 v0, -0x1

    goto :goto_1

    .line 1491
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1493
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1494
    .local v9, keywordValue:Ljava/lang/String;
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1496
    if-nez v9, :cond_3

    .line 1497
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v1, "getItemPositionMxList - ( keywordValue==null ) is false!! ..."

    .end local v1           #uri:Landroid/net/Uri;
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    const/4 v0, -0x1

    goto :goto_1

    .line 1502
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ? AND bucket_id = ? "

    .end local v2           #cols:[Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1503
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .end local v4           #selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object v9, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    .line 1504
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "count(_id)"

    aput-object v5, v2, v0

    .line 1505
    .restart local v2       #cols:[Ljava/lang/String;
    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1507
    if-nez v6, :cond_4

    .line 1508
    new-instance v0, Ljava/lang/Error;

    const-string v1, "MusicDB:getItemPositionMxList - cursor return null"

    .end local v1           #uri:Landroid/net/Uri;
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1510
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 1512
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1513
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1515
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1517
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v1, "getItemPositionMxList - sort_order[%d], bucketID[%s], filepath[%s]"

    .end local v1           #uri:Landroid/net/Uri;
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v7           #cmpKey:Ljava/lang/String;
    move-result-object v9

    .end local v9           #keywordValue:Ljava/lang/String;
    aput-object v9, v5, v7

    const/4 v7, 0x1

    aput-object p2, v5, v7

    const/4 v7, 0x2

    aput-object p3, v5, v7

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v1, "                        return iPos[%d]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v7

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 1521
    goto/16 :goto_1

    .line 1443
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getMergedCursor(Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 21
    .parameter "oriCursor"
    .parameter "listType"

    .prologue
    .line 652
    move-object/from16 v9, p1

    .line 654
    .local v9, mergedCursor:Landroid/database/Cursor;
    invoke-static/range {p2 .. p2}, Lcom/android/music/common/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v5

    .line 655
    .local v5, cols:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 656
    .local v12, selection:Ljava/lang/String;
    const/16 v17, 0x0

    move/from16 v0, p2

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v16

    .line 657
    .local v16, uri:Landroid/net/Uri;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .local v3, autoplaylists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    packed-switch p2, :pswitch_data_0

    .line 715
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v17, 0x2

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 717
    new-instance v4, Lcom/android/music/list/data/ArrayListCursor;

    invoke-direct {v4, v5, v3}, Lcom/android/music/list/data/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 718
    .local v4, autoplaylistscursor:Lcom/android/music/list/data/ArrayListCursor;
    new-instance v9, Landroid/database/MergeCursor;

    .end local v9           #mergedCursor:Landroid/database/Cursor;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v4, v17, v18

    const/16 v18, 0x1

    aput-object p1, v17, v18

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 727
    .end local v4           #autoplaylistscursor:Lcom/android/music/list/data/ArrayListCursor;
    .restart local v9       #mergedCursor:Landroid/database/Cursor;
    :goto_1
    return-object v9

    .line 664
    :pswitch_1
    invoke-static/range {p2 .. p2}, Lcom/android/music/common/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v5

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/music/common/util/MusicValueSaveController;->getPlaylistMenu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 671
    .local v13, setting:Ljava/lang/String;
    new-instance v14, Ljava/util/StringTokenizer;

    const-string v17, "|"

    move-object v0, v14

    move-object v1, v13

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    .local v14, strToken:Ljava/util/StringTokenizer;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 675
    .local v10, musicMenuIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_2
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 676
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 677
    .local v15, token:Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 680
    .end local v15           #token:Ljava/lang/String;
    :cond_1
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 682
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 683
    .local v11, nMusicMenuIDCount:I
    const/16 v7, 0x9

    .line 685
    .local v7, iListID:I
    const/4 v6, -0x1

    .local v6, i:I
    :goto_3
    if-ge v6, v11, :cond_0

    .line 687
    const/16 v17, -0x1

    move v0, v6

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    .line 688
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 690
    :cond_2
    const/16 v17, 0x9

    move v0, v7

    move/from16 v1, v17

    if-lt v0, v1, :cond_3

    const/16 v17, 0xc

    move v0, v7

    move/from16 v1, v17

    if-gt v0, v1, :cond_3

    .line 693
    new-instance v8, Ljava/util/ArrayList;

    const/16 v17, 0x5

    move-object v0, v8

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 694
    .local v8, listObj:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v7

    invoke-static {v0, v1}, Lcom/android/music/common/util/ListType;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    const-string v17, "%s%d"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "Music_Default_Playlist"

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    const-string v17, ""

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    const-string v17, "@"

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    .end local v8           #listObj:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 707
    .end local v6           #i:I
    .end local v7           #iListID:I
    .end local v10           #musicMenuIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11           #nMusicMenuIDCount:I
    .end local v13           #setting:Ljava/lang/String;
    .end local v14           #strToken:Ljava/util/StringTokenizer;
    :pswitch_2
    const-string v12, "composer is null"

    .line 708
    goto/16 :goto_0

    .line 711
    :pswitch_3
    const-string v12, "year is null"

    goto/16 :goto_0

    .line 724
    :cond_4
    move-object/from16 v9, p1

    goto/16 :goto_1

    .line 659
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getMusicListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "listType"
    .parameter "mpListFilter"
    .parameter "columns"
    .parameter "limits"

    .prologue
    .line 186
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/music/common/data/MusicDB;->getMusicListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getMusicListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "listType"
    .parameter "mpListFilter"
    .parameter "columns"
    .parameter "limits"
    .parameter "groupBy"

    .prologue
    .line 191
    const-string v0, "MusicDB::getMusicListCursor - listType[%s], limits[%s], groupBy[%s]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/music/common/util/ListType;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    const/4 v2, 0x2

    aput-object p5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 193
    .local v7, log:Ljava/lang/String;
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v6, 0x0

    .line 197
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 198
    .local v3, cols:[Ljava/lang/String;
    if-nez p3, :cond_0

    .line 199
    invoke-static {p1}, Lcom/android/music/common/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v3

    .line 203
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 239
    :pswitch_0
    const/4 v6, 0x0

    .line 258
    :goto_1
    return-object v6

    .line 201
    :cond_0
    move-object v3, p3

    goto :goto_0

    .line 219
    :pswitch_1
    invoke-direct {p0, p1, v3, p4, p5}, Lcom/android/music/common/data/MusicDB;->getMusicMainListCursor(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 220
    goto :goto_1

    :pswitch_2
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 234
    invoke-direct/range {v0 .. v5}, Lcom/android/music/common/data/MusicDB;->getMusicSubListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 235
    goto :goto_1

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPlaylistTotalCount()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2448
    const/4 v1, 0x0

    .line 2450
    .local v1, iCount:I
    const/4 v2, 0x2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "count(\'_id\')"

    aput-object v4, v3, v5

    invoke-direct {p0, v2, v3, v6, v6}, Lcom/android/music/common/data/MusicDB;->getMusicMainListCursor(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2451
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 2453
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2455
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2458
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2461
    :cond_1
    return v1
.end method

.method public getPlaylistTracklistFilterByPlaylistName(Ljava/lang/String;)Lcom/android/music/common/data/MpListFilter;
    .locals 14
    .parameter "strPlaylistName"

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v1, 0x1

    const-string v13, "activity"

    .line 3432
    new-instance v10, Lcom/android/music/common/data/MpListFilter;

    const/16 v0, 0xd

    invoke-direct {v10, v0, v1}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 3434
    .local v10, listFilter:Lcom/android/music/common/data/MpListFilter;
    if-nez p1, :cond_0

    move-object v0, v12

    .line 3488
    :goto_0
    return-object v0

    .line 3437
    :cond_0
    const/4 v9, -0x1

    .line 3438
    .local v9, iFilterID:I
    const/4 v7, 0x0

    .line 3441
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "name= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3447
    if-eqz v7, :cond_2

    .line 3449
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 3451
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3452
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 3455
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3458
    :cond_2
    if-ne v9, v11, :cond_3

    .line 3460
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicDB::getPlaylistTracklistFilterByPlaylistName : not exist playlist -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v12

    .line 3461
    goto :goto_0

    .line 3464
    :cond_3
    iget-object v0, v10, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    invoke-direct {v2, v10, v3, v9, p1}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v2, v0, v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move-object v0, v10

    .line 3488
    goto :goto_0

    .line 3466
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 3467
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteFullException getPlaylistTracklistFilterByPlaylistName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3468
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3471
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 3473
    .local v6, am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_1

    .line 3475
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 3482
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3483
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 3484
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getQuickListMaxID()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 2076
    const/4 v7, 0x0

    .line 2078
    .local v7, iMaxID:I
    const/16 v0, 0x9

    invoke-static {v0, v8}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 2079
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, " max(_id)"

    aput-object v0, v2, v8

    .line 2080
    .local v2, cols:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, cursor:Landroid/database/Cursor;
    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 2082
    invoke-direct/range {v0 .. v5}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2083
    if-eqz v6, :cond_1

    .line 2085
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2087
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2089
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 2091
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2094
    :cond_1
    return v7
.end method

.method public getTitle(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    const-string v0, "com.android.music"

    const-string v0, "activity"

    .line 3796
    const/4 v9, 0x0

    .line 3797
    .local v9, title:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "title"

    aput-object v0, v2, v1

    .line 3800
    .local v2, cols:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 3802
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3804
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3805
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3806
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 3830
    :cond_0
    if-eqz v7, :cond_1

    .line 3831
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3834
    :cond_1
    :goto_0
    return-object v9

    .line 3808
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 3809
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteFullException getTitle"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3810
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3814
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 3816
    .local v6, am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3830
    if-eqz v7, :cond_1

    .line 3831
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3818
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 3825
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_2
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3826
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 3827
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3830
    if-eqz v7, :cond_1

    .line 3831
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3830
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 3831
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getUserListMaxPlayOrder(I)I
    .locals 9
    .parameter "iUserListID"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 1916
    const/4 v7, 0x0

    .line 1918
    .local v7, iPlayOrder:I
    const/16 v0, 0xd

    invoke-static {v0, p1}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 1919
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, " max(play_order)"

    aput-object v0, v2, v8

    .line 1920
    .local v2, cols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playlist_id = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1922
    .local v3, selection:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, cursor:Landroid/database/Cursor;
    move-object v0, p0

    move-object v5, v4

    .line 1924
    invoke-direct/range {v0 .. v5}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1925
    if-eqz v6, :cond_1

    .line 1927
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1929
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1931
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1934
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1937
    :cond_1
    return v7
.end method

.method public get_ID(Lcom/android/music/common/data/MpListFilter;II)I
    .locals 11
    .parameter "listFilter"
    .parameter "audioID"
    .parameter "index"

    .prologue
    .line 1730
    iget v9, p1, Lcom/android/music/common/data/MpListFilter;->listType:I

    .line 1732
    .local v9, listType:I
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v1, "get_ID - listType[%s], audioID[%d]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v9}, Lcom/android/music/common/util/ListType;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    const/4 v0, 0x2

    if-lt v9, v0, :cond_0

    const/16 v0, 0x8

    if-gt v9, v0, :cond_0

    .line 1738
    const-string v0, "get_ID - invaild listType[%s] : listType should be tracklist"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v9}, Lcom/android/music/common/util/ListType;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1739
    .local v10, msg:Ljava/lang/String;
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, v10}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1744
    .end local v10           #msg:Ljava/lang/String;
    :cond_0
    const/4 v6, -0x1

    .line 1746
    .local v6, _id:I
    invoke-static {v9}, Lcom/android/music/common/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v2

    .line 1747
    .local v2, columns:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1748
    .local v1, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 1749
    .local v3, selection:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1750
    .local v7, audioColumnName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1752
    .local v5, orderBy:Ljava/lang/String;
    const/16 v0, 0xd

    if-ne v9, v0, :cond_3

    .line 1754
    const/4 v0, -0x1

    if-ne p3, v0, :cond_2

    .line 1756
    iget-object v0, p1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .end local v1           #uri:Landroid/net/Uri;
    iget v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-static {v9, v0}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 1757
    .restart local v1       #uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->FEATURE_MUSIC_PLAYLIST()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "music_audio_playlists_map.audio_data_hashcode = ( SELECT _data_hashcode FROM audio_meta WHERE _id = "

    .end local v3           #selection:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1762
    .restart local v3       #selection:Ljava/lang/String;
    :goto_0
    const-string v7, "_id"

    .line 1786
    :goto_1
    const/4 v8, 0x0

    .line 1788
    .local v8, c:Landroid/database/Cursor;
    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1790
    if-nez v8, :cond_5

    .line 1792
    const-string v0, "get_ID - uri[%s], selection[%s] return null cursor"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .end local v2           #columns:[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v8           #c:Landroid/database/Cursor;
    aput-object v8, v2, v4

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1793
    .restart local v10       #msg:Ljava/lang/String;
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    const/4 v0, -0x1

    .line 1818
    .end local v9           #listType:I
    .end local v10           #msg:Ljava/lang/String;
    :goto_2
    return v0

    .line 1760
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v9       #listType:I
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio_playlists_map.audio_id = "

    .end local v3           #selection:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #selection:Ljava/lang/String;
    goto :goto_0

    .line 1766
    :cond_2
    iget-object v0, p1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .end local v1           #uri:Landroid/net/Uri;
    iget v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-static {v9, v0}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 1767
    .restart local v1       #uri:Landroid/net/Uri;
    const-string v0, "%s?limit=%d,1"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .end local v5           #orderBy:Ljava/lang/String;
    move-result-object v1

    .end local v1           #uri:Landroid/net/Uri;
    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1769
    .restart local v1       #uri:Landroid/net/Uri;
    const-string v7, "_id"

    .line 1770
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/android/music/common/util/ListType;->getOrderBy(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #orderBy:Ljava/lang/String;
    goto :goto_1

    .line 1773
    :cond_3
    const/16 v0, 0x9

    if-ne v9, v0, :cond_4

    .line 1775
    const/4 v0, 0x0

    invoke-static {v9, v0}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 1776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio_id = "

    .end local v3           #selection:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1777
    .restart local v3       #selection:Ljava/lang/String;
    const-string v7, "_id"

    goto/16 :goto_1

    .line 1781
    :cond_4
    move v6, p2

    .line 1782
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v2, "getAudioID returns _id[%d]"

    .end local v2           #columns:[Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .end local v9           #listType:I
    aput-object v9, v4, v8

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 1783
    goto :goto_2

    .line 1799
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v8       #c:Landroid/database/Cursor;
    .restart local v9       #listType:I
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 1801
    const-string v0, "get_ID - uri[%s],selection[%s]  return cursor.getCount() == 0"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .end local v2           #columns:[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .end local v9           #listType:I
    aput-object v9, v2, v4

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1802
    .restart local v10       #msg:Ljava/lang/String;
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1807
    const/4 v0, -0x1

    goto/16 :goto_2

    .line 1811
    .end local v10           #msg:Ljava/lang/String;
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v9       #listType:I
    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1812
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1814
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1816
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v2, "get_ID returns _id[%d]"

    .end local v2           #columns:[Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v8           #c:Landroid/database/Cursor;
    move-result-object v9

    .end local v9           #listType:I
    aput-object v9, v4, v8

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 1818
    goto/16 :goto_2
.end method

.method public isExistQuickList(I)Z
    .locals 8
    .parameter "audioID"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x9

    .line 2054
    const/4 v7, 0x0

    .line 2056
    .local v7, isExist:Z
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 2057
    .local v1, uri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/music/common/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v2

    .line 2059
    .local v2, cols:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 2061
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2062
    if-eqz v6, :cond_1

    .line 2064
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2065
    const/4 v7, 0x1

    .line 2067
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2071
    :cond_1
    return v7
.end method

.method public isExistUserList(Ljava/lang/String;)Z
    .locals 8
    .parameter "strName"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2810
    const/4 v6, 0x0

    .line 2812
    .local v6, bResult:Z
    const/4 v7, 0x0

    .line 2814
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v0, 0x2

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 2815
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "name= ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2821
    if-eqz v7, :cond_1

    .line 2823
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2824
    const/4 v6, 0x1

    .line 2826
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2829
    :cond_1
    return v6
.end method

.method public removeItem(Lcom/android/music/common/data/MpListFilter;I)Z
    .locals 5
    .parameter "listFilter"
    .parameter "iID"

    .prologue
    const/4 v4, 0x1

    .line 2466
    const/4 v0, 0x1

    .line 2467
    .local v0, bResult:Z
    new-array v1, v4, [I

    const/4 v3, 0x0

    aput p2, v1, v3

    .line 2468
    .local v1, iIDs:[I
    invoke-virtual {p0, p1, v4, v1}, Lcom/android/music/common/data/MusicDB;->removeItems(Lcom/android/music/common/data/MpListFilter;I[I)I

    move-result v2

    .line 2470
    .local v2, nResult:I
    if-ge v2, v4, :cond_0

    .line 2471
    const/4 v0, 0x0

    .line 2473
    :cond_0
    return v0
.end method

.method public removeItem(Lcom/android/music/common/data/MpListFilter;Lcom/android/music/common/data/MusicAddData;)Z
    .locals 10
    .parameter "listFilter"
    .parameter "data"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2478
    const/4 v1, 0x1

    .line 2480
    .local v1, bResult:Z
    iget-object v4, p2, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2482
    new-instance v2, Ljava/io/File;

    iget-object v4, p2, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2483
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2484
    const-string v4, "Delete"

    const-string v5, "Failed to delete file %s"

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p2, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    .end local v2           #file:Ljava/io/File;
    :cond_0
    new-array v0, v8, [Lcom/android/music/common/data/MusicAddData;

    aput-object p2, v0, v9

    .line 2489
    .local v0, addData:[Lcom/android/music/common/data/MusicAddData;
    invoke-virtual {p0, p1, v8, v0}, Lcom/android/music/common/data/MusicDB;->removeItems(Lcom/android/music/common/data/MpListFilter;I[Lcom/android/music/common/data/MusicAddData;)I

    move-result v3

    .line 2491
    .local v3, nResult:I
    if-ge v3, v8, :cond_1

    .line 2492
    const/4 v1, 0x0

    .line 2494
    :cond_1
    return v1
.end method

.method public removeItems(Lcom/android/music/common/data/MpListFilter;I[I)I
    .locals 11
    .parameter "listFilter"
    .parameter "nCount"
    .parameter "iIDs"

    .prologue
    .line 2499
    const/4 v4, 0x0

    .line 2507
    .local v4, nResult:I
    iget v3, p1, Lcom/android/music/common/data/MpListFilter;->listType:I

    .line 2508
    .local v3, listType:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2510
    .local v7, where:Ljava/lang/StringBuilder;
    iget-object v8, p1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-static {v3, v8}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v5

    .line 2512
    .local v5, uri:Landroid/net/Uri;
    packed-switch v3, :pswitch_data_0

    .line 2568
    :pswitch_0
    const/4 v8, -0x1

    .line 2680
    :goto_0
    return v8

    .line 2528
    :pswitch_1
    const-string v8, "_id IN("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2529
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, p2, :cond_1

    .line 2531
    aget v8, p3, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2532
    const/4 v8, 0x1

    sub-int v8, p2, v8

    if-ge v2, v8, :cond_0

    .line 2533
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2529
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2536
    :cond_1
    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2573
    :goto_2
    const/16 v8, 0xa

    if-eq v3, v8, :cond_2

    const/16 v8, 0xb

    if-eq v3, v8, :cond_2

    const/16 v8, 0xc

    if-ne v3, v8, :cond_5

    .line 2576
    :cond_2
    new-instance v6, Landroid/content/ContentValues;

    const/4 v8, 0x1

    invoke-direct {v6, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 2578
    .local v6, values:Landroid/content/ContentValues;
    packed-switch v3, :pswitch_data_1

    .line 2593
    :goto_3
    :try_start_0
    iget-object v8, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v5, v6, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v6           #values:Landroid/content/ContentValues;
    :goto_4
    move v8, v4

    .line 2680
    goto :goto_0

    .line 2548
    .end local v2           #i:I
    :pswitch_2
    const-string v8, "_id IN("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2549
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5
    if-ge v2, p2, :cond_4

    .line 2551
    aget v8, p3, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2552
    const/4 v8, 0x1

    sub-int v8, p2, v8

    if-ge v2, v8, :cond_3

    .line 2553
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2549
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2556
    :cond_4
    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2581
    .restart local v6       #values:Landroid/content/ContentValues;
    :pswitch_3
    const-string v8, "most_played"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 2585
    :pswitch_4
    const-string v8, "recently_played"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 2589
    :pswitch_5
    const-string v8, "recently_added_remove_flag"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 2594
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 2601
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    sget-object v8, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SQLiteFullException getQuickListMaxID"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    iget-object v8, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2605
    iget-object v8, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2607
    .local v0, am:Landroid/app/ActivityManager;
    const-string v8, "com.android.music"

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_4

    .line 2609
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 2616
    .local v1, e:Landroid/database/sqlite/SQLiteDiskIOException;
    iget-object v8, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2618
    iget-object v8, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2619
    .restart local v0       #am:Landroid/app/ActivityManager;
    const-string v8, "com.android.music"

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2641
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_5
    iget-object v8, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v5, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2512
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 2578
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public removeItems(Lcom/android/music/common/data/MpListFilter;I[Lcom/android/music/common/data/MusicAddData;)I
    .locals 11
    .parameter "listFilter"
    .parameter "nCount"
    .parameter "data"

    .prologue
    .line 2685
    const/4 v4, 0x0

    .line 2693
    .local v4, nResult:I
    iget v3, p1, Lcom/android/music/common/data/MpListFilter;->listType:I

    .line 2694
    .local v3, listType:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2695
    .local v2, id_where:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2697
    .local v0, hash_where:Ljava/lang/StringBuilder;
    iget-object v8, p1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-static {v3, v8}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v7

    .line 2698
    .local v7, uri:Landroid/net/Uri;
    const-string v8, "external"

    invoke-static {v8}, Lcom/android/music/common/data/SecMusic$MusicPlaylist;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2700
    .local v5, playlist_uri:Landroid/net/Uri;
    packed-switch v3, :pswitch_data_0

    .line 2752
    :pswitch_0
    const/4 v8, -0x1

    .line 2789
    :goto_0
    return v8

    .line 2715
    :pswitch_1
    const-string v8, "_id IN("

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2716
    const-string v8, "audio_data_hashcode IN("

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2717
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, p2, :cond_1

    .line 2719
    aget-object v8, p3, v1

    iget v8, v8, Lcom/android/music/common/data/MusicAddData;->mId:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2720
    aget-object v8, p3, v1

    iget v8, v8, Lcom/android/music/common/data/MusicAddData;->mHashCode:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2721
    const/4 v8, 0x1

    sub-int v8, p2, v8

    if-ge v1, v8, :cond_0

    .line 2722
    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2723
    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2717
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2726
    :cond_1
    const-string v8, ")"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2727
    const-string v8, ")"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2762
    iget-object v8, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v7, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2767
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->FEATURE_MUSIC_PLAYLIST()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2768
    const-string v8, "external"

    invoke-static {v8}, Lcom/android/music/common/data/SecMusic$MusicPlaylist;->getMembersContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 2769
    .local v6, tempuri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .end local v6           #tempuri:Landroid/net/Uri;
    :cond_2
    move v8, v4

    .line 2789
    goto :goto_0

    .line 2700
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public resetMediaDatabaseByRemovedSDCard()V
    .locals 5

    .prologue
    .line 2100
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2106
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "_data LIKE \'/sdcard/sd/%\'"

    .line 2110
    .local v2, where:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2114
    :goto_0
    return-void

    .line 2111
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2112
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0
.end method

.method public updatePlayedCount(I)Z
    .locals 21
    .parameter "audio_id"

    .prologue
    .line 3309
    const/4 v12, 0x1

    .line 3311
    .local v12, bResult:Z
    if-gez p1, :cond_0

    .line 3312
    const/4 v5, 0x0

    .line 3372
    :goto_0
    return v5

    .line 3314
    :cond_0
    sget-object v18, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3316
    .local v18, uri:Landroid/net/Uri;
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide v7, v0

    invoke-static {v5, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 3317
    .local v6, mediaUri:Landroid/net/Uri;
    const/4 v15, 0x0

    .line 3320
    .local v15, mediaCursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "most_played"

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 3322
    const/16 v16, 0x0

    .line 3324
    .local v16, playedCount:I
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v5

    if-gtz v5, :cond_4

    .line 3326
    :cond_1
    const/4 v12, 0x0

    .line 3368
    .end local v6           #mediaUri:Landroid/net/Uri;
    :cond_2
    :goto_1
    if-eqz v15, :cond_3

    .line 3369
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .end local v16           #playedCount:I
    :cond_3
    :goto_2
    move v5, v12

    .line 3372
    goto :goto_0

    .line 3330
    .restart local v6       #mediaUri:Landroid/net/Uri;
    .restart local v16       #playedCount:I
    :cond_4
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3331
    const/4 v5, 0x0

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 3332
    new-instance v19, Landroid/content/ContentValues;

    const/4 v5, 0x1

    move-object/from16 v0, v19

    move v1, v5

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 3333
    .local v19, values:Landroid/content/ContentValues;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    .end local v6           #mediaUri:Landroid/net/Uri;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 3334
    .local v20, where:Ljava/lang/String;
    const/16 v17, 0x0

    .line 3336
    .local v17, selectionArgs:[Ljava/lang/String;
    const-string v5, "most_played"

    add-int/lit8 v6, v16, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3338
    const/4 v14, -0x1

    .line 3340
    .local v14, iResult:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v14

    .line 3342
    const/4 v5, 0x1

    if-eq v14, v5, :cond_2

    .line 3343
    const/4 v12, 0x0

    goto :goto_1

    .line 3346
    .end local v14           #iResult:I
    .end local v16           #playedCount:I
    .end local v17           #selectionArgs:[Ljava/lang/String;
    .end local v19           #values:Landroid/content/ContentValues;
    .end local v20           #where:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v13, v5

    .line 3347
    .local v13, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_2
    sget-object v5, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SQLiteFullException updatePlayedCount"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    move-object v5, v0

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager;

    .line 3352
    .local v11, am:Landroid/app/ActivityManager;
    const-string v5, "com.android.music"

    invoke-virtual {v11, v5}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3368
    if-eqz v15, :cond_3

    .line 3369
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 3354
    .end local v11           #am:Landroid/app/ActivityManager;
    .end local v13           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v5

    move-object v13, v5

    .line 3355
    .local v13, e:Ljava/lang/NullPointerException;
    :try_start_3
    sget-object v5, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NullPointerException updatePlayedCount"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3368
    if-eqz v15, :cond_3

    .line 3369
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 3356
    .end local v13           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v5

    move-object v13, v5

    .line 3358
    .local v13, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    move-object v5, v0

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager;

    .line 3363
    .restart local v11       #am:Landroid/app/ActivityManager;
    const-string v5, "com.android.music"

    invoke-virtual {v11, v5}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3368
    if-eqz v15, :cond_3

    .line 3369
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 3365
    .end local v11           #am:Landroid/app/ActivityManager;
    .end local v13           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_3
    move-exception v5

    move-object v13, v5

    .line 3366
    .local v13, e:Ljava/lang/UnsupportedOperationException;
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3368
    if-eqz v15, :cond_3

    .line 3369
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 3368
    .end local v13           #e:Ljava/lang/UnsupportedOperationException;
    :catchall_0
    move-exception v5

    if-eqz v15, :cond_5

    .line 3369
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v5
.end method

.method public updatePlayedTime(I)Z
    .locals 13
    .parameter "audio_id"

    .prologue
    .line 3377
    const/4 v1, 0x1

    .line 3379
    .local v1, bResult:Z
    if-gez p1, :cond_0

    .line 3380
    const/4 v8, 0x0

    .line 3427
    :goto_0
    return v8

    .line 3382
    :cond_0
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3383
    .local v5, uri:Landroid/net/Uri;
    new-instance v6, Landroid/content/ContentValues;

    const/4 v8, 0x1

    invoke-direct {v6, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 3384
    .local v6, values:Landroid/content/ContentValues;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3385
    .local v7, where:Ljava/lang/String;
    const/4 v4, 0x0

    .line 3387
    .local v4, selectionArgs:[Ljava/lang/String;
    const-string v8, "recently_played"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3389
    const/4 v3, -0x1

    .line 3391
    .local v3, iResult:I
    :try_start_0
    iget-object v8, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v8, v5, v6, v7, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 3424
    :goto_1
    const/4 v8, 0x1

    if-eq v3, v8, :cond_1

    .line 3425
    const/4 v1, 0x0

    :cond_1
    move v8, v1

    .line 3427
    goto :goto_0

    .line 3392
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 3399
    .local v2, e:Landroid/database/sqlite/SQLiteFullException;
    sget-object v8, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SQLiteFullException getQuickListMaxID"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3401
    iget-object v8, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3403
    iget-object v8, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3405
    .local v0, am:Landroid/app/ActivityManager;
    const-string v8, "com.android.music"

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_1

    .line 3407
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v2           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 3414
    .local v2, e:Landroid/database/sqlite/SQLiteDiskIOException;
    iget-object v8, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3416
    iget-object v8, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3418
    .restart local v0       #am:Landroid/app/ActivityManager;
    const-string v8, "com.android.music"

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_1

    .line 3420
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v2           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_2
    move-exception v8

    move-object v2, v8

    .line 3421
    .local v2, e:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v2}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_1
.end method

.method public updateUserList(ILjava/lang/String;Landroid/net/Uri;)Z
    .locals 12
    .parameter "iListID"
    .parameter "strNewName"
    .parameter "uriImages"

    .prologue
    .line 3045
    const/4 v1, 0x1

    .line 3047
    .local v1, bResult:Z
    invoke-virtual {p0, p2}, Lcom/android/music/common/data/MusicDB;->isExistUserList(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3051
    const/4 v6, 0x0

    .line 3113
    :goto_0
    return v6

    .line 3054
    :cond_0
    const/4 v4, 0x2

    .line 3055
    .local v4, nColumnCount:I
    const/4 v5, 0x0

    .line 3057
    .local v5, values:Landroid/content/ContentValues;
    if-eqz p3, :cond_2

    .line 3059
    new-instance v5, Landroid/content/ContentValues;

    .end local v5           #values:Landroid/content/ContentValues;
    invoke-direct {v5, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 3068
    .restart local v5       #values:Landroid/content/ContentValues;
    :goto_1
    const-string v6, "name"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3070
    const/4 v3, -0x1

    .line 3073
    .local v3, iResult:I
    :try_start_0
    iget-object v6, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v7, 0x2

    const/4 v8, -0x1

    invoke-static {v7, v8}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v7

    const-string v8, "_id = ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 3110
    :goto_2
    const/4 v6, 0x1

    if-eq v3, v6, :cond_1

    .line 3111
    const/4 v1, 0x0

    :cond_1
    move v6, v1

    .line 3113
    goto :goto_0

    .line 3064
    .end local v3           #iResult:I
    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 3065
    new-instance v5, Landroid/content/ContentValues;

    .end local v5           #values:Landroid/content/ContentValues;
    invoke-direct {v5, v4}, Landroid/content/ContentValues;-><init>(I)V

    .restart local v5       #values:Landroid/content/ContentValues;
    goto :goto_1

    .line 3077
    .restart local v3       #iResult:I
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 3084
    .local v2, e:Landroid/database/sqlite/SQLiteFullException;
    sget-object v6, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SQLiteFullException getQuickListMaxID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3086
    iget-object v6, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3088
    iget-object v6, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3090
    .local v0, am:Landroid/app/ActivityManager;
    const-string v6, "com.android.music"

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_2

    .line 3092
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v2           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 3099
    .local v2, e:Landroid/database/sqlite/SQLiteDiskIOException;
    iget-object v6, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3101
    iget-object v6, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3103
    .restart local v0       #am:Landroid/app/ActivityManager;
    const-string v6, "com.android.music"

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public updateUserList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 15
    .parameter "strOldName"
    .parameter "strNewName"
    .parameter "uriImages"
    .parameter "imagePath"

    .prologue
    .line 2916
    const/4 v4, 0x1

    .line 2918
    .local v4, bResult:Z
    const/4 v8, 0x3

    .line 2919
    .local v8, nColumnCount:I
    const/4 v9, 0x0

    .line 2920
    .local v9, values:Landroid/content/ContentValues;
    new-instance v9, Landroid/content/ContentValues;

    .end local v9           #values:Landroid/content/ContentValues;
    invoke-direct {v9, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 2922
    .restart local v9       #values:Landroid/content/ContentValues;
    const/4 v7, -0x1

    .line 2923
    .local v7, imageID:I
    if-eqz p3, :cond_0

    .line 2925
    invoke-static/range {p3 .. p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    long-to-int v7, v10

    .line 2928
    :cond_0
    const/4 v6, -0x1

    .line 2929
    .local v6, iResult:I
    move-object v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/music/common/data/MusicDB;->isExistUserList(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2931
    const-string v10, "name"

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2932
    const-string v10, "images_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2933
    const-string v10, "thumbnail_uri"

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2936
    :try_start_0
    iget-object v10, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v11, 0x2

    const/4 v12, -0x1

    invoke-static {v11, v12}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v11

    const-string v12, "name = ?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    invoke-virtual {v10, v11, v9, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .line 2977
    :goto_0
    const/4 v10, 0x0

    .line 3040
    :goto_1
    return v10

    .line 2940
    :catch_0
    move-exception v10

    move-object v5, v10

    .line 2950
    .local v5, e:Landroid/database/sqlite/SQLiteFullException;
    sget-object v10, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SQLiteFullException getQuickListMaxID"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    iget-object v10, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2954
    iget-object v10, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 2956
    .local v3, am:Landroid/app/ActivityManager;
    const-string v10, "com.android.music"

    invoke-virtual {v3, v10}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 2958
    .end local v3           #am:Landroid/app/ActivityManager;
    .end local v5           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v10

    move-object v5, v10

    .line 2965
    .local v5, e:Landroid/database/sqlite/SQLiteDiskIOException;
    iget-object v10, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2967
    iget-object v10, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 2969
    .restart local v3       #am:Landroid/app/ActivityManager;
    const-string v10, "com.android.music"

    invoke-virtual {v3, v10}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 2993
    .end local v3           #am:Landroid/app/ActivityManager;
    .end local v5           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :cond_1
    const-string v10, "name"

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2994
    const-string v10, "images_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2995
    const-string v10, "thumbnail_uri"

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2999
    :try_start_1
    iget-object v10, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v11, 0x2

    const/4 v12, -0x1

    invoke-static {v11, v12}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v11

    const-string v12, "name = ?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    invoke-virtual {v10, v11, v9, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v6

    .line 3037
    :goto_2
    const/4 v10, 0x1

    if-eq v6, v10, :cond_2

    .line 3038
    const/4 v4, 0x0

    :cond_2
    move v10, v4

    .line 3040
    goto :goto_1

    .line 3003
    :catch_2
    move-exception v10

    move-object v5, v10

    .line 3010
    .local v5, e:Landroid/database/sqlite/SQLiteFullException;
    sget-object v10, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SQLiteFullException getQuickListMaxID"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3012
    iget-object v10, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3014
    iget-object v10, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 3016
    .restart local v3       #am:Landroid/app/ActivityManager;
    const-string v10, "com.android.music"

    invoke-virtual {v3, v10}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_2

    .line 3018
    .end local v3           #am:Landroid/app/ActivityManager;
    .end local v5           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_3
    move-exception v10

    move-object v5, v10

    .line 3025
    .local v5, e:Landroid/database/sqlite/SQLiteDiskIOException;
    iget-object v10, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3027
    iget-object v10, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 3029
    .restart local v3       #am:Landroid/app/ActivityManager;
    const-string v10, "com.android.music"

    invoke-virtual {v3, v10}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_2
.end method
