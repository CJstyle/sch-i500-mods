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

.field review:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/music/common/richinfo/RichInformationData;


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
