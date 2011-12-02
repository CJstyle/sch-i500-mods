.class Lcom/android/music/common/richinfo/RichInformationData$PerformerDetailInfo;
.super Ljava/lang/Object;
.source "RichInformationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/richinfo/RichInformationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformerDetailInfo"
.end annotation


# instance fields
.field albums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;",
            ">;"
        }
    .end annotation
.end field

.field biography:Ljava/lang/String;

.field followers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/common/richinfo/RichInformationData$ArtistInfo;",
            ">;"
        }
    .end annotation
.end field

.field influenceArtists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/common/richinfo/RichInformationData$ArtistInfo;",
            ">;"
        }
    .end annotation
.end field

.field performerSimpleInfo:Lcom/android/music/common/richinfo/RichInformationData$ArtistInfo;

.field similarArtists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/common/richinfo/RichInformationData$ArtistInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/music/common/richinfo/RichInformationData;


# direct methods
.method constructor <init>(Lcom/android/music/common/richinfo/RichInformationData;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationData$PerformerDetailInfo;->this$0:Lcom/android/music/common/richinfo/RichInformationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
