.class Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;
.super Ljava/lang/Object;
.source "RichInformationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/richinfo/RichInformationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlbumDetailInfo"
.end annotation


# instance fields
.field albumSimpleInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;

.field copyRight:Ljava/lang/String;

.field credits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/common/richinfo/RichInformationData$Credit;",
            ">;"
        }
    .end annotation
.end field

.field date:Ljava/lang/String;

.field discs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/common/richinfo/RichInformationData$Disc;",
            ">;"
        }
    .end annotation
.end field

.field genreDesc:Lcom/android/music/common/richinfo/RichInformationData$GenreInfo;

.field releases:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/common/richinfo/RichInformationData$ReleaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field review:Ljava/lang/String;

.field similarAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;",
            ">;"
        }
    .end annotation
.end field

.field styles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/common/richinfo/RichInformationData$StyleInfo;",
            ">;"
        }
    .end annotation
.end field

.field themeInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/music/common/richinfo/RichInformationData;

.field tones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/common/richinfo/RichInformationData$ToneInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/music/common/richinfo/RichInformationData;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;->this$0:Lcom/android/music/common/richinfo/RichInformationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
