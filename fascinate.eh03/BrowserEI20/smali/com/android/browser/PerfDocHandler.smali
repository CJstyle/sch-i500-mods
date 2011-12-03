.class Lcom/android/browser/PerfDocHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "PerformanceTester.java"


# instance fields
.field private mDoc:Lcom/android/browser/PerfDoc;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 484
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 575
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 515
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 568
    return-void
.end method

.method getDoc()Lcom/android/browser/PerfDoc;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/browser/PerfDocHandler;->mDoc:Lcom/android/browser/PerfDoc;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 509
    new-instance v0, Lcom/android/browser/PerfDoc;

    invoke-direct {v0}, Lcom/android/browser/PerfDoc;-><init>()V

    iput-object v0, p0, Lcom/android/browser/PerfDocHandler;->mDoc:Lcom/android/browser/PerfDoc;

    .line 510
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string v5, "useragent"

    const-string v4, "retry"

    .line 524
    const-string v2, "PerfDoc"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 528
    iget-object v2, p0, Lcom/android/browser/PerfDocHandler;->mDoc:Lcom/android/browser/PerfDoc;

    const-string v3, "useragent"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/browser/PerfDoc;->mUserAgent:Ljava/lang/String;

    .line 529
    const-string v2, "retry"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, attrValue:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 531
    iget-object v2, p0, Lcom/android/browser/PerfDocHandler;->mDoc:Lcom/android/browser/PerfDoc;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/browser/PerfDoc;->mRetry:I

    .line 560
    .end local v0           #attrValue:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 533
    .restart local v0       #attrValue:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/browser/PerfDocHandler;->mDoc:Lcom/android/browser/PerfDoc;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/browser/PerfDoc;->mRetry:I

    goto :goto_0

    .line 535
    .end local v0           #attrValue:Ljava/lang/String;
    :cond_2
    const-string v2, "PerfSite"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 539
    new-instance v1, Lcom/android/browser/PerfSite;

    invoke-direct {v1}, Lcom/android/browser/PerfSite;-><init>()V

    .line 541
    .local v1, site:Lcom/android/browser/PerfSite;
    const-string v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/browser/PerfSite;->mName:Ljava/lang/String;

    .line 542
    iget-object v2, v1, Lcom/android/browser/PerfSite;->mName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 544
    const-string v2, "url"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/browser/PerfSite;->mUrl:Ljava/lang/String;

    .line 545
    iget-object v2, v1, Lcom/android/browser/PerfSite;->mUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 547
    const-string v2, "useragent"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/browser/PerfSite;->mUserAgent:Ljava/lang/String;

    .line 548
    iget-object v2, v1, Lcom/android/browser/PerfSite;->mUserAgent:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 549
    iget-object v2, p0, Lcom/android/browser/PerfDocHandler;->mDoc:Lcom/android/browser/PerfDoc;

    iget-object v2, v2, Lcom/android/browser/PerfDoc;->mUserAgent:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/browser/PerfSite;->mUserAgent:Ljava/lang/String;

    .line 551
    :cond_3
    const-string v2, "retry"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    .restart local v0       #attrValue:Ljava/lang/String;
    if-nez v0, :cond_4

    .line 553
    iget-object v2, p0, Lcom/android/browser/PerfDocHandler;->mDoc:Lcom/android/browser/PerfDoc;

    iget v2, v2, Lcom/android/browser/PerfDoc;->mRetry:I

    iput v2, v1, Lcom/android/browser/PerfSite;->mRetry:I

    .line 557
    :goto_1
    iget-object v2, p0, Lcom/android/browser/PerfDocHandler;->mDoc:Lcom/android/browser/PerfDoc;

    invoke-virtual {v2, v1}, Lcom/android/browser/PerfDoc;->addSite(Lcom/android/browser/PerfSite;)V

    goto :goto_0

    .line 555
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/browser/PerfSite;->mRetry:I

    goto :goto_1
.end method
