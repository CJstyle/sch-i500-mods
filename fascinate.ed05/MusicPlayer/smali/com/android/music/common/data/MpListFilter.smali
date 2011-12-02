.class public Lcom/android/music/common/data/MpListFilter;
.super Ljava/lang/Object;
.source "MpListFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/music/common/data/MpListFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

.field public filterCount:I

.field public listType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/android/music/common/data/MpListFilter$1;

    invoke-direct {v0}, Lcom/android/music/common/data/MpListFilter$1;-><init>()V

    sput-object v0, Lcom/android/music/common/data/MpListFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "listType"
    .parameter "filterCnt"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/android/music/common/data/MpListFilter;->listType:I

    .line 23
    iput p2, p0, Lcom/android/music/common/data/MpListFilter;->filterCount:I

    .line 24
    iget v0, p0, Lcom/android/music/common/data/MpListFilter;->filterCount:I

    new-array v0, v0, [Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    iput-object v0, p0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    .line 25
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 54
    iget v1, p0, Lcom/android/music/common/data/MpListFilter;->listType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v1, p0, Lcom/android/music/common/data/MpListFilter;->filterCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/music/common/data/MpListFilter;->filterCount:I

    if-ge v0, v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->bIsID:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v1, p0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-object v1, p0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->strFilterData:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 62
    :cond_1
    return-void
.end method
