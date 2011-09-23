.class Lcom/sec/android/app/controlpanel/ProcessStats$1;
.super Ljava/lang/Object;
.source "ProcessStats.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/app/controlpanel/ProcessStats$Stats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/sec/android/app/controlpanel/ProcessStats$Stats;Lcom/sec/android/app/controlpanel/ProcessStats$Stats;)I
    .locals 6
    .parameter "sta"
    .parameter "stb"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 220
    iget v2, p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_utime:I

    iget v3, p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_stime:I

    add-int v0, v2, v3

    .line 221
    .local v0, ta:I
    iget v2, p2, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_utime:I

    iget v3, p2, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_stime:I

    add-int v1, v2, v3

    .line 222
    .local v1, tb:I
    if-eq v0, v1, :cond_1

    .line 223
    if-le v0, v1, :cond_0

    move v2, v4

    .line 231
    :goto_0
    return v2

    :cond_0
    move v2, v5

    .line 223
    goto :goto_0

    .line 225
    :cond_1
    iget-boolean v2, p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->added:Z

    iget-boolean v3, p2, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->added:Z

    if-eq v2, v3, :cond_3

    .line 226
    iget-boolean v2, p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->added:Z

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_0

    .line 228
    :cond_3
    iget-boolean v2, p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->removed:Z

    iget-boolean v3, p2, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->removed:Z

    if-eq v2, v3, :cond_5

    .line 229
    iget-boolean v2, p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->added:Z

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_0

    :cond_4
    move v2, v5

    goto :goto_0

    .line 231
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 218
    check-cast p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;

    .end local p1
    check-cast p2, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/controlpanel/ProcessStats$1;->compare(Lcom/sec/android/app/controlpanel/ProcessStats$Stats;Lcom/sec/android/app/controlpanel/ProcessStats$Stats;)I

    move-result v0

    return v0
.end method
