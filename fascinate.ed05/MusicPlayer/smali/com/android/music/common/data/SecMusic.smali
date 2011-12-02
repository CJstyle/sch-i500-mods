.class public Lcom/android/music/common/data/SecMusic;
.super Ljava/lang/Object;
.source "SecMusic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/common/data/SecMusic$MusicPlaylist;,
        Lcom/android/music/common/data/SecMusic$QuickList;,
        Lcom/android/music/common/data/SecMusic$QuickListColumns;
    }
.end annotation


# static fields
.field public static final ALBUMS_EXTERNAL_CONTENT_URI:Landroid/net/Uri; = null

.field public static final ALBUMS_INTERNAL_CONTENT_URI:Landroid/net/Uri; = null

.field public static final ARTISTS_ALBUM_ID_EXTERNAL_CONTENT_URI:Landroid/net/Uri; = null

.field public static final ARTISTS_ALBUM_ID_INTERNAL_CONTENT_URI:Landroid/net/Uri; = null

.field public static final AUDIO_DATA_HASHCODE:Ljava/lang/String; = "_data_hashcode"

.field public static final AUDIO_PLAYLISTS_MAP:Ljava/lang/String; = "audio_playlists_map"

.field public static final AUTHORITY:Ljava/lang/String; = "media"

.field public static final COMPOSERS_EXTERNAL_CONTENT_URI:Landroid/net/Uri; = null

.field public static final COMPOSERS_INTERNAL_CONTENT_URI:Landroid/net/Uri; = null

.field private static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://media/"

.field public static final GENRES_EXTERNAL_CONTENT_URI:Landroid/net/Uri; = null

.field public static final GENRES_INTERNAL_CONTENT_URI:Landroid/net/Uri; = null

.field public static final GENRE_NAME:Ljava/lang/String; = "genre_name"

.field public static final YEARS_EXTERNAL_CONTENT_URI:Landroid/net/Uri; = null

.field public static final YEARS_INTERNAL_CONTENT_URI:Landroid/net/Uri; = null

.field public static final YEAR_NAME:Ljava/lang/String; = "year_name"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const-string v0, "content://media/internal/audio/music_years"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/data/SecMusic;->YEARS_INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 121
    const-string v0, "content://media/external/audio/music_years"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/data/SecMusic;->YEARS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 124
    const-string v0, "content://media/internal/audio/music_composers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/data/SecMusic;->COMPOSERS_INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 126
    const-string v0, "content://media/external/audio/music_composers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/data/SecMusic;->COMPOSERS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 129
    const-string v0, "content://media/internal/audio/music_genres"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/data/SecMusic;->GENRES_INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 131
    const-string v0, "content://media/external/audio/music_genres"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/data/SecMusic;->GENRES_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 134
    const-string v0, "content://media/internal/audio/music_artists_album_id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/data/SecMusic;->ARTISTS_ALBUM_ID_INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 136
    const-string v0, "content://media/external/audio/music_artists_album_id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/data/SecMusic;->ARTISTS_ALBUM_ID_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 139
    const-string v0, "content://media/internal/audio/music_albums"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/data/SecMusic;->ALBUMS_INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 141
    const-string v0, "content://media/external/audio/music_albums"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/data/SecMusic;->ALBUMS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static getPlaylistMapTable()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, mapTable:Ljava/lang/String;
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->FEATURE_MUSIC_PLAYLIST()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const-string v0, "music_audio_playlists_map"

    .line 114
    :goto_0
    return-object v0

    .line 112
    :cond_0
    const-string v0, "audio_playlists_map"

    goto :goto_0
.end method

.method public static getPlaylistTracklistUri(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 2
    .parameter "volumeName"
    .parameter "playlistId"

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->FEATURE_MUSIC_PLAYLIST()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-static {p0, p1, p2}, Lcom/android/music/common/data/SecMusic$MusicPlaylist;->getMembersContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    .line 101
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPlaylistUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->FEATURE_MUSIC_PLAYLIST()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    sget-object v0, Lcom/android/music/common/data/SecMusic$MusicPlaylist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 92
    :goto_0
    return-object v0

    .line 90
    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method
