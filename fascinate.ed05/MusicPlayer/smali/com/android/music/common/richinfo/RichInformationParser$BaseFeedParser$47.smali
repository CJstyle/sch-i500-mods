.class Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$47;
.super Ljava/lang/Object;
.source "RichInformationParser.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->parse()Lcom/android/music/common/richinfo/RichInformationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;


# direct methods
.method constructor <init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V
    .locals 0
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$47;->this$1:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 1
    .parameter "body"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$47;->this$1:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->feedRichInfo:Lcom/android/music/common/richinfo/RichInformationData;

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData;->performerDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$PerformerDetailInfo;

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData$PerformerDetailInfo;->performerSimpleInfo:Lcom/android/music/common/richinfo/RichInformationData$ArtistInfo;

    iput-object p1, v0, Lcom/android/music/common/richinfo/RichInformationData$ArtistInfo;->name:Ljava/lang/String;

    .line 527
    return-void
.end method
