.class Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$2;
.super Ljava/lang/Object;
.source "RichInformationParser.java"

# interfaces
.implements Landroid/sax/EndElementListener;


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
    .line 199
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$2;->this$1:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$2;->this$1:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->feedRichInfo:Lcom/android/music/common/richinfo/RichInformationData;

    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$2;->this$1:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

    invoke-static {v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->access$000(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/music/common/richinfo/RichInformationData;->trackInfo:Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;

    .line 201
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$2;->this$1:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->access$002(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;)Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;

    .line 202
    return-void
.end method
