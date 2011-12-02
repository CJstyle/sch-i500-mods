.class Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$71;
.super Ljava/lang/Object;
.source "RichInformationParser.java"

# interfaces
.implements Landroid/sax/StartElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->setAlbumElementListener(Landroid/sax/Element;)V
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
    .line 720
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$71;->this$1:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "attributes"

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$71;->this$1:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

    invoke-static {v0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->access$200(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;

    move-result-object v0

    new-instance v1, Lcom/android/music/common/richinfo/RichInformationData$ArtworkInfo;

    iget-object v2, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$71;->this$1:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

    iget-object v2, v2, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->this$0:Lcom/android/music/common/richinfo/RichInformationParser;

    invoke-static {v2}, Lcom/android/music/common/richinfo/RichInformationParser;->access$100(Lcom/android/music/common/richinfo/RichInformationParser;)Lcom/android/music/common/richinfo/RichInformationData;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/android/music/common/richinfo/RichInformationData$ArtworkInfo;-><init>(Lcom/android/music/common/richinfo/RichInformationData;)V

    iput-object v1, v0, Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;->artwork:Lcom/android/music/common/richinfo/RichInformationData$ArtworkInfo;

    .line 722
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$71;->this$1:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

    invoke-static {v0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->access$200(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;->artwork:Lcom/android/music/common/richinfo/RichInformationData$ArtworkInfo;

    const-string v1, "uri"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/music/common/richinfo/RichInformationData$ArtworkInfo;->uri:Ljava/lang/String;

    .line 723
    return-void
.end method
