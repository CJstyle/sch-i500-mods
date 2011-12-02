.class public Lcom/android/music/common/util/ListType;
.super Ljava/lang/Object;
.source "ListType.java"


# static fields
.field public static final ALBUM:I = 0x3

.field public static final ALBUM_TRACKLIST:I = 0xe

.field public static final ALL:I = 0x1

.field public static final ARTIST:I = 0x4

.field public static final ARTIST_ALBUM_LIST:I = 0x11

.field public static final ARTIST_ALBUM_TRACKLIST:I = 0x12

.field public static final ARTIST_TRACKLIST:I = 0xf

.field public static final ARTIST_TRACKLIST_ORDER_ALBUM:I = 0x10

.field private static final COLS:[[Ljava/lang/String; = null

.field public static final COMPOSER:I = 0x6

.field public static final COMPOSER_TRACKLIST:I = 0x14

.field public static final CREATELIST_TRACKLIST:I = 0x17

.field public static final CURRENT_PLAYLIST:I = 0x0

.field public static final GENRE:I = 0x5

.field public static final GENRE_TRACKLIST:I = 0x13

.field public static final IMAGES_ID:Ljava/lang/String; = "images_id"

.field private static final ListTypeString:[Ljava/lang/String; = null

.field public static final MOST_PLAYED_LIST:I = 0xa

.field public static final MYFILES_TRACKLIST:I = 0x1c

.field public static final PLAYLIST:I = 0x2

.field public static final PLAYLIST_EDIT:I = 0x19

.field public static final PLAYLIST_EDIT_TITLE:I = 0x1a

.field public static final PLAYLIST_TRACKLIST:I = 0xd

.field public static final PODCAST:I = 0x8

.field public static final PODCAST_TRACKLIST:I = 0x16

.field public static final QUICK_LIST:I = 0x9

.field public static final RECENTLY_ADDED_LIST:I = 0xc

.field public static final RECENTLY_PLAYED_LIST:I = 0xb

.field public static final SAVELIST_TRACKLIST:I = 0x18

.field public static final SEARCH_RESULT:I = 0x1b

.field private static final TAG:Ljava/lang/String; = "ListType"

.field public static final THUMBNAIL_URI:Ljava/lang/String; = "thumbnail_uri"

.field public static final TYPE_ALPHABETVIEW:I = 0x65

.field public static final TYPE_NAMEVIEW:I = 0x66

.field public static final TYPE_NONEVIEW:I = 0x64

.field public static final TYPE_NUMBERVIEW:I = 0x67

.field public static final YEAR:I = 0x7

.field public static final YEAR_TRACKLIST:I = 0x15

.field public static final bUseLocale:Z = true

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

    .line 454
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

    .line 1188
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/music/common/util/ListType;->resStringID:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x79t 0x0t 0xat 0x7ft
        0x7at 0x0t 0xat 0x7ft
        0x17t 0x0t 0xat 0x7ft
        0x18t 0x0t 0xat 0x7ft
        0x19t 0x0t 0xat 0x7ft
        0x1at 0x0t 0xat 0x7ft
        0x1bt 0x0t 0xat 0x7ft
        0x1ct 0x0t 0xat 0x7ft
        0x1et 0x0t 0xat 0x7ft
        0x1ft 0x0t 0xat 0x7ft
        0x20t 0x0t 0xat 0x7ft
        0x21t 0x0t 0xat 0x7ft
        0x22t 0x0t 0xat 0x7ft
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
    .line 1263
    const/4 v0, 0x0

    .line 1265
    .local v0, column:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 1305
    :goto_0
    :pswitch_0
    return-object v0

    .line 1282
    :pswitch_1
    const-string v0, "_id"

    .line 1283
    goto :goto_0

    .line 1289
    :pswitch_2
    const-string v0, "audio_id"

    .line 1290
    goto :goto_0

    .line 1265
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
    .line 503
    const/16 v0, 0x19

    if-ne p0, v0, :cond_0

    .line 504
    const/4 p0, 0x2

    .line 506
    :cond_0
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_1

    .line 507
    const/16 p0, 0x9

    .line 509
    :cond_1
    const/16 v0, 0x18

    if-ne p0, v0, :cond_2

    .line 510
    const/16 p0, 0x9

    .line 514
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
    .line 1604
    const/4 v0, -0x1

    .line 1605
    .local v0, subListType:I
    packed-switch p1, :pswitch_data_0

    :goto_0
    move v1, v0

    .line 1655
    :goto_1
    return v1

    .line 1609
    :pswitch_0
    if-nez p2, :cond_0

    .line 1610
    const/4 v1, -0x1

    goto :goto_1

    .line 1611
    :cond_0
    const v1, 0x7f0a001f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1612
    const/16 v0, 0x9

    goto :goto_0

    .line 1613
    :cond_1
    const v1, 0x7f0a0020

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1614
    const/16 v0, 0xa

    goto :goto_0

    .line 1615
    :cond_2
    const v1, 0x7f0a0021

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1616
    const/16 v0, 0xb

    goto :goto_0

    .line 1617
    :cond_3
    const v1, 0x7f0a0022

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1618
    const/16 v0, 0xc

    goto :goto_0

    .line 1620
    :cond_4
    const/16 v0, 0xd

    .line 1622
    goto :goto_0

    .line 1624
    :pswitch_1
    const/16 v0, 0xe

    .line 1625
    goto :goto_0

    .line 1628
    :pswitch_2
    const/16 v0, 0xf

    .line 1631
    goto :goto_0

    .line 1633
    :pswitch_3
    const/16 v0, 0x13

    .line 1634
    goto :goto_0

    .line 1643
    :pswitch_4
    const/16 v0, 0x14

    .line 1644
    goto :goto_0

    .line 1646
    :pswitch_5
    const/16 v0, 0x15

    .line 1647
    goto :goto_0

    .line 1649
    :pswitch_6
    const/16 v0, 0x16

    .line 1650
    goto :goto_0

    .line 1605
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
    .line 1567
    const/4 v0, -0x1

    .line 1568
    .local v0, index:I
    sparse-switch p0, :sswitch_data_0

    .line 1600
    :goto_0
    return v0

    .line 1570
    :sswitch_0
    const/4 v0, 0x3

    .line 1571
    goto :goto_0

    .line 1574
    :sswitch_1
    const/4 v0, 0x2

    .line 1575
    goto :goto_0

    .line 1577
    :sswitch_2
    const/4 v0, 0x1

    .line 1578
    goto :goto_0

    .line 1580
    :sswitch_3
    const/4 v0, 0x4

    .line 1581
    goto :goto_0

    .line 1587
    :sswitch_4
    const/4 v0, 0x3

    .line 1588
    goto :goto_0

    .line 1568
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
    .line 1485
    const/4 v0, -0x1

    .line 1486
    .local v0, index:I
    packed-switch p0, :pswitch_data_0

    .line 1510
    :goto_0
    :pswitch_0
    return v0

    .line 1500
    :pswitch_1
    const/4 v0, 0x0

    .line 1501
    goto :goto_0

    .line 1504
    :pswitch_2
    const/4 v0, 0x1

    .line 1505
    goto :goto_0

    .line 1486
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
    .line 1444
    const/4 v0, -0x1

    .line 1445
    .local v0, index:I
    packed-switch p0, :pswitch_data_0

    .line 1481
    :goto_0
    :pswitch_0
    return v0

    .line 1468
    :pswitch_1
    const/4 v0, 0x0

    .line 1469
    goto :goto_0

    .line 1445
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
    .line 1514
    const/4 v0, -0x1

    .line 1515
    .local v0, index:I
    packed-switch p0, :pswitch_data_0

    .line 1563
    :goto_0
    :pswitch_0
    return v0

    .line 1517
    :pswitch_1
    const/4 v0, 0x2

    .line 1518
    goto :goto_0

    .line 1524
    :pswitch_2
    const/4 v0, 0x1

    .line 1525
    goto :goto_0

    .line 1527
    :pswitch_3
    const/4 v0, 0x0

    .line 1528
    goto :goto_0

    .line 1530
    :pswitch_4
    const/4 v0, 0x4

    .line 1531
    goto :goto_0

    .line 1535
    :pswitch_5
    const/4 v0, 0x3

    .line 1536
    goto :goto_0

    .line 1538
    :pswitch_6
    const/4 v0, 0x1

    .line 1539
    goto :goto_0

    .line 1542
    :pswitch_7
    const/4 v0, 0x4

    .line 1543
    goto :goto_0

    .line 1549
    :pswitch_8
    const/4 v0, 0x2

    .line 1550
    goto :goto_0

    .line 1552
    :pswitch_9
    const/4 v0, 0x3

    .line 1553
    goto :goto_0

    .line 1557
    :pswitch_a
    const/4 v0, 0x2

    .line 1558
    goto :goto_0

    .line 1515
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
    .line 1659
    const/16 v0, 0x64

    .line 1661
    .local v0, viewType:I
    packed-switch p0, :pswitch_data_0

    .line 1681
    :goto_0
    return v0

    .line 1669
    :pswitch_0
    const/16 v0, 0x65

    .line 1670
    goto :goto_0

    .line 1672
    :pswitch_1
    const/16 v0, 0x66

    .line 1673
    goto :goto_0

    .line 1675
    :pswitch_2
    const/16 v0, 0x67

    .line 1676
    goto :goto_0

    .line 1661
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

.method public static getDiscPlusViewTypeOrderIndexByFocusIndex(I)I
    .locals 1
    .parameter "listType"

    .prologue
    .line 1720
    const/4 v0, -0x1

    .line 1721
    .local v0, index:I
    sparse-switch p0, :sswitch_data_0

    .line 1746
    :goto_0
    return v0

    .line 1723
    :sswitch_0
    const/4 v0, 0x6

    .line 1724
    goto :goto_0

    .line 1726
    :sswitch_1
    const/4 v0, 0x5

    .line 1727
    goto :goto_0

    .line 1730
    :sswitch_2
    const/4 v0, 0x5

    .line 1731
    goto :goto_0

    .line 1733
    :sswitch_3
    const/4 v0, 0x4

    .line 1734
    goto :goto_0

    .line 1737
    :sswitch_4
    const/4 v0, 0x4

    .line 1738
    goto :goto_0

    .line 1740
    :sswitch_5
    const/4 v0, 0x2

    .line 1741
    goto :goto_0

    .line 1721
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

.method public static getDiscPlusViewTypeOrderIndexByTitle(I)I
    .locals 1
    .parameter "listType"

    .prologue
    .line 1685
    const/4 v0, -0x1

    .line 1686
    .local v0, index:I
    sparse-switch p0, :sswitch_data_0

    .line 1716
    :goto_0
    return v0

    .line 1688
    :sswitch_0
    const/4 v0, 0x2

    .line 1689
    goto :goto_0

    .line 1691
    :sswitch_1
    const/4 v0, 0x1

    .line 1692
    goto :goto_0

    .line 1695
    :sswitch_2
    const/4 v0, 0x1

    .line 1696
    goto :goto_0

    .line 1698
    :sswitch_3
    const/4 v0, 0x1

    .line 1699
    goto :goto_0

    .line 1707
    :sswitch_4
    const/4 v0, 0x0

    .line 1708
    goto :goto_0

    .line 1710
    :sswitch_5
    const/4 v0, 0x2

    .line 1711
    goto :goto_0

    .line 1686
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

    .line 1235
    const/4 v0, 0x0

    .line 1237
    .local v0, column:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/music/common/util/ListType;->getAudioIdColumn(I)Ljava/lang/String;

    move-result-object v0

    .line 1242
    const/16 v1, 0x18

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/16 v1, 0xd

    if-ne p0, v1, :cond_3

    .line 1246
    :cond_0
    if-eq p1, v2, :cond_1

    if-nez p1, :cond_2

    .line 1248
    :cond_1
    const-string v0, "_id"

    .line 1257
    :cond_2
    :goto_0
    return-object v0

    .line 1251
    :cond_3
    if-ne p0, v2, :cond_2

    .line 1253
    const-string v0, "_id"

    goto :goto_0
.end method

.method public static getIndexerKeyIndex(I)I
    .locals 1
    .parameter "listType"

    .prologue
    .line 1375
    invoke-static {p0}, Lcom/android/music/common/util/ListType;->getIndexerKeyIndexForLocale(I)I

    move-result v0

    return v0
.end method

.method public static getIndexerKeyIndexForLocale(I)I
    .locals 1
    .parameter "listType"

    .prologue
    .line 1309
    const/4 v0, -0x1

    .line 1310
    .local v0, index:I
    packed-switch p0, :pswitch_data_0

    .line 1368
    :goto_0
    :pswitch_0
    return v0

    .line 1313
    :pswitch_1
    const/4 v0, 0x2

    .line 1314
    goto :goto_0

    .line 1316
    :pswitch_2
    const/4 v0, 0x1

    .line 1317
    goto :goto_0

    .line 1319
    :pswitch_3
    const/4 v0, 0x1

    .line 1320
    goto :goto_0

    .line 1322
    :pswitch_4
    const/4 v0, 0x1

    .line 1323
    goto :goto_0

    .line 1325
    :pswitch_5
    const/4 v0, 0x1

    .line 1326
    goto :goto_0

    .line 1328
    :pswitch_6
    const/4 v0, 0x0

    .line 1329
    goto :goto_0

    .line 1331
    :pswitch_7
    const/4 v0, 0x0

    .line 1332
    goto :goto_0

    .line 1341
    :pswitch_8
    const/4 v0, 0x4

    .line 1342
    goto :goto_0

    .line 1345
    :pswitch_9
    const/4 v0, 0x2

    .line 1346
    goto :goto_0

    .line 1348
    :pswitch_a
    const/4 v0, 0x2

    .line 1349
    goto :goto_0

    .line 1351
    :pswitch_b
    const/4 v0, 0x2

    .line 1352
    goto :goto_0

    .line 1354
    :pswitch_c
    const/4 v0, 0x2

    goto :goto_0

    .line 1310
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
    .line 518
    const/4 v0, -0x1

    .line 519
    .local v0, mainListType:I
    packed-switch p0, :pswitch_data_0

    .line 576
    :goto_0
    return v0

    .line 523
    :pswitch_0
    const/4 v0, 0x1

    .line 524
    goto :goto_0

    .line 536
    :pswitch_1
    const/4 v0, 0x2

    .line 537
    goto :goto_0

    .line 540
    :pswitch_2
    const/4 v0, 0x3

    .line 541
    goto :goto_0

    .line 547
    :pswitch_3
    const/4 v0, 0x4

    .line 548
    goto :goto_0

    .line 551
    :pswitch_4
    const/4 v0, 0x5

    .line 552
    goto :goto_0

    .line 555
    :pswitch_5
    const/4 v0, 0x6

    .line 556
    goto :goto_0

    .line 559
    :pswitch_6
    const/4 v0, 0x7

    .line 560
    goto :goto_0

    .line 563
    :pswitch_7
    const/16 v0, 0x8

    .line 564
    goto :goto_0

    .line 519
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
    .line 1091
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

    .line 1018
    const/4 v0, 0x0

    .line 1023
    .local v0, orderBy:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/music/common/util/ListType;->getOrderByKeyword(I)Ljava/lang/String;

    move-result-object v0

    .line 1025
    packed-switch p0, :pswitch_data_0

    .line 1085
    :goto_0
    :pswitch_0
    return-object v0

    .line 1041
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

    .line 1042
    goto :goto_0

    .line 1045
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

    .line 1046
    goto :goto_0

    .line 1049
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

    .line 1050
    goto :goto_0

    .line 1053
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

    .line 1054
    goto :goto_0

    .line 1057
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

    .line 1058
    goto :goto_0

    .line 1068
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

    .line 1069
    goto/16 :goto_0

    .line 1073
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

    .line 1074
    goto/16 :goto_0

    .line 1077
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

    .line 1078
    goto/16 :goto_0

    .line 1081
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

    .line 1025
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
    .line 905
    invoke-static {p0}, Lcom/android/music/common/util/ListType;->getOrderByKeywordForLocale(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOrderByKeywordForLocale(I)Ljava/lang/String;
    .locals 1
    .parameter "listType"

    .prologue
    .line 792
    const/4 v0, 0x0

    .line 794
    .local v0, orderByKeyword:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 899
    :goto_0
    :pswitch_0
    return-object v0

    .line 798
    :pswitch_1
    const-string v0, "title"

    .line 799
    goto :goto_0

    .line 803
    :pswitch_2
    const-string v0, "name"

    .line 804
    goto :goto_0

    .line 808
    :pswitch_3
    const-string v0, "album"

    .line 809
    goto :goto_0

    .line 813
    :pswitch_4
    const-string v0, "artist"

    .line 814
    goto :goto_0

    .line 817
    :pswitch_5
    const-string v0, "genre_name"

    .line 818
    goto :goto_0

    .line 821
    :pswitch_6
    const-string v0, "composer"

    .line 822
    goto :goto_0

    .line 825
    :pswitch_7
    const-string v0, "year_name"

    .line 826
    goto :goto_0

    .line 845
    :pswitch_8
    const-string v0, "most_played"

    .line 846
    goto :goto_0

    .line 848
    :pswitch_9
    const-string v0, "recently_played"

    .line 849
    goto :goto_0

    .line 851
    :pswitch_a
    const-string v0, "date_added"

    .line 852
    goto :goto_0

    .line 856
    :pswitch_b
    const-string v0, "play_order"

    .line 857
    goto :goto_0

    .line 861
    :pswitch_c
    const-string v0, "track"

    .line 862
    goto :goto_0

    .line 867
    :pswitch_d
    const-string v0, "title"

    .line 868
    goto :goto_0

    .line 873
    :pswitch_e
    const-string v0, "album"

    .line 874
    goto :goto_0

    .line 879
    :pswitch_f
    const-string v0, "album"

    .line 880
    goto :goto_0

    .line 883
    :pswitch_10
    const-string v0, "track"

    .line 884
    goto :goto_0

    .line 895
    :pswitch_11
    const-string v0, "title"

    goto :goto_0

    .line 794
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
    .line 1170
    const/4 v0, 0x0

    .line 1172
    .local v0, orderBy:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 1184
    :goto_0
    return-object v0

    .line 1175
    :pswitch_0
    const-string v0, "date_modified"

    goto :goto_0

    .line 1177
    :pswitch_1
    const-string v0, "mime_type"

    goto :goto_0

    .line 1179
    :pswitch_2
    const-string v0, "_display_name"

    goto :goto_0

    .line 1181
    :pswitch_3
    const-string v0, "_size"

    goto :goto_0

    .line 1172
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
    .line 1153
    const/4 v0, 0x0

    .line 1155
    .local v0, orderBy:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/music/common/util/ListType;->getOrderByKeywordMyFiles(I)Ljava/lang/String;

    move-result-object v1

    .line 1156
    .local v1, orderByKeywork:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 1157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " desc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1165
    :goto_0
    return-object v0

    .line 1158
    :cond_0
    const/4 v2, 0x1

    if-gt v2, p0, :cond_1

    const/4 v2, 0x4

    if-ge p0, v2, :cond_1

    .line 1159
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

    .line 1162
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
    .line 499
    sget-object v0, Lcom/android/music/common/util/ListType;->ListTypeString:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "listType"

    .prologue
    .line 1208
    const/4 v1, 0x0

    .line 1210
    .local v1, str:Ljava/lang/String;
    sget-object v2, Lcom/android/music/common/util/ListType;->resStringID:[I

    aget v0, v2, p1

    .line 1212
    .local v0, resID:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1214
    return-object v1
.end method

.method public static getSubListType(I)I
    .locals 1
    .parameter "listType"

    .prologue
    .line 580
    const/4 v0, -0x1

    .line 581
    .local v0, subListType:I
    sparse-switch p0, :sswitch_data_0

    .line 613
    :goto_0
    return v0

    .line 585
    :sswitch_0
    const/16 v0, 0xd

    .line 586
    goto :goto_0

    .line 588
    :sswitch_1
    const/16 v0, 0xe

    .line 589
    goto :goto_0

    .line 591
    :sswitch_2
    const/16 v0, 0x10

    .line 592
    goto :goto_0

    .line 594
    :sswitch_3
    const/16 v0, 0x13

    .line 595
    goto :goto_0

    .line 597
    :sswitch_4
    const/16 v0, 0x14

    .line 598
    goto :goto_0

    .line 600
    :sswitch_5
    const/16 v0, 0x15

    .line 601
    goto :goto_0

    .line 603
    :sswitch_6
    const/16 v0, 0x16

    goto :goto_0

    .line 581
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

    .line 739
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 740
    const/4 v3, 0x0

    .line 787
    :goto_0
    return-object v3

    .line 741
    :cond_0
    const/4 v0, 0x0

    .line 742
    .local v0, TagIDString:Ljava/lang/String;
    const/4 v1, 0x0

    .line 744
    .local v1, columnString:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 773
    const-string v1, "_id"

    .line 778
    :goto_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 779
    .local v2, iColumnIndex:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 781
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

    .line 782
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

    .line 785
    :cond_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 787
    goto :goto_0

    .line 755
    .end local v2           #iColumnIndex:I
    :pswitch_0
    const-string v1, "composer"

    .line 756
    goto :goto_1

    .line 760
    :pswitch_1
    const-string v1, "year_name"

    .line 762
    goto :goto_1

    .line 744
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getUri(II)Landroid/net/Uri;
    .locals 4
    .parameter "listType"
    .parameter "iFilterID"

    .prologue
    .line 619
    const/4 v0, 0x0

    .line 621
    .local v0, uri:Landroid/net/Uri;
    packed-switch p0, :pswitch_data_0

    .line 732
    :goto_0
    :pswitch_0
    return-object v0

    .line 624
    :pswitch_1
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 625
    goto :goto_0

    .line 630
    :pswitch_2
    invoke-static {}, Lcom/android/music/common/data/SecMusic;->getPlaylistUri()Landroid/net/Uri;

    move-result-object v0

    .line 631
    goto :goto_0

    .line 635
    :pswitch_3
    sget-object v0, Lcom/android/music/common/data/SecMusic;->ALBUMS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 636
    goto :goto_0

    .line 640
    :pswitch_4
    sget-object v0, Lcom/android/music/common/data/SecMusic;->ARTISTS_ALBUM_ID_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 641
    goto :goto_0

    .line 645
    :pswitch_5
    sget-object v0, Lcom/android/music/common/data/SecMusic;->GENRES_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 646
    goto :goto_0

    .line 654
    :pswitch_6
    const-string v1, "external"

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Lcom/android/music/common/data/SecMusic;->getPlaylistTracklistUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 655
    goto :goto_0

    .line 659
    :pswitch_7
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 660
    goto :goto_0

    .line 663
    :pswitch_8
    sget-object v0, Lcom/android/music/common/data/SecMusic;->YEARS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 664
    goto :goto_0

    .line 667
    :pswitch_9
    sget-object v0, Lcom/android/music/common/data/SecMusic;->COMPOSERS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 668
    goto :goto_0

    .line 684
    :pswitch_a
    sget-object v0, Lcom/android/music/common/data/SecMusic$QuickList;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 685
    goto :goto_0

    .line 700
    :pswitch_b
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 621
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
