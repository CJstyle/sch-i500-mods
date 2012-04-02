.class public Lcom/sec/android/app/controlpanel/activity/comparator/CpuUsageComparator;
.super Ljava/lang/Object;
.source "CpuUsageComparator.java"

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
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 10
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCpuUsage()F

    move-result v0

    .line 11
    .local v0, aCpu:F
    invoke-virtual {p2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCpuUsage()F

    move-result v1

    .line 13
    .local v1, bCpu:F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 14
    const/4 v2, -0x1

    .line 18
    :goto_0
    return v2

    .line 15
    :cond_0
    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    .line 16
    const/4 v2, 0x1

    goto :goto_0

    .line 18
    :cond_1
    const/4 v2, 0x0

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
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/controlpanel/activity/comparator/CpuUsageComparator;->compare(Lcom/sec/android/app/controlpanel/PackageInfoItem;Lcom/sec/android/app/controlpanel/PackageInfoItem;)I

    move-result v0

    return v0
.end method
