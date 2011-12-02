.class public interface abstract Lcom/android/music/common/richinfo/RichInformationParser$FeedParser;
.super Ljava/lang/Object;
.source "RichInformationParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/richinfo/RichInformationParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FeedParser"
.end annotation


# virtual methods
.method public abstract parse()Lcom/android/music/common/richinfo/RichInformationData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
