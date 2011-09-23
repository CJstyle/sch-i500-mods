.class Lcom/android/browser/PerfDoc;
.super Ljava/lang/Object;
.source "PerformanceTester.java"


# static fields
.field static final LOGTAG:Ljava/lang/String; = "PerformanceTester"


# instance fields
.field mCurrIndex:I

.field mRetry:I

.field mSites:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/browser/PerfSite;",
            ">;"
        }
    .end annotation
.end field

.field mUserAgent:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/browser/PerfDoc;->mSites:Ljava/util/Vector;

    .line 406
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/PerfDoc;->mCurrIndex:I

    .line 409
    return-void
.end method


# virtual methods
.method addSite(Lcom/android/browser/PerfSite;)V
    .locals 1
    .parameter "site"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/browser/PerfDoc;->mSites:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 414
    return-void
.end method

.method getSite(I)Lcom/android/browser/PerfSite;
    .locals 1
    .parameter "index"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/browser/PerfDoc;->mSites:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/PerfSite;

    return-object p0
.end method

.method isValid()Z
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lcom/android/browser/PerfDoc;->mRetry:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/PerfDoc;->mUserAgent:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/PerfDoc;->mSites:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    const/4 v0, 0x1

    .line 423
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
