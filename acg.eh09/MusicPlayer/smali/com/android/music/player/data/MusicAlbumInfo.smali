.class public Lcom/android/music/player/data/MusicAlbumInfo;
.super Ljava/lang/Object;
.source "MusicAlbumInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/music/player/data/MusicAlbumInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAlbum:Ljava/lang/String;

.field public mAlbumID:I

.field public mArtist:Ljava/lang/String;

.field public mDuration:J

.field public mFilePath:Ljava/lang/String;

.field public mMimeType:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/android/music/player/data/MusicAlbumInfo$1;

    invoke-direct {v0}, Lcom/android/music/player/data/MusicAlbumInfo$1;-><init>()V

    sput-object v0, Lcom/android/music/player/data/MusicAlbumInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
