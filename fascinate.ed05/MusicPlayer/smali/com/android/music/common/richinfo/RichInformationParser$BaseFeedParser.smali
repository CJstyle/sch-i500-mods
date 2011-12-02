.class public Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;
.super Ljava/lang/Object;
.source "RichInformationParser.java"

# interfaces
.implements Lcom/android/music/common/richinfo/RichInformationParser$FeedParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/richinfo/RichInformationParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BaseFeedParser"
.end annotation


# static fields
.field static final ALBUM:Ljava/lang/String; = "Album"

.field static final ALBUMS:Ljava/lang/String; = "Albums"

.field static final ALBUM_DETAIL_INFO:Ljava/lang/String; = "AlbumDetailInfo"

.field static final ALBUM_ID:Ljava/lang/String; = "AlbumID"

.field static final ALBUM_INFO:Ljava/lang/String; = "AlbumInfo"

.field static final ALBUM_SIMPLE_INFO:Ljava/lang/String; = "AlbumSimpleInfo"

.field static final ARTIST:Ljava/lang/String; = "Artist"

.field static final ARTIST_INFO:Ljava/lang/String; = "ArtistInfo"

.field static final ARTWORK:Ljava/lang/String; = "Artwork"

.field static final ARTWORK_URI:Ljava/lang/String; = "uri"

.field static final BIOGRAPHY:Ljava/lang/String; = "Biography"

.field static final COMPOSER:Ljava/lang/String; = "Composer"

.field static final COMPOSERS:Ljava/lang/String; = "Composers"

.field static final COMPOSER_INFO:Ljava/lang/String; = "ComposerInfo"

.field static final COPYRIGHT:Ljava/lang/String; = "Copyright"

.field static final CREDIT:Ljava/lang/String; = "Credit"

.field static final CREDITS:Ljava/lang/String; = "Credits"

.field static final CREDIT_ID:Ljava/lang/String; = "CreditID"

.field static final CREDIT_INFO:Ljava/lang/String; = "CreditInfo"

.field static final CURRENT_MEDIA_NUMBER:Ljava/lang/String; = "CurrentMediaNumber"

.field static final DATE:Ljava/lang/String; = "Date"

.field static final DISC:Ljava/lang/String; = "Disc"

.field static final DISCS:Ljava/lang/String; = "Discs"

.field static final DISC_INFO:Ljava/lang/String; = "DiscInfo"

.field static final FOLLOWER:Ljava/lang/String; = "Follower"

.field static final FOLLOWERS:Ljava/lang/String; = "Followers"

.field static final GENRE_DESC:Ljava/lang/String; = "GenreDesc"

.field static final GENRE_INFO:Ljava/lang/String; = "GenreInfo"

.field static final ID:Ljava/lang/String; = "ID"

.field static final IMAGE:Ljava/lang/String; = "Image"

.field static final INFLUENCE_ARTIST:Ljava/lang/String; = "InfluenceArtist"

.field static final INFLUENCE_ARTISTS:Ljava/lang/String; = "InfluenceArtists"

.field static final ISRC:Ljava/lang/String; = "ISRC"

.field static final IS_PICK:Ljava/lang/String; = "IsPick"

.field static final LABEL:Ljava/lang/String; = "Label"

.field static final MEDIA:Ljava/lang/String; = "Media"

.field static final NAME:Ljava/lang/String; = "Name"

.field static final PERFORMER:Ljava/lang/String; = "Performer"

.field static final PERFORMERS:Ljava/lang/String; = "Performers"

.field static final PERFORMER_DETAIL_INFO:Ljava/lang/String; = "PerformerDetailInfo"

.field static final PERFORMER_INFO:Ljava/lang/String; = "PerformerInfo"

.field static final PERFORMER_SIMPLE_INFO:Ljava/lang/String; = "PerformerSimpleInfo"

.field static final PLAY_LENGTH:Ljava/lang/String; = "PlayLength"

.field static final RATING:Ljava/lang/String; = "Rating"

.field static final RELEASE:Ljava/lang/String; = "Release"

.field static final RELEASES:Ljava/lang/String; = "Releases"

.field static final RELEASE_INFO:Ljava/lang/String; = "ReleaseInfo"

.field static final REVIEW:Ljava/lang/String; = "Review"

.field static final ROLE:Ljava/lang/String; = "Role"

.field static final SIMILAR_ALBUM:Ljava/lang/String; = "SimilarAlbum"

.field static final SIMILAR_ALBUMS:Ljava/lang/String; = "SimilarAlbums"

.field static final SIMILAR_ALBUM_INFO:Ljava/lang/String; = "SimilarAlbumInfo"

.field static final SIMILAR_ARTIST:Ljava/lang/String; = "SimilarArtist"

.field static final SIMILAR_ARTISTS:Ljava/lang/String; = "SimilarArtists"

.field static final STYLE:Ljava/lang/String; = "Style"

.field static final STYLES:Ljava/lang/String; = "Styles"

.field static final STYLE_ID:Ljava/lang/String; = "StyleID"

.field static final STYLE_INFO:Ljava/lang/String; = "StyleInfo"

.field static final THEME:Ljava/lang/String; = "Theme"

.field static final THEMES:Ljava/lang/String; = "Themes"

.field static final THEME_INFO:Ljava/lang/String; = "ThemeInfo"

.field static final TITLE:Ljava/lang/String; = "Title"

.field static final TONE:Ljava/lang/String; = "Tone"

.field static final TONES:Ljava/lang/String; = "Tones"

.field static final TONE_ID:Ljava/lang/String; = "ToneID"

.field static final TONE_INFO:Ljava/lang/String; = "ToneInfo"

.field static final TOTAL_RUNNING_TIME:Ljava/lang/String; = "TotalRunningTime"

.field static final TRACK:Ljava/lang/String; = "Track"

.field static final TRACKS:Ljava/lang/String; = "Tracks"

.field static final TRACK_ID:Ljava/lang/String; = "TrackID"


# instance fields
.field private albumInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;

.field private artistInfo:Lcom/android/music/common/richinfo/RichInformationData$ArtistInfo;

.field private creditInfo:Lcom/android/music/common/richinfo/RichInformationData$Credit;

.field private discInfo:Lcom/android/music/common/richinfo/RichInformationData$Disc;

.field feedRichInfo:Lcom/android/music/common/richinfo/RichInformationData;

.field private releaseInfo:Lcom/android/music/common/richinfo/RichInformationData$ReleaseInfo;

.field private richFileStream:Ljava/io/InputStream;

.field private styleInfo:Lcom/android/music/common/richinfo/RichInformationData$StyleInfo;

.field final synthetic this$0:Lcom/android/music/common/richinfo/RichInformationParser;

.field private toneInfo:Lcom/android/music/common/richinfo/RichInformationData$ToneInfo;

.field private trackInfo:Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;


# direct methods
.method protected constructor <init>(Lcom/android/music/common/richinfo/RichInformationParser;Ljava/io/InputStream;)V
    .locals 1
    .parameter
    .parameter "inputData"

    .prologue
    const/4 v0, 0x0

    .line 140
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->this$0:Lcom/android/music/common/richinfo/RichInformationParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->richFileStream:Ljava/io/InputStream;

    .line 138
    iput-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->feedRichInfo:Lcom/android/music/common/richinfo/RichInformationData;

    .line 156
    iput-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->albumInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;

    .line 157
    iput-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->artistInfo:Lcom/android/music/common/richinfo/RichInformationData$ArtistInfo;

    .line 158
    iput-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->releaseInfo:Lcom/android/music/common/richinfo/RichInformationData$ReleaseInfo;

    .line 159
    iput-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->creditInfo:Lcom/android/music/common/richinfo/RichInformationData$Credit;

    .line 160
    iput-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->styleInfo:Lcom/android/music/common/richinfo/RichInformationData$StyleInfo;

    .line 161
    iput-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->toneInfo:Lcom/android/music/common/richinfo/RichInformationData$ToneInfo;

    .line 162
    iput-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->trackInfo:Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;

    .line 163
    iput-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->discInfo:Lcom/android/music/common/richinfo/RichInformationData$Disc;

    .line 142
    new-instance v0, Lcom/android/music/common/richinfo/RichInformationData;

    invoke-direct {v0}, Lcom/android/music/common/richinfo/RichInformationData;-><init>()V

    iput-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->feedRichInfo:Lcom/android/music/common/richinfo/RichInformationData;

    .line 144
    iput-object p2, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->richFileStream:Ljava/io/InputStream;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->trackInfo:Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;)Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->trackInfo:Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->albumInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;)Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->albumInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)Lcom/android/music/common/richinfo/RichInformationData$ReleaseInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->releaseInfo:Lcom/android/music/common/richinfo/RichInformationData$ReleaseInfo;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;Lcom/android/music/common/richinfo/RichInformationData$ReleaseInfo;)Lcom/android/music/common/richinfo/RichInformationData$ReleaseInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->releaseInfo:Lcom/android/music/common/richinfo/RichInformationData$ReleaseInfo;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)Lcom/android/music/common/richinfo/RichInformationData$Credit;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->creditInfo:Lcom/android/music/common/richinfo/RichInformationData$Credit;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;Lcom/android/music/common/richinfo/RichInformationData$Credit;)Lcom/android/music/common/richinfo/RichInformationData$Credit;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->creditInfo:Lcom/android/music/common/richinfo/RichInformationData$Credit;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)Lcom/android/music/common/richinfo/RichInformationData$Disc;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->discInfo:Lcom/android/music/common/richinfo/RichInformationData$Disc;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;Lcom/android/music/common/richinfo/RichInformationData$Disc;)Lcom/android/music/common/richinfo/RichInformationData$Disc;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->discInfo:Lcom/android/music/common/richinfo/RichInformationData$Disc;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)Lcom/android/music/common/richinfo/RichInformationData$StyleInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->styleInfo:Lcom/android/music/common/richinfo/RichInformationData$StyleInfo;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;Lcom/android/music/common/richinfo/RichInformationData$StyleInfo;)Lcom/android/music/common/richinfo/RichInformationData$StyleInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->styleInfo:Lcom/android/music/common/richinfo/RichInformationData$StyleInfo;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)Lcom/android/music/common/richinfo/RichInformationData$ToneInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->toneInfo:Lcom/android/music/common/richinfo/RichInformationData$ToneInfo;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;Lcom/android/music/common/richinfo/RichInformationData$ToneInfo;)Lcom/android/music/common/richinfo/RichInformationData$ToneInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->toneInfo:Lcom/android/music/common/richinfo/RichInformationData$ToneInfo;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)Lcom/android/music/common/richinfo/RichInformationData$ArtistInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->artistInfo:Lcom/android/music/common/richinfo/RichInformationData$ArtistInfo;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;Lcom/android/music/common/richinfo/RichInformationData$ArtistInfo;)Lcom/android/music/common/richinfo/RichInformationData$ArtistInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->artistInfo:Lcom/android/music/common/richinfo/RichInformationData$ArtistInfo;

    return-object p1
.end method


# virtual methods
.method protected getInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->richFileStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse()Lcom/android/music/common/richinfo/RichInformationData;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    new-instance v16, Landroid/sax/RootElement;

    const-string v18, "SM_RichInfo"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;)V

    .line 168
    .local v16, root:Landroid/sax/RootElement;
    const-string v18, "Track"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v17

    .line 169
    .local v17, track:Landroid/sax/Element;
    const-string v18, "Album"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    .line 170
    .local v2, album:Landroid/sax/Element;
    const-string v18, "Performer"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v11

    .line 172
    .local v11, performer:Landroid/sax/Element;
    const-string v18, "Releases"

    move-object v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    const-string v19, "Release"

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v5

    .line 173
    .local v5, album_release:Landroid/sax/Element;
    const-string v18, "Credits"

    move-object v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    const-string v19, "Credit"

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    .line 174
    .local v3, album_credit:Landroid/sax/Element;
    const-string v18, "Discs"

    move-object v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    const-string v19, "Disc"

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v4

    .line 175
    .local v4, album_disc:Landroid/sax/Element;
    const-string v18, "Styles"

    move-object v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    const-string v19, "Style"

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v7

    .line 176
    .local v7, album_style:Landroid/sax/Element;
    const-string v18, "Tones"

    move-object v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    const-string v19, "Tone"

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v9

    .line 177
    .local v9, album_tone:Landroid/sax/Element;
    const-string v18, "SimilarAlbums"

    move-object v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    const-string v19, "SimilarAlbum"

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v6

    .line 179
    .local v6, album_similarAlbum:Landroid/sax/Element;
    const-string v18, "Themes"

    move-object v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    const-string v19, "Theme"

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v8

    .line 181
    .local v8, album_theme:Landroid/sax/Element;
    const-string v18, "Albums"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    const-string v19, "AlbumSimpleInfo"

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v12

    .line 183
    .local v12, performer_albumSimpleInfo:Landroid/sax/Element;
    const-string v18, "SimilarArtists"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    const-string v19, "SimilarArtist"

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v15

    .line 185
    .local v15, performer_similarArtist:Landroid/sax/Element;
    const-string v18, "InfluenceArtists"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    const-string v19, "InfluenceArtist"

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v14

    .line 187
    .local v14, performer_influenceArtist:Landroid/sax/Element;
    const-string v18, "Followers"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    const-string v19, "Follower"

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v13

    .line 192
    .local v13, performer_followerArtist:Landroid/sax/Element;
    new-instance v18, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$1;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v17 .. v18}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 198
    new-instance v18, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$2;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v17 .. v18}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 205
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->setTrackElemnentListener(Landroid/sax/Element;)V

    .line 209
    const-string v18, "AlbumSimpleInfo"

    move-object v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$3;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 216
    const-string v18, "AlbumSimpleInfo"

    move-object v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$4;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 224
    const-string v18, "AlbumSimpleInfo"

    move-object v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->setAlbumElementListener(Landroid/sax/Element;)V

    .line 227
    const-string v18, "GenreDesc"

    move-object v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$5;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 236
    const-string v18, "Review"

    move-object v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$6;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 244
    const-string v18, "Copyright"

    move-object v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$7;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 252
    const-string v18, "Date"

    move-object v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$8;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$8;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 260
    const-string v18, "Releases"

    move-object v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$9;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$9;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 266
    new-instance v18, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$10;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$10;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 272
    new-instance v18, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$11;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$11;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 279
    const-string v18, "Media"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$12;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$12;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 286
    const-string v18, "Label"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$13;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$13;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 293
    const-string v18, "Credits"

    move-object v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$14;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$14;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 299
    new-instance v18, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$15;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$15;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 305
    new-instance v18, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$16;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$16;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 312
    const-string v18, "CreditID"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$17;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$17;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 319
    const-string v18, "Role"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$18;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$18;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 326
    const-string v18, "PerformerSimpleInfo"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$19;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$19;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 332
    const-string v18, "PerformerSimpleInfo"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    const-string v19, "ID"

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$20;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$20;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 339
    const-string v18, "PerformerSimpleInfo"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    const-string v19, "Name"

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$21;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$21;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 347
    const-string v18, "Discs"

    move-object v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$22;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$22;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 353
    new-instance v18, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$23;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$23;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 359
    new-instance v18, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$24;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$24;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 366
    const-string v18, "TotalRunningTime"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$25;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$25;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 373
    const-string v18, "CurrentMediaNumber"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$26;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$26;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 381
    const-string v18, "Tracks"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$27;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$27;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 387
    const-string v18, "Tracks"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    const-string v19, "Track"

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$28;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$28;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 394
    const-string v18, "Tracks"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    const-string v19, "Track"

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$29;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$29;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 402
    const-string v18, "Tracks"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    const-string v19, "Track"

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->setTrackElemnentListener(Landroid/sax/Element;)V

    .line 406
    const-string v18, "Styles"

    move-object v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$30;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$30;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 412
    new-instance v18, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$31;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$31;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 418
    new-instance v18, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$32;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$32;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 425
    const-string v18, "StyleID"

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$33;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$33;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 432
    const-string v18, "Name"

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$34;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$34;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 440
    const-string v18, "Tones"

    move-object v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$35;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$35;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 446
    new-instance v18, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$36;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$36;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 452
    new-instance v18, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$37;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$37;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 459
    const-string v18, "ToneID"

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$38;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$38;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 466
    const-string v18, "Name"

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$39;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$39;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 474
    const-string v18, "SimilarAlbums"

    move-object v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$40;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$40;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 480
    new-instance v18, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$41;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$41;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 487
    new-instance v18, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$42;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$42;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 493
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->setAlbumElementListener(Landroid/sax/Element;)V

    .line 496
    const-string v18, "Themes"

    move-object v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$43;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$43;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 502
    new-instance v18, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$44;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$44;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 510
    const-string v18, "PerformerSimpleInfo"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$45;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$45;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 516
    const-string v18, "PerformerSimpleInfo"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    const-string v19, "ID"

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$46;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$46;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 523
    const-string v18, "PerformerSimpleInfo"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    const-string v19, "Name"

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$47;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$47;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 531
    const-string v18, "Biography"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$48;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$48;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 539
    const-string v18, "Albums"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$49;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$49;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 545
    new-instance v18, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$50;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$50;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 552
    new-instance v18, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$51;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$51;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 561
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->setAlbumElementListener(Landroid/sax/Element;)V

    .line 564
    const-string v18, "SimilarArtists"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$52;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$52;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 570
    new-instance v18, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$53;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$53;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 577
    new-instance v18, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$54;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$54;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 586
    const-string v18, "ID"

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$55;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$55;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 593
    const-string v18, "Name"

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$56;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$56;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 601
    const-string v18, "InfluenceArtists"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$57;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$57;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 607
    new-instance v18, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$58;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$58;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 614
    new-instance v18, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$59;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$59;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 623
    const-string v18, "ID"

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$60;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$60;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 630
    const-string v18, "Name"

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$61;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$61;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 638
    const-string v18, "Followers"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$62;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$62;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 644
    new-instance v18, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$63;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$63;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 651
    new-instance v18, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$64;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$64;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 660
    const-string v18, "ID"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$65;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$65;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 667
    const-string v18, "Name"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v18

    new-instance v19, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$66;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$66;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 675
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->richFileStream:Ljava/io/InputStream;

    move-object/from16 v18, v0

    sget-object v19, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual/range {v16 .. v16}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->feedRichInfo:Lcom/android/music/common/richinfo/RichInformationData;

    move-object/from16 v18, v0

    return-object v18

    .line 677
    :catch_0
    move-exception v18

    move-object/from16 v10, v18

    .line 678
    .local v10, e:Ljava/io/IOException;
    const-string v18, "RichInformationData"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "parse() IOException occured :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    throw v10

    .line 680
    .end local v10           #e:Ljava/io/IOException;
    :catch_1
    move-exception v18

    move-object/from16 v10, v18

    .line 681
    .local v10, e:Lorg/xml/sax/SAXException;
    const-string v18, "RichInformationData"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "parse() SAXException occured :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    throw v10
.end method

.method public setAlbumElementListener(Landroid/sax/Element;)V
    .locals 4
    .parameter "mAlbum"

    .prologue
    const-string v3, "Artwork"

    const-string v2, "Artist"

    .line 689
    const-string v0, "AlbumID"

    invoke-virtual {p1, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$67;

    invoke-direct {v1, p0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$67;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 696
    const-string v0, "Title"

    invoke-virtual {p1, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$68;

    invoke-direct {v1, p0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$68;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 703
    const-string v0, "Rating"

    invoke-virtual {p1, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$69;

    invoke-direct {v1, p0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$69;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 710
    const-string v0, "IsPick"

    invoke-virtual {p1, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$70;

    invoke-direct {v1, p0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$70;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 719
    const-string v0, "Artwork"

    invoke-virtual {p1, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$71;

    invoke-direct {v1, p0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$71;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 726
    const-string v0, "Artwork"

    invoke-virtual {p1, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$72;

    invoke-direct {v1, p0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$72;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 734
    const-string v0, "Artist"

    invoke-virtual {p1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$73;

    invoke-direct {v1, p0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$73;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 740
    const-string v0, "Artist"

    invoke-virtual {p1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    const-string v1, "ID"

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$74;

    invoke-direct {v1, p0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$74;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 747
    const-string v0, "Artist"

    invoke-virtual {p1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    const-string v1, "Name"

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$75;

    invoke-direct {v1, p0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$75;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 754
    return-void
.end method

.method public setTrackElemnentListener(Landroid/sax/Element;)V
    .locals 7
    .parameter "mTrack"

    .prologue
    const-string v6, "ID"

    const-string v5, "PerformerSimpleInfo"

    const-string v4, "Composer"

    const-string v3, "Performers"

    const-string v2, "Composers"

    .line 758
    const-string v0, "TrackID"

    invoke-virtual {p1, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$76;

    invoke-direct {v1, p0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$76;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 766
    const-string v0, "Title"

    invoke-virtual {p1, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$77;

    invoke-direct {v1, p0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$77;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 773
    const-string v0, "PlayLength"

    invoke-virtual {p1, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$78;

    invoke-direct {v1, p0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$78;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 781
    const-string v0, "IsPick"

    invoke-virtual {p1, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$79;

    invoke-direct {v1, p0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$79;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 790
    const-string v0, "ISRC"

    invoke-virtual {p1, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$80;

    invoke-direct {v1, p0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$80;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 798
    const-string v0, "GenreDesc"

    invoke-virtual {p1, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$81;

    invoke-direct {v1, p0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$81;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 807
    const-string v0, "Composers"

    invoke-virtual {p1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$82;

    invoke-direct {v1, p0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$82;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 813
    const-string v0, "Composers"

    invoke-virtual {p1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    const-string v1, "Composer"

    invoke-virtual {v0, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$83;

    invoke-direct {v1, p0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$83;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 820
    const-string v0, "Composers"

    invoke-virtual {p1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    const-string v1, "Composer"

    invoke-virtual {v0, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$84;

    invoke-direct {v1, p0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$84;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 828
    const-string v0, "Composers"

    invoke-virtual {p1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    const-string v1, "Composer"

    invoke-virtual {v0, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    const-string v1, "ID"

    invoke-virtual {v0, v6}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$85;

    invoke-direct {v1, p0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$85;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 835
    const-string v0, "Composers"

    invoke-virtual {p1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    const-string v1, "Composer"

    invoke-virtual {v0, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    const-string v1, "Name"

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$86;

    invoke-direct {v1, p0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$86;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 843
    const-string v0, "Performers"

    invoke-virtual {p1, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$87;

    invoke-direct {v1, p0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$87;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 849
    const-string v0, "Performers"

    invoke-virtual {p1, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    const-string v1, "PerformerSimpleInfo"

    invoke-virtual {v0, v5}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$88;

    invoke-direct {v1, p0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$88;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 856
    const-string v0, "Performers"

    invoke-virtual {p1, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    const-string v1, "PerformerSimpleInfo"

    invoke-virtual {v0, v5}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$89;

    invoke-direct {v1, p0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$89;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 864
    const-string v0, "Performers"

    invoke-virtual {p1, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    const-string v1, "PerformerSimpleInfo"

    invoke-virtual {v0, v5}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    const-string v1, "ID"

    invoke-virtual {v0, v6}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$90;

    invoke-direct {v1, p0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$90;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 872
    const-string v0, "Performers"

    invoke-virtual {p1, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    const-string v1, "PerformerSimpleInfo"

    invoke-virtual {v0, v5}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    const-string v1, "Name"

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$91;

    invoke-direct {v1, p0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$91;-><init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 879
    return-void
.end method
