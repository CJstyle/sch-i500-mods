.class public Lcom/android/music/common/richinfo/RichInformationParser;
.super Ljava/lang/Object;
.source "RichInformationParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;,
        Lcom/android/music/common/richinfo/RichInformationParser$FeedParser;
    }
.end annotation


# instance fields
.field private baseFeedParser:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

.field private parsedData:Lcom/android/music/common/richinfo/RichInformationData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

    invoke-direct {v0, p0, p1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;-><init>(Lcom/android/music/common/richinfo/RichInformationParser;Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser;->baseFeedParser:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

    .line 38
    new-instance v0, Lcom/android/music/common/richinfo/RichInformationData;

    invoke-direct {v0}, Lcom/android/music/common/richinfo/RichInformationData;-><init>()V

    iput-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;

    .line 41
    return-void
.end method

.method static synthetic access$100(Lcom/android/music/common/richinfo/RichInformationParser;)Lcom/android/music/common/richinfo/RichInformationData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;

    return-object v0
.end method


# virtual methods
.method public getParsedData()Lcom/android/music/common/richinfo/RichInformationData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "RichInformationData"

    const-string v2, "MusicApp"

    .line 44
    const-string v1, "MusicApp"

    const-string v1, "RichInformationParser::getParsedData: parsing is started"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationParser;->baseFeedParser:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

    invoke-virtual {v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->parse()Lcom/android/music/common/richinfo/RichInformationData;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/common/richinfo/RichInformationParser;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    const-string v1, "MusicApp"

    const-string v1, "RichInformationParser::getParsedData: parsing is ended"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationParser;->parsedData:Lcom/android/music/common/richinfo/RichInformationData;

    return-object v1

    .line 47
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 48
    .local v0, e:Lorg/xml/sax/SAXException;
    const-string v1, "RichInformationData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParsedData() SAXException occured :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    throw v0

    .line 50
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 51
    .local v0, e:Ljava/io/IOException;
    const-string v1, "RichInformationData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParsedData() IOException occured :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    throw v0
.end method
