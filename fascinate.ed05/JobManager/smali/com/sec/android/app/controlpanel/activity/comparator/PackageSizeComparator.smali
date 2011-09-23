.class public Lcom/sec/android/app/controlpanel/activity/comparator/PackageSizeComparator;
.super Ljava/lang/Object;
.source "PackageSizeComparator.java"

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
    .line 9
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCodeDataSize()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCodeDataSize()J

    move-result-wide v6

    add-long v0, v4, v6

    .line 10
    .local v0, aSize:J
    invoke-virtual {p2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCodeDataSize()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCodeDataSize()J

    move-result-wide v6

    add-long v2, v4, v6

    .line 11
    .local v2, bSize:J
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 12
    const/4 v4, -0x1

    .line 16
    :goto_0
    return v4

    .line 13
    :cond_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 14
    const/4 v4, 0x0

    goto :goto_0

    .line 16
    :cond_1
    const/4 v4, 0x1

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
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/controlpanel/activity/comparator/PackageSizeComparator;->compare(Lcom/sec/android/app/controlpanel/PackageInfoItem;Lcom/sec/android/app/controlpanel/PackageInfoItem;)I

    move-result v0

    return v0
.end method
