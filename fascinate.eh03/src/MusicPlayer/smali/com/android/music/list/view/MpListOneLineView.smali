.class public Lcom/android/music/list/view/MpListOneLineView;
.super Lcom/android/music/list/view/AbstractMpListView;
.source "MpListOneLineView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;IZI[Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "listType"
    .parameter "hasCheck"
    .parameter "checkListType"
    .parameter "con"

    .prologue
    .line 15
    invoke-direct/range {p0 .. p5}, Lcom/android/music/list/view/AbstractMpListView;-><init>(Landroid/content/Context;IZI[Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p0}, Lcom/android/music/list/view/MpListOneLineView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getColumn()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 32
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 33
    .local v0, string:[Ljava/lang/String;
    iget v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    .line 34
    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    .line 36
    :cond_0
    return-object v0
.end method

.method protected initAdapter(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "hasCheck"

    .prologue
    .line 21
    new-instance v0, Lcom/android/music/list/adapter/MpListOneLineAdapter;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, p1, v1, p2}, Lcom/android/music/list/adapter/MpListOneLineAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 22
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    invoke-virtual {p0}, Lcom/android/music/list/view/MpListOneLineView;->getColumn()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/adapter/AbstractMpListAdapter;->setColumn([Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/list/view/MpListOneLineView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 24
    return-void
.end method
