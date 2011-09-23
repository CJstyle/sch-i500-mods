.class Lcom/android/browser/PerfSite;
.super Ljava/lang/Object;
.source "PerformanceTester.java"


# static fields
.field static final LOAD_SITE:I = 0x1

.field static final LOAD_SITE_DELAY:I = 0x1388

.field static final LOGTAG:Ljava/lang/String; = "PerformanceTester"


# instance fields
.field mBrowser:Lcom/android/browser/BrowserActivity;

.field mCurrRetry:I

.field private mHandler:Landroid/os/Handler;

.field mName:Ljava/lang/String;

.field mResults:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/browser/PerfResult;",
            ">;"
        }
    .end annotation
.end field

.field mRetry:I

.field mStartTick:J

.field mUrl:Ljava/lang/String;

.field mUserAgent:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    new-instance v0, Lcom/android/browser/PerfSite$1;

    invoke-direct {v0, p0}, Lcom/android/browser/PerfSite$1;-><init>(Lcom/android/browser/PerfSite;)V

    iput-object v0, p0, Lcom/android/browser/PerfSite;->mHandler:Landroid/os/Handler;

    .line 264
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/browser/PerfSite;->mResults:Ljava/util/Vector;

    .line 266
    return-void
.end method


# virtual methods
.method getResultString()Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v9, 0x3e8

    const-string v11, "\t"

    .line 323
    iget-object v4, p0, Lcom/android/browser/PerfSite;->mName:Ljava/lang/String;

    .line 324
    .local v4, str:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\t\t\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 325
    const/4 v5, 0x0

    .line 326
    .local v5, total:F
    const/4 v6, 0x0

    .line 328
    .local v6, validcount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v7, p0, Lcom/android/browser/PerfSite;->mRetry:I

    if-ge v1, v7, :cond_1

    .line 330
    iget-object v7, p0, Lcom/android/browser/PerfSite;->mResults:Ljava/util/Vector;

    invoke-virtual {v7, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/browser/PerfResult;

    .line 331
    .local v3, res:Lcom/android/browser/PerfResult;
    iget-object v7, v3, Lcom/android/browser/PerfResult;->mErrorDesc:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 333
    iget-wide v7, v3, Lcom/android/browser/PerfResult;->mElapsed:J

    div-long/2addr v7, v9

    long-to-float v0, v7

    .line 334
    .local v0, f:F
    iget-wide v7, v3, Lcom/android/browser/PerfResult;->mElapsed:J

    rem-long/2addr v7, v9

    long-to-float v2, v7

    .line 335
    .local v2, remainder:F
    const/high16 v7, 0x447a

    div-float/2addr v2, v7

    .line 336
    add-float/2addr v0, v2

    .line 337
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 338
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\t"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 339
    add-int/lit8 v6, v6, 0x1

    .line 340
    add-float/2addr v5, v0

    .line 328
    .end local v0           #f:F
    .end local v2           #remainder:F
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ERR"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 345
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\t"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 349
    .end local v3           #res:Lcom/android/browser/PerfResult;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "AVR = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 350
    if-eqz v6, :cond_2

    .line 351
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    int-to-float v8, v6

    div-float v8, v5, v8

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 353
    :cond_2
    return-object v4
.end method

.method loadSite()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 280
    invoke-virtual {p0}, Lcom/android/browser/PerfSite;->resetBrowser()V

    .line 283
    iget-object v0, p0, Lcom/android/browser/PerfSite;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 285
    iget-object v0, p0, Lcom/android/browser/PerfSite;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 286
    return-void
.end method

.method loadSiteAfterResetBrowser()V
    .locals 3

    .prologue
    .line 291
    iget-object v1, p0, Lcom/android/browser/PerfSite;->mBrowser:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 292
    .local v0, webview:Landroid/webkit/WebView;
    iget-object v1, p0, Lcom/android/browser/PerfSite;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 293
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/browser/PerfSite;->mStartTick:J

    .line 296
    return-void
.end method

.method onPageFinished(Ljava/lang/String;)Z
    .locals 3
    .parameter "errorDesc"

    .prologue
    const/4 v2, 0x1

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/browser/PerfSite;->recordResult(Ljava/lang/String;)V

    .line 362
    iget v0, p0, Lcom/android/browser/PerfSite;->mCurrRetry:I

    iget v1, p0, Lcom/android/browser/PerfSite;->mRetry:I

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    move v0, v2

    .line 368
    :goto_0
    return v0

    .line 366
    :cond_0
    iget v0, p0, Lcom/android/browser/PerfSite;->mCurrRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/browser/PerfSite;->mCurrRetry:I

    .line 367
    invoke-virtual {p0}, Lcom/android/browser/PerfSite;->loadSite()V

    .line 368
    const/4 v0, 0x0

    goto :goto_0
.end method

.method recordResult(Ljava/lang/String;)V
    .locals 7
    .parameter "errordesc"

    .prologue
    .line 311
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/browser/PerfSite;->mStartTick:J

    sub-long v0, v3, v5

    .line 312
    .local v0, elapsed:J
    const-string v3, "PerformanceTester"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/browser/PerfSite;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " elapsed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v2, Lcom/android/browser/PerfResult;

    invoke-direct {v2}, Lcom/android/browser/PerfResult;-><init>()V

    .line 315
    .local v2, result:Lcom/android/browser/PerfResult;
    iput-wide v0, v2, Lcom/android/browser/PerfResult;->mElapsed:J

    .line 316
    iput-object p1, v2, Lcom/android/browser/PerfResult;->mErrorDesc:Ljava/lang/String;

    .line 318
    iget-object v3, p0, Lcom/android/browser/PerfSite;->mResults:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 319
    return-void
.end method

.method resetBrowser()V
    .locals 2

    .prologue
    .line 270
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    .line 272
    .local v0, settings:Lcom/android/browser/BrowserSettings;
    iget-object v1, p0, Lcom/android/browser/PerfSite;->mBrowser:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->clearCache(Landroid/content/Context;)V

    .line 273
    iget-object v1, p0, Lcom/android/browser/PerfSite;->mBrowser:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->clearCookies(Landroid/content/Context;)V

    .line 274
    iget-object v1, p0, Lcom/android/browser/PerfSite;->mBrowser:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->clearHistory(Landroid/content/Context;)V

    .line 275
    return-void
.end method

.method startTest(Lcom/android/browser/BrowserActivity;)V
    .locals 1
    .parameter "browser"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/browser/PerfSite;->mBrowser:Lcom/android/browser/BrowserActivity;

    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/PerfSite;->mCurrRetry:I

    .line 306
    invoke-virtual {p0}, Lcom/android/browser/PerfSite;->loadSite()V

    .line 307
    return-void
.end method
