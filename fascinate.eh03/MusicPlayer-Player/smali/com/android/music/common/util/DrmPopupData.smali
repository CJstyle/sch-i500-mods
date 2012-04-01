.class public Lcom/android/music/common/util/DrmPopupData;
.super Ljava/lang/Object;
.source "DrmPopupData.java"


# instance fields
.field public id:I

.field public mFilter:Lcom/android/music/common/data/MpListFilter;

.field public mListView:Lcom/android/music/list/view/AbstractMpListView;

.field public popupFilePath:Ljava/lang/String;

.field public popupFrom:I

.field public popupStrings:[I

.field public popupType:I

.field public remainCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v0, p0, Lcom/android/music/common/util/DrmPopupData;->remainCount:I

    .line 12
    iput v0, p0, Lcom/android/music/common/util/DrmPopupData;->popupType:I

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/common/util/DrmPopupData;->popupFrom:I

    return-void
.end method


# virtual methods
.method public setFilter([Ljava/lang/String;I)V
    .locals 7
    .parameter "conditions"
    .parameter "listType"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    new-instance v0, Lcom/android/music/common/data/MpListFilter;

    invoke-direct {v0, p2, v5}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    iput-object v0, p0, Lcom/android/music/common/util/DrmPopupData;->mFilter:Lcom/android/music/common/data/MpListFilter;

    .line 28
    if-nez p1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/android/music/common/util/DrmPopupData;->mFilter:Lcom/android/music/common/data/MpListFilter;

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v1, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    iget-object v2, p0, Lcom/android/music/common/util/DrmPopupData;->mFilter:Lcom/android/music/common/data/MpListFilter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, v5, v4, v6}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v1, v0, v4

    .line 39
    :goto_0
    return-void

    .line 32
    :cond_0
    aget-object v0, p1, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/android/music/common/util/DrmPopupData;->mFilter:Lcom/android/music/common/data/MpListFilter;

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v1, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    iget-object v2, p0, Lcom/android/music/common/util/DrmPopupData;->mFilter:Lcom/android/music/common/data/MpListFilter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v3, p1, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v5, v3, v6}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v1, v0, v4

    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/android/music/common/util/DrmPopupData;->mFilter:Lcom/android/music/common/data/MpListFilter;

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v1, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    iget-object v2, p0, Lcom/android/music/common/util/DrmPopupData;->mFilter:Lcom/android/music/common/data/MpListFilter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v3, p1, v5

    invoke-direct {v1, v2, v4, v4, v3}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v1, v0, v4

    goto :goto_0
.end method
