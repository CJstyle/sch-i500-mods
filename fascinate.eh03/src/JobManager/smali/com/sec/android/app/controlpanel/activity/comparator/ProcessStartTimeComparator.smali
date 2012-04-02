.class public Lcom/sec/android/app/controlpanel/activity/comparator/ProcessStartTimeComparator;
.super Ljava/lang/Object;
.source "ProcessStartTimeComparator.java"

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

    .line 9
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    move v4, v7

    .line 33
    :goto_0
    return v4

    .line 10
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_3

    :cond_2
    move v4, v6

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getRecentTaskOrder()I

    move-result v4

    if-eq v4, v6, :cond_4

    invoke-virtual {p2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getRecentTaskOrder()I

    move-result v4

    if-ne v4, v6, :cond_7

    .line 16
    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getProcessStartTime()J

    move-result-wide v0

    .line 17
    .local v0, aTime:J
    invoke-virtual {p2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getProcessStartTime()J

    move-result-wide v2

    .line 18
    .local v2, bTime:J
    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    move v4, v6

    .line 19
    goto :goto_0

    .line 20
    :cond_5
    cmp-long v4, v0, v2

    if-nez v4, :cond_6

    .line 21
    const/4 v4, 0x0

    goto :goto_0

    :cond_6
    move v4, v7

    .line 23
    goto :goto_0

    .line 30
    .end local v0           #aTime:J
    .end local v2           #bTime:J
    :cond_7
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getRecentTaskOrder()I

    move-result v4

    invoke-virtual {p2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getRecentTaskOrder()I

    move-result v5

    if-le v4, v5, :cond_8

    move v4, v7

    .line 31
    goto :goto_0

    :cond_8
    move v4, v6

    .line 33
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
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/controlpanel/activity/comparator/ProcessStartTimeComparator;->compare(Lcom/sec/android/app/controlpanel/PackageInfoItem;Lcom/sec/android/app/controlpanel/PackageInfoItem;)I

    move-result v0

    return v0
.end method
