.class public Lcom/sec/android/app/controlpanel/activity/comparator/InstalledTimeComparator;
.super Ljava/lang/Object;
.source "InstalledTimeComparator.java"

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
    .locals 7
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 9
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    move v4, v6

    .line 18
    :goto_0
    return v4

    .line 10
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_3

    :cond_2
    move v4, v5

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getInstalledTime()J

    move-result-wide v0

    .line 12
    .local v0, aTime:J
    invoke-virtual {p2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getInstalledTime()J

    move-result-wide v2

    .line 13
    .local v2, bTime:J
    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    move v4, v5

    .line 14
    goto :goto_0

    .line 15
    :cond_4
    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    .line 16
    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    move v4, v6

    .line 18
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
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/controlpanel/activity/comparator/InstalledTimeComparator;->compare(Lcom/sec/android/app/controlpanel/PackageInfoItem;Lcom/sec/android/app/controlpanel/PackageInfoItem;)I

    move-result v0

    return v0
.end method
