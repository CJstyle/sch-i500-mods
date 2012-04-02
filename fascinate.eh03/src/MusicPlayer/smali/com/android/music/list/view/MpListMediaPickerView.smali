.class public Lcom/android/music/list/view/MpListMediaPickerView;
.super Lcom/android/music/list/view/AbstractMpListView;
.source "MpListMediaPickerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;IZI[Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "listType"
    .parameter "hasCheck"
    .parameter "checkListType"
    .parameter "con"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p5}, Lcom/android/music/list/view/AbstractMpListView;-><init>(Landroid/content/Context;IZI[Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getColumn()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    .line 35
    .local v0, string:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    .line 36
    const/4 v1, 0x1

    const-string v2, "artist"

    aput-object v2, v0, v1

    .line 37
    const/4 v1, 0x2

    const-string v2, "album_id"

    aput-object v2, v0, v1

    .line 39
    return-object v0
.end method

.method protected initAdapter(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "hasCheck"

    .prologue
    .line 56
    new-instance v0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/music/list/view/MpListMediaPickerView;->getColumn()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 57
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/list/view/MpListMediaPickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 45
    .local v0, itemId:I
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 48
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const/4 v3, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 49
    iget-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 50
    return-void
.end method
