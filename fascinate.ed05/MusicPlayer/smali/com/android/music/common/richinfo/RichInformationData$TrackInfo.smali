.class Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;
.super Ljava/lang/Object;
.source "RichInformationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/richinfo/RichInformationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrackInfo"
.end annotation


# instance fields
.field composers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/common/richinfo/RichInformationData$ArtistInfo;",
            ">;"
        }
    .end annotation
.end field

.field genreDesc:Lcom/android/music/common/richinfo/RichInformationData$GenreInfo;

.field isPick:Z

.field isrc:Ljava/lang/String;

.field performers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/common/richinfo/RichInformationData$ArtistInfo;",
            ">;"
        }
    .end annotation
.end field

.field playLength:I

.field final synthetic this$0:Lcom/android/music/common/richinfo/RichInformationData;

.field title:Ljava/lang/String;

.field trackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/music/common/richinfo/RichInformationData;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;->this$0:Lcom/android/music/common/richinfo/RichInformationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
