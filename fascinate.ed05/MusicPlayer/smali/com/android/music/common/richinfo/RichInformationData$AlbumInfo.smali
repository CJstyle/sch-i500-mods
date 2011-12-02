.class Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;
.super Ljava/lang/Object;
.source "RichInformationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/richinfo/RichInformationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlbumInfo"
.end annotation


# instance fields
.field albumId:Ljava/lang/String;

.field artist:Lcom/android/music/common/richinfo/RichInformationData$ArtistInfo;

.field artwork:Lcom/android/music/common/richinfo/RichInformationData$ArtworkInfo;

.field isPick:Z

.field rating:I

.field final synthetic this$0:Lcom/android/music/common/richinfo/RichInformationData;

.field title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/music/common/richinfo/RichInformationData;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;->this$0:Lcom/android/music/common/richinfo/RichInformationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
