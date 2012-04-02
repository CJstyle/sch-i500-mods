.class Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mMode:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2123
    return-void
.end method

.method private integerCompare(II)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 2166
    const/4 v0, 0x0

    .line 2167
    .local v0, ret:I
    if-le p1, p2, :cond_1

    .line 2168
    const/4 v0, 0x1

    .line 2173
    :cond_0
    :goto_0
    return v0

    .line 2169
    :cond_1
    if-ge p1, p2, :cond_0

    .line 2170
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final compare(Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    const v3, 0xffff

    .line 2135
    const/4 v0, 0x0

    .line 2136
    .local v0, ret:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 2137
    iget v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    iget v2, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;->integerCompare(II)I

    move-result v0

    .line 2138
    if-nez v0, :cond_0

    .line 2139
    iget v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    iget v2, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;->integerCompare(II)I

    move-result v0

    .line 2140
    if-nez v0, :cond_0

    .line 2141
    iget v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    iget v2, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;->integerCompare(II)I

    move-result v0

    .line 2154
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 2155
    iget v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    if-eq v1, v3, :cond_1

    iget v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    if-eq v1, v3, :cond_1

    iget v1, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    if-eq v1, v3, :cond_1

    iget v1, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    if-ne v1, v3, :cond_4

    .line 2157
    :cond_1
    invoke-static {}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2000()Ljava/text/Collator;

    move-result-object v1

    iget-object v2, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2162
    :cond_2
    :goto_1
    return v0

    .line 2145
    :cond_3
    iget v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    iget v2, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;->integerCompare(II)I

    move-result v0

    .line 2146
    if-nez v0, :cond_0

    .line 2147
    iget v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    iget v2, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;->integerCompare(II)I

    move-result v0

    .line 2148
    if-nez v0, :cond_0

    .line 2149
    iget v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    iget v2, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;->integerCompare(II)I

    move-result v0

    goto :goto_0

    .line 2159
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2119
    check-cast p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local p1
    check-cast p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;->compare(Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    move-result v0

    return v0
.end method

.method public setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 2131
    iput p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;->mMode:I

    .line 2132
    return-void
.end method
