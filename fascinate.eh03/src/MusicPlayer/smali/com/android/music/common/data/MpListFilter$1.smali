.class final Lcom/android/music/common/data/MpListFilter$1;
.super Ljava/lang/Object;
.source "MpListFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/data/MpListFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/music/common/data/MpListFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/music/common/data/MpListFilter;
    .locals 4
    .parameter "in"

    .prologue
    .line 29
    new-instance v1, Lcom/android/music/common/data/MpListFilter;

    invoke-direct {v1}, Lcom/android/music/common/data/MpListFilter;-><init>()V

    .line 30
    .local v1, mFilter:Lcom/android/music/common/data/MpListFilter;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/android/music/common/data/MpListFilter;->listType:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/android/music/common/data/MpListFilter;->filterCount:I

    .line 33
    iget v2, v1, Lcom/android/music/common/data/MpListFilter;->filterCount:I

    if-lez v2, :cond_1

    .line 34
    iget v2, v1, Lcom/android/music/common/data/MpListFilter;->filterCount:I

    new-array v2, v2, [Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    iput-object v2, v1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    .line 35
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, v1, Lcom/android/music/common/data/MpListFilter;->filterCount:I

    if-ge v0, v2, :cond_1

    .line 36
    iget-object v2, v1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    aget-object v2, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->bIsID:Z

    .line 37
    iget-object v2, v1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    aget-object v2, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    .line 38
    iget-object v2, v1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    aget-object v2, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->strFilterData:Ljava/lang/String;

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 41
    .end local v0           #i:I
    :cond_1
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/music/common/data/MpListFilter$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/music/common/data/MpListFilter;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/music/common/data/MpListFilter;
    .locals 1
    .parameter "size"

    .prologue
    .line 45
    new-array v0, p1, [Lcom/android/music/common/data/MpListFilter;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/music/common/data/MpListFilter$1;->newArray(I)[Lcom/android/music/common/data/MpListFilter;

    move-result-object v0

    return-object v0
.end method
