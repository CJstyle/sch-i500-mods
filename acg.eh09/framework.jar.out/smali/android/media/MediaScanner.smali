.class public Landroid/media/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScanner$WplHandler;,
        Landroid/media/MediaScanner$MyMediaScannerClient;,
        Landroid/media/MediaScanner$FileCacheEntry;
    }
.end annotation


# static fields
.field private static final ALARMS_DIR:Ljava/lang/String; = "/alarms/"

.field private static final AUDIO_MP3:Ljava/lang/String; = "audio/mp3"

.field private static final AUDIO_MPEG3:Ljava/lang/String; = "audio/mpeg3"

.field private static final AUDIO_MPG:Ljava/lang/String; = "audio/mpg"

.field private static final AUDIO_PROJECTION:[Ljava/lang/String; = null

.field private static final AUDIO_XMP3:Ljava/lang/String; = "audio/x-mp3"

.field private static final AUDIO_XMPEG:Ljava/lang/String; = "audio/x-mpeg"

.field private static final AUDIO_XMPEG3:Ljava/lang/String; = "audio/x-mpeg3"

.field private static final DATE_MODIFIED_AUDIO_COLUMN_INDEX:I = 0x2

.field private static final DATE_MODIFIED_IMAGES_COLUMN_INDEX:I = 0x2

.field private static final DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX:I = 0x2

.field private static final DATE_MODIFIED_VIDEO_COLUMN_INDEX:I = 0x2

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final DOWNLOAD_DIR_SDCARD:Ljava/lang/String; = "/sdcard/download/"

.field private static final EXTERNAL_SD_ROOT:Ljava/lang/String; = null

.field private static final GENRE_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field private static ID3_GENRES:[Ljava/lang/String; = null

.field private static ID3_TO_SEC_GENRES:[Ljava/lang/String; = null

.field private static final ID_AUDIO_COLUMN_INDEX:I = 0x0

.field private static final ID_IMAGES_COLUMN_INDEX:I = 0x0

.field private static final ID_PLAYLISTS_COLUMN_INDEX:I = 0x0

.field private static final ID_VIDEO_COLUMN_INDEX:I = 0x0

.field private static final IMAGES_PROJECTION:[Ljava/lang/String; = null

.field private static final INTERNAL_SD_ROOT:Ljava/lang/String; = null

.field private static final MUSIC_DIR:Ljava/lang/String; = "/music/"

.field private static final NOTIFICATIONS_DIR:Ljava/lang/String; = "/notifications/"

.field private static final PATH_AUDIO_COLUMN_INDEX:I = 0x1

.field private static final PATH_IMAGES_COLUMN_INDEX:I = 0x1

.field private static final PATH_PLAYLISTS_COLUMN_INDEX:I = 0x1

.field private static final PATH_VIDEO_COLUMN_INDEX:I = 0x1

.field private static final PLAYLISTS_PROJECTION:[Ljava/lang/String; = null

.field private static final PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String; = null

.field private static final PODCAST_DIR:Ljava/lang/String; = "/podcasts/"

.field private static final RINGTONES_DIR:Ljava/lang/String; = "/ringtones/"

.field private static final TAG:Ljava/lang/String; = "MediaScanner"

.field private static final VIDEO_PROJECTION:[Ljava/lang/String;

.field public static generation:I

.field private static final mID3ToSecGenreMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAudioUri:Landroid/net/Uri;

.field private mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mCaseInsensitivePaths:Z

.field private mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

.field private mContext:Landroid/content/Context;

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultAlarmSet:Z

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationSet:Z

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultRingtoneSet:Z

.field private mExternalSDCardRemoval:Z

.field private mFileCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaScanner$FileCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mGeneration:I

.field private mGenreCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mGenresUri:Landroid/net/Uri;

.field private mImagesUri:Landroid/net/Uri;

.field private mInsertPendingCount_AUDIO:I

.field private mInsertPendingCount_IMAGE:I

.field private mInsertPendingCount_VIDEO:I

.field private mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;

.field private mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;

.field private mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;

.field private mMediaProvider:Landroid/content/IContentProvider;

.field private mNativeContext:I

.field private mOriginalCount:I

.field private mPlayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$FileCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistsUri:Landroid/net/Uri;

.field private mProcessGenres:Z

.field private mProcessPlaylists:Z

.field private mThumbsUri:Landroid/net/Uri;

.field private mVideoUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-string v6, "Alternative/Indie"

    const-string v5, "Dance"

    const-string v4, "Others"

    const-string v3, "Rock"

    .line 134
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Landroid/media/MediaScanner;->native_init()V

    .line 142
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScanner;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    .line 143
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScanner;->INTERNAL_SD_ROOT:Ljava/lang/String;

    .line 147
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->AUDIO_PROJECTION:[Ljava/lang/String;

    .line 157
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->VIDEO_PROJECTION:[Ljava/lang/String;

    .line 167
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mini_thumb_magic"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->IMAGES_PROJECTION:[Ljava/lang/String;

    .line 182
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->PLAYLISTS_PROJECTION:[Ljava/lang/String;

    .line 188
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "playlist_id"

    aput-object v1, v0, v7

    sput-object v0, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    .line 196
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->GENRE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 359
    const/16 v0, 0x95

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Blues"

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "Classic Rock"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Country"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Dance"

    aput-object v5, v0, v1

    const/4 v1, 0x4

    const-string v2, "Disco"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Funk"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Grunge"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Hip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Metal"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Oldies"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Other"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "R&B"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x12

    const-string v2, "Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Ska"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Death Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Pranks"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Euro-Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Ambient"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Trip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Jazz+Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Instrumental"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Acid"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Game"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Sound Clip"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Gospel"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Noise"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "AlternRock"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Space"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Meditative"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Instrumental Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Instrumental Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Ethnic"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Gothic"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Darkwave"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Techno-Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Pop-Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Eurodance"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Dream"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Southern Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Comedy"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Cult"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Top 40"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Christian Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Pop/Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Jungle"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Native American"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Cabaret"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "New Wave"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Psychadelic"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Rave"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Showtunes"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Trailer"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Lo-Fi"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Tribal"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Acid Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Acid Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Polka"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Retro"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Musical"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Rock & Roll"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Hard Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Folk-Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "National Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Swing"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Fast Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Bebob"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Revival"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Celtic"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Bluegrass"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Avantgarde"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Gothic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Progressive Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Psychedelic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Symphonic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Slow Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Big Band"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Chorus"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Acoustic"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Humour"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Speech"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Chanson"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Opera"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Chamber Music"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Sonata"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Symphony"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Booty Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Primus"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Porn Groove"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Satire"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Slow Jam"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Club"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Tango"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Samba"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "Folklore"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Power Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Rhythmic Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "Freestyle"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Duet"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Punk Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Drum Solo"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "A capella"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "Euro-House"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Dance Hall"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Goa"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Drum & Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Club-House"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "Hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "Terror"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "BritPop"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "Negerpunk"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "Polsk Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Beat"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "Christian Gangsta Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Heavy Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Black Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Crossover"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Contemporary Christian"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Christian Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Merengue"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Salsa"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Thrash Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Anime"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "Jpop"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Synthpop"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "and further - Unknown"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    .line 511
    const/16 v0, 0x95

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Blues"

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v2, "Country"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Dance"

    aput-object v5, v0, v1

    const/4 v1, 0x4

    const-string v2, "Dance"

    aput-object v5, v0, v1

    const/4 v1, 0x5

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Alternative/Indie"

    aput-object v6, v0, v1

    const/4 v1, 0x7

    const-string v2, "Rap/Hip Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0xc

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0xd

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Rap/Hip Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x12

    const-string v2, "Dance"

    aput-object v5, v0, v1

    const/16 v1, 0x13

    const-string v2, "Alternative/Indie"

    aput-object v6, v0, v1

    const/16 v1, 0x14

    const-string v2, "Alternative/Indie"

    aput-object v6, v0, v1

    const/16 v1, 0x15

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x17

    const-string v2, "Comedy/Spoken"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Dance"

    aput-object v5, v0, v1

    const/16 v1, 0x1a

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x22

    const-string v2, "Dance"

    aput-object v5, v0, v1

    const/16 v1, 0x23

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x25

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x26

    const-string v2, "Religious"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x28

    const-string v2, "Alternative/Indie"

    aput-object v6, v0, v1

    const/16 v1, 0x29

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x2c

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x30

    const-string v2, "World"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x32

    const-string v2, "Alternative/Indie"

    aput-object v6, v0, v1

    const/16 v1, 0x33

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Dance"

    aput-object v5, v0, v1

    const/16 v1, 0x37

    const-string v2, "Alternative/Indie"

    aput-object v6, v0, v1

    const/16 v1, 0x38

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x39

    const-string v2, "Comedy/Spoken"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Rap/Hip Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Religious"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Dance"

    aput-object v5, v0, v1

    const/16 v1, 0x40

    const-string v2, "World"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "Alternative/Indie"

    aput-object v6, v0, v1

    const/16 v1, 0x43

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x44

    const-string v2, "Dance"

    aput-object v5, v0, v1

    const/16 v1, 0x45

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x46

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x47

    const-string v2, "Alternative/Indie"

    aput-object v6, v0, v1

    const/16 v1, 0x48

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Dance"

    aput-object v5, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x50

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x52

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x55

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x58

    const-string v2, "World"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Country"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Alternative/Indie"

    aput-object v6, v0, v1

    const/16 v1, 0x60

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x64

    const-string v2, "Comedy/Spoken"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Comedy/Spoken"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "World"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Comedy/Spoken"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Dance"

    aput-object v5, v0, v1

    const/16 v1, 0x71

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "World"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x79

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x7b

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Dance"

    aput-object v5, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Dance"

    aput-object v5, v0, v1

    const/16 v1, 0x81

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x82

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Alternative/Indie"

    aput-object v6, v0, v1

    const/16 v1, 0x84

    const-string v2, "Alternative/Indie"

    aput-object v6, v0, v1

    const/16 v1, 0x85

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x86

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x87

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x88

    const-string v2, "Religious"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Religious"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Religious"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x91

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "<unknown>"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->ID3_TO_SEC_GENRES:[Ljava/lang/String;

    .line 663
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaScanner;->mID3ToSecGenreMap:Ljava/util/HashMap;

    .line 777
    sput v7, Landroid/media/MediaScanner;->generation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 742
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 806
    new-instance v0, Landroid/media/MediaScanner$MyMediaScannerClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V

    iput-object v0, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    .line 783
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_setup()V

    .line 784
    iput-object p1, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    .line 785
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 786
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 790
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaScanner;->mExternalSDCardRemoval:Z

    .line 791
    sget v0, Landroid/media/MediaScanner;->generation:I

    iput v0, p0, Landroid/media/MediaScanner;->mGeneration:I

    .line 794
    invoke-direct {p0}, Landroid/media/MediaScanner;->setDefaultRingtoneFileNames()V

    .line 795
    return-void
.end method

.method static synthetic access$100(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/media/MediaScanner;[Landroid/content/ContentValues;)[Landroid/content/ContentValues;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-object p1, p0, Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic access$1400(Landroid/media/MediaScanner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I

    return v0
.end method

.method static synthetic access$1402(Landroid/media/MediaScanner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput p1, p0, Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I

    return p1
.end method

.method static synthetic access$1408(Landroid/media/MediaScanner;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I

    return v0
.end method

.method static synthetic access$1500(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$1502(Landroid/media/MediaScanner;[Landroid/content/ContentValues;)[Landroid/content/ContentValues;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-object p1, p0, Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic access$1600(Landroid/media/MediaScanner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I

    return v0
.end method

.method static synthetic access$1602(Landroid/media/MediaScanner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput p1, p0, Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I

    return p1
.end method

.method static synthetic access$1608(Landroid/media/MediaScanner;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I

    return v0
.end method

.method static synthetic access$1700(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/media/MediaScanner;[Landroid/content/ContentValues;)[Landroid/content/ContentValues;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-object p1, p0, Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic access$1800(Landroid/media/MediaScanner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I

    return v0
.end method

.method static synthetic access$1802(Landroid/media/MediaScanner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput p1, p0, Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I

    return p1
.end method

.method static synthetic access$1808(Landroid/media/MediaScanner;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I

    return v0
.end method

.method static synthetic access$1900(Landroid/media/MediaScanner;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaScanner;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    return-void
.end method

.method static synthetic access$2100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    invoke-static {p0}, Landroid/media/MediaScanner;->getSecGenre(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    return v0
.end method

.method static synthetic access$2400(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return v0
.end method

.method static synthetic access$2402(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return p1
.end method

.method static synthetic access$2500(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return v0
.end method

.method static synthetic access$2602(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return p1
.end method

.method static synthetic access$2700(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return v0
.end method

.method static synthetic access$2802(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return p1
.end method

.method static synthetic access$2900(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    return v0
.end method

.method static synthetic access$3002(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mExternalSDCardRemoval:Z

    return p1
.end method

.method static synthetic access$3100(Landroid/media/MediaScanner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Landroid/media/MediaScanner;->mGeneration:I

    return v0
.end method

.method static synthetic access$3200(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 131
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaScanner;->addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/MediaScanner;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Landroid/media/MediaScanner;->GENRE_LOOKUP_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaScanner;->processFile_Special(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    return-void
.end method

.method private addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z
    .locals 16
    .parameter "entry"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"
    .parameter "index"

    .prologue
    .line 2888
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 2889
    .local v8, entryLength:I
    :goto_0
    if-lez v8, :cond_0

    const/4 v13, 0x1

    sub-int v13, v8, v13

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v13

    if-eqz v13, :cond_0

    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 2892
    :cond_0
    const/4 v13, 0x3

    if-ge v8, v13, :cond_1

    const/4 v13, 0x0

    .line 2945
    :goto_1
    return v13

    .line 2893
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v8, v13, :cond_2

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move v1, v13

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2897
    :cond_2
    const/4 v13, 0x0

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 2898
    .local v6, ch1:C
    const/16 v13, 0x2f

    if-eq v6, v13, :cond_3

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x1

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x3a

    if-ne v13, v14, :cond_8

    const/4 v13, 0x2

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x5c

    if-ne v13, v14, :cond_8

    :cond_3
    const/4 v13, 0x1

    move v9, v13

    .line 2901
    .local v9, fullPath:Z
    :goto_2
    if-nez v9, :cond_4

    .line 2902
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2907
    :cond_4
    const/4 v3, 0x0

    .line 2910
    .local v3, bestMatch:Landroid/media/MediaScanner$FileCacheEntry;
    const/4 v4, 0x0

    .line 2912
    .local v4, bestMatchLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 2913
    .local v10, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_5
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2914
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaScanner$FileCacheEntry;

    .line 2915
    .local v5, cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    iget-object v12, v5, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    .line 2917
    .local v12, path:Ljava/lang/String;
    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 2918
    move-object v3, v5

    .line 2930
    .end local v5           #cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v12           #path:Ljava/lang/String;
    :cond_6
    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    move-object v13, v0

    iget-object v14, v3, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 2931
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 2898
    .end local v3           #bestMatch:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v4           #bestMatchLength:I
    .end local v9           #fullPath:Z
    .end local v10           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_8
    const/4 v13, 0x0

    move v9, v13

    goto :goto_2

    .line 2922
    .restart local v3       #bestMatch:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v4       #bestMatchLength:I
    .restart local v5       #cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v9       #fullPath:Z
    .restart local v10       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    .restart local v12       #path:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 2923
    .local v11, matchLength:I
    if-le v11, v4, :cond_5

    .line 2924
    move-object v3, v5

    .line 2925
    move v4, v11

    goto :goto_3

    .line 2936
    .end local v5           #cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v11           #matchLength:I
    .end local v12           #path:Ljava/lang/String;
    :cond_a
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/ContentValues;->clear()V

    .line 2937
    const-string/jumbo v13, "play_order"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p4

    move-object v1, v13

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2938
    const-string v13, "audio_id"

    iget-wide v14, v3, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p4

    move-object v1, v13

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2939
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v13, v0

    move-object v0, v13

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2945
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 2940
    :catch_0
    move-exception v13

    move-object v7, v13

    .line 2941
    .local v7, e:Landroid/os/RemoteException;
    const-string v13, "MediaScanner"

    const-string v14, "RemoteException in MediaScanner.addPlayListEntry()"

    invoke-static {v13, v14, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2942
    const/4 v13, 0x0

    goto/16 :goto_1
.end method

.method private static getSecGenre(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "id3Genres"

    .prologue
    .line 675
    move-object v0, p0

    .line 677
    .local v0, secGenre:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 678
    const-string v1, "<unknown>"

    .line 690
    :goto_0
    return-object v1

    .line 680
    :cond_0
    sget-object v1, Landroid/media/MediaScanner;->mID3ToSecGenreMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 682
    invoke-static {}, Landroid/media/MediaScanner;->initID3toSecGenreHashMap()V

    .line 685
    :cond_1
    sget-object v1, Landroid/media/MediaScanner;->mID3ToSecGenreMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 687
    sget-object v1, Landroid/media/MediaScanner;->mID3ToSecGenreMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #secGenre:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #secGenre:Ljava/lang/String;
    :cond_2
    move-object v1, v0

    .line 690
    goto :goto_0
.end method

.method private inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "path"
    .parameter "directories"

    .prologue
    .line 2398
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 2399
    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2400
    const/4 v1, 0x1

    .line 2403
    :goto_1
    return v1

    .line 2398
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2403
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static initID3toSecGenreHashMap()V
    .locals 4

    .prologue
    .line 667
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 669
    sget-object v1, Landroid/media/MediaScanner;->mID3ToSecGenreMap:Ljava/util/HashMap;

    sget-object v2, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/media/MediaScanner;->ID3_TO_SEC_GENRES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 671
    :cond_0
    return-void
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 3
    .parameter "volumeName"

    .prologue
    const/4 v2, 0x1

    .line 2712
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 2714
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    .line 2715
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    .line 2716
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    .line 2717
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    .line 2719
    const-string v0, "internal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2721
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    .line 2722
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    .line 2723
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;

    .line 2724
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;

    .line 2725
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    .line 2727
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2728
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    .line 2731
    :cond_0
    return-void
.end method

.method private matchPaths(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .parameter "path1"
    .parameter "path2"

    .prologue
    .line 2859
    const/4 v10, 0x0

    .line 2860
    .local v10, result:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 2861
    .local v8, end1:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    .line 2863
    .local v9, end2:I
    :goto_0
    if-lez v8, :cond_0

    if-lez v9, :cond_0

    .line 2864
    const/16 v0, 0x2f

    const/4 v1, 0x1

    sub-int v1, v8, v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v11

    .line 2865
    .local v11, slash1:I
    const/16 v0, 0x2f

    const/4 v1, 0x1

    sub-int v1, v9, v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    .line 2866
    .local v12, slash2:I
    const/16 v0, 0x5c

    const/4 v1, 0x1

    sub-int v1, v8, v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 2867
    .local v6, backSlash1:I
    const/16 v0, 0x5c

    const/4 v1, 0x1

    sub-int v1, v9, v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    .line 2868
    .local v7, backSlash2:I
    if-le v11, v6, :cond_1

    move v2, v11

    .line 2869
    .local v2, start1:I
    :goto_1
    if-le v12, v7, :cond_2

    move v4, v12

    .line 2870
    .local v4, start2:I
    :goto_2
    if-gez v2, :cond_3

    const/4 v2, 0x0

    .line 2871
    :goto_3
    if-gez v4, :cond_4

    const/4 v4, 0x0

    .line 2872
    :goto_4
    sub-int v5, v8, v2

    .line 2873
    .local v5, length:I
    sub-int v0, v9, v4

    if-eq v0, v5, :cond_5

    .line 2881
    .end local v2           #start1:I
    .end local v4           #start2:I
    .end local v5           #length:I
    .end local v6           #backSlash1:I
    .end local v7           #backSlash2:I
    .end local v11           #slash1:I
    .end local v12           #slash2:I
    :cond_0
    return v10

    .restart local v6       #backSlash1:I
    .restart local v7       #backSlash2:I
    .restart local v11       #slash1:I
    .restart local v12       #slash2:I
    :cond_1
    move v2, v6

    .line 2868
    goto :goto_1

    .restart local v2       #start1:I
    :cond_2
    move v4, v7

    .line 2869
    goto :goto_2

    .line 2870
    .restart local v4       #start2:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2871
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2874
    .restart local v5       #length:I
    :cond_5
    const/4 v1, 0x1

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2875
    add-int/lit8 v10, v10, 0x1

    .line 2876
    const/4 v0, 0x1

    sub-int v8, v2, v0

    .line 2877
    const/4 v0, 0x1

    sub-int v9, v4, v0

    .line 2879
    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup()V
.end method

.method public static native notifyUnmount(Ljava/lang/String;)V
.end method

.method private postscan([Ljava/lang/String;)V
    .locals 21
    .parameter "directories"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2539
    const-string v17, "MediaScanner"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "postscan enter: directories - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, p1, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    const/4 v5, 0x0

    .line 2549
    .local v5, bIsSkipExternalSD:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 2550
    .local v10, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    const/4 v13, 0x0

    .line 2551
    .local v13, needScanThumbnails:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mExternalSDCardRemoval:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 2552
    const-string v17, "MediaScanner"

    const-string v18, "mExternalSDCardRemoval is true. set bIsSkipExternalSD true"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    const/4 v5, 0x1

    .line 2556
    :cond_0
    const/4 v6, 0x0

    .line 2557
    .local v6, dbAccessor:Landroid/content/IContentProviderDBAccess;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/content/IContentProviderDBAccess;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 2558
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v6, v0

    .end local v6           #dbAccessor:Landroid/content/IContentProviderDBAccess;
    check-cast v6, Landroid/content/IContentProviderDBAccess;

    .line 2561
    .restart local v6       #dbAccessor:Landroid/content/IContentProviderDBAccess;
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2562
    .local v11, mFileToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2565
    if-eqz v6, :cond_2

    .line 2566
    :try_start_0
    const-string v17, "external"

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/content/IContentProviderDBAccess;->beginDBTransaction(Ljava/lang/String;)V

    .line 2567
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v0, v6

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProviderDBAccess;->modifyDBCleanupTrigger(IZ)V

    .line 2570
    :cond_2
    const-string v17, "MediaScanner"

    const-string/jumbo v18, "start checking FileCacheEntry"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    :cond_3
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 2574
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/MediaScanner$FileCacheEntry;

    .line 2575
    .local v7, entry:Landroid/media/MediaScanner$FileCacheEntry;
    iget-object v14, v7, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    .line 2581
    .local v14, path:Ljava/lang/String;
    if-nez v5, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mGeneration:I

    move/from16 v17, v0

    sget v18, Landroid/media/MediaScanner;->generation:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_b

    .line 2582
    sget-object v17, Landroid/media/MediaScanner;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    const/16 v18, 0x0

    aget-object v18, p1, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 2679
    .end local v7           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v14           #path:Ljava/lang/String;
    :cond_4
    const-string v17, "MediaScanner"

    const-string v18, "end checking FileCacheEntry"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    if-eqz v6, :cond_5

    .line 2681
    invoke-interface {v6}, Landroid/content/IContentProviderDBAccess;->setDBTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2684
    :cond_5
    if-eqz v6, :cond_6

    .line 2685
    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v0, v6

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProviderDBAccess;->modifyDBCleanupTrigger(IZ)V

    .line 2686
    invoke-interface {v6}, Landroid/content/IContentProviderDBAccess;->endDBTransaction()V

    .line 2693
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 2694
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->processPlayLists()V

    .line 2697
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    move/from16 v17, v0

    if-eqz v17, :cond_8

    if-eqz v13, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    const-string v18, "external"

    invoke-static/range {v18 .. v18}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 2698
    const-string v17, "MediaScanner"

    const-string v18, "call pruneDeadThumbnailFils()"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2699
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->pruneDeadThumbnailFiles()V

    .line 2703
    :cond_9
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;

    .line 2704
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 2705
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    .line 2706
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 2708
    const-string v17, "MediaScanner"

    const-string/jumbo v18, "postscan return"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    return-void

    .line 2585
    .restart local v7       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v14       #path:Ljava/lang/String;
    :cond_a
    const/4 v5, 0x1

    .line 2590
    :cond_b
    if-eqz v5, :cond_d

    :try_start_1
    sget-object v17, Landroid/media/MediaScanner;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 2592
    const-string v17, "MediaScanner"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "postscan : skip this path - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 2684
    .end local v7           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v14           #path:Ljava/lang/String;
    :catchall_0
    move-exception v17

    if-eqz v6, :cond_c

    .line 2685
    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object v0, v6

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProviderDBAccess;->modifyDBCleanupTrigger(IZ)V

    .line 2686
    invoke-interface {v6}, Landroid/content/IContentProviderDBAccess;->endDBTransaction()V

    :cond_c
    throw v17

    .line 2600
    .restart local v7       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v14       #path:Ljava/lang/String;
    :cond_d
    const/4 v8, 0x0

    .line 2602
    .local v8, fileMissing:Z
    :try_start_2
    move-object v0, v7

    iget-boolean v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mSeenInFileSystem:Z

    move/from16 v17, v0

    if-nez v17, :cond_f

    .line 2603
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 2612
    invoke-static {v14}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v12

    .line 2613
    .local v12, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v12, :cond_10

    const/16 v17, 0x0

    move/from16 v9, v17

    .line 2614
    .local v9, fileType:I
    :goto_1
    sget-object v17, Landroid/media/MediaScanner;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-static {}, Landroid/os/Environment;->getExternalMemoryStatus()Z

    move-result v17

    if-nez v17, :cond_e

    invoke-static {v9}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v17

    if-nez v17, :cond_f

    .line 2617
    :cond_e
    const/4 v8, 0x1

    .line 2632
    .end local v9           #fileType:I
    .end local v12           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_f
    :goto_2
    if-eqz v8, :cond_3

    .line 2637
    invoke-static {v14}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v12

    .line 2638
    .restart local v12       #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v12, :cond_12

    const/16 v17, 0x0

    move/from16 v9, v17

    .line 2640
    .restart local v9       #fileType:I
    :goto_3
    invoke-static {v9}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 2641
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 2642
    .local v16, values:Landroid/content/ContentValues;
    const-string v17, "_data"

    const-string v18, ""

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2643
    const-string v17, "date_modified"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2644
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object v0, v7

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v19, v0

    invoke-static/range {v18 .. v20}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2613
    .end local v9           #fileType:I
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_10
    move-object v0, v12

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v17, v0

    move/from16 v9, v17

    goto :goto_1

    .line 2625
    .end local v12           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_11
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2626
    .local v15, testFile:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_f

    .line 2627
    const/4 v8, 0x1

    goto :goto_2

    .line 2638
    .end local v15           #testFile:Ljava/io/File;
    .restart local v12       #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_12
    move-object v0, v12

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v17, v0

    move/from16 v9, v17

    goto :goto_3

    .line 2648
    .restart local v9       #fileType:I
    :cond_13
    invoke-static {v9}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 2650
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v17, v0

    move-object v0, v7

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object v0, v7

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v19, v0

    invoke-static/range {v18 .. v20}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-interface/range {v17 .. v20}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2651
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 2652
    :cond_14
    invoke-static {v9}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 2657
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v17, v0

    move-object v0, v7

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object v0, v7

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v19, v0

    invoke-static/range {v18 .. v20}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-interface/range {v17 .. v20}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2659
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 2665
    :cond_15
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 2666
    .restart local v16       #values:Landroid/content/ContentValues;
    const-string v17, "_data"

    const-string v18, ""

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2667
    const-string v17, "date_modified"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2668
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v17, v0

    move-object v0, v7

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object v0, v7

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v19, v0

    invoke-static/range {v18 .. v20}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2671
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v17, v0

    move-object v0, v7

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object v0, v7

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v19, v0

    invoke-static/range {v18 .. v20}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-interface/range {v17 .. v20}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2672
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private prescan(Ljava/lang/String;)V
    .locals 25
    .parameter "Path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2150
    const-string v3, "MediaScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "prescan enter: path - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    const/4 v15, 0x0

    .line 2152
    .local v15, c:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 2153
    .local v6, where:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2156
    .local v7, selectionArgs:[Ljava/lang/String;
    const/16 v17, 0x0

    .line 2160
    .local v17, isFile:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v3, v0

    if-nez v3, :cond_4

    .line 2161
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    .line 2165
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    move-object v3, v0

    if-nez v3, :cond_5

    .line 2166
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 2174
    :goto_1
    if-eqz p1, :cond_0

    .line 2175
    :try_start_0
    new-instance v3, Ljava/io/File;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v17

    .line 2176
    if-eqz v17, :cond_6

    .line 2177
    const-string v6, "_data=?"

    .line 2178
    const/4 v3, 0x1

    move v0, v3

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v3, 0x0

    aput-object p1, v24, v3

    .end local v7           #selectionArgs:[Ljava/lang/String;
    .local v24, selectionArgs:[Ljava/lang/String;
    move-object/from16 v7, v24

    .line 2183
    .end local v24           #selectionArgs:[Ljava/lang/String;
    .restart local v7       #selectionArgs:[Ljava/lang/String;
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    move-object v4, v0

    sget-object v5, Landroid/media/MediaScanner;->AUDIO_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v15

    .line 2185
    if-eqz v15, :cond_9

    .line 2187
    :cond_1
    :goto_3
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2188
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2189
    .local v10, rowId:J
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2190
    .local v12, path:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2195
    .local v13, lastModified:J
    const-string v3, "/"

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2196
    move-object/from16 v18, v12

    .line 2197
    .local v18, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    move v3, v0

    if-eqz v3, :cond_2

    .line 2198
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 2200
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v3, v0

    new-instance v8, Landroid/media/MediaScanner$FileCacheEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    move-object v9, v0

    invoke-direct/range {v8 .. v14}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    move-object v0, v3

    move-object/from16 v1, v18

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 2205
    .end local v10           #rowId:J
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #lastModified:J
    .end local v18           #key:Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2206
    const/4 v15, 0x0

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2389
    :catchall_1
    move-exception v3

    if-eqz v15, :cond_3

    .line 2390
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3

    .line 2163
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 2168
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    .line 2180
    :cond_6
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data LIKE \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, ""

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    :cond_7
    const-string v4, "/"

    goto :goto_4

    .line 2205
    :cond_8
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2206
    const/4 v15, 0x0

    .line 2211
    :cond_9
    if-eqz p1, :cond_e

    .line 2212
    if-eqz v17, :cond_c

    .line 2213
    const-string v6, "_data=?"

    .line 2220
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    move-object v4, v0

    sget-object v5, Landroid/media/MediaScanner;->VIDEO_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v15

    .line 2222
    if-eqz v15, :cond_10

    .line 2224
    :cond_a
    :goto_6
    :try_start_4
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2225
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2226
    .restart local v10       #rowId:J
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2227
    .restart local v12       #path:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2232
    .restart local v13       #lastModified:J
    const-string v3, "/"

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2233
    move-object/from16 v18, v12

    .line 2234
    .restart local v18       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    move v3, v0

    if-eqz v3, :cond_b

    .line 2235
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 2237
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v3, v0

    new-instance v8, Landroid/media/MediaScanner$FileCacheEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    move-object v9, v0

    invoke-direct/range {v8 .. v14}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    move-object v0, v3

    move-object/from16 v1, v18

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    .line 2242
    .end local v10           #rowId:J
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #lastModified:J
    .end local v18           #key:Ljava/lang/String;
    :catchall_2
    move-exception v3

    :try_start_5
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2243
    const/4 v15, 0x0

    throw v3

    .line 2215
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data LIKE \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, ""

    :goto_7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_5

    :cond_d
    const-string v4, "/"

    goto :goto_7

    .line 2218
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 2242
    :cond_f
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2243
    const/4 v15, 0x0

    .line 2248
    :cond_10
    if-eqz p1, :cond_15

    .line 2249
    if-eqz v17, :cond_13

    .line 2250
    const-string v6, "_data=?"

    .line 2257
    :goto_8
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 2258
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    move-object v4, v0

    sget-object v5, Landroid/media/MediaScanner;->IMAGES_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v15

    .line 2260
    if-eqz v15, :cond_1b

    .line 2286
    const/16 v19, 0x0

    .line 2287
    .local v19, mDbEntryToDelete:[J
    const/16 v22, 0x0

    .line 2289
    .local v22, numDbEntryToDelete:I
    :try_start_6
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 2290
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    move v3, v0

    move v0, v3

    new-array v0, v0, [J

    move-object/from16 v19, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move/from16 v23, v22

    .line 2291
    .end local v22           #numDbEntryToDelete:I
    .local v23, numDbEntryToDelete:I
    :goto_9
    :try_start_7
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2292
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2293
    .restart local v10       #rowId:J
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2294
    .restart local v12       #path:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2298
    .restart local v13       #lastModified:J
    const/4 v3, 0x3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 2299
    .local v20, magic:J
    if-nez v17, :cond_11

    const-wide/16 v3, 0x0

    cmp-long v3, v20, v3

    if-nez v3, :cond_11

    const-string v3, "internal"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2303
    :cond_11
    const-string v3, "/"

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2304
    move-object/from16 v18, v12

    .line 2305
    .restart local v18       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    move v3, v0

    if-eqz v3, :cond_12

    .line 2306
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 2308
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v3, v0

    new-instance v8, Landroid/media/MediaScanner$FileCacheEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    move-object v9, v0

    invoke-direct/range {v8 .. v14}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    move-object v0, v3

    move-object/from16 v1, v18

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    move/from16 v22, v23

    .end local v18           #key:Ljava/lang/String;
    .end local v23           #numDbEntryToDelete:I
    .restart local v22       #numDbEntryToDelete:I
    :goto_a
    move/from16 v23, v22

    .line 2316
    .end local v22           #numDbEntryToDelete:I
    .restart local v23       #numDbEntryToDelete:I
    goto :goto_9

    .line 2252
    .end local v10           #rowId:J
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #lastModified:J
    .end local v19           #mDbEntryToDelete:[J
    .end local v20           #magic:J
    .end local v23           #numDbEntryToDelete:I
    :cond_13
    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data LIKE \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, ""

    :goto_b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_8

    :cond_14
    const-string v4, "/"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_b

    .line 2255
    :cond_15
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 2314
    .restart local v10       #rowId:J
    .restart local v12       #path:Ljava/lang/String;
    .restart local v13       #lastModified:J
    .restart local v19       #mDbEntryToDelete:[J
    .restart local v20       #magic:J
    .restart local v23       #numDbEntryToDelete:I
    :cond_16
    add-int/lit8 v22, v23, 0x1

    .end local v23           #numDbEntryToDelete:I
    .restart local v22       #numDbEntryToDelete:I
    :try_start_9
    aput-wide v10, v19, v23
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_a

    .line 2321
    .end local v10           #rowId:J
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #lastModified:J
    .end local v20           #magic:J
    :catchall_3
    move-exception v3

    :goto_c
    :try_start_a
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2322
    const/4 v15, 0x0

    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2317
    .end local v22           #numDbEntryToDelete:I
    .restart local v23       #numDbEntryToDelete:I
    :cond_17
    if-lez v23, :cond_18

    :try_start_b
    const-string v3, "MediaScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Be careful if the code ends up here!!!  mDbEntryToDelete : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 2321
    :cond_18
    :try_start_c
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2322
    const/4 v15, 0x0

    .line 2326
    if-lez v23, :cond_1b

    .line 2327
    const/16 v16, 0x0

    .line 2328
    .local v16, dbAccessor:Landroid/content/IContentProviderDBAccess;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v3, v0

    instance-of v3, v3, Landroid/content/IContentProviderDBAccess;

    if-eqz v3, :cond_19

    .line 2329
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v16, v0

    .end local v16           #dbAccessor:Landroid/content/IContentProviderDBAccess;
    check-cast v16, Landroid/content/IContentProviderDBAccess;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 2332
    .restart local v16       #dbAccessor:Landroid/content/IContentProviderDBAccess;
    :cond_19
    if-eqz v16, :cond_1b

    .line 2334
    :try_start_d
    const-string v3, "external"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/content/IContentProviderDBAccess;->beginDBTransaction(Ljava/lang/String;)V

    .line 2335
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move v1, v3

    move v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProviderDBAccess;->modifyDBCleanupTrigger(IZ)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    move/from16 v22, v23

    .line 2336
    .end local v23           #numDbEntryToDelete:I
    .restart local v22       #numDbEntryToDelete:I
    :goto_d
    if-lez v22, :cond_1a

    .line 2337
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    move-object v4, v0

    add-int/lit8 v22, v22, -0x1

    aget-wide v8, v19, v22

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-interface {v3, v4, v5, v8}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_d

    .line 2341
    :catchall_4
    move-exception v3

    :goto_e
    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_f
    move-object/from16 v0, v16

    move v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProviderDBAccess;->modifyDBCleanupTrigger(IZ)V

    .line 2342
    invoke-interface/range {v16 .. v16}, Landroid/content/IContentProviderDBAccess;->endDBTransaction()V

    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 2339
    :cond_1a
    :try_start_10
    invoke-interface/range {v16 .. v16}, Landroid/content/IContentProviderDBAccess;->setDBTransactionSuccessful()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 2341
    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_11
    move-object/from16 v0, v16

    move v1, v3

    move v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProviderDBAccess;->modifyDBCleanupTrigger(IZ)V

    .line 2342
    invoke-interface/range {v16 .. v16}, Landroid/content/IContentProviderDBAccess;->endDBTransaction()V

    .line 2351
    .end local v16           #dbAccessor:Landroid/content/IContentProviderDBAccess;
    .end local v19           #mDbEntryToDelete:[J
    .end local v22           #numDbEntryToDelete:I
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    move v3, v0

    if-eqz v3, :cond_22

    .line 2353
    if-eqz p1, :cond_20

    .line 2354
    if-eqz v17, :cond_1e

    .line 2355
    const-string v6, "_data=?"

    .line 2362
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-object v4, v0

    sget-object v5, Landroid/media/MediaScanner;->PLAYLISTS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    move-result-object v15

    .line 2364
    if-eqz v15, :cond_22

    .line 2366
    :cond_1c
    :goto_10
    :try_start_12
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 2367
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2369
    .restart local v12       #path:Ljava/lang/String;
    if-eqz v12, :cond_1c

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1c

    .line 2370
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2371
    .restart local v10       #rowId:J
    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2373
    .restart local v13       #lastModified:J
    move-object/from16 v18, v12

    .line 2374
    .restart local v18       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    move v3, v0

    if-eqz v3, :cond_1d

    .line 2375
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 2377
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v3, v0

    new-instance v8, Landroid/media/MediaScanner$FileCacheEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-object v9, v0

    invoke-direct/range {v8 .. v14}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    move-object v0, v3

    move-object/from16 v1, v18

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    goto :goto_10

    .line 2382
    .end local v10           #rowId:J
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #lastModified:J
    .end local v18           #key:Ljava/lang/String;
    :catchall_5
    move-exception v3

    :try_start_13
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2383
    const/4 v15, 0x0

    throw v3

    .line 2357
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data LIKE \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, ""

    :goto_11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_f

    :cond_1f
    const-string v4, "/"

    goto :goto_11

    .line 2360
    :cond_20
    const/4 v6, 0x0

    goto/16 :goto_f

    .line 2382
    :cond_21
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 2383
    const/4 v15, 0x0

    .line 2389
    :cond_22
    if-eqz v15, :cond_23

    .line 2390
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2394
    :cond_23
    const-string v3, "MediaScanner"

    const-string/jumbo v4, "prescan return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    return-void

    .line 2341
    .restart local v16       #dbAccessor:Landroid/content/IContentProviderDBAccess;
    .restart local v19       #mDbEntryToDelete:[J
    .restart local v23       #numDbEntryToDelete:I
    :catchall_6
    move-exception v3

    move/from16 v22, v23

    .end local v23           #numDbEntryToDelete:I
    .restart local v22       #numDbEntryToDelete:I
    goto/16 :goto_e

    .line 2321
    .end local v16           #dbAccessor:Landroid/content/IContentProviderDBAccess;
    .end local v22           #numDbEntryToDelete:I
    .restart local v23       #numDbEntryToDelete:I
    :catchall_7
    move-exception v3

    move/from16 v22, v23

    .end local v23           #numDbEntryToDelete:I
    .restart local v22       #numDbEntryToDelete:I
    goto/16 :goto_c

    .end local v22           #numDbEntryToDelete:I
    .restart local v10       #rowId:J
    .restart local v12       #path:Ljava/lang/String;
    .restart local v13       #lastModified:J
    .restart local v20       #magic:J
    .restart local v23       #numDbEntryToDelete:I
    :cond_24
    move/from16 v22, v23

    .end local v23           #numDbEntryToDelete:I
    .restart local v22       #numDbEntryToDelete:I
    goto/16 :goto_a
.end method

.method private native processDirectory(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private native processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private native processFile_Special(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 10
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 2949
    const/4 v8, 0x0

    .line 2951
    .local v8, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2952
    .local v7, f:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2953
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x2000

    invoke-direct {v9, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2955
    .end local v8           #reader:Ljava/io/BufferedReader;
    .local v9, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 2956
    .local v1, line:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2957
    .local v5, index:I
    :goto_0
    if-eqz v1, :cond_1

    .line 2959
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x23

    if-eq v0, v2, :cond_0

    .line 2960
    invoke-virtual {p4}, Landroid/content/ContentValues;->clear()V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2961
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2962
    add-int/lit8 v5, v5, 0x1

    .line 2964
    :cond_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v8, v9

    .line 2971
    .end local v1           #line:Ljava/lang/String;
    .end local v5           #index:I
    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :cond_2
    if-eqz v8, :cond_3

    .line 2972
    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2977
    .end local v7           #f:Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 2973
    .restart local v7       #f:Ljava/io/File;
    :catch_0
    move-exception v6

    .line 2974
    .local v6, e:Ljava/io/IOException;
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2967
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #f:Ljava/io/File;
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 2968
    .restart local v6       #e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2971
    if-eqz v8, :cond_3

    .line 2972
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2973
    :catch_2
    move-exception v6

    .line 2974
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2970
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 2971
    :goto_3
    if-eqz v8, :cond_4

    .line 2972
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2975
    :cond_4
    :goto_4
    throw v0

    .line 2973
    :catch_3
    move-exception v6

    .line 2974
    .restart local v6       #e:Ljava/io/IOException;
    const-string v1, "MediaScanner"

    const-string v2, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2970
    .end local v6           #e:Ljava/io/IOException;
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #f:Ljava/io/File;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v0

    move-object v8, v9

    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 2967
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v6, v0

    move-object v8, v9

    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processPlayLists()V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3076
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 3077
    .local v16, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 3078
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/MediaScanner$FileCacheEntry;

    .line 3079
    .local v13, entry:Landroid/media/MediaScanner$FileCacheEntry;
    move-object v0, v13

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 3082
    .local v21, path:Ljava/lang/String;
    iget-boolean v5, v13, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    if-eqz v5, :cond_0

    .line 3083
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 3084
    .local v26, values:Landroid/content/ContentValues;
    const/16 v5, 0x2f

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    .line 3085
    .local v18, lastSlash:I
    if-gez v18, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3087
    :cond_1
    move-object v0, v13

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v23, v0

    .line 3088
    .local v23, rowId:J
    const-wide/16 v7, 0x0

    cmp-long v5, v23, v7

    if-nez v5, :cond_5

    .line 3091
    const/16 v5, 0x2e

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    .line 3092
    .local v17, lastDot:I
    if-gez v17, :cond_4

    add-int/lit8 v5, v18, 0x1

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v20, v5

    .line 3093
    .local v20, name:Ljava/lang/String;
    :goto_1
    const-string v5, "name"

    move-object/from16 v0, v26

    move-object v1, v5

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3094
    const-string v5, "_data"

    move-object/from16 v0, v26

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3095
    const-string v5, "date_modified"

    iget-wide v7, v13, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3096
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v25

    .line 3097
    .local v25, uri:Landroid/net/Uri;
    invoke-static/range {v25 .. v25}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v23

    .line 3098
    const-string v5, "members"

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 3111
    .end local v17           #lastDot:I
    .end local v20           #name:Ljava/lang/String;
    .local v6, membersUri:Landroid/net/Uri;
    :goto_2
    const/4 v5, 0x0

    add-int/lit8 v7, v18, 0x1

    move-object/from16 v0, v21

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 3112
    .local v22, playListDirectory:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v19

    .line 3113
    .local v19, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v19, :cond_6

    const/4 v5, 0x0

    move v14, v5

    .line 3115
    .local v14, fileType:I
    :goto_3
    const/16 v5, 0x29

    if-ne v14, v5, :cond_7

    .line 3116
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object v3, v6

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner;->processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 3122
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    sget-object v7, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 3125
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_3

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_9

    .line 3126
    :cond_3
    const-string v5, "MediaScanner"

    const-string/jumbo v6, "playlist is empty - deleting"

    .end local v6           #membersUri:Landroid/net/Uri;
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v25

    move-object v2, v6

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3139
    :goto_5
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3092
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v14           #fileType:I
    .end local v19           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v22           #playListDirectory:Ljava/lang/String;
    .end local v25           #uri:Landroid/net/Uri;
    .restart local v17       #lastDot:I
    :cond_4
    add-int/lit8 v5, v18, 0x1

    move-object/from16 v0, v21

    move v1, v5

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v20, v5

    goto/16 :goto_1

    .line 3100
    .end local v17           #lastDot:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, v23

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    .line 3103
    .restart local v25       #uri:Landroid/net/Uri;
    const-string v5, "date_modified"

    iget-wide v7, v13, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3104
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object v3, v6

    move-object v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3107
    const-string v5, "members"

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 3108
    .restart local v6       #membersUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3113
    .restart local v19       #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .restart local v22       #playListDirectory:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move v5, v0

    move v14, v5

    goto/16 :goto_3

    .line 3117
    .restart local v14       #fileType:I
    :cond_7
    const/16 v5, 0x2a

    if-ne v14, v5, :cond_8

    .line 3118
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object v3, v6

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner;->processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_4

    .line 3119
    :cond_8
    const/16 v5, 0x2b

    if-ne v14, v5, :cond_2

    .line 3120
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaScanner;->processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_4

    .line 3131
    .restart local v12       #cursor:Landroid/database/Cursor;
    :cond_9
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://media/external/audio/music_playlists/"

    .end local v6           #membersUri:Landroid/net/Uri;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/members_from_default"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 3133
    .local v15, insertUri:Landroid/net/Uri;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 3135
    .local v11, contentValues:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    invoke-interface {v5, v15, v11}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    .line 3139
    .end local v11           #contentValues:Landroid/content/ContentValues;
    .end local v15           #insertUri:Landroid/net/Uri;
    :catchall_0
    move-exception v5

    if-eqz v12, :cond_a

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v5

    .line 3143
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v13           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v14           #fileType:I
    .end local v18           #lastSlash:I
    .end local v19           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v21           #path:Ljava/lang/String;
    .end local v22           #playListDirectory:Ljava/lang/String;
    .end local v23           #rowId:J
    .end local v25           #uri:Landroid/net/Uri;
    .end local v26           #values:Landroid/content/ContentValues;
    :cond_b
    return-void
.end method

.method private processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 12
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 2980
    const/4 v10, 0x0

    .line 2982
    .local v10, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2983
    .local v8, f:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2984
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x2000

    invoke-direct {v11, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2986
    .end local v10           #reader:Ljava/io/BufferedReader;
    .local v11, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 2987
    .local v9, line:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2988
    .local v5, index:I
    :goto_0
    if-eqz v9, :cond_1

    .line 2990
    const-string v0, "File"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2991
    const/16 v0, 0x3d

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 2992
    .local v7, equals:I
    if-lez v7, :cond_0

    .line 2993
    invoke-virtual/range {p4 .. p4}, Landroid/content/ContentValues;->clear()V

    .line 2994
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2995
    add-int/lit8 v5, v5, 0x1

    .line 2998
    .end local v7           #equals:I
    :cond_0
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v9

    goto :goto_0

    :cond_1
    move-object v10, v11

    .line 3005
    .end local v5           #index:I
    .end local v9           #line:Ljava/lang/String;
    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    :cond_2
    if-eqz v10, :cond_3

    .line 3006
    :try_start_2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3011
    .end local v8           #f:Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 3007
    .restart local v8       #f:Ljava/io/File;
    :catch_0
    move-exception v6

    .line 3008
    .local v6, e:Ljava/io/IOException;
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3001
    .end local v6           #e:Ljava/io/IOException;
    .end local v8           #f:Ljava/io/File;
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 3002
    .restart local v6       #e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3005
    if-eqz v10, :cond_3

    .line 3006
    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 3007
    :catch_2
    move-exception v6

    .line 3008
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3004
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 3005
    :goto_3
    if-eqz v10, :cond_4

    .line 3006
    :try_start_5
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 3009
    :cond_4
    :goto_4
    throw v0

    .line 3007
    :catch_3
    move-exception v6

    .line 3008
    .restart local v6       #e:Ljava/io/IOException;
    const-string v1, "MediaScanner"

    const-string v2, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 3004
    .end local v6           #e:Ljava/io/IOException;
    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v8       #f:Ljava/io/File;
    .restart local v11       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v0

    move-object v10, v11

    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 3001
    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v11       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v6, v0

    move-object v10, v11

    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 8
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"

    .prologue
    const-string v7, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processWplPlayList()"

    .line 3053
    const/4 v2, 0x0

    .line 3055
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3056
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3057
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 3059
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    const-string v4, "UTF-8"

    invoke-static {v4}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    move-result-object v4

    new-instance v5, Landroid/media/MediaScanner$WplHandler;

    invoke-direct {v5, p0, p2, p3}, Landroid/media/MediaScanner$WplHandler;-><init>(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5}, Landroid/media/MediaScanner$WplHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-object v2, v3

    .line 3067
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :cond_0
    if-eqz v2, :cond_1

    .line 3068
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3073
    .end local v1           #f:Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 3069
    .restart local v1       #f:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 3070
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MediaScanner"

    const-string v4, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3061
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #f:Ljava/io/File;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 3062
    .local v0, e:Lorg/xml/sax/SAXException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3067
    if-eqz v2, :cond_1

    .line 3068
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 3069
    :catch_2
    move-exception v0

    .line 3070
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MediaScanner"

    const-string v4, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3063
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v4

    move-object v0, v4

    .line 3064
    .restart local v0       #e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3067
    if-eqz v2, :cond_1

    .line 3068
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 3069
    :catch_4
    move-exception v0

    .line 3070
    const-string v4, "MediaScanner"

    const-string v4, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3066
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 3067
    :goto_3
    if-eqz v2, :cond_2

    .line 3068
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 3071
    :cond_2
    :goto_4
    throw v4

    .line 3069
    :catch_5
    move-exception v0

    .line 3070
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 3066
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #f:Ljava/io/File;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 3063
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_6
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 3061
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private pruneDeadThumbnailFiles()V
    .locals 15

    .prologue
    const/4 v2, 0x0

    const-string v4, "/"

    const-string v3, ".thumb"

    const-string v0, "MediaScanner"

    .line 2455
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 2456
    .local v10, existingFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/media/MediaScanner;->INTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/.thumbnails"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2457
    .local v7, directory:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v11

    .line 2458
    .local v11, files:[Ljava/lang/String;
    if-nez v11, :cond_0

    .line 2459
    new-array v11, v2, [Ljava/lang/String;

    .line 2462
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/media/MediaScanner;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/.thumbnails"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2463
    .local v8, directorySd:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v12

    .line 2464
    .local v12, filesFromSd:[Ljava/lang/String;
    if-nez v12, :cond_1

    .line 2465
    new-array v12, v2, [Ljava/lang/String;

    .line 2467
    :cond_1
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    array-length v0, v11

    if-ge v14, v0, :cond_3

    .line 2468
    aget-object v0, v11, v14

    const-string v1, ".thumb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v11, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2470
    .local v13, fullPathString:Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2467
    .end local v13           #fullPathString:Ljava/lang/String;
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 2474
    :cond_3
    const/4 v14, 0x0

    :goto_1
    array-length v0, v12

    if-ge v14, v0, :cond_5

    .line 2475
    aget-object v0, v12, v14

    const-string v1, ".thumb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v12, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2477
    .restart local v13       #fullPathString:Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2474
    .end local v13           #fullPathString:Ljava/lang/String;
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2480
    :cond_5
    const/4 v6, 0x0

    .line 2482
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2488
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pruneDeadThumbnailFiles... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2489
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2491
    :cond_6
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2492
    .restart local v13       #fullPathString:Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2493
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2496
    .end local v13           #fullPathString:Ljava/lang/String;
    :cond_7
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "files to delete count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/pruneDeadThumbnailFiles... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2503
    if-eqz v6, :cond_8

    .line 2504
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2508
    :cond_8
    :goto_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/media/MediaScanner$1;

    invoke-direct {v1, p0, v10}, Landroid/media/MediaScanner$1;-><init>(Landroid/media/MediaScanner;Ljava/util/HashSet;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2536
    return-void

    .line 2499
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 2501
    .local v9, e:Landroid/os/RemoteException;
    :try_start_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2503
    if-eqz v6, :cond_8

    .line 2504
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2503
    .end local v9           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_9

    .line 2504
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method private setDefaultRingtoneFileNames()V
    .locals 1

    .prologue
    .line 798
    const-string/jumbo v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    .line 800
    const-string/jumbo v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 802
    const-string/jumbo v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    .line 804
    return-void
.end method


# virtual methods
.method public native extractAlbumArt(Ljava/io/FileDescriptor;)[B
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 3162
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 3163
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 3164
    return-void
.end method

.method public scanDirectories([Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .parameter "directories"
    .parameter "volumeName"

    .prologue
    .line 2738
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mGeneration:I

    move v15, v0

    sget v16, Landroid/media/MediaScanner;->generation:I

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    sget-object v15, Landroid/media/MediaScanner;->INTERNAL_SD_ROOT:Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v16, p1, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 2739
    const-string v15, "MediaScanner"

    const-string v16, " scanDirectories : another request of scanning /sdcard is received ... do not need to continue"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    :goto_0
    return-void

    .line 2743
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2744
    .local v12, start:J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 2758
    move-object/from16 v0, p1

    array-length v0, v0

    move v15, v0

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    const/4 v15, 0x0

    aget-object v15, p1, v15

    sget-object v16, Landroid/media/MediaScanner;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2759
    const/4 v15, 0x0

    aget-object v15, p1, v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;)V

    .line 2765
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2778
    .local v8, prescan:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mGeneration:I

    move v15, v0

    sget v16, Landroid/media/MediaScanner;->generation:I

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_2

    sget-object v15, Landroid/media/MediaScanner;->INTERNAL_SD_ROOT:Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v16, p1, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 2779
    const-string v15, "MediaScanner"

    const-string v16, " scanDirectories : another request of scanning /sdcard is received ... do not need to continue"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 2831
    .end local v8           #prescan:J
    .end local v12           #start:J
    :catch_0
    move-exception v15

    move-object v4, v15

    .line 2833
    .local v4, e:Landroid/database/SQLException;
    const-string v15, "MediaScanner"

    const-string v16, "SQLException in MediaScanner.scan()"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2761
    .end local v4           #e:Landroid/database/SQLException;
    .restart local v12       #start:J
    :cond_1
    const/4 v15, 0x0

    :try_start_1
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 2834
    .end local v12           #start:J
    :catch_1
    move-exception v15

    move-object v4, v15

    .line 2836
    .local v4, e:Ljava/lang/UnsupportedOperationException;
    const-string v15, "MediaScanner"

    const-string v16, "UnsupportedOperationException in MediaScanner.scan()"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2783
    .end local v4           #e:Ljava/lang/UnsupportedOperationException;
    .restart local v8       #prescan:J
    .restart local v12       #start:J
    :cond_2
    :try_start_2
    const-string v15, "MediaScanner"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "scanDirectories : directories.length="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", directories.length : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v17, p1, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    move-object/from16 v0, p1

    array-length v0, v0

    move v15, v0

    if-ge v7, v15, :cond_4

    .line 2786
    aget-object v15, p1, v7

    sget-object v16, Landroid/media/MediaFile;->sFileExtensions:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 2788
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mGeneration:I

    move v15, v0

    sget v16, Landroid/media/MediaScanner;->generation:I

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_3

    sget-object v15, Landroid/media/MediaScanner;->INTERNAL_SD_ROOT:Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v16, p1, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 2789
    const-string v15, "MediaScanner"

    const-string v16, " scanDirectories : another request of scanning /sdcard is received ... do not need to continue"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 2837
    .end local v7           #i:I
    .end local v8           #prescan:J
    .end local v12           #start:J
    :catch_2
    move-exception v15

    move-object v4, v15

    .line 2838
    .local v4, e:Landroid/os/RemoteException;
    const-string v15, "MediaScanner"

    const-string v16, "RemoteException in MediaScanner.scan()"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2785
    .end local v4           #e:Landroid/os/RemoteException;
    .restart local v7       #i:I
    .restart local v8       #prescan:J
    .restart local v12       #start:J
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2796
    :cond_4
    :try_start_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v14

    .line 2797
    .local v14, status:Ljava/lang/String;
    const-string v15, "mounted"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    const-string v15, "mounted_ro"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 2799
    const-string v15, "MediaScanner"

    const-string/jumbo v16, "scanDirectories : ExternalStorageState[%s]... do not need to postscan"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v14, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2804
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mGeneration:I

    move v15, v0

    sget v16, Landroid/media/MediaScanner;->generation:I

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_6

    sget-object v15, Landroid/media/MediaScanner;->INTERNAL_SD_ROOT:Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v16, p1, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 2805
    const-string v15, "MediaScanner"

    const-string v16, " scanDirectories : another request of scanning /sdcard is received ... do not need to continue"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2809
    :cond_6
    move-object/from16 v0, p1

    array-length v0, v0

    move v15, v0

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    const/4 v15, 0x0

    aget-object v15, p1, v15

    sget-object v16, Landroid/media/MediaScanner;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 2810
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mExternalSDCardRemoval:Z

    move v15, v0

    if-eqz v15, :cond_7

    .line 2811
    const-string v15, "MediaScanner"

    const-string v16, " scanDirectories : external SD card is removed during media scanning... do not need to postscan"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2816
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2818
    .local v10, scan:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mGeneration:I

    move v15, v0

    sget v16, Landroid/media/MediaScanner;->generation:I

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_8

    sget-object v15, Landroid/media/MediaScanner;->INTERNAL_SD_ROOT:Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v16, p1, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 2819
    const-string v15, "MediaScanner"

    const-string v16, " scanDirectories : another request of scanning /mnt/sdcard is received ... do not need to do postscan."

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2822
    :cond_8
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner;->postscan([Ljava/lang/String;)V

    .line 2823
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2826
    .local v5, end:J
    const-string v15, "MediaScanner"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " prescan time: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sub-long v17, v8, v12

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "ms\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    const-string v15, "MediaScanner"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "    scan time: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sub-long v17, v10, v8

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "ms\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    const-string v15, "MediaScanner"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "postscan time: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sub-long v17, v5, v10

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "ms\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    const-string v15, "MediaScanner"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "   total time: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sub-long v17, v5, v12

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "ms\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 10
    .parameter "path"
    .parameter "volumeName"
    .parameter "mimeType"

    .prologue
    .line 2845
    :try_start_0
    invoke-direct {p0, p2}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 2846
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;)V

    .line 2848
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2850
    .local v9, file:Ljava/io/File;
    iget-object v0, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v5

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v7}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2853
    .end local v9           #file:Ljava/io/File;
    :goto_0
    return-object v0

    .line 2851
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 2852
    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "MediaScanner"

    const-string v1, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2853
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native setLocale(Ljava/lang/String;)V
.end method
