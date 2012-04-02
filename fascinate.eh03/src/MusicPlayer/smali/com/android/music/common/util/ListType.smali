.class public Lcom/android/music/common/util/ListType;
.super Ljava/lang/Object;
.source "ListType.java"


# static fields
.field private static final COLS:[[Ljava/lang/String;

.field private static final ListTypeString:[Ljava/lang/String;

.field private static final resStringID:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 96
    const/16 v0, 0x1e

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "album_id"

    aput-object v2, v1, v6

    const-string v2, "title"

    aput-object v2, v1, v7

    const-string v2, "artist"

    aput-object v2, v1, v8

    aput-object v1, v0, v5

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "album_id"

    aput-object v2, v1, v6

    const-string v2, "title"

    aput-object v2, v1, v7

    const-string v2, "artist"

    aput-object v2, v1, v8

    const-string v2, "_data"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "title_key"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "title_focused_index"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "_data_hashcode"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "name"

    aput-object v2, v1, v6

    const-string v2, "_data"

    aput-object v2, v1, v7

    const-string v2, "-1 as album_id"

    aput-object v2, v1, v8

    const-string v2, "thumbnail_uri"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "playlist_focused_index"

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "album"

    aput-object v2, v1, v6

    const-string v2, "artist"

    aput-object v2, v1, v7

    const-string v2, "_id as album_id"

    aput-object v2, v1, v8

    const-string v2, "album_key"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "album_focused_index"

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "artist"

    aput-object v2, v1, v6

    const-string v2, "album_id"

    aput-object v2, v1, v7

    const-string v2, "artist_key"

    aput-object v2, v1, v8

    const-string v2, "artist_focused_index"

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "1 as _id"

    aput-object v3, v2, v5

    const-string v3, "genre_name"

    aput-object v3, v2, v6

    const-string v3, "count"

    aput-object v3, v2, v7

    const-string v3, "album_id"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "composer"

    aput-object v3, v2, v5

    const-string v3, "1 as _id"

    aput-object v3, v2, v6

    const-string v3, "count"

    aput-object v3, v2, v7

    const-string v3, "album_id"

    aput-object v3, v2, v8

    const-string v3, "composer_focused_index"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "year"

    aput-object v3, v2, v5

    const-string v3, "1 as _id"

    aput-object v3, v2, v6

    const-string v3, "count"

    aput-object v3, v2, v7

    const-string v3, "album_id"

    aput-object v3, v2, v8

    const-string v3, "year_name"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "album_id"

    aput-object v3, v2, v6

    const-string v3, "is_favorite"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "audio_id"

    aput-object v3, v2, v6

    const-string v3, "album_id"

    aput-object v3, v2, v7

    const-string v3, "title"

    aput-object v3, v2, v8

    const-string v3, "artist"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "_data"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "album_id"

    aput-object v3, v2, v6

    const-string v3, "title"

    aput-object v3, v2, v7

    const-string v3, "artist"

    aput-object v3, v2, v8

    const-string v3, "most_played"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "title_key"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "album_id"

    aput-object v3, v2, v6

    const-string v3, "title"

    aput-object v3, v2, v7

    const-string v3, "artist"

    aput-object v3, v2, v8

    const-string v3, "_data"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "album_id"

    aput-object v3, v2, v6

    const-string v3, "title"

    aput-object v3, v2, v7

    const-string v3, "artist"

    aput-object v3, v2, v8

    const-string v3, "_data"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "date_added"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "audio_id"

    aput-object v3, v2, v6

    const-string v3, "album_id"

    aput-object v3, v2, v7

    const-string v3, "title"

    aput-object v3, v2, v8

    const-string v3, "artist"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "_data_hashcode"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "title"

    aput-object v3, v2, v6

    const-string v3, "album_id"

    aput-object v3, v2, v7

    const-string v3, "track"

    aput-object v3, v2, v8

    const-string v3, "_data"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "title_key"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "_data_hashcode"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "album_id"

    aput-object v3, v2, v6

    const-string v3, "artist"

    aput-object v3, v2, v7

    const-string v3, "album"

    aput-object v3, v2, v8

    const-string v3, "title"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "title_key"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "_data_hashcode"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "album_id"

    aput-object v3, v2, v6

    const-string v3, "artist"

    aput-object v3, v2, v7

    const-string v3, "album"

    aput-object v3, v2, v8

    const-string v3, "title"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "track"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "album_key"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "title_key"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "_data_hashcode"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "album_id"

    aput-object v3, v2, v6

    const-string v3, "album"

    aput-object v3, v2, v7

    const-string v3, "album_key"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "title"

    aput-object v3, v2, v6

    const-string v3, "album_id"

    aput-object v3, v2, v7

    const-string v3, "album_key"

    aput-object v3, v2, v8

    const-string v3, "_data_hashcode"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "album_id"

    aput-object v3, v2, v6

    const-string v3, "title"

    aput-object v3, v2, v7

    const-string v3, "artist"

    aput-object v3, v2, v8

    const-string v3, "_data"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "title_key"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "_data_hashcode"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "album_id"

    aput-object v3, v2, v6

    const-string v3, "title"

    aput-object v3, v2, v7

    const-string v3, "artist"

    aput-object v3, v2, v8

    const-string v3, "_data"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "title_key"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "_data_hashcode"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "album_id"

    aput-object v3, v2, v6

    const-string v3, "title"

    aput-object v3, v2, v7

    const-string v3, "artist"

    aput-object v3, v2, v8

    const-string v3, "_data"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "title_key"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "_data_hashcode"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "album_id"

    aput-object v3, v2, v6

    const-string v3, "title"

    aput-object v3, v2, v7

    const-string v3, "artist"

    aput-object v3, v2, v8

    const-string v3, "_data"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "title_key"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "_data_hashcode"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "album_id"

    aput-object v3, v2, v6

    const-string v3, "title"

    aput-object v3, v2, v7

    const-string v3, "artist"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "audio_id"

    aput-object v3, v2, v6

    const-string v3, "album_id"

    aput-object v3, v2, v7

    const-string v3, "title"

    aput-object v3, v2, v8

    const-string v3, "artist"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "_data"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "name"

    aput-object v3, v2, v6

    const-string v3, "_data"

    aput-object v3, v2, v7

    const-string v3, "-1 as album_id"

    aput-object v3, v2, v8

    const-string v3, "thumbnail_uri"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "audio_id"

    aput-object v3, v2, v6

    const-string v3, "album_id"

    aput-object v3, v2, v7

    const-string v3, "title"

    aput-object v3, v2, v8

    const-string v3, "artist"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "mime_type"

    aput-object v3, v2, v6

    const-string v3, "artist"

    aput-object v3, v2, v7

    const-string v3, "album"

    aput-object v3, v2, v8

    const-string v3, "title"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "data1"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "data2"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "album_id"

    aput-object v3, v2, v6

    const-string v3, "title"

    aput-object v3, v2, v7

    const-string v3, "artist"

    aput-object v3, v2, v8

    const-string v3, "_data"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "audio_id"

    aput-object v3, v2, v6

    const-string v3, "album_id"

    aput-object v3, v2, v7

    const-string v3, "title"

    aput-object v3, v2, v8

    const-string v3, "artist"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "play_order"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/music/common/util/ListType;->COLS:[[Ljava/lang/String;

    .line 423
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CURRENT_PLAYLIST"

    aput-object v1, v0, v5

    const-string v1, "ALL"

    aput-object v1, v0, v6

    const-string v1, "PLAYLIST"

    aput-object v1, v0, v7

    const-string v1, "ALBUM"

    aput-object v1, v0, v8

    const-string v1, "ARTIST"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "GENRE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "COMPOSER"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "YEAR"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "PODCAST"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "QUICK_LIST"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "MOST_PLAYED_LIST"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "RECENTLY_PLAYED_LIST"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "RECENTLY_ADDED_LIST"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "PLAYLIST_TRACKLIST"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ALBUM_TRACKLIST"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ARTIST_TRACKLIST"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ARTIST_TRACKLIST_ORDER_ALBUM"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ARTIST_ALBUM_LIST"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ARTIST_ALBUM_TRACKLIST"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "GENRE_TRACKLIST"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "COMPOSER_TRACKLIST"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "YEAR_TRACKLIST"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "PODCAST_TRACKLIST"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "CREATELIST_TRACKLIST"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "SAVELIST_TRACKLIST"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "PLAYLIST_EDIT"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "PLAYLIST_EDIT_TITLE"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "SEARCH_RESULT"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "MYFILES_TRACKLIST"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "REORDER_TRACKLIST"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/music/common/util/ListType;->ListTypeString:[Ljava/lang/String;

    .line 1145
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/music/common/util/ListType;->resStringID:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x7bt 0x0t 0xat 0x7ft
        0x7ct 0x0t 0xat 0x7ft
        0x17t 0x0t 0xat 0x7ft
        0x18t 0x0t 0xat 0x7ft
        0x19t 0x0t 0xat 0x7ft
        0x1at 0x0t 0xat 0x7ft
        0x1bt 0x0t 0xat 0x7ft
        0x1ct 0x0t 0xat 0x7ft
        0x1et 0x0t 0xat 0x7ft
        0x20t 0x0t 0xat 0x7ft
        0x21t 0x0t 0xat 0x7ft
        0x22t 0x0t 0xat 0x7ft
        0x23t 0x0t 0xat 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioIdColumn(I)Ljava/lang/String;
    .locals 1
    .parameter "listType"

    .prologue
    .line 1234
    const/4 v0, 0x0

    .line 1236
    .local v0, column:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 1276
    :goto_0
    :pswitch_0
    return-object v0

    .line 1253
    :pswitch_1
    const-string v0, "_id"

    .line 1254
    goto :goto_0

    .line 1260
    :pswitch_2
    const-string v0, "audio_id"

    .line 1261
    goto :goto_0

    .line 1236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
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
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getColumns(I)[Ljava/lang/String;
    .locals 1
    .parameter "listType"

    .prologue
    .line 469
    const/16 v0, 0x19

    if-ne p0, v0, :cond_0

    .line 470
    const/4 p0, 0x2

    .line 472
    :cond_0
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_1

    .line 473
    const/16 p0, 0x9

    .line 475
    :cond_1
    const/16 v0, 0x18

    if-ne p0, v0, :cond_2

    .line 476
    const/16 p0, 0x9

    .line 480
    :cond_2
    sget-object v0, Lcom/android/music/common/util/ListType;->COLS:[[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getDiscPlusSubListType(Landroid/content/Context;ILjava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "listType"
    .parameter "string"

    .prologue
    .line 1583
    const/4 v0, -0x1

    .line 1584
    .local v0, subListType:I
    packed-switch p1, :pswitch_data_0

    :goto_0
    move v1, v0

    .line 1634
    :goto_1
    return v1

    .line 1588
    :pswitch_0
    if-nez p2, :cond_0

    .line 1589
    const/4 v1, -0x1

    goto :goto_1

    .line 1590
    :cond_0
    const v1, 0x7f0a0020

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1591
    const/16 v0, 0x9

    goto :goto_0

    .line 1592
    :cond_1
    const v1, 0x7f0a0021

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1593
    const/16 v0, 0xa

    goto :goto_0

    .line 1594
    :cond_2
    const v1, 0x7f0a0022

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1595
    const/16 v0, 0xb

    goto :goto_0

    .line 1596
    :cond_3
    const v1, 0x7f0a0023

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1597
    const/16 v0, 0xc

    goto :goto_0

    .line 1599
    :cond_4
    const/16 v0, 0xd

    .line 1601
    goto :goto_0

    .line 1603
    :pswitch_1
    const/16 v0, 0xe

    .line 1604
    goto :goto_0

    .line 1608
    :pswitch_2
    const/16 v0, 0x10

    .line 1610
    goto :goto_0

    .line 1612
    :pswitch_3
    const/16 v0, 0x13

    .line 1613
    goto :goto_0

    .line 1622
    :pswitch_4
    const/16 v0, 0x14

    .line 1623
    goto :goto_0

    .line 1625
    :pswitch_5
    const/16 v0, 0x15

    .line 1626
    goto :goto_0

    .line 1628
    :pswitch_6
    const/16 v0, 0x16

    .line 1629
    goto :goto_0

    .line 1584
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static getDiscPlusTypeArtistNameIndex(I)I
    .locals 1
    .parameter "listType"

    .prologue
    .line 1546
    const/4 v0, -0x1

    .line 1547
    .local v0, index:I
    sparse-switch p0, :sswitch_data_0

    .line 1579
    :goto_0
    return v0

    .line 1549
    :sswitch_0
    const/4 v0, 0x3

    .line 1550
    goto :goto_0

    .line 1553
    :sswitch_1
    const/4 v0, 0x2

    .line 1554
    goto :goto_0

    .line 1556
    :sswitch_2
    const/4 v0, 0x1

    .line 1557
    goto :goto_0

    .line 1559
    :sswitch_3
    const/4 v0, 0x4

    .line 1560
    goto :goto_0

    .line 1566
    :sswitch_4
    const/4 v0, 0x3

    .line 1567
    goto :goto_0

    .line 1547
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0xd -> :sswitch_3
        0xf -> :sswitch_1
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_4
        0x16 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getDiscPlusTypeAudioIdIndex(I)I
    .locals 1
    .parameter "listType"

    .prologue
    .line 1458
    const/4 v0, -0x1

    .line 1459
    .local v0, index:I
    packed-switch p0, :pswitch_data_0

    .line 1483
    :goto_0
    :pswitch_0
    return v0

    .line 1473
    :pswitch_1
    const/4 v0, 0x0

    .line 1474
    goto :goto_0

    .line 1477
    :pswitch_2
    const/4 v0, 0x1

    .line 1478
    goto :goto_0

    .line 1459
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getDiscPlusTypeIdIndex(I)I
    .locals 1
    .parameter "listType"

    .prologue
    .line 1417
    const/4 v0, -0x1

    .line 1418
    .local v0, index:I
    packed-switch p0, :pswitch_data_0

    .line 1454
    :goto_0
    :pswitch_0
    return v0

    .line 1441
    :pswitch_1
    const/4 v0, 0x0

    .line 1442
    goto :goto_0

    .line 1418
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
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getDiscPlusTypeItemTitleIndex(I)I
    .locals 1
    .parameter "listType"

    .prologue
    .line 1487
    const/4 v0, -0x1

    .line 1488
    .local v0, index:I
    packed-switch p0, :pswitch_data_0

    .line 1542
    :goto_0
    :pswitch_0
    return v0

    .line 1490
    :pswitch_1
    const/4 v0, 0x2

    .line 1491
    goto :goto_0

    .line 1497
    :pswitch_2
    const/4 v0, 0x1

    .line 1498
    goto :goto_0

    .line 1500
    :pswitch_3
    const/4 v0, 0x0

    .line 1501
    goto :goto_0

    .line 1503
    :pswitch_4
    const/4 v0, 0x4

    .line 1504
    goto :goto_0

    .line 1508
    :pswitch_5
    const/4 v0, 0x3

    .line 1509
    goto :goto_0

    .line 1511
    :pswitch_6
    const/4 v0, 0x1

    .line 1512
    goto :goto_0

    .line 1515
    :pswitch_7
    const/4 v0, 0x4

    .line 1516
    goto :goto_0

    .line 1528
    :pswitch_8
    const/4 v0, 0x2

    .line 1529
    goto :goto_0

    .line 1531
    :pswitch_9
    const/4 v0, 0x3

    .line 1532
    goto :goto_0

    .line 1536
    :pswitch_a
    const/4 v0, 0x2

    .line 1537
    goto :goto_0

    .line 1488
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
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public static getDiscPlusViewType(I)I
    .locals 1
    .parameter "listType"

    .prologue
    .line 1638
    const/16 v0, 0x64

    .line 1640
    .local v0, viewType:I
    packed-switch p0, :pswitch_data_0

    .line 1660
    :goto_0
    return v0

    .line 1648
    :pswitch_0
    const/16 v0, 0x65

    .line 1649
    goto :goto_0

    .line 1651
    :pswitch_1
    const/16 v0, 0x66

    .line 1652
    goto :goto_0

    .line 1654
    :pswitch_2
    const/16 v0, 0x67

    .line 1655
    goto :goto_0

    .line 1640
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static getDiscPlusViewTypeOrderIndexByTitle(I)I
    .locals 1
    .parameter "listType"

    .prologue
    .line 1664
    const/4 v0, -0x1

    .line 1665
    .local v0, index:I
    sparse-switch p0, :sswitch_data_0

    .line 1696
    :goto_0
    return v0

    .line 1667
    :sswitch_0
    const/4 v0, 0x2

    .line 1668
    goto :goto_0

    .line 1670
    :sswitch_1
    const/4 v0, 0x1

    .line 1671
    goto :goto_0

    .line 1674
    :sswitch_2
    const/4 v0, 0x1

    .line 1675
    goto :goto_0

    .line 1677
    :sswitch_3
    const/4 v0, 0x1

    .line 1678
    goto :goto_0

    .line 1687
    :sswitch_4
    const/4 v0, 0x0

    .line 1688
    goto :goto_0

    .line 1690
    :sswitch_5
    const/4 v0, 0x2

    .line 1691
    goto :goto_0

    .line 1665
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_3
        0x6 -> :sswitch_4
        0x8 -> :sswitch_5
        0x19 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getIDKeyColumnByAction(II)Ljava/lang/String;
    .locals 3
    .parameter "listType"
    .parameter "subListType"

    .prologue
    const/4 v2, 0x2

    .line 1206
    const/4 v0, 0x0

    .line 1208
    .local v0, column:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/music/common/util/ListType;->getAudioIdColumn(I)Ljava/lang/String;

    move-result-object v0

    .line 1213
    const/16 v1, 0x18

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/16 v1, 0xd

    if-ne p0, v1, :cond_3

    .line 1217
    :cond_0
    if-eq p1, v2, :cond_1

    if-nez p1, :cond_2

    .line 1219
    :cond_1
    const-string v0, "_id"

    .line 1228
    :cond_2
    :goto_0
    return-object v0

    .line 1222
    :cond_3
    if-ne p0, v2, :cond_2

    .line 1224
    const-string v0, "_id"

    goto :goto_0
.end method

.method public static getIndexerKeyIndex(I)I
    .locals 1
    .parameter "listType"

    .prologue
    .line 1348
    invoke-static {p0}, Lcom/android/music/common/util/ListType;->getIndexerKeyIndexForLocale(I)I

    move-result v0

    return v0
.end method

.method public static getIndexerKeyIndexForLocale(I)I
    .locals 1
    .parameter "listType"

    .prologue
    .line 1280
    const/4 v0, -0x1

    .line 1281
    .local v0, index:I
    packed-switch p0, :pswitch_data_0

    .line 1341
    :goto_0
    :pswitch_0
    return v0

    .line 1284
    :pswitch_1
    const/4 v0, 0x2

    .line 1285
    goto :goto_0

    .line 1287
    :pswitch_2
    const/4 v0, 0x1

    .line 1288
    goto :goto_0

    .line 1290
    :pswitch_3
    const/4 v0, 0x1

    .line 1291
    goto :goto_0

    .line 1293
    :pswitch_4
    const/4 v0, 0x1

    .line 1294
    goto :goto_0

    .line 1296
    :pswitch_5
    const/4 v0, 0x1

    .line 1297
    goto :goto_0

    .line 1299
    :pswitch_6
    const/4 v0, 0x0

    .line 1300
    goto :goto_0

    .line 1302
    :pswitch_7
    const/4 v0, 0x0

    .line 1303
    goto :goto_0

    .line 1313
    :pswitch_8
    const/4 v0, 0x4

    .line 1314
    goto :goto_0

    .line 1317
    :pswitch_9
    const/4 v0, 0x2

    .line 1318
    goto :goto_0

    .line 1320
    :pswitch_a
    const/4 v0, 0x2

    .line 1321
    goto :goto_0

    .line 1323
    :pswitch_b
    const/4 v0, 0x2

    .line 1324
    goto :goto_0

    .line 1326
    :pswitch_c
    const/4 v0, 0x2

    goto :goto_0

    .line 1281
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static getMainListType(I)I
    .locals 1
    .parameter "listType"

    .prologue
    .line 484
    const/4 v0, -0x1

    .line 485
    .local v0, mainListType:I
    packed-switch p0, :pswitch_data_0

    .line 542
    :goto_0
    return v0

    .line 489
    :pswitch_0
    const/4 v0, 0x1

    .line 490
    goto :goto_0

    .line 502
    :pswitch_1
    const/4 v0, 0x2

    .line 503
    goto :goto_0

    .line 506
    :pswitch_2
    const/4 v0, 0x3

    .line 507
    goto :goto_0

    .line 513
    :pswitch_3
    const/4 v0, 0x4

    .line 514
    goto :goto_0

    .line 517
    :pswitch_4
    const/4 v0, 0x5

    .line 518
    goto :goto_0

    .line 521
    :pswitch_5
    const/4 v0, 0x6

    .line 522
    goto :goto_0

    .line 525
    :pswitch_6
    const/4 v0, 0x7

    .line 526
    goto :goto_0

    .line 529
    :pswitch_7
    const/16 v0, 0x8

    .line 530
    goto :goto_0

    .line 485
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getOrderBy(I)Ljava/lang/String;
    .locals 1
    .parameter "listType"

    .prologue
    .line 1038
    invoke-static {p0}, Lcom/android/music/common/util/ListType;->getOrderByForLocal(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOrderByForLocal(I)Ljava/lang/String;
    .locals 7
    .parameter "listType"

    .prologue
    const/4 v5, 0x1

    const-string v6, ", "

    const-string v4, " DESC"

    const-string v3, " COLLATE LOCALIZED ASC"

    .line 974
    const/4 v0, 0x0

    .line 976
    .local v0, orderBy:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/music/common/util/ListType;->getOrderByKeyword(I)Ljava/lang/String;

    move-result-object v0

    .line 978
    packed-switch p0, :pswitch_data_0

    .line 1032
    :goto_0
    :pswitch_0
    return-object v0

    .line 991
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " COLLATE LOCALIZED ASC"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 992
    goto :goto_0

    .line 995
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DESC, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Lcom/android/music/common/util/ListType;->getOrderByKeyword(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " COLLATE LOCALIZED ASC"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 996
    goto :goto_0

    .line 999
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DESC"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1000
    goto :goto_0

    .line 1003
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DESC"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1004
    goto :goto_0

    .line 1007
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DESC"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1008
    goto :goto_0

    .line 1015
    :pswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " COLLATE LOCALIZED ASC"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1016
    goto/16 :goto_0

    .line 1020
    :pswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DESC"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1021
    goto/16 :goto_0

    .line 1024
    :pswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Lcom/android/music/common/util/ListType;->getOrderByKeyword(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " COLLATE LOCALIZED ASC"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1025
    goto/16 :goto_0

    .line 1028
    :pswitch_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " COLLATE LOCALIZED ASC, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "track"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Lcom/android/music/common/util/ListType;->getOrderByKeyword(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " COLLATE LOCALIZED ASC"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 978
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_9
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getOrderByKeyword(I)Ljava/lang/String;
    .locals 1
    .parameter "listType"

    .prologue
    .line 863
    invoke-static {p0}, Lcom/android/music/common/util/ListType;->getOrderByKeywordForLocale(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOrderByKeywordForLocale(I)Ljava/lang/String;
    .locals 1
    .parameter "listType"

    .prologue
    .line 757
    const/4 v0, 0x0

    .line 759
    .local v0, orderByKeyword:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 857
    :goto_0
    :pswitch_0
    return-object v0

    .line 762
    :pswitch_1
    const-string v0, "title"

    .line 763
    goto :goto_0

    .line 767
    :pswitch_2
    const-string v0, "name"

    .line 768
    goto :goto_0

    .line 771
    :pswitch_3
    const-string v0, "album"

    .line 772
    goto :goto_0

    .line 775
    :pswitch_4
    const-string v0, "artist"

    .line 776
    goto :goto_0

    .line 779
    :pswitch_5
    const-string v0, "genre_name"

    .line 780
    goto :goto_0

    .line 783
    :pswitch_6
    const-string v0, "composer"

    .line 784
    goto :goto_0

    .line 787
    :pswitch_7
    const-string v0, "year_name"

    .line 788
    goto :goto_0

    .line 808
    :pswitch_8
    const-string v0, "most_played"

    .line 809
    goto :goto_0

    .line 811
    :pswitch_9
    const-string v0, "recently_played"

    .line 812
    goto :goto_0

    .line 814
    :pswitch_a
    const-string v0, "date_added"

    .line 815
    goto :goto_0

    .line 819
    :pswitch_b
    const-string v0, "play_order"

    .line 820
    goto :goto_0

    .line 824
    :pswitch_c
    const-string v0, "track"

    .line 825
    goto :goto_0

    .line 828
    :pswitch_d
    const-string v0, "title"

    .line 829
    goto :goto_0

    .line 832
    :pswitch_e
    const-string v0, "album"

    .line 833
    goto :goto_0

    .line 836
    :pswitch_f
    const-string v0, "album"

    .line 837
    goto :goto_0

    .line 840
    :pswitch_10
    const-string v0, "track"

    .line 841
    goto :goto_0

    .line 853
    :pswitch_11
    const-string v0, "title"

    goto :goto_0

    .line 759
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_b
    .end packed-switch
.end method

.method public static getOrderByKeywordMyFiles(I)Ljava/lang/String;
    .locals 1
    .parameter "sort_order"

    .prologue
    .line 1126
    const/4 v0, 0x0

    .line 1128
    .local v0, orderBy:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 1140
    :goto_0
    return-object v0

    .line 1131
    :pswitch_0
    const-string v0, "date_modified"

    goto :goto_0

    .line 1133
    :pswitch_1
    const-string v0, "mime_type"

    goto :goto_0

    .line 1135
    :pswitch_2
    const-string v0, "_display_name"

    goto :goto_0

    .line 1137
    :pswitch_3
    const-string v0, "_size"

    goto :goto_0

    .line 1128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getOrderByMyFiles(I)Ljava/lang/String;
    .locals 5
    .parameter "sort_order"

    .prologue
    .line 1109
    const/4 v0, 0x0

    .line 1111
    .local v0, orderBy:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/music/common/util/ListType;->getOrderByKeywordMyFiles(I)Ljava/lang/String;

    move-result-object v1

    .line 1112
    .local v1, orderByKeywork:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 1113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " desc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1121
    :goto_0
    return-object v0

    .line 1114
    :cond_0
    const/4 v2, 0x1

    if-gt v2, p0, :cond_1

    const/4 v2, 0x4

    if-ge p0, v2, :cond_1

    .line 1115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " asc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1118
    :cond_1
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ListType.getOrderByMyFiles : invalid sort_order - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1
    .parameter "listType"

    .prologue
    .line 465
    sget-object v0, Lcom/android/music/common/util/ListType;->ListTypeString:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "listType"

    .prologue
    .line 1167
    const/4 v1, 0x0

    .line 1169
    .local v1, str:Ljava/lang/String;
    sget-object v2, Lcom/android/music/common/util/ListType;->resStringID:[I

    aget v0, v2, p1

    .line 1171
    .local v0, resID:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1173
    return-object v1
.end method

.method public static getStringRsrcID(I)I
    .locals 1
    .parameter "listType"

    .prologue
    .line 1179
    const/4 v0, -0x1

    .line 1181
    .local v0, resID:I
    packed-switch p0, :pswitch_data_0

    .line 1198
    :goto_0
    return v0

    .line 1183
    :pswitch_0
    const v0, 0x7f0a007c

    goto :goto_0

    .line 1184
    :pswitch_1
    const v0, 0x7f0a0017

    goto :goto_0

    .line 1185
    :pswitch_2
    const v0, 0x7f0a0018

    goto :goto_0

    .line 1186
    :pswitch_3
    const v0, 0x7f0a0019

    goto :goto_0

    .line 1187
    :pswitch_4
    const v0, 0x7f0a001a

    goto :goto_0

    .line 1189
    :pswitch_5
    const v0, 0x7f0a001b

    goto :goto_0

    .line 1190
    :pswitch_6
    const v0, 0x7f0a001c

    goto :goto_0

    .line 1191
    :pswitch_7
    const v0, 0x7f0a001e

    goto :goto_0

    .line 1192
    :pswitch_8
    const v0, 0x7f0a0020

    goto :goto_0

    .line 1193
    :pswitch_9
    const v0, 0x7f0a0021

    goto :goto_0

    .line 1194
    :pswitch_a
    const v0, 0x7f0a0022

    goto :goto_0

    .line 1195
    :pswitch_b
    const v0, 0x7f0a0023

    goto :goto_0

    .line 1181
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getSubListType(I)I
    .locals 1
    .parameter "listType"

    .prologue
    .line 546
    const/4 v0, -0x1

    .line 547
    .local v0, subListType:I
    sparse-switch p0, :sswitch_data_0

    .line 579
    :goto_0
    return v0

    .line 551
    :sswitch_0
    const/16 v0, 0xd

    .line 552
    goto :goto_0

    .line 554
    :sswitch_1
    const/16 v0, 0xe

    .line 555
    goto :goto_0

    .line 557
    :sswitch_2
    const/16 v0, 0x10

    .line 558
    goto :goto_0

    .line 560
    :sswitch_3
    const/16 v0, 0x13

    .line 561
    goto :goto_0

    .line 563
    :sswitch_4
    const/16 v0, 0x14

    .line 564
    goto :goto_0

    .line 566
    :sswitch_5
    const/16 v0, 0x15

    .line 567
    goto :goto_0

    .line 569
    :sswitch_6
    const/16 v0, 0x16

    goto :goto_0

    .line 547
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getTagIdString(ILandroid/database/Cursor;)Ljava/lang/String;
    .locals 7
    .parameter "listType"
    .parameter "cursor"

    .prologue
    const-string v6, "]"

    const-string v5, "ListType"

    .line 705
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 706
    const/4 v3, 0x0

    .line 752
    :goto_0
    return-object v3

    .line 707
    :cond_0
    const/4 v0, 0x0

    .line 708
    .local v0, TagIDString:Ljava/lang/String;
    const/4 v1, 0x0

    .line 710
    .local v1, columnString:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 738
    const-string v1, "_id"

    .line 743
    :goto_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 744
    .local v2, iColumnIndex:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 746
    const-string v3, "ListType"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTagIdString : listType["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], columnString["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const-string v3, "ListType"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTagIdString : cursor.getCount(), position ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 752
    goto :goto_0

    .line 721
    .end local v2           #iColumnIndex:I
    :pswitch_0
    const-string v1, "year_name"

    .line 723
    goto :goto_1

    .line 726
    :pswitch_1
    const-string v1, "composer"

    .line 727
    goto :goto_1

    .line 710
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getUri(II)Landroid/net/Uri;
    .locals 4
    .parameter "listType"
    .parameter "iFilterID"

    .prologue
    .line 585
    const/4 v0, 0x0

    .line 587
    .local v0, uri:Landroid/net/Uri;
    packed-switch p0, :pswitch_data_0

    .line 698
    :goto_0
    :pswitch_0
    return-object v0

    .line 590
    :pswitch_1
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 591
    goto :goto_0

    .line 596
    :pswitch_2
    invoke-static {}, Lcom/android/music/common/data/SecMusic;->getPlaylistUri()Landroid/net/Uri;

    move-result-object v0

    .line 597
    goto :goto_0

    .line 601
    :pswitch_3
    sget-object v0, Lcom/android/music/common/data/SecMusic;->ALBUMS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 602
    goto :goto_0

    .line 606
    :pswitch_4
    sget-object v0, Lcom/android/music/common/data/SecMusic;->ARTISTS_ALBUM_ID_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 607
    goto :goto_0

    .line 611
    :pswitch_5
    sget-object v0, Lcom/android/music/common/data/SecMusic;->GENRES_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 612
    goto :goto_0

    .line 620
    :pswitch_6
    const-string v1, "external"

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Lcom/android/music/common/data/SecMusic;->getPlaylistTracklistUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 621
    goto :goto_0

    .line 625
    :pswitch_7
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 626
    goto :goto_0

    .line 629
    :pswitch_8
    sget-object v0, Lcom/android/music/common/data/SecMusic;->YEARS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 630
    goto :goto_0

    .line 633
    :pswitch_9
    sget-object v0, Lcom/android/music/common/data/SecMusic;->COMPOSERS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 634
    goto :goto_0

    .line 650
    :pswitch_a
    sget-object v0, Lcom/android/music/common/data/SecMusic$QuickList;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 651
    goto :goto_0

    .line 666
    :pswitch_b
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 587
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_6
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_7
        :pswitch_b
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method
