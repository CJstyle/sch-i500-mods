.class public Lcom/android/music/list/data/MpListReorderThread;
.super Ljava/lang/Thread;
.source "MpListReorderThread.java"


# instance fields
.field private mFilter:Lcom/android/music/common/data/MpListFilter;

.field private mListView:Lcom/android/music/list/view/MpListReorderView;

.field private mViewItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/android/music/common/data/MpListFilter;Lcom/android/music/list/view/MpListReorderView;)V
    .locals 0
    .parameter
    .parameter "filter"
    .parameter "view"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;",
            ">;",
            "Lcom/android/music/common/data/MpListFilter;",
            "Lcom/android/music/list/view/MpListReorderView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, viewItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/music/list/data/MpListReorderThread;->mViewItem:Ljava/util/ArrayList;

    .line 22
    iput-object p2, p0, Lcom/android/music/list/data/MpListReorderThread;->mFilter:Lcom/android/music/common/data/MpListFilter;

    .line 23
    iput-object p3, p0, Lcom/android/music/list/data/MpListReorderThread;->mListView:Lcom/android/music/list/view/MpListReorderView;

    .line 24
    return-void
.end method

.method private reorderPlaylist()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 27
    iget-object v5, p0, Lcom/android/music/list/data/MpListReorderThread;->mListView:Lcom/android/music/list/view/MpListReorderView;

    invoke-virtual {v5}, Lcom/android/music/list/view/MpListReorderView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 29
    .local v1, cr:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/music/list/data/MpListReorderThread;->mFilter:Lcom/android/music/common/data/MpListFilter;

    iget v5, v5, Lcom/android/music/common/data/MpListFilter;->listType:I

    iget-object v6, p0, Lcom/android/music/list/data/MpListReorderThread;->mFilter:Lcom/android/music/common/data/MpListFilter;

    iget-object v6, v6, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget v6, v6, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-static {v5, v6}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v4

    .line 30
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {v1, v4, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 32
    iget-object v5, p0, Lcom/android/music/list/data/MpListReorderThread;->mViewItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Lcom/android/music/common/data/MusicAddData;

    .line 33
    .local v0, addData:[Lcom/android/music/common/data/MusicAddData;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 34
    new-instance v5, Lcom/android/music/common/data/MusicAddData;

    invoke-direct {v5}, Lcom/android/music/common/data/MusicAddData;-><init>()V

    aput-object v5, v0, v2

    .line 35
    aget-object v6, v0, v2

    iget-object v5, p0, Lcom/android/music/list/data/MpListReorderThread;->mViewItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;

    iget v5, v5, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;->mId:I

    iput v5, v6, Lcom/android/music/common/data/MusicAddData;->mId:I

    .line 36
    aget-object v6, v0, v2

    iget-object v5, p0, Lcom/android/music/list/data/MpListReorderThread;->mViewItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;

    iget-object v5, v5, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;->mData:Ljava/lang/String;

    iput-object v5, v6, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    .line 37
    aget-object v5, v0, v2

    aget-object v6, v0, v2

    iget-object v6, v6, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    iput v6, v5, Lcom/android/music/common/data/MusicAddData;->mHashCode:I

    .line 38
    aget-object v5, v0, v2

    aget-object v6, v0, v2

    iget-object v6, v6, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    iput v6, v5, Lcom/android/music/common/data/MusicAddData;->mHashCode:I

    .line 33
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->getInstance()Lcom/android/music/common/data/MusicDB;

    move-result-object v3

    .line 42
    .local v3, musicDB:Lcom/android/music/common/data/MusicDB;
    iget-object v5, p0, Lcom/android/music/list/data/MpListReorderThread;->mFilter:Lcom/android/music/common/data/MpListFilter;

    array-length v6, v0

    invoke-virtual {v3, v5, v6, v0}, Lcom/android/music/common/data/MusicDB;->addItems(Lcom/android/music/common/data/MpListFilter;I[Lcom/android/music/common/data/MusicAddData;)I

    .line 44
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/music/list/data/MpListReorderThread;->reorderPlaylist()V

    .line 49
    iget-object v0, p0, Lcom/android/music/list/data/MpListReorderThread;->mListView:Lcom/android/music/list/view/MpListReorderView;

    iget-object v0, v0, Lcom/android/music/list/view/MpListReorderView;->mFinishHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 50
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 51
    return-void
.end method
