.class Lcom/android/music/common/richinfo/RichInformationData$Credit;
.super Ljava/lang/Object;
.source "RichInformationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/richinfo/RichInformationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Credit"
.end annotation


# instance fields
.field PerformerSimpleInfo:Lcom/android/music/common/richinfo/RichInformationData$ArtistInfo;

.field creditId:Ljava/lang/String;

.field role:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/music/common/richinfo/RichInformationData;


# direct methods
.method constructor <init>(Lcom/android/music/common/richinfo/RichInformationData;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationData$Credit;->this$0:Lcom/android/music/common/richinfo/RichInformationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
