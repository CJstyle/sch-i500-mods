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
.field public static final DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

.field public static final IDTAG_FILE_DETAIL_COLS:[Ljava/lang/String;

.field public static MediaCount:I

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/android/music/common/data/MusicDB;


# instance fields
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

    .line 36
    const-class v0, Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    .line 39
    sput v3, Lcom/android/music/common/data/MusicDB;->MediaCount:I

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/android/music/common/data/MusicDB;->mInstance:Lcom/android/music/common/data/MusicDB;

    .line 68
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

    .line 88
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

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    .line 42
    iput-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    .line 260
    iput-object v0, p0, Lcom/android/music/common/data/MusicDB;->mKeyForIndex:[Ljava/lang/String;

    .line 261
    iput-object v0, p0, Lcom/android/music/common/data/MusicDB;->mCollatorIndex:[Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    .line 103
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    .line 104
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;
    .locals 2
    .parameter "context"

    .prologue
    .line 159
    const-class v0, Lcom/android/music/common/data/MusicDB;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/music/common/data/MusicDB;->mInstance:Lcom/android/music/common/data/MusicDB;

    if-nez v1, :cond_1

    .line 160
    new-instance v1, Lcom/android/music/common/data/MusicDB;

    invoke-direct {v1, p0}, Lcom/android/music/common/data/MusicDB;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/music/common/data/MusicDB;->mInstance:Lcom/android/music/common/data/MusicDB;

    .line 166
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/music/common/data/MusicDB;->mInstance:Lcom/android/music/common/data/MusicDB;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 162
    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/music/common/data/MusicDB;->mInstance:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v1}, Lcom/android/music/common/data/MusicDB;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 163
    new-instance v1, Lcom/android/music/common/data/MusicDB;

    invoke-direct {v1, p0}, Lcom/android/music/common/data/MusicDB;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/music/common/data/MusicDB;->mInstance:Lcom/android/music/common/data/MusicDB;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static defaultAudioWhereClause()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4708
    const-string v1, "is_sound = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4720
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/music/common/data/MusicDB;
    .locals 2

    .prologue
    .line 171
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
    .line 313
    const/4 v8, 0x0

    .line 314
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 315
    .local v3, selection:Ljava/lang/String;
    const/4 v2, 0x0

    .line 317
    .local v2, cols:[Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 318
    .local v1, uri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/music/common/util/ListType;->getOrderBy(I)Ljava/lang/String;

    move-result-object v5

    .line 319
    .local v5, orderBy:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .local v7, builder:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 325
    .local v6, bIsNeedMerge:Z
    if-eqz p2, :cond_0

    .line 326
    move-object v2, p2

    .line 330
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 416
    :pswitch_0
    const/4 v0, 0x0

    .line 460
    .end local v2           #cols:[Ljava/lang/String;
    .end local v5           #orderBy:Ljava/lang/String;
    .end local v7           #builder:Ljava/lang/StringBuilder;
    :goto_1
    return-object v0

    .line 328
    .restart local v2       #cols:[Ljava/lang/String;
    .restart local v5       #orderBy:Ljava/lang/String;
    .restart local v7       #builder:Ljava/lang/StringBuilder;
    :cond_0
    invoke-static {p1}, Lcom/android/music/common/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 333
    :pswitch_1
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v3

    .line 420
    :goto_2
    :pswitch_2
    if-eqz p3, :cond_1

    .line 422
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

    .line 425
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_1
    if-eqz p4, :cond_3

    .line 428
    if-nez p3, :cond_2

    .line 430
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

    .line 432
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

    .line 435
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_3
    const/4 v10, 0x0

    .line 437
    .local v10, mergedCursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 438
    if-nez v8, :cond_7

    .line 440
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v4, "MusicDB::getMusicMainListCursor - query return null"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    .end local v7           #builder:Ljava/lang/StringBuilder;
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
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

    .line 442
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

    .line 443
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v2, "         selection = %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v2, "         orderBy = %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
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

    .line 446
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 345
    .restart local v2       #cols:[Ljava/lang/String;
    .restart local v7       #builder:Ljava/lang/StringBuilder;
    :pswitch_3
    const-string v0, "composer is not null"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 354
    const/4 v6, 0x1

    .line 355
    goto/16 :goto_2

    .line 360
    :pswitch_4
    const/4 v6, 0x1

    .line 361
    goto/16 :goto_2

    .line 385
    :pswitch_5
    if-nez p3, :cond_4

    .line 386
    const-string p3, "50"

    .line 388
    :cond_4
    const-string v0, "recently_played != 0"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    const-string v0, " AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 392
    goto/16 :goto_2

    .line 395
    :pswitch_6
    if-nez p3, :cond_5

    .line 396
    const-string p3, "50"

    .line 398
    :cond_5
    const-string v0, "most_played != 0"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    const-string v0, " AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 402
    goto/16 :goto_2

    .line 405
    :pswitch_7
    if-nez p3, :cond_6

    .line 406
    const-string p3, "900"

    .line 408
    :cond_6
    const-string v0, "recently_added_remove_flag = 0"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    const-string v0, " AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 412
    goto/16 :goto_2

    .line 450
    .restart local v10       #mergedCursor:Landroid/database/Cursor;
    :cond_7
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

    .line 451
    .local v9, log:Ljava/lang/String;
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/android/music/common/data/MusicDB;->MediaCount:I

    .line 455
    if-eqz v6, :cond_8

    .line 456
    invoke-virtual {p0, v8, p1}, Lcom/android/music/common/data/MusicDB;->getMergedCursor(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v10

    :goto_3
    move-object v0, v10

    .line 460
    goto/16 :goto_1

    .line 458
    :cond_8
    move-object v10, v8

    goto :goto_3

    .line 330
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
    .line 469
    const/4 v13, 0x0

    .line 470
    .local v13, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 471
    .local v9, selection:Ljava/lang/String;
    const/4 v10, 0x0

    .line 472
    .local v10, selectionArgs:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 474
    .local v8, cols:[Ljava/lang/String;
    const/4 v2, 0x0

    move/from16 v0, p1

    move v1, v2

    invoke-static {v0, v1}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v7

    .line 475
    .local v7, uri:Landroid/net/Uri;
    invoke-static/range {p1 .. p1}, Lcom/android/music/common/util/ListType;->getOrderBy(I)Ljava/lang/String;

    move-result-object v11

    .line 476
    .local v11, orderBy:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    .local v12, builder:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_0

    .line 480
    move-object/from16 v8, p3

    .line 484
    :goto_0
    if-nez p2, :cond_1

    .line 486
    const-string v2, "getMusicSubListCursor : listType[%s], listFilter is NULL"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/music/common/util/ListType;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 487
    .local v14, msg:Ljava/lang/String;
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    invoke-static {v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v14}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 482
    .end local v14           #msg:Ljava/lang/String;
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/music/common/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 492
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 628
    :goto_1
    :pswitch_0
    if-eqz p4, :cond_2

    .line 630
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

    .line 633
    :cond_2
    if-eqz p5, :cond_3

    .line 635
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

    .line 638
    invoke-direct/range {v6 .. v11}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    move-object v2, v13

    .line 649
    :goto_2
    return-object v2

    .line 496
    :pswitch_1
    const/4 v15, -0x1

    .line 499
    .local v15, playlistId:I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->bIsID:Z

    if-nez v2, :cond_4

    .line 501
    const/16 v16, 0x0

    .line 503
    .local v16, tmpCursor:Landroid/database/Cursor;
    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v3

    .line 504
    .local v3, tmpUri:Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    .line 505
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

    .line 507
    .local v5, tmpSelection:Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v7           #uri:Landroid/net/Uri;
    move-result-object v16

    .line 508
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 509
    const-string v2, "_id"

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 510
    .local v17, tmpIndex:I
    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 511
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 519
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

    .line 521
    .restart local v7       #uri:Landroid/net/Uri;
    goto/16 :goto_1

    .line 515
    :cond_4
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v15, v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    goto :goto_3

    .line 525
    .end local v15           #playlistId:I
    :pswitch_2
    const/4 v15, -0x1

    .line 528
    .restart local v15       #playlistId:I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v15, v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    .line 531
    move/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v7

    .line 533
    goto/16 :goto_1

    .line 537
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

    .line 538
    const-string v2, " AND "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 541
    goto/16 :goto_1

    .line 547
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

    .line 548
    const-string v2, " AND "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 551
    goto/16 :goto_1

    .line 557
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

    .line 558
    const-string v2, " AND "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 561
    goto/16 :goto_1

    .line 565
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

    .line 566
    goto/16 :goto_1

    .line 572
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

    .line 574
    const-string v2, " AND "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 577
    goto/16 :goto_1

    .line 582
    :pswitch_8
    const-string v2, "genre_name = ?"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    const-string v2, " AND "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 587
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

    .line 588
    .restart local v10       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 592
    :pswitch_9
    const-string v2, "composer = ?"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    const-string v2, " AND "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 597
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

    .line 598
    .restart local v10       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 602
    :pswitch_a
    const-string v2, "year_name = ?"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    const-string v2, " AND "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 607
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

    .line 608
    .restart local v10       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 611
    :pswitch_b
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 492
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
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x1

    const-string v5, "content://media"

    .line 4453
    new-instance v0, Lcom/android/music/common/data/MusicDB$FileLocationInfo;

    invoke-direct {v0}, Lcom/android/music/common/data/MusicDB$FileLocationInfo;-><init>()V

    .line 4457
    if-nez p1, :cond_0

    .line 4458
    iput v4, v0, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->type:I

    .line 4492
    :goto_0
    return-object v0

    .line 4462
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4463
    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4464
    iput v6, v0, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->type:I

    .line 4465
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->path:Ljava/lang/String;

    .line 4466
    iget-object v1, v0, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/music/common/data/MusicDB;->isInternalFile(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->isInternal:I

    goto :goto_0

    .line 4479
    :cond_1
    const-string v2, "content://media"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4480
    const/4 v2, 0x2

    iput v2, v0, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->type:I

    .line 4481
    iput-object p1, v0, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->uri:Landroid/net/Uri;

    .line 4482
    const-string v2, "content://media"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "internal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4483
    iput v6, v0, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->isInternal:I

    goto :goto_0

    .line 4484
    :cond_2
    const-string v2, "content://media"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "external"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4485
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->isInternal:I

    goto :goto_0

    .line 4487
    :cond_3
    iput v4, v0, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->isInternal:I

    goto :goto_0

    .line 4490
    :cond_4
    iput v4, v0, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->type:I

    goto :goto_0
.end method

.method private static isInternalFile(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 4496
    const-string v0, "/system/media"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4497
    const/4 v0, 0x0

    .line 4502
    :goto_0
    return v0

    .line 4499
    :cond_0
    const-string v0, "/sdcard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4500
    const/4 v0, 0x1

    goto :goto_0

    .line 4502
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
    .line 109
    const/4 v7, 0x0

    .line 113
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

    .line 154
    :goto_0
    return-object v7

    .line 115
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 117
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

    .line 118
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 121
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 122
    .local v6, am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 127
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

    .line 128
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 131
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 132
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_2
    move-exception v0

    move-object v8, v0

    .line 147
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

    .line 148
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 149
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 150
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addItem(Lcom/android/music/common/data/MpListFilter;I)Z
    .locals 11
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x9

    const/4 v7, 0x0

    const-string v10, "com.android.music"

    const-string v9, "audio_id"

    const-string v8, "activity"

    .line 2593
    const/4 v1, 0x1

    .line 2595
    iget v2, p1, Lcom/android/music/common/data/MpListFilter;->listType:I

    .line 2599
    const/16 v0, 0xd

    if-eq v2, v0, :cond_0

    if-eq v2, v3, :cond_0

    move v0, v7

    .line 2685
    :goto_0
    return v0

    .line 2607
    :cond_0
    iget-object v0, p1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    aget-object v0, v0, v7

    iget v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-static {v2, v0}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v0

    .line 2610
    if-ne v2, v3, :cond_2

    .line 2612
    invoke-virtual {p0, p2}, Lcom/android/music/common/data/MusicDB;->isExistQuickList(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2613
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addItem(),QUICK_LIST "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already added"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2614
    goto :goto_0

    .line 2617
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 2619
    invoke-virtual {p0}, Lcom/android/music/common/data/MusicDB;->getQuickListMaxID()I

    move-result v4

    .line 2620
    const-string v5, "_id"

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2621
    const-string v4, "audio_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2636
    :goto_1
    const/4 v4, 0x0

    .line 2640
    :try_start_0
    iget-object v5, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2675
    :goto_2
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    long-to-int v0, v3

    .line 2677
    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 2681
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addItem( listType["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], int iID["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]  is false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v7

    .line 2682
    goto/16 :goto_0

    .line 2625
    :cond_2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2627
    iget-object v4, p1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-virtual {p0, v4}, Lcom/android/music/common/data/MusicDB;->getUserListMaxPlayOrder(I)I

    move-result v4

    .line 2629
    const-string v5, "play_order"

    .line 2630
    const-string v6, "audio_id"

    .line 2633
    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2634
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 2641
    :catch_0
    move-exception v0

    .line 2648
    sget-object v3, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLiteFullException getQuickListMaxID"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2650
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2651
    const-string v3, "com.android.music"

    invoke-virtual {v0, v10}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    move-object v0, v4

    .line 2668
    goto/16 :goto_2

    .line 2653
    :catch_1
    move-exception v0

    .line 2660
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2661
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2662
    const-string v3, "com.android.music"

    invoke-virtual {v0, v10}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    move-object v0, v4

    goto/16 :goto_2

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public addItems(Lcom/android/music/common/data/MpListFilter;I[Lcom/android/music/common/data/MusicAddData;)I
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2691
    const/4 v0, 0x0

    .line 2693
    iget v1, p1, Lcom/android/music/common/data/MpListFilter;->listType:I

    .line 2696
    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    .line 2701
    const/4 v0, -0x1

    .line 2777
    :cond_0
    :goto_0
    return v0

    .line 2704
    :cond_1
    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    .line 2713
    iget-object v2, p1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-virtual {p0, v2}, Lcom/android/music/common/data/MusicDB;->getUserListMaxPlayOrder(I)I

    move-result v2

    .line 2714
    add-int/lit8 v2, v2, 0x1

    .line 2716
    const-string v3, "play_order"

    .line 2718
    const-string v4, "audio_data"

    .line 2720
    const-string v5, "audio_data_hashcode"

    .line 2723
    new-array v6, p2, [Landroid/content/ContentValues;

    .line 2725
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->FEATURE_MUSIC_PLAYLIST()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2726
    const/4 v7, 0x0

    :goto_1
    if-ge v7, p2, :cond_3

    .line 2728
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    aput-object v8, v6, v7

    .line 2729
    aget-object v8, v6, v7

    add-int v9, v2, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2730
    aget-object v8, v6, v7

    const/4 v9, 0x1

    sub-int v9, p2, v9

    sub-int/2addr v9, v7

    aget-object v9, p3, v9

    iget-object v9, v9, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    invoke-virtual {v8, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2731
    aget-object v8, v6, v7

    const/4 v9, 0x1

    sub-int v9, p2, v9

    sub-int/2addr v9, v7

    aget-object v9, p3, v9

    iget v9, v9, Lcom/android/music/common/data/MusicAddData;->mHashCode:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2726
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2734
    :cond_2
    const-string v4, "audio_id"

    .line 2735
    const/4 v5, 0x0

    :goto_2
    if-ge v5, p2, :cond_3

    .line 2737
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    aput-object v7, v6, v5

    .line 2738
    aget-object v7, v6, v5

    add-int v8, v2, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2739
    aget-object v7, v6, v5

    const/4 v8, 0x1

    sub-int v8, p2, v8

    sub-int/2addr v8, v5

    aget-object v8, p3, v8

    iget v8, v8, Lcom/android/music/common/data/MusicAddData;->mId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2735
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2743
    :cond_3
    iget-object v2, p1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-static {v1, v2}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 2745
    :try_start_0
    iget-object v2, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1, v6}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto/16 :goto_0

    .line 2746
    :catch_0
    move-exception v1

    .line 2753
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteFullException getQuickListMaxID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    iget-object v1, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2755
    iget-object v1, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 2756
    const-string v1, "com.android.music"

    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2759
    :catch_1
    move-exception v1

    .line 2766
    iget-object v1, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2767
    iget-object v1, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 2768
    const-string v1, "com.android.music"

    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public createUserList(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const-string v3, "images_id"

    const-string v8, "com.android.music"

    const-string v7, "activity"

    .line 3319
    if-nez p1, :cond_1

    .line 3322
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "createUserList : inParam is null"

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v5

    .line 3394
    :cond_0
    :goto_0
    return v0

    .line 3326
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/music/common/data/MusicDB;->isExistUserList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3329
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createUserList : isExistUserList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v5

    .line 3330
    goto :goto_0

    .line 3342
    :cond_2
    if-eqz p2, :cond_3

    .line 3343
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 3345
    :goto_1
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 3346
    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3349
    const-string v2, "images_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3350
    const-string v2, "thumbnail_uri"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3352
    const-string v2, "images_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3353
    const-string v0, "thumbnail_uri"

    invoke-virtual {v1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3356
    const/4 v2, 0x0

    .line 3359
    :try_start_0
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 3385
    :goto_2
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 3387
    if-ne v0, v5, :cond_0

    .line 3391
    iget-object v1, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v2, "createUserList : bResult is false"

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3360
    :catch_0
    move-exception v0

    .line 3367
    sget-object v1, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteFullException getQuickListMaxID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3368
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3369
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3370
    const-string v1, "com.android.music"

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    move-object v0, v2

    .line 3383
    goto :goto_2

    .line 3372
    :catch_1
    move-exception v0

    .line 3379
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3380
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3381
    const-string v1, "com.android.music"

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_2

    :cond_3
    move v0, v5

    goto/16 :goto_1
.end method

.method public getAlbumArt(J)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    const-string v0, "album_art"

    const-string v0, "activity"

    .line 4605
    .line 4610
    const-string v0, "%s = %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "_id"

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 4613
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

    move-result-object v0

    .line 4617
    if-nez v0, :cond_1

    .line 4647
    if-eqz v0, :cond_0

    .line 4648
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v6

    .line 4651
    :goto_0
    return-object v0

    .line 4619
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_3

    .line 4620
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 4647
    if-eqz v0, :cond_2

    .line 4648
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v6

    goto :goto_0

    .line 4624
    :cond_3
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4625
    const-string v1, "album_art"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 4647
    if-eqz v0, :cond_6

    .line 4648
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    goto :goto_0

    .line 4627
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 4628
    :goto_1
    :try_start_3
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteFullException getAlbumArt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4629
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 4632
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 4633
    const-string v0, "com.android.music"

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 4647
    if-eqz v1, :cond_5

    .line 4648
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_0

    .line 4635
    :catch_1
    move-exception v0

    move-object v0, v6

    .line 4642
    :goto_2
    :try_start_4
    iget-object v1, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 4643
    iget-object v1, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 4644
    const-string v1, "com.android.music"

    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4647
    if-eqz v0, :cond_5

    .line 4648
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_0

    .line 4647
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_4

    .line 4648
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 4647
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 4635
    :catch_2
    move-exception v1

    goto :goto_2

    .line 4627
    :catch_3
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_1

    :cond_5
    move-object v0, v6

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public getAlbumID(ILandroid/database/Cursor;)I
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v3, "album_id"

    const-string v6, "_id"

    .line 2147
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-ne p1, v0, :cond_2

    :cond_0
    move v0, v5

    .line 2232
    :cond_1
    :goto_0
    return v0

    .line 2158
    :cond_2
    const-string v0, "album_id"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2161
    if-ne v0, v5, :cond_1

    .line 2163
    new-array v1, v10, [Ljava/lang/String;

    const-string v2, "album_id"

    aput-object v3, v1, v9

    .line 2167
    const/4 v2, 0x0

    .line 2169
    invoke-static {p1}, Lcom/android/music/common/util/ListType;->getSubListType(I)I

    move-result v3

    .line 2170
    new-instance v4, Lcom/android/music/common/data/MpListFilter;

    invoke-direct {v4, v3, v10}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 2172
    sparse-switch p1, :sswitch_data_0

    move v0, v5

    .line 2215
    goto :goto_0

    .line 2178
    :sswitch_0
    const-string v5, "_id"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 2218
    :goto_1
    if-eqz v2, :cond_4

    move v6, v9

    .line 2220
    :goto_2
    iget-object v7, v4, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v8, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v8, v4, v6, v5, v2}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v8, v7, v9

    .line 2222
    const-string v2, "1"

    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/android/music/common/data/MusicDB;->getMusicListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2223
    if-eqz v1, :cond_1

    .line 2224
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2225
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne v2, v10, :cond_3

    .line 2226
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2228
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2182
    :sswitch_1
    const-string v5, "_id"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    goto :goto_1

    .line 2189
    :sswitch_2
    const-string v2, "genre_name"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v5, v9

    .line 2191
    goto :goto_1

    .line 2194
    :sswitch_3
    const-string v2, "composer"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v5, v9

    .line 2195
    goto :goto_1

    .line 2201
    :sswitch_4
    const-string v2, "year_name"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v5, v9

    .line 2203
    goto :goto_1

    :cond_4
    move v6, v10

    goto :goto_2

    .line 2172
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

.method public getAlbumInfo(Landroid/net/Uri;)Lcom/android/music/player/data/MusicAlbumInfo;
    .locals 12
    .parameter "audioUri"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 1831
    new-instance v6, Lcom/android/music/player/data/MusicAlbumInfo;

    invoke-direct {v6}, Lcom/android/music/player/data/MusicAlbumInfo;-><init>()V

    .line 1833
    .local v6, albumInfo:Lcom/android/music/player/data/MusicAlbumInfo;
    const/4 v7, 0x0

    .line 1834
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "title"

    aput-object v0, v2, v8

    const-string v0, "album"

    aput-object v0, v2, v9

    const-string v0, "artist"

    aput-object v0, v2, v10

    const-string v0, "album_id"

    aput-object v0, v2, v11

    const/4 v0, 0x4

    const-string v1, "duration"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "mime_type"

    aput-object v1, v2, v0

    .local v2, cols:[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 1842
    invoke-direct/range {v0 .. v5}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1844
    if-eqz v7, :cond_2

    .line 1845
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1846
    const-string v0, "title"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/music/player/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    .line 1847
    const-string v0, "album"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/music/player/data/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    .line 1848
    const-string v0, "artist"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/music/player/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    .line 1849
    const-string v0, "album_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/android/music/player/data/MusicAlbumInfo;->mAlbumID:I

    .line 1850
    const-string v0, "duration"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/android/music/player/data/MusicAlbumInfo;->mDuration:J

    .line 1851
    const-string v0, "mime_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/music/player/data/MusicAlbumInfo;->mMimeType:Ljava/lang/String;

    .line 1852
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/music/player/data/MusicAlbumInfo;->mFilePath:Ljava/lang/String;

    .line 1853
    iget-object v0, v6, Lcom/android/music/player/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1854
    iget-object v0, v6, Lcom/android/music/player/data/MusicAlbumInfo;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/music/common/util/ListUtil;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/music/player/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    .line 1859
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1863
    :goto_1
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v1, "MusicAlbumInfo : getAlbumID : audioUri[%s],return Title[%s], AlbumID[%d]"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    iget-object v4, v6, Lcom/android/music/player/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    aput-object v4, v3, v9

    iget v4, v6, Lcom/android/music/player/data/MusicAlbumInfo;->mAlbumID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    return-object v6

    .line 1857
    :cond_1
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v1, "getAlbumInfo: cursor.moveToFirst() FAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1861
    :cond_2
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v1, "getAlbumInfo: cursor==null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "com.android.music"

    const-string v0, "activity"

    const-string v0, "_data"

    .line 3699
    .line 3701
    if-nez p1, :cond_0

    move-object v0, v6

    .line 3744
    :goto_0
    return-object v0

    .line 3703
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3704
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3705
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3706
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3709
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v6

    .line 3710
    goto :goto_0

    .line 3715
    :cond_2
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 3717
    if-eqz v0, :cond_6

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v7, :cond_6

    .line 3718
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3719
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 3740
    :goto_1
    if-eqz v0, :cond_5

    .line 3741
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    goto :goto_0

    .line 3722
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 3725
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3726
    const-string v1, "com.android.music"

    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3740
    if-eqz v0, :cond_4

    .line 3741
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_0

    .line 3728
    :catch_1
    move-exception v0

    move-object v0, v6

    .line 3735
    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3736
    iget-object v1, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3737
    const-string v1, "com.android.music"

    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3740
    if-eqz v0, :cond_4

    .line 3741
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto/16 :goto_0

    .line 3740
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_4
    if-eqz v1, :cond_3

    .line 3741
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 3740
    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4

    .line 3728
    :catch_2
    move-exception v1

    goto :goto_3

    .line 3722
    :catch_3
    move-exception v1

    goto :goto_2

    :cond_4
    move-object v0, v6

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    move-object v1, v6

    goto :goto_1
.end method

.method public getAudioFilePath(Lcom/android/music/common/data/MpListFilter;I)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v5, 0xd

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 3655
    .line 3657
    iget v0, p1, Lcom/android/music/common/data/MpListFilter;->listType:I

    .line 3659
    new-array v2, v3, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v2, v6

    .line 3662
    if-ne v0, v5, :cond_1

    .line 3664
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->FEATURE_MUSIC_PLAYLIST()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3666
    iget-object v0, p1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-static {v5, v0}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v0

    .line 3667
    const-string v1, "music_audio_playlists_map._id = %d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move-object v1, v0

    :goto_0
    move-object v0, p0

    move-object v5, v4

    .line 3684
    invoke-direct/range {v0 .. v5}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3685
    if-eqz v0, :cond_4

    .line 3687
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3689
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3691
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 3694
    :goto_2
    return-object v0

    .line 3671
    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3672
    const-string v1, "audio._id = ( SELECT audio_id FROM audio_playlists_map WHERE _id = %d)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move-object v1, v0

    goto :goto_0

    .line 3675
    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    :cond_2
    move-object v3, v4

    move-object v1, v4

    goto :goto_0

    :cond_3
    move-object v1, v4

    goto :goto_1

    :cond_4
    move-object v0, v4

    goto :goto_2
.end method

.method public getAudioID(Lcom/android/music/common/data/MpListFilter;I)I
    .locals 10
    .parameter "listFilter"
    .parameter "_id"

    .prologue
    .line 1875
    iget v8, p1, Lcom/android/music/common/data/MpListFilter;->listType:I

    .line 1877
    .local v8, listType:I
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v1, "getAudioID - listType[%s], _id[%d]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8}, Lcom/android/music/common/util/ListType;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    const/4 v0, 0x2

    if-lt v8, v0, :cond_0

    const/16 v0, 0x8

    if-gt v8, v0, :cond_0

    .line 1883
    const-string v0, "getAudioID - invaild listType[%s] : listType should be tracklist"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v8}, Lcom/android/music/common/util/ListType;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1884
    .local v9, msg:Ljava/lang/String;
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1889
    .end local v9           #msg:Ljava/lang/String;
    :cond_0
    const/4 v6, -0x1

    .line 1891
    .local v6, audioID:I
    const/4 v2, 0x0

    .line 1892
    .local v2, columns:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1893
    .local v1, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 1895
    .local v3, selection:Ljava/lang/String;
    const/16 v0, 0xd

    if-ne v8, v0, :cond_2

    .line 1897
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->FEATURE_MUSIC_PLAYLIST()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1899
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    .end local v1           #uri:Landroid/net/Uri;
    move-result-object v1

    .line 1900
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

    .line 1901
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    .line 1923
    .restart local v2       #columns:[Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    .line 1925
    .local v7, c:Landroid/database/Cursor;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1927
    if-nez v7, :cond_4

    .line 1929
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

    move-result-object v9

    .line 1930
    .restart local v9       #msg:Ljava/lang/String;
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1905
    .end local v7           #c:Landroid/database/Cursor;
    .end local v9           #msg:Ljava/lang/String;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v2       #columns:[Ljava/lang/String;
    :cond_1
    iget-object v0, p1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .end local v1           #uri:Landroid/net/Uri;
    iget v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-static {v8, v0}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 1906
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

    .line 1907
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "audio_id"

    aput-object v4, v2, v0

    .restart local v2       #columns:[Ljava/lang/String;
    goto :goto_0

    .line 1910
    :cond_2
    const/16 v0, 0x9

    if-ne v8, v0, :cond_3

    .line 1912
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 1913
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

    .line 1914
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "audio_id"

    aput-object v4, v2, v0

    .restart local v2       #columns:[Ljava/lang/String;
    goto :goto_0

    .line 1918
    :cond_3
    move v6, p2

    .line 1919
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v4, "getAudioID returns audioID[%d]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .end local v8           #listType:I
    aput-object v8, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 1952
    :goto_1
    return v0

    .line 1935
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v8       #listType:I
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 1937
    const-string v0, "getAudioID - uri[%s], selection[%s] return cursor.getCount() == 0"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v8           #listType:I
    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1938
    .restart local v9       #msg:Ljava/lang/String;
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1941
    const/4 v0, -0x1

    goto :goto_1

    .line 1944
    .end local v9           #msg:Ljava/lang/String;
    .restart local v8       #listType:I
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1946
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1948
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1950
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v4, "getAudioID returns audioID[%d]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v7           #c:Landroid/database/Cursor;
    move-result-object v8

    .end local v8           #listType:I
    aput-object v8, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 1952
    goto :goto_1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/android/music/common/data/MusicDB;->mInstance:Lcom/android/music/common/data/MusicDB;

    iget-object v0, v0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultCreatePlaylistName()Ljava/lang/String;
    .locals 14

    .prologue
    const/16 v13, 0x64

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 3597
    .line 3599
    invoke-direct {p0, v12, v10, v10, v10}, Lcom/android/music/common/data/MusicDB;->getMusicMainListCursor(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3600
    if-nez v0, :cond_0

    .line 3602
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v1, "getDefaultCreatePlaylistName: cursor is null -> return null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    .line 3649
    :goto_0
    return-object v0

    .line 3606
    :cond_0
    iget-object v1, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const v2, 0x7f0a007d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3607
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 3610
    const/16 v3, 0x65

    new-array v3, v3, [I

    .line 3612
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move v4, v9

    .line 3613
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 3615
    const-string v5, "name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3616
    invoke-virtual {v1, v9, v5, v9, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3620
    :try_start_0
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3622
    if-lez v5, :cond_1

    if-gt v5, v13, :cond_1

    .line 3624
    sub-int/2addr v5, v11

    const/4 v6, 0x1

    aput v6, v3, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3632
    :cond_1
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 3613
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3627
    :catch_0
    move-exception v5

    .line 3629
    sget-object v6, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDefaultCreatePlaylistName: NumberFormatException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3635
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 3638
    :goto_3
    add-int/lit8 v2, v0, 0x1

    aget v0, v3, v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    .line 3643
    :cond_3
    if-le v2, v13, :cond_4

    move-object v0, v10

    .line 3644
    goto :goto_0

    .line 3647
    :cond_4
    const-string v0, "%s %03d"

    new-array v3, v12, [Ljava/lang/Object;

    aput-object v1, v3, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v11

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getFileDetails(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v8, "com.android.music"

    const-string v7, "activity"

    .line 4403
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/music/common/data/MusicDB;->getUriType(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/music/common/data/MusicDB$FileLocationInfo;

    move-result-object v2

    .line 4406
    :try_start_0
    iget v0, v2, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4407
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4449
    :goto_0
    return-object v0

    .line 4409
    :cond_0
    iget v0, v2, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->type:I

    if-ne v0, v4, :cond_1

    .line 4410
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 4412
    :cond_1
    iget v0, v2, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->type:I

    if-nez v0, :cond_5

    .line 4413
    iget-object v0, v2, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->path:Ljava/lang/String;

    if-nez v0, :cond_2

    move-object v0, v6

    .line 4414
    goto :goto_0

    .line 4416
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4417
    const-string v0, "_data = ?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4419
    iget v0, v2, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->isInternal:I

    if-nez v0, :cond_3

    .line 4420
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v1, v0

    .line 4426
    :goto_1
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v2, v2, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->path:Ljava/lang/String;

    aput-object v2, v4, v5

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 4421
    :cond_3
    iget v0, v2, Lcom/android/music/common/data/MusicDB$FileLocationInfo;->isInternal:I

    if-ne v0, v4, :cond_4

    .line 4422
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v0

    goto :goto_1

    :cond_4
    move-object v0, v6

    .line 4424
    goto :goto_0

    .line 4429
    :catch_0
    move-exception v0

    .line 4430
    sget-object v1, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteFullException getFileDetails"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4431
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 4434
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 4435
    const-string v0, "com.android.music"

    invoke-virtual {p0, v8}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    move-object v0, v6

    .line 4448
    goto/16 :goto_0

    .line 4437
    :catch_1
    move-exception v0

    .line 4444
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 4445
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 4446
    const-string v0, "com.android.music"

    invoke-virtual {p0, v8}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    :cond_5
    move-object v0, v6

    goto/16 :goto_0
.end method

.method public getFileId(Ljava/lang/String;)J
    .locals 10
    .parameter

    .prologue
    const/4 v8, 0x0

    const-string v0, "com.android.music"

    const-string v0, "activity"

    .line 4187
    const-wide/16 v6, -0x1

    .line 4188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4189
    const-string v0, "_data = ?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4193
    :try_start_0
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 4196
    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 4197
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4198
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v1

    .line 4220
    :goto_0
    if-eqz v0, :cond_2

    .line 4221
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-wide v0, v1

    .line 4224
    :goto_1
    return-wide v0

    .line 4200
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 4201
    :goto_2
    :try_start_2
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteFullException getFileId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4202
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 4205
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 4206
    const-string v0, "com.android.music"

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4220
    if-eqz v1, :cond_1

    .line 4221
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-wide v0, v6

    goto :goto_1

    .line 4208
    :catch_1
    move-exception v0

    move-object v0, v8

    .line 4215
    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 4216
    iget-object v1, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 4217
    const-string v1, "com.android.music"

    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4220
    if-eqz v0, :cond_1

    .line 4221
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-wide v0, v6

    goto :goto_1

    .line 4220
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_4
    if-eqz v1, :cond_0

    .line 4221
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 4220
    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 4208
    :catch_2
    move-exception v1

    goto :goto_3

    .line 4200
    :catch_3
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_2

    :cond_1
    move-wide v0, v6

    goto :goto_1

    :cond_2
    move-wide v0, v1

    goto :goto_1

    :cond_3
    move-wide v1, v6

    goto :goto_0
.end method

.method public getItemContentUri(Lcom/android/music/common/data/MpListFilter;I)Landroid/net/Uri;
    .locals 11
    .parameter "listFilter"
    .parameter "index"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1524
    const/4 v4, 0x0

    .line 1526
    .local v4, mediaUri:Landroid/net/Uri;
    iget v3, p1, Lcom/android/music/common/data/MpListFilter;->listType:I

    .line 1528
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

    .line 1538
    new-array v1, v10, [Ljava/lang/String;

    .line 1539
    .local v1, cols:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/music/common/util/ListType;->getAudioIdColumn(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v9

    .line 1541
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

    .line 1542
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 1543
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 1544
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1545
    aget-object v5, v1, v9

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1546
    .local v0, _id:I
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, v0

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1548
    .end local v0           #_id:I
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1551
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

    .line 1556
    const/4 v6, 0x0

    .line 1558
    .local v6, iCount:I
    const/4 v3, 0x0

    .line 1559
    .local v3, selection:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1560
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1562
    .local v2, cols:[Ljava/lang/String;
    const/16 v0, 0x1c

    const/4 v5, -0x1

    invoke-static {v0, v5}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 1564
    .local v1, uri:Landroid/net/Uri;
    if-nez p1, :cond_1

    .line 1565
    if-nez p2, :cond_0

    move v7, v6

    .line 1592
    .end local v6           #iCount:I
    .local v7, iCount:I
    :goto_0
    return v7

    .line 1567
    .end local v7           #iCount:I
    .restart local v6       #iCount:I
    :cond_0
    invoke-static {p2}, Lcom/android/music/common/util/ListUtil;->getBucketIDfromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1572
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

    .line 1573
    new-array v2, v11, [Ljava/lang/String;

    .end local v2           #cols:[Ljava/lang/String;
    const-string v0, "count(_id)"

    aput-object v0, v2, v10

    .line 1574
    .restart local v2       #cols:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 1576
    .local v8, tmpC:Landroid/database/Cursor;
    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1578
    if-nez v8, :cond_2

    .line 1580
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v5, "getItemCountInMxList : tmpC is null"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
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

    .line 1592
    .end local v6           #iCount:I
    .restart local v7       #iCount:I
    goto :goto_0

    .line 1584
    .end local v7           #iCount:I
    .restart local v6       #iCount:I
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1585
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1586
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public getItemCountInPlaylist(I)I
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 2898
    .line 2900
    const/16 v0, 0xd

    invoke-static {v0, p1}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 2903
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count( \'_id\' )"

    aput-object v0, v2, v6

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2904
    if-eqz v0, :cond_1

    .line 2906
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2908
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2910
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 2913
    :goto_1
    return v0

    :cond_0
    move v1, v6

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1
.end method

.method public getItemFilePathMxList(ILjava/lang/String;I)Ljava/lang/String;
    .locals 9
    .parameter "sort_order"
    .parameter "bucketID"
    .parameter "index"

    .prologue
    .line 1713
    const/4 v7, 0x0

    .line 1715
    .local v7, filePath:Ljava/lang/String;
    const/16 v0, 0x1c

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 1716
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    .line 1717
    .local v2, cols:[Ljava/lang/String;
    const-string v3, "bucket_id = ?"

    .line 1718
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 1719
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-static {p1}, Lcom/android/music/common/util/ListType;->getOrderByMyFiles(I)Ljava/lang/String;

    move-result-object v5

    .line 1721
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

    .line 1722
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

    .line 1723
    .restart local v1       #uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .local v6, c:Landroid/database/Cursor;
    move-object v0, p0

    .line 1725
    invoke-direct/range {v0 .. v5}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1727
    if-nez v6, :cond_0

    .line 1728
    new-instance v0, Ljava/lang/Error;

    const-string v1, "MusicDB:getItemFilePathMxList return null cursor"

    .end local v1           #uri:Landroid/net/Uri;
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1730
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1732
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1733
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1735
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1737
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

    .line 1739
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v1, "                       return filePath[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    return-object v7
.end method

.method public getItemPosition(Lcom/android/music/common/data/MpListFilter;Landroid/net/Uri;I)I
    .locals 36
    .parameter "listFilter"
    .parameter "mediaUri"
    .parameter "_id"

    .prologue
    .line 782
    const/16 v23, -0x1

    .line 783
    .local v23, iPos:I
    const/16 v29, 0x0

    .line 784
    .local v29, selection:Ljava/lang/String;
    const/16 v30, 0x0

    .line 785
    .local v30, selectionArgs:[Ljava/lang/String;
    const-wide/16 v13, -0x1

    .line 786
    .local v13, audio_id:J
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/music/common/data/MpListFilter;->listType:I

    move/from16 v25, v0

    .line 788
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

    .line 790
    const/16 v22, 0x0

    .line 791
    .local v22, iFilter_ID:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v2, v0

    if-eqz v2, :cond_0

    .line 792
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object v0, v2

    iget v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    move/from16 v22, v0

    .line 794
    :cond_0
    move/from16 v0, v25

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v35

    .line 795
    .local v35, uri:Landroid/net/Uri;
    invoke-static/range {v25 .. v25}, Lcom/android/music/common/util/ListType;->getOrderByKeyword(I)Ljava/lang/String;

    move-result-object v28

    .line 796
    .local v28, orderByKeyword:Ljava/lang/String;
    const/16 v27, 0x0

    .line 797
    .local v27, orderBy:Ljava/lang/String;
    const/4 v2, 0x1

    move v0, v2

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v2, 0x0

    const-string v3, "count(_id)"

    aput-object v3, v17, v2

    .line 798
    .local v17, cols:[Ljava/lang/String;
    const/16 v18, 0x0

    .line 800
    .local v18, cursor:Landroid/database/Cursor;
    const-string v11, "COLLATE LOCALIZED"

    .line 806
    .local v11, COLLATE:Ljava/lang/String;
    if-nez p2, :cond_2

    const-wide/16 v2, 0x0

    move-wide v13, v2

    .line 814
    :goto_1
    packed-switch v25, :pswitch_data_0

    .line 1453
    :pswitch_0
    const/4 v2, -0x1

    move-object/from16 v7, v17

    .end local v17           #cols:[Ljava/lang/String;
    .local v7, cols:[Ljava/lang/String;
    move-object/from16 v9, v30

    .end local v30           #selectionArgs:[Ljava/lang/String;
    .local v9, selectionArgs:[Ljava/lang/String;
    move-object/from16 v8, v29

    .line 1476
    .end local v29           #selection:Ljava/lang/String;
    .local v8, selection:Ljava/lang/String;
    :goto_2
    return v2

    .line 788
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

    .line 806
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

    .line 821
    :pswitch_1
    const/16 v31, 0x0

    .line 824
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

    .line 825
    if-nez v31, :cond_3

    .line 827
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v3, "query return null cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
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

    .line 831
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :cond_3
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    .line 833
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_4

    .line 834
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v3, "tempCursor.getCount()<=0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 836
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

    .line 839
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, v31

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 840
    .local v32, tempKey:Ljava/lang/String;
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 843
    const-string v2, "( %s < ? %s OR ( _id < %d AND %s = ? ) )"

    const/4 v3, 0x5

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

    const/4 v4, 0x4

    aput-object v11, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 847
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

    .line 849
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

    .line 1457
    invoke-direct/range {v5 .. v10}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1459
    if-eqz v18, :cond_6

    .line 1460
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_16

    .line 1462
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1463
    const/4 v2, 0x0

    move-object/from16 v0, v18

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 1468
    :goto_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v2, v0

    if-eqz v2, :cond_5

    .line 1469
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

    .line 1473
    :cond_5
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_6
    move/from16 v2, v23

    .line 1476
    goto/16 :goto_2

    .line 886
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

    .line 888
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

    .line 891
    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    goto/16 :goto_3

    .line 1011
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

    .line 1013
    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_3

    .line 1020
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

    .line 1021
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

    .line 1022
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

    .line 1023
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

    .line 1025
    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_3

    .line 1036
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :pswitch_5
    const/16 v33, 0x0

    .line 1038
    .local v33, tmpCursor:Landroid/database/Cursor;
    const/16 v2, 0xa

    invoke-static {v2}, Lcom/android/music/common/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v4

    .line 1039
    .local v4, tmpCols:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v33

    .line 1040
    if-nez v33, :cond_7

    .line 1042
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v3, "query return null cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
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

    .line 1046
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :cond_7
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1048
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_8

    .line 1049
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v3, "tmpCursor.getCount()<=0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 1051
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

    .line 1054
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :cond_8
    const-string v2, "most_played"

    move-object/from16 v0, v33

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 1057
    .local v26, nDbMostPlayed:I
    const/16 v20, 0x0

    .line 1058
    .local v20, dbTitleKey:Ljava/lang/String;
    const/16 v21, 0x0

    .line 1060
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

    .line 1062
    const-string v2, "title"

    move-object/from16 v0, v33

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1066
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 1069
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

    .line 1075
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

    .line 1077
    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v20, v9, v2

    const/4 v2, 0x1

    aput-object v20, v9, v2

    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v7, v17

    .line 1079
    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    goto/16 :goto_3

    .line 1089
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

    .line 1091
    .restart local v33       #tmpCursor:Landroid/database/Cursor;
    const/16 v2, 0xc

    invoke-static {v2}, Lcom/android/music/common/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v4

    .line 1092
    .restart local v4       #tmpCols:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v33

    .line 1093
    if-nez v33, :cond_9

    .line 1095
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v3, "query return null cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
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

    .line 1099
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :cond_9
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1101
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_a

    .line 1102
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v3, "tmpCursor.getCount()<=0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 1104
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

    .line 1107
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 1108
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

    .line 1109
    .restart local v21       #iAudioID:I
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 1111
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

    .line 1113
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

    .line 1115
    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_3

    .line 1122
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

    .line 1124
    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->FEATURE_MUSIC_PLAYLIST()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1125
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

    .line 1127
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :cond_b
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

    .line 1129
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
    :pswitch_8
    const/16 v33, 0x0

    .line 1141
    .restart local v33       #tmpCursor:Landroid/database/Cursor;
    const/16 v2, 0xe

    invoke-static {v2}, Lcom/android/music/common/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v4

    .line 1142
    .restart local v4       #tmpCols:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v33

    .line 1143
    if-nez v33, :cond_c

    .line 1145
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v3, "query return null cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
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

    .line 1149
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :cond_c
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1151
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_d

    .line 1152
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v3, "tmpCursor.getCount()<=0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 1154
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

    .line 1157
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :cond_d
    const-string v2, "track"

    move-object/from16 v0, v33

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 1158
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

    .line 1159
    .restart local v21       #iAudioID:I
    const/16 v20, 0x0

    .line 1161
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

    .line 1165
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 1167
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

    .line 1168
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

    .line 1171
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

    .line 1180
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

    .line 1182
    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v20, v9, v2

    const/4 v2, 0x1

    aput-object v20, v9, v2

    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v7, v17

    .line 1184
    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    goto/16 :goto_3

    .line 1190
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

    .line 1191
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

    .line 1193
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

    .line 1196
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

    .line 1198
    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_3

    .line 1212
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :pswitch_a
    const/16 v33, 0x0

    .line 1214
    .restart local v33       #tmpCursor:Landroid/database/Cursor;
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/android/music/common/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v4

    .line 1215
    .restart local v4       #tmpCols:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v33

    .line 1216
    if-nez v33, :cond_e

    .line 1218
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v3, "query return null cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
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

    .line 1222
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :cond_e
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1224
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_f

    .line 1225
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v3, "tmpCursor.getCount()<=0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 1227
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

    .line 1230
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :cond_f
    const-string v2, "track"

    move-object/from16 v0, v33

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 1231
    .local v34, trackNum:I
    const/4 v12, 0x0

    .line 1232
    .local v12, albumName:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1233
    .local v15, colAlbum:Ljava/lang/String;
    const/16 v16, 0x0

    .line 1234
    .local v16, colTitle:Ljava/lang/String;
    const/16 v20, 0x0

    .line 1237
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

    .line 1238
    const-string v15, "album"

    .line 1239
    const-string v16, "title"

    .line 1240
    const-string v2, "title"

    move-object/from16 v0, v33

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1249
    const-string v2, "_id"

    move-object/from16 v0, v33

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 1250
    .restart local v21       #iAudioID:I
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 1252
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

    .line 1253
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

    .line 1256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "( %s < ? %s OR (%s = ? %s AND %s < %d) OR (%s = ? %s AND %s = %d AND %s < ? %s) OR (%s = ? %s AND %s = %d AND %s = ? %s AND _id < %d))"

    const/16 v4, 0x13

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v15, v4, v5

    const/4 v5, 0x1

    aput-object v11, v4, v5

    const/4 v5, 0x2

    aput-object v15, v4, v5

    const/4 v5, 0x3

    aput-object v11, v4, v5

    const/4 v5, 0x4

    const-string v6, "track"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    aput-object v15, v4, v5

    const/4 v5, 0x7

    aput-object v11, v4, v5

    const/16 v5, 0x8

    const-string v6, "track"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    aput-object v16, v4, v5

    const/16 v5, 0xb

    aput-object v11, v4, v5

    const/16 v5, 0xc

    aput-object v15, v4, v5

    const/16 v5, 0xd

    aput-object v11, v4, v5

    const/16 v5, 0xe

    const-string v6, "track"

    aput-object v6, v4, v5

    const/16 v5, 0xf

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x10

    aput-object v16, v4, v5

    const/16 v5, 0x11

    aput-object v11, v4, v5

    const/16 v5, 0x12

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1269
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

    .line 1271
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

    .line 1277
    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    goto/16 :goto_3

    .line 1281
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

    .line 1282
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

    .line 1283
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

    .line 1284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1285
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

    .line 1286
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

    .line 1288
    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_3

    .line 1297
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :pswitch_c
    const/16 v31, 0x0

    .line 1299
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

    .line 1300
    if-nez v31, :cond_10

    .line 1302
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v3, "query return null cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
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

    .line 1306
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :cond_10
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1308
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_11

    .line 1309
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v3, "tmpCursor.getCount()<=0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 1311
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

    .line 1314
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :cond_11
    const/4 v2, 0x0

    move-object/from16 v0, v31

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 1315
    .restart local v32       #tempKey:Ljava/lang/String;
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 1319
    const-string v8, "genre_name = ?"

    .line 1320
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

    .line 1323
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

    .line 1326
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

    .line 1328
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

    .line 1330
    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    goto/16 :goto_3

    .line 1338
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

    .line 1340
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

    .line 1341
    if-nez v31, :cond_12

    .line 1343
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v3, "query return null cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
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

    .line 1347
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :cond_12
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1348
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_13

    .line 1349
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v3, "tmpCursor.getCount()<=0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 1351
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

    .line 1354
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, v31

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 1355
    .restart local v32       #tempKey:Ljava/lang/String;
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 1358
    const-string v8, "composer = ?"

    .line 1359
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

    .line 1361
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

    .line 1364
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

    .line 1366
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

    .line 1368
    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    goto/16 :goto_3

    .line 1373
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

    .line 1375
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

    .line 1376
    if-nez v31, :cond_14

    .line 1378
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v3, "query return null cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
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

    .line 1382
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :cond_14
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1383
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_15

    .line 1384
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v3, "tmpCursor.getCount()<=0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 1386
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

    .line 1389
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :cond_15
    const/4 v2, 0x0

    move-object/from16 v0, v31

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 1390
    .restart local v32       #tempKey:Ljava/lang/String;
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 1394
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

    .line 1395
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

    .line 1399
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

    .line 1402
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

    .line 1406
    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v32, v9, v2

    const/4 v2, 0x1

    aput-object v32, v9, v2

    .end local v30           #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v7, v17

    .line 1410
    .end local v17           #cols:[Ljava/lang/String;
    .restart local v7       #cols:[Ljava/lang/String;
    goto/16 :goto_3

    .line 1465
    .end local v31           #tempCursor:Landroid/database/Cursor;
    .end local v32           #tempKey:Ljava/lang/String;
    :cond_16
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v3, "MusicDB.getItemPostion: cursor.getCount()<=0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 808
    .end local v7           #cols:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cols:[Ljava/lang/String;
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #selectionArgs:[Ljava/lang/String;
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 814
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

.method public getItemPositionForDiscplus(Lcom/android/music/common/data/MpListFilter;Landroid/net/Uri;)I
    .locals 11
    .parameter "listFilter"
    .parameter "mediaUri"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 1481
    const/4 v1, -0x1

    .line 1483
    .local v1, iFocusIndex:I
    iget v2, p1, Lcom/android/music/common/data/MpListFilter;->listType:I

    .line 1485
    .local v2, listType:I
    invoke-static {v2}, Lcom/android/music/common/util/ListType;->getMainListType(I)I

    move-result v2

    .line 1486
    new-instance v3, Lcom/android/music/common/data/MpListFilter;

    iget v4, p1, Lcom/android/music/common/data/MpListFilter;->filterCount:I

    invoke-direct {v3, v2, v4}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 1488
    .local v3, mainListFilter:Lcom/android/music/common/data/MpListFilter;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v4, p1, Lcom/android/music/common/data/MpListFilter;->filterCount:I

    if-ge v0, v4, :cond_0

    .line 1489
    iget-object v4, v3, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v5, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, p1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    aget-object v6, v6, v0

    iget-boolean v6, v6, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->bIsID:Z

    iget-object v7, p1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    aget-object v7, v7, v0

    iget v7, v7, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    iget-object v8, p1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    aget-object v8, v8, v0

    iget-object v8, v8, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->strFilterData:Ljava/lang/String;

    invoke-direct {v5, v3, v6, v7, v8}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v5, v4, v0

    .line 1488
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1495
    :cond_0
    packed-switch v2, :pswitch_data_0

    .line 1516
    :goto_1
    return v1

    .line 1498
    :pswitch_0
    invoke-virtual {p0, v3, p2, v9}, Lcom/android/music/common/data/MusicDB;->getItemPosition(Lcom/android/music/common/data/MpListFilter;Landroid/net/Uri;I)I

    move-result v1

    .line 1499
    goto :goto_1

    .line 1502
    :pswitch_1
    iget-object v4, v3, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-virtual {p0, v3, v10, v4}, Lcom/android/music/common/data/MusicDB;->getItemPosition(Lcom/android/music/common/data/MpListFilter;Landroid/net/Uri;I)I

    move-result v1

    .line 1503
    goto :goto_1

    .line 1512
    :pswitch_2
    invoke-virtual {p0, v3, v10, v9}, Lcom/android/music/common/data/MusicDB;->getItemPosition(Lcom/android/music/common/data/MpListFilter;Landroid/net/Uri;I)I

    move-result v1

    goto :goto_1

    .line 1495
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getListTitleInfo(Lcom/android/music/common/data/MpListFilter;)[Ljava/lang/String;
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v5, "_id = "

    .line 3977
    .line 3979
    iget v0, p1, Lcom/android/music/common/data/MpListFilter;->listType:I

    .line 3981
    if-eq v0, v10, :cond_0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    const/16 v1, 0x16

    if-gt v0, v1, :cond_1

    .line 3990
    :cond_0
    sparse-switch v0, :sswitch_data_0

    move-object v6, v4

    .line 4011
    :goto_0
    if-eqz v6, :cond_2

    move-object v0, v6

    .line 4097
    :goto_1
    return-object v0

    .line 3985
    :cond_1
    sget-object v1, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v2, "getListTitleInfo : listType[%d] is invaild."

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 3986
    goto :goto_1

    .line 3998
    :sswitch_0
    new-array v1, v10, [Ljava/lang/String;

    .line 3999
    iget-object v2, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/music/common/util/ListType;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    move-object v6, v1

    .line 4000
    goto :goto_0

    .line 4006
    :sswitch_1
    new-array v1, v10, [Ljava/lang/String;

    .line 4007
    iget-object v2, p1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->strFilterData:Ljava/lang/String;

    aput-object v2, v1, v9

    move-object v6, v1

    goto :goto_0

    .line 4015
    :cond_2
    iget-object v1, p1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    aget-object v1, v1, v9

    iget v7, v1, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    .line 4016
    invoke-static {v0}, Lcom/android/music/common/util/ListType;->getMainListType(I)I

    move-result v8

    .line 4020
    invoke-static {v8, v9}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 4021
    invoke-static {v8}, Lcom/android/music/common/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v2

    .line 4024
    packed-switch v8, :pswitch_data_0

    move-object v3, v4

    :goto_2
    move-object v0, p0

    move-object v5, v4

    .line 4043
    invoke-direct/range {v0 .. v5}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4044
    if-nez v0, :cond_3

    .line 4046
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v1, "getListTitleInfo return null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 4047
    goto :goto_1

    .line 4027
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 4028
    goto :goto_2

    .line 4031
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 4032
    goto :goto_2

    .line 4035
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_2

    .line 4049
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 4051
    sget-object v1, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v2, "getListTitleInfo return cursor.getCount == 0 "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4052
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v4

    .line 4053
    goto/16 :goto_1

    .line 4056
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4058
    packed-switch v8, :pswitch_data_1

    move-object v1, v6

    .line 4095
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 4097
    goto/16 :goto_1

    .line 4064
    :pswitch_3
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 4065
    const-string v2, "album"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    .line 4066
    const-string v2, "artist"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    .line 4067
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    goto :goto_3

    .line 4072
    :pswitch_4
    new-array v1, v10, [Ljava/lang/String;

    .line 4073
    const-string v2, "artist"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    goto :goto_3

    .line 4080
    :pswitch_5
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 4081
    const-string v2, "name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    .line 4082
    const-string v2, ""

    aput-object v2, v1, v10

    .line 4083
    const-string v2, "thumbnail_uri"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    goto :goto_3

    .line 3990
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
    .end sparse-switch

    .line 4024
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 4058
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getMergedCursor(Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 1
    .parameter "oriCursor"
    .parameter "listType"

    .prologue
    .line 653
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/music/common/data/MusicDB;->getMergedCursor(Landroid/database/Cursor;ILjava/util/ArrayList;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getMergedCursor(Landroid/database/Cursor;ILjava/util/ArrayList;)Landroid/database/Cursor;
    .locals 18
    .parameter "oriCursor"
    .parameter "listType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 657
    .local p3, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v8, p1

    .line 659
    .local v8, mergedCursor:Landroid/database/Cursor;
    invoke-static/range {p2 .. p2}, Lcom/android/music/common/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v4

    .line 661
    .local v4, cols:[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 663
    .local v2, autoplaylists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    sparse-switch p2, :sswitch_data_0

    .line 722
    .end local p3           #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    :sswitch_0
    const/4 v14, 0x2

    move/from16 v0, p2

    move v1, v14

    if-ne v0, v1, :cond_5

    .line 724
    new-instance v3, Lcom/android/music/list/data/ArrayListCursor;

    invoke-direct {v3, v4, v2}, Lcom/android/music/list/data/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 725
    .local v3, autoplaylistscursor:Lcom/android/music/list/data/ArrayListCursor;
    new-instance v8, Landroid/database/MergeCursor;

    .end local v8           #mergedCursor:Landroid/database/Cursor;
    const/4 v14, 0x2

    new-array v14, v14, [Landroid/database/Cursor;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    const/4 v15, 0x1

    aput-object p1, v14, v15

    invoke-direct {v8, v14}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 734
    .end local v3           #autoplaylistscursor:Lcom/android/music/list/data/ArrayListCursor;
    .restart local v8       #mergedCursor:Landroid/database/Cursor;
    :goto_0
    return-object v8

    .line 668
    .restart local p3       #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_1
    invoke-static/range {p2 .. p2}, Lcom/android/music/common/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v4

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/music/common/util/MusicValueSaveController;->getPlaylistMenu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 673
    .local v11, setting:Ljava/lang/String;
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v14, "|"

    invoke-direct {v12, v11, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    .local v12, strToken:Ljava/util/StringTokenizer;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 677
    .local v9, musicMenuIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_1
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 678
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 679
    .local v13, token:Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 682
    .end local v13           #token:Ljava/lang/String;
    :cond_1
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 684
    if-eqz p3, :cond_2

    .line 685
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->clear()V

    .line 686
    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 689
    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 690
    .local v10, nMusicMenuIDCount:I
    const/16 v6, 0x9

    .line 692
    .local v6, iListID:I
    const/4 v5, -0x1

    .end local p3           #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v5, i:I
    :goto_2
    if-ge v5, v10, :cond_0

    .line 694
    const/4 v14, -0x1

    if-eq v5, v14, :cond_3

    .line 695
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 697
    :cond_3
    const/16 v14, 0x9

    if-lt v6, v14, :cond_4

    const/16 v14, 0xc

    if-gt v6, v14, :cond_4

    .line 700
    new-instance v7, Ljava/util/ArrayList;

    const/4 v14, 0x5

    invoke-direct {v7, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 701
    .local v7, listObj:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-static {v14, v6}, Lcom/android/music/common/util/ListType;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    const-string v14, "%s%d"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "Music_Default_Playlist"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    const-string v14, ""

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    const-string v14, "@"

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    .end local v7           #listObj:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 731
    .end local v5           #i:I
    .end local v6           #iListID:I
    .end local v9           #musicMenuIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10           #nMusicMenuIDCount:I
    .end local v11           #setting:Ljava/lang/String;
    .end local v12           #strToken:Ljava/util/StringTokenizer;
    :cond_5
    move-object/from16 v8, p1

    goto/16 :goto_0

    .line 663
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public getMusicListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "listType"
    .parameter "mpListFilter"
    .parameter "columns"
    .parameter "limits"

    .prologue
    .line 181
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
    .line 187
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

    .line 189
    .local v7, log:Ljava/lang/String;
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v6, 0x0

    .line 194
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 195
    .local v3, cols:[Ljava/lang/String;
    if-nez p3, :cond_0

    .line 196
    invoke-static {p1}, Lcom/android/music/common/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v3

    .line 200
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 236
    :pswitch_0
    const/4 v6, 0x0

    .line 257
    :goto_1
    return-object v6

    .line 198
    :cond_0
    move-object v3, p3

    goto :goto_0

    .line 216
    :pswitch_1
    invoke-direct {p0, p1, v3, p4, p5}, Lcom/android/music/common/data/MusicDB;->getMusicMainListCursor(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 217
    goto :goto_1

    :pswitch_2
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 231
    invoke-direct/range {v0 .. v5}, Lcom/android/music/common/data/MusicDB;->getMusicSubListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 232
    goto :goto_1

    .line 200
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
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2918
    .line 2926
    const/4 v0, 0x2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "count(\'_id\')"

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1, v4, v4}, Lcom/android/music/common/data/MusicDB;->getMusicMainListCursor(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2929
    if-eqz v0, :cond_1

    .line 2930
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2931
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2932
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 2946
    :goto_1
    return v0

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method public getPlaylistTracklistFilterByPlaylistName(Ljava/lang/String;)Lcom/android/music/common/data/MpListFilter;
    .locals 10
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v1, 0x1

    const-string v9, "activity"

    .line 3917
    new-instance v6, Lcom/android/music/common/data/MpListFilter;

    const/16 v0, 0xd

    invoke-direct {v6, v0, v1}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 3919
    if-nez p1, :cond_0

    move-object v0, v8

    .line 3972
    :goto_0
    return-object v0

    .line 3926
    :cond_0
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

    move-result-object v0

    .line 3932
    if-eqz v0, :cond_3

    .line 3934
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 3936
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3937
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 3940
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 3943
    :goto_2
    if-ne v0, v7, :cond_1

    .line 3945
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

    move-object v0, v8

    .line 3946
    goto :goto_0

    .line 3949
    :cond_1
    iget-object v1, v6, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x1

    invoke-direct {v3, v6, v4, v0, p1}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v3, v1, v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    move-object v0, v6

    .line 3972
    goto :goto_0

    .line 3951
    :catch_0
    move-exception v0

    .line 3952
    sget-object v1, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteFullException getPlaylistTracklistFilterByPlaylistName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3953
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3956
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3957
    const-string v0, "com.android.music"

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_3

    .line 3959
    :catch_1
    move-exception v0

    .line 3966
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3967
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3968
    const-string v0, "com.android.music"

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    move v1, v7

    goto :goto_1

    :cond_3
    move v0, v7

    goto :goto_2
.end method

.method public getQuickListMaxID()I
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 2546
    .line 2548
    const/16 v0, 0x9

    invoke-static {v0, v6}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 2549
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, " max(_id)"

    aput-object v0, v2, v6

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 2552
    invoke-direct/range {v0 .. v5}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2560
    if-eqz v0, :cond_1

    .line 2562
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2564
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2566
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2568
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 2572
    :goto_1
    return v0

    :cond_0
    move v1, v6

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1
.end method

.method public getUserListMaxPlayOrder(I)I
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 2237
    .line 2239
    const/16 v0, 0xd

    invoke-static {v0, p1}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 2240
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, " max(play_order)"

    aput-object v0, v2, v6

    .line 2241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playlist_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    .line 2245
    invoke-direct/range {v0 .. v5}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2254
    if-eqz v0, :cond_1

    .line 2256
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2258
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2259
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2261
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 2265
    :goto_1
    return v0

    :cond_0
    move v1, v6

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1
.end method

.method public get_ID(Lcom/android/music/common/data/MpListFilter;II)I
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1962
    iget v0, p1, Lcom/android/music/common/data/MpListFilter;->listType:I

    .line 1964
    sget-object v1, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v2, "get_ID - listType[%s], audioID[%d]"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/music/common/util/ListType;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    if-lt v0, v9, :cond_0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 1970
    const-string v1, "get_ID - invaild listType[%s] : listType should be tracklist"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/music/common/util/ListType;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1971
    sget-object v1, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1978
    :cond_0
    invoke-static {v0}, Lcom/android/music/common/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v2

    .line 1984
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 1986
    if-ne p3, v10, :cond_2

    .line 1988
    iget-object v1, p1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    aget-object v1, v1, v7

    iget v1, v1, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-static {v0, v1}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v0

    .line 1989
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->FEATURE_MUSIC_PLAYLIST()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1990
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "music_audio_playlists_map.audio_data_hashcode = ( SELECT _data_hashcode FROM audio_meta WHERE _id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1994
    :goto_0
    const-string v3, "_id"

    move-object v5, v4

    move-object v6, v3

    move-object v3, v1

    move-object v1, v0

    :goto_1
    move-object v0, p0

    .line 2020
    invoke-direct/range {v0 .. v5}, Lcom/android/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2022
    if-nez v0, :cond_5

    .line 2024
    const-string v0, "get_ID - uri[%s], selection[%s] return null cursor"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    aput-object v3, v2, v8

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2025
    sget-object v1, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 2049
    :goto_2
    return v0

    .line 1992
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio_playlists_map.audio_id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1998
    :cond_2
    iget-object v1, p1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    aget-object v1, v1, v7

    iget v1, v1, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-static {v0, v1}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v0

    .line 1999
    const-string v1, "%s?limit=%d,1"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2001
    const-string v1, "_id"

    .line 2002
    const/16 v3, 0xd

    invoke-static {v3}, Lcom/android/music/common/util/ListType;->getOrderBy(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move-object v6, v1

    move-object v3, v4

    move-object v1, v0

    goto :goto_1

    .line 2005
    :cond_3
    const/16 v1, 0x9

    if-ne v0, v1, :cond_4

    .line 2007
    invoke-static {v0, v7}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v0

    .line 2008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio_id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2009
    const-string v3, "_id"

    move-object v5, v4

    move-object v6, v3

    move-object v3, v1

    move-object v1, v0

    goto/16 :goto_1

    .line 2014
    :cond_4
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v1, "getAudioID returns _id[%d]"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p2

    .line 2015
    goto :goto_2

    .line 2031
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_6

    .line 2033
    const-string v2, "get_ID - uri[%s],selection[%s]  return cursor.getCount() == 0"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    aput-object v3, v4, v8

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2034
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 2038
    goto/16 :goto_2

    .line 2042
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2043
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2045
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2047
    sget-object v0, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v2, "get_ID returns _id[%d]"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2049
    goto/16 :goto_2
.end method

.method public isExistQuickList(I)Z
    .locals 8
    .parameter "audioID"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x9

    .line 2524
    const/4 v7, 0x0

    .line 2526
    .local v7, isExist:Z
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 2527
    .local v1, uri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/music/common/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v2

    .line 2529
    .local v2, cols:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 2531
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

    .line 2532
    if-eqz v6, :cond_1

    .line 2534
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2536
    const/4 v7, 0x1

    .line 2538
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2541
    :cond_1
    return v7
.end method

.method public isExistUserList(Ljava/lang/String;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3293
    .line 3297
    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 3298
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v6

    const-string v3, "name= ?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v6

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3304
    if-eqz v0, :cond_1

    .line 3306
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v7

    .line 3309
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 3312
    :goto_1
    return v0

    :cond_0
    move v1, v6

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1
.end method

.method public removeItem(Lcom/android/music/common/data/MpListFilter;I)Z
    .locals 5
    .parameter "listFilter"
    .parameter "iID"

    .prologue
    const/4 v4, 0x1

    .line 2951
    const/4 v0, 0x1

    .line 2952
    .local v0, bResult:Z
    new-array v1, v4, [I

    const/4 v3, 0x0

    aput p2, v1, v3

    .line 2953
    .local v1, iIDs:[I
    invoke-virtual {p0, p1, v4, v1}, Lcom/android/music/common/data/MusicDB;->removeItems(Lcom/android/music/common/data/MpListFilter;I[I)I

    move-result v2

    .line 2955
    .local v2, nResult:I
    if-ge v2, v4, :cond_0

    .line 2956
    const/4 v0, 0x0

    .line 2958
    :cond_0
    return v0
.end method

.method public removeItem(Lcom/android/music/common/data/MpListFilter;Lcom/android/music/common/data/MusicAddData;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2963
    .line 2965
    iget-object v0, p2, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2967
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2968
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2969
    const-string v0, "Delete"

    const-string v1, "Failed to delete file %s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p2, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    :cond_0
    new-array v0, v4, [Lcom/android/music/common/data/MusicAddData;

    aput-object p2, v0, v5

    .line 2974
    invoke-virtual {p0, p1, v4, v0}, Lcom/android/music/common/data/MusicDB;->removeItems(Lcom/android/music/common/data/MpListFilter;I[Lcom/android/music/common/data/MusicAddData;)I

    move-result v0

    .line 2976
    if-ge v0, v4, :cond_1

    move v0, v5

    .line 2979
    :goto_0
    return v0

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method public removeItems(Lcom/android/music/common/data/MpListFilter;I[I)I
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v9, ","

    const-string v8, ")"

    .line 2984
    .line 2992
    iget v0, p1, Lcom/android/music/common/data/MpListFilter;->listType:I

    .line 2993
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2996
    iget-object v2, p1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-static {v0, v2}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v2

    .line 2998
    packed-switch v0, :pswitch_data_0

    .line 3054
    :pswitch_0
    const/4 v0, -0x1

    .line 3162
    :goto_0
    return v0

    .line 3014
    :pswitch_1
    const-string v3, "_id IN("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v5

    .line 3015
    :goto_1
    if-ge v3, p2, :cond_1

    .line 3017
    aget v4, p3, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3018
    sub-int v4, p2, v6

    if-ge v3, v4, :cond_0

    .line 3019
    const-string v4, ","

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3015
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3022
    :cond_1
    const-string v3, ")"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3059
    :goto_2
    const/16 v3, 0xa

    if-eq v0, v3, :cond_2

    const/16 v3, 0xb

    if-eq v0, v3, :cond_2

    const/16 v3, 0xc

    if-ne v0, v3, :cond_5

    .line 3062
    :cond_2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 3064
    packed-switch v0, :pswitch_data_1

    .line 3079
    :goto_3
    :try_start_0
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_4
    move v0, v5

    .line 3162
    goto :goto_0

    .line 3034
    :pswitch_2
    const-string v3, "_id IN("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v5

    .line 3035
    :goto_5
    if-ge v3, p2, :cond_4

    .line 3037
    aget v4, p3, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3038
    sub-int v4, p2, v6

    if-ge v3, v4, :cond_3

    .line 3039
    const-string v4, ","

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3035
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 3042
    :cond_4
    const-string v3, ")"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3067
    :pswitch_3
    const-string v0, "most_played"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 3071
    :pswitch_4
    const-string v0, "recently_played"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 3075
    :pswitch_5
    const-string v0, "recently_added_remove_flag"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 3080
    :catch_0
    move-exception v0

    .line 3087
    sget-object v1, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteFullException getQuickListMaxID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3089
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3090
    const-string v0, "com.android.music"

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_4

    .line 3092
    :catch_1
    move-exception v0

    .line 3099
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3100
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3101
    const-string v0, "com.android.music"

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3123
    :cond_5
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2998
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

    .line 3064
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public removeItems(Lcom/android/music/common/data/MpListFilter;I[Lcom/android/music/common/data/MusicAddData;)I
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v9, "external"

    const-string v8, ","

    const-string v7, ")"

    .line 3167
    .line 3175
    iget v0, p1, Lcom/android/music/common/data/MpListFilter;->listType:I

    .line 3176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3180
    iget-object v3, p1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    aget-object v3, v3, v5

    iget v3, v3, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-static {v0, v3}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v3

    .line 3181
    const-string v4, "external"

    invoke-static {v9}, Lcom/android/music/common/data/SecMusic$MusicPlaylist;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 3183
    packed-switch v0, :pswitch_data_0

    .line 3235
    :pswitch_0
    const/4 v0, -0x1

    .line 3272
    :goto_0
    return v0

    .line 3198
    :pswitch_1
    const-string v0, "_id IN("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3199
    const-string v0, "audio_data_hashcode IN("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v5

    .line 3200
    :goto_1
    if-ge v0, p2, :cond_1

    .line 3202
    aget-object v4, p3, v0

    iget v4, v4, Lcom/android/music/common/data/MusicAddData;->mId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3203
    aget-object v4, p3, v0

    iget v4, v4, Lcom/android/music/common/data/MusicAddData;->mHashCode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3204
    const/4 v4, 0x1

    sub-int v4, p2, v4

    if-ge v0, v4, :cond_0

    .line 3205
    const-string v4, ","

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3206
    const-string v4, ","

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3200
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3209
    :cond_1
    const-string v0, ")"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3210
    const-string v0, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3245
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3250
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->FEATURE_MUSIC_PLAYLIST()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3251
    const-string v0, "external"

    invoke-static {v9}, Lcom/android/music/common/data/SecMusic$MusicPlaylist;->getMembersContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3252
    iget-object v1, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    move v0, v5

    .line 3272
    goto :goto_0

    .line 3183
    nop

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

.method public updatePlayedCount(I)Z
    .locals 11
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const-string v0, "com.android.music"

    const-string v0, "activity"

    .line 3791
    .line 3793
    if-gez p1, :cond_0

    move v0, v7

    .line 3862
    :goto_0
    return v0

    .line 3796
    :cond_0
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3798
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3802
    :try_start_0
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "most_played"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 3811
    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v1

    if-gtz v1, :cond_2

    :cond_1
    move v1, v7

    .line 3858
    :goto_1
    if-eqz v0, :cond_5

    .line 3859
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    goto :goto_0

    .line 3817
    :cond_2
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3818
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 3821
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 3822
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3823
    const/4 v4, 0x0

    .line 3825
    const-string v5, "most_played"

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3829
    iget-object v1, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v1

    .line 3831
    if-eq v1, v9, :cond_6

    move v1, v7

    .line 3832
    goto :goto_1

    .line 3834
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 3835
    :goto_2
    :try_start_3
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteFullException updatePlayedCount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3836
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3839
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3840
    const-string v0, "com.android.music"

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3858
    if-eqz v1, :cond_4

    .line 3859
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v9

    goto/16 :goto_0

    .line 3842
    :catch_1
    move-exception v0

    move-object v1, v8

    .line 3843
    :goto_3
    :try_start_4
    sget-object v2, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NullPointerException updatePlayedCount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3858
    if-eqz v1, :cond_4

    .line 3859
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v9

    goto/16 :goto_0

    .line 3844
    :catch_2
    move-exception v0

    move-object v0, v8

    .line 3851
    :goto_4
    :try_start_5
    iget-object v1, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3852
    iget-object v1, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3853
    const-string v1, "com.android.music"

    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3858
    if-eqz v0, :cond_4

    .line 3859
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v9

    goto/16 :goto_0

    .line 3855
    :catch_3
    move-exception v0

    move-object v1, v8

    .line 3856
    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3858
    if-eqz v1, :cond_4

    .line 3859
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v9

    goto/16 :goto_0

    .line 3858
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_6
    if-eqz v1, :cond_3

    .line 3859
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 3858
    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 3855
    :catch_4
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_5

    .line 3844
    :catch_5
    move-exception v1

    goto :goto_4

    .line 3842
    :catch_6
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_3

    .line 3834
    :catch_7
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_2

    :cond_4
    move v0, v9

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto/16 :goto_0

    :cond_6
    move v1, v9

    goto/16 :goto_1
.end method

.method public updatePlayedTime(I)Z
    .locals 13
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v12, "com.android.music"

    const-string v11, "activity"

    .line 3867
    .line 3869
    if-gez p1, :cond_0

    move v0, v10

    .line 3912
    :goto_0
    return v0

    .line 3872
    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3873
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 3874
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3875
    const/4 v3, 0x0

    .line 3877
    const-string v4, "recently_played"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3879
    const/4 v4, -0x1

    .line 3881
    :try_start_0
    iget-object v5, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .line 3909
    :goto_1
    if-eq v0, v9, :cond_1

    move v0, v10

    .line 3910
    goto :goto_0

    .line 3882
    :catch_0
    move-exception v0

    .line 3889
    sget-object v1, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteFullException getQuickListMaxID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3890
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3891
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3892
    const-string v0, "com.android.music"

    invoke-virtual {p0, v12}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    move v0, v4

    .line 3907
    goto :goto_1

    .line 3894
    :catch_1
    move-exception v0

    .line 3901
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3902
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3903
    const-string v0, "com.android.music"

    invoke-virtual {p0, v12}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    move v0, v4

    .line 3907
    goto :goto_1

    .line 3905
    :catch_2
    move-exception v0

    .line 3906
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v9

    goto/16 :goto_0
.end method

.method public updateUserList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    const-string v10, "com.android.music"

    const-string v9, "activity"

    .line 3399
    .line 3401
    const/4 v0, 0x3

    .line 3403
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 3406
    if-eqz p3, :cond_2

    .line 3408
    invoke-static {p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 3412
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/music/common/data/MusicDB;->isExistUserList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3414
    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3417
    const-string v2, "images_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3418
    const-string v2, "thumbnail_uri"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3420
    const-string v2, "images_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3421
    const-string v0, "thumbnail_uri"

    invoke-virtual {v1, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3426
    :try_start_0
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "name = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 3459
    :goto_1
    if-eq v0, v6, :cond_1

    move v0, v8

    .line 3524
    :goto_2
    return v0

    .line 3430
    :catch_0
    move-exception v0

    .line 3437
    sget-object v1, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteFullException getQuickListMaxID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3438
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3439
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3440
    const-string v0, "com.android.music"

    invoke-virtual {p0, v10}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    move v0, v7

    .line 3457
    goto :goto_1

    .line 3442
    :catch_1
    move-exception v0

    .line 3449
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3450
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3451
    const-string v0, "com.android.music"

    invoke-virtual {p0, v10}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    move v0, v7

    goto :goto_1

    .line 3478
    :cond_0
    const-string v2, "name"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3480
    const-string v2, "images_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3481
    const-string v2, "thumbnail_uri"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3483
    const-string v2, "images_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3484
    const-string v0, "thumbnail_uri"

    invoke-virtual {v1, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3488
    :try_start_1
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "name = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v0

    .line 3521
    :goto_3
    if-eq v0, v6, :cond_1

    move v0, v8

    .line 3522
    goto/16 :goto_2

    .line 3492
    :catch_2
    move-exception v0

    .line 3499
    sget-object v1, Lcom/android/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteFullException getQuickListMaxID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3501
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3502
    const-string v0, "com.android.music"

    invoke-virtual {p0, v10}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    move v0, v7

    .line 3519
    goto :goto_3

    .line 3504
    :catch_3
    move-exception v0

    .line 3511
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3512
    iget-object v0, p0, Lcom/android/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3513
    const-string v0, "com.android.music"

    invoke-virtual {p0, v10}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    move v0, v7

    goto :goto_3

    :cond_1
    move v0, v6

    goto/16 :goto_2

    :cond_2
    move v0, v7

    goto/16 :goto_0
.end method
