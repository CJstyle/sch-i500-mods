.class public Lcom/android/music/common/richinfo/RichInformationData;
.super Ljava/lang/Object;
.source "RichInformationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/common/richinfo/RichInformationData$PerformerDetailInfo;,
        Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;,
        Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;,
        Lcom/android/music/common/richinfo/RichInformationData$Disc;,
        Lcom/android/music/common/richinfo/RichInformationData$Credit;,
        Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;,
        Lcom/android/music/common/richinfo/RichInformationData$ArtworkInfo;,
        Lcom/android/music/common/richinfo/RichInformationData$ArtistInfo;
    }
.end annotation


# instance fields
.field public albumDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;

.field public performerDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$PerformerDetailInfo;

.field public trackInfo:Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;

    invoke-direct {v0, p0}, Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;-><init>(Lcom/android/music/common/richinfo/RichInformationData;)V

    iput-object v0, p0, Lcom/android/music/common/richinfo/RichInformationData;->trackInfo:Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;

    .line 18
    new-instance v0, Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;

    invoke-direct {v0, p0}, Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;-><init>(Lcom/android/music/common/richinfo/RichInformationData;)V

    iput-object v0, p0, Lcom/android/music/common/richinfo/RichInformationData;->albumDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;

    .line 19
    new-instance v0, Lcom/android/music/common/richinfo/RichInformationData$PerformerDetailInfo;

    invoke-direct {v0, p0}, Lcom/android/music/common/richinfo/RichInformationData$PerformerDetailInfo;-><init>(Lcom/android/music/common/richinfo/RichInformationData;)V

    iput-object v0, p0, Lcom/android/music/common/richinfo/RichInformationData;->performerDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$PerformerDetailInfo;

    .line 20
    return-void
.end method
