.class public Lcom/android/music/common/data/SecMusic;
.super Ljava/lang/Object;
.source "SecMusic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/common/data/SecMusic$MusicPlaylist;,
        Lcom/android/music/common/data/SecMusic$QuickList;
    }
.end annotation


# static fields
.field public static final ALBUMS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final ALBUMS_INTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final ARTISTS_ALBUM_ID_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final ARTISTS_ALBUM_ID_INTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final COMPOSERS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final COMPOSERS_INTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final GENRES_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final GENRES_INTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final YEARS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final YEARS_INTERNAL_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    const-string v0, "content://media/internal/audio/music_years"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/data/SecMusic;->YEARS_INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 136
    const-string v0, "content://media/external/audio/music_years"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/data/SecMusic;->YEARS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 139
    const-string v0, "content://media/internal/audio/music_composers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/data/SecMusic;->COMPOSERS_INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 141
    const-string v0, "content://media/external/audio/music_composers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/data/SecMusic;->COMPOSERS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 144
    const-string v0, "content://media/internal/audio/music_genres"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/data/SecMusic;->GENRES_INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 146
    const-string v0, "content://media/external/audio/music_genres"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/data/SecMusic;->GENRES_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 149
    const-string v0, "content://media/internal/audio/music_artists_album_id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/data/SecMusic;->ARTISTS_ALBUM_ID_INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 151
    const-string v0, "content://media/external/audio/music_artists_album_id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/data/SecMusic;->ARTISTS_ALBUM_ID_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 154
    const-string v0, "content://media/internal/audio/music_albums"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/data/SecMusic;->ALBUMS_INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 156
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

    .line 77
    return-void
.end method

.method public static getPlaylistTracklistUri(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 2
    .parameter "volumeName"
    .parameter "playlistId"

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->FEATURE_MUSIC_PLAYLIST()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-static {p0, p1, p2}, Lcom/android/music/common/data/SecMusic$MusicPlaylist;->getMembersContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    .line 116
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPlaylistUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->FEATURE_MUSIC_PLAYLIST()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    sget-object v0, Lcom/android/music/common/data/SecMusic$MusicPlaylist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 107
    :goto_0
    return-object v0

    .line 105
    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method
