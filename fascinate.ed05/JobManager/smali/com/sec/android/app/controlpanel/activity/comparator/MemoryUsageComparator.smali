.class public Lcom/sec/android/app/controlpanel/activity/comparator/MemoryUsageComparator;
.super Ljava/lang/Object;
.source "MemoryUsageComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/sec/android/app/controlpanel/PackageInfoItem;Lcom/sec/android/app/controlpanel/PackageInfoItem;)I
    .locals 8
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 10
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getMemUsage()J

    move-result-wide v4

    long-to-float v1, v4

    .line 11
    .local v1, aMem:F
    invoke-virtual {p2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getMemUsage()J

    move-result-wide v4

    long-to-float v3, v4

    .line 13
    .local v3, bMem:F
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCategory()I

    move-result v0

    .line 14
    .local v0, aCategory:I
    invoke-virtual {p2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCategory()I

    move-result v2

    .line 17
    .local v2, bCategory:I
    if-le v0, v2, :cond_0

    move v4, v7

    .line 28
    :goto_0
    return v4

    .line 19
    :cond_0
    if-ge v0, v2, :cond_1

    move v4, v6

    .line 20
    goto :goto_0

    .line 23
    :cond_1
    cmpl-float v4, v1, v3

    if-lez v4, :cond_2

    move v4, v6

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    cmpg-float v4, v1, v3

    if-gez v4, :cond_3

    move v4, v7

    .line 26
    goto :goto_0

    .line 28
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7
    check-cast p1, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .end local p1
    check-cast p2, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/controlpanel/activity/comparator/MemoryUsageComparator;->compare(Lcom/sec/android/app/controlpanel/PackageInfoItem;Lcom/sec/android/app/controlpanel/PackageInfoItem;)I

    move-result v0

    return v0
.end method
