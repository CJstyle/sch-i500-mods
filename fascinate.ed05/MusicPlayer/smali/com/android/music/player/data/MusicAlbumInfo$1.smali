.class Lcom/android/music/player/data/MusicAlbumInfo$1;
.super Ljava/lang/Object;
.source "MusicAlbumInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/data/MusicAlbumInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/music/player/data/MusicAlbumInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/music/player/data/MusicAlbumInfo;
    .locals 2
    .parameter "in"

    .prologue
    .line 16
    new-instance v0, Lcom/android/music/player/data/MusicAlbumInfo;

    invoke-direct {v0}, Lcom/android/music/player/data/MusicAlbumInfo;-><init>()V

    .line 18
    .local v0, albumInfo:Lcom/android/music/player/data/MusicAlbumInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/music/player/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/music/player/data/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/music/player/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/music/player/data/MusicAlbumInfo;->mAlbumID:I

    .line 23
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/music/player/data/MusicAlbumInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/music/player/data/MusicAlbumInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/music/player/data/MusicAlbumInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 28
    new-array v0, p1, [Lcom/android/music/player/data/MusicAlbumInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/music/player/data/MusicAlbumInfo$1;->newArray(I)[Lcom/android/music/player/data/MusicAlbumInfo;

    move-result-object v0

    return-object v0
.end method
