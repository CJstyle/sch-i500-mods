.class Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$5;
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
    .line 229
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$5;->this$1:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 3
    .parameter "body"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$5;->this$1:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->feedRichInfo:Lcom/android/music/common/richinfo/RichInformationData;

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData;->albumDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;

    new-instance v1, Lcom/android/music/common/richinfo/RichInformationData$GenreInfo;

    iget-object v2, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$5;->this$1:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

    iget-object v2, v2, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->this$0:Lcom/android/music/common/richinfo/RichInformationParser;

    invoke-static {v2}, Lcom/android/music/common/richinfo/RichInformationParser;->access$100(Lcom/android/music/common/richinfo/RichInformationParser;)Lcom/android/music/common/richinfo/RichInformationData;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/android/music/common/richinfo/RichInformationData$GenreInfo;-><init>(Lcom/android/music/common/richinfo/RichInformationData;)V

    iput-object v1, v0, Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;->genreDesc:Lcom/android/music/common/richinfo/RichInformationData$GenreInfo;

    .line 231
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$5;->this$1:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->feedRichInfo:Lcom/android/music/common/richinfo/RichInformationData;

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData;->albumDetailInfo:Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData$AlbumDetailInfo;->genreDesc:Lcom/android/music/common/richinfo/RichInformationData$GenreInfo;

    iput-object p1, v0, Lcom/android/music/common/richinfo/RichInformationData$GenreInfo;->genreInfo:Ljava/lang/String;

    .line 232
    return-void
.end method
