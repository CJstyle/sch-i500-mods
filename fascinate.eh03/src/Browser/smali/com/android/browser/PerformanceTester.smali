.class Lcom/android/browser/PerformanceTester;
.super Ljava/lang/Object;
.source "PerformanceTester.java"


# instance fields
.field mActivity:Lcom/android/browser/BrowserActivity;

.field mCurrSite:I

.field mDoc:Lcom/android/browser/PerfDoc;

.field mIsTesting:Z

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/PerformanceTester;->mIsTesting:Z

    .line 56
    iput-object p1, p0, Lcom/android/browser/PerformanceTester;->mActivity:Lcom/android/browser/BrowserActivity;

    .line 58
    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 59
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0x1a

    const-string v2, "PerformanceTester"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/PerformanceTester;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 63
    return-void
.end method


# virtual methods
.method isTesting()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/browser/PerformanceTester;->mIsTesting:Z

    return v0
.end method

.method onPageFinished(Ljava/lang/String;)V
    .locals 4
    .parameter "errorDesc"

    .prologue
    const/4 v3, 0x0

    .line 110
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->showDebugSettings()Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-boolean v1, p0, Lcom/android/browser/PerformanceTester;->mIsTesting:Z

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/browser/PerformanceTester;->mDoc:Lcom/android/browser/PerfDoc;

    iget v2, p0, Lcom/android/browser/PerformanceTester;->mCurrSite:I

    invoke-virtual {v1, v2}, Lcom/android/browser/PerfDoc;->getSite(I)Lcom/android/browser/PerfSite;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/browser/PerfSite;->onPageFinished(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget v1, p0, Lcom/android/browser/PerformanceTester;->mCurrSite:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/browser/PerformanceTester;->mCurrSite:I

    .line 125
    iget v1, p0, Lcom/android/browser/PerformanceTester;->mCurrSite:I

    iget-object v2, p0, Lcom/android/browser/PerformanceTester;->mDoc:Lcom/android/browser/PerfDoc;

    iget-object v2, v2, Lcom/android/browser/PerfDoc;->mSites:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 128
    iget-object v1, p0, Lcom/android/browser/PerformanceTester;->mActivity:Lcom/android/browser/BrowserActivity;

    const-string v2, "Test Done"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 129
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 130
    iput-boolean v3, p0, Lcom/android/browser/PerformanceTester;->mIsTesting:Z

    .line 131
    iget-object v1, p0, Lcom/android/browser/PerformanceTester;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 133
    invoke-virtual {p0}, Lcom/android/browser/PerformanceTester;->printResult()V

    goto :goto_0

    .line 137
    .end local v0           #toast:Landroid/widget/Toast;
    :cond_2
    iget-object v1, p0, Lcom/android/browser/PerformanceTester;->mDoc:Lcom/android/browser/PerfDoc;

    iget v2, p0, Lcom/android/browser/PerformanceTester;->mCurrSite:I

    invoke-virtual {v1, v2}, Lcom/android/browser/PerfDoc;->getSite(I)Lcom/android/browser/PerfSite;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/PerformanceTester;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1, v2}, Lcom/android/browser/PerfSite;->startTest(Lcom/android/browser/BrowserActivity;)V

    goto :goto_0
.end method

.method parseDoc()Lcom/android/browser/PerfDoc;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v2, 0x0

    .line 162
    .local v2, inputDoc:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v7, "/sdcard/performancetest.xml"

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v2           #inputDoc:Ljava/io/FileInputStream;
    .local v3, inputDoc:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    .line 166
    .local v5, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 169
    .local v4, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v6

    .line 171
    .local v6, xr:Lorg/xml/sax/XMLReader;
    new-instance v1, Lcom/android/browser/PerfDocHandler;

    invoke-direct {v1}, Lcom/android/browser/PerfDocHandler;-><init>()V

    .line 172
    .local v1, handler:Lcom/android/browser/PerfDocHandler;
    invoke-interface {v6, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 175
    new-instance v7, Lorg/xml/sax/InputSource;

    invoke-direct {v7, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v6, v7}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 181
    invoke-virtual {v1}, Lcom/android/browser/PerfDocHandler;->getDoc()Lcom/android/browser/PerfDoc;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 192
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    move-object v2, v3

    .end local v1           #handler:Lcom/android/browser/PerfDocHandler;
    .end local v3           #inputDoc:Ljava/io/FileInputStream;
    .end local v4           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v5           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .end local v6           #xr:Lorg/xml/sax/XMLReader;
    .restart local v2       #inputDoc:Ljava/io/FileInputStream;
    :goto_0
    return-object v7

    .line 183
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 188
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v7, "PerformanceTester"

    const-string v8, "parseInput error"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    const/4 v7, 0x0

    .line 192
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v7

    .end local v2           #inputDoc:Ljava/io/FileInputStream;
    .restart local v3       #inputDoc:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #inputDoc:Ljava/io/FileInputStream;
    .restart local v2       #inputDoc:Ljava/io/FileInputStream;
    goto :goto_2

    .line 183
    .end local v2           #inputDoc:Ljava/io/FileInputStream;
    .restart local v3       #inputDoc:Ljava/io/FileInputStream;
    :catch_1
    move-exception v7

    move-object v0, v7

    move-object v2, v3

    .end local v3           #inputDoc:Ljava/io/FileInputStream;
    .restart local v2       #inputDoc:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method printResult()V
    .locals 6

    .prologue
    const-string v5, "/sdcard/performancetest.result"

    .line 205
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v5, "/sdcard/performancetest.result"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 208
    new-instance v1, Ljava/io/FileWriter;

    const-string v5, "/sdcard/performancetest.result"

    invoke-direct {v1, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 210
    .local v1, fw:Ljava/io/FileWriter;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/browser/PerformanceTester;->mDoc:Lcom/android/browser/PerfDoc;

    iget-object v5, v5, Lcom/android/browser/PerfDoc;->mSites:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 212
    iget-object v5, p0, Lcom/android/browser/PerformanceTester;->mDoc:Lcom/android/browser/PerfDoc;

    invoke-virtual {v5, v2}, Lcom/android/browser/PerfDoc;->getSite(I)Lcom/android/browser/PerfSite;

    move-result-object v3

    .line 213
    .local v3, site:Lcom/android/browser/PerfSite;
    invoke-virtual {v3}, Lcom/android/browser/PerfSite;->getResultString()Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, str:Ljava/lang/String;
    const-string v5, "PerformanceTester"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v1, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 218
    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    .end local v3           #site:Lcom/android/browser/PerfSite;
    .end local v4           #str:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 222
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v0           #file:Ljava/io/File;
    .end local v1           #fw:Ljava/io/FileWriter;
    .end local v2           #i:I
    :goto_1
    return-void

    .line 224
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method startTest()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 69
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->showDebugSettings()Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    :goto_0
    return-void

    .line 73
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/browser/PerformanceTester;->parseDoc()Lcom/android/browser/PerfDoc;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/PerformanceTester;->mDoc:Lcom/android/browser/PerfDoc;

    .line 83
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/browser/PerformanceTester;->mCurrSite:I

    .line 84
    iget-object v2, p0, Lcom/android/browser/PerformanceTester;->mDoc:Lcom/android/browser/PerfDoc;

    iget v3, p0, Lcom/android/browser/PerformanceTester;->mCurrSite:I

    invoke-virtual {v2, v3}, Lcom/android/browser/PerfDoc;->getSite(I)Lcom/android/browser/PerfSite;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/PerformanceTester;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v2, v3}, Lcom/android/browser/PerfSite;->startTest(Lcom/android/browser/BrowserActivity;)V

    .line 86
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/browser/PerformanceTester;->mIsTesting:Z

    .line 88
    iget-object v2, p0, Lcom/android/browser/PerformanceTester;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 93
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/browser/PerformanceTester;->mActivity:Lcom/android/browser/BrowserActivity;

    const-string v3, "Please check performancetest.xml "

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 94
    .local v1, toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method stopTest()V
    .locals 1

    .prologue
    .line 146
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->showDebugSettings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/browser/PerformanceTester;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->stopLoading()V

    .line 150
    iget-object v0, p0, Lcom/android/browser/PerformanceTester;->mDoc:Lcom/android/browser/PerfDoc;

    iget-object v0, v0, Lcom/android/browser/PerfDoc;->mSites:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iput v0, p0, Lcom/android/browser/PerformanceTester;->mCurrSite:I

    goto :goto_0
.end method
