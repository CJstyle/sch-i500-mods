.class Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$11;
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
    .line 273
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$11;->this$1:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$11;->this$1:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->feedRichInfo:Lcom/android/music/common/richinfo/RichInformationData;

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData;->albumDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;->releases:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$11;->this$1:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

    invoke-static {v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->access$300(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)Lcom/android/music/common/richinfo/RichInformationData$ReleaseInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$11;->this$1:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->access$302(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;Lcom/android/music/common/richinfo/RichInformationData$ReleaseInfo;)Lcom/android/music/common/richinfo/RichInformationData$ReleaseInfo;

    .line 276
    return-void
.end method
