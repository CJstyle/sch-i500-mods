.class public Lcom/android/music/list/view/MpListThumnailTwoLineView;
.super Lcom/android/music/list/view/AbstractMpListView;
.source "MpListThumnailTwoLineView.java"


# instance fields
.field private mAudio:Landroid/provider/MediaStore$Audio;

.field private testInfo:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZI[Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "listType"
    .parameter "hasCheck"
    .parameter "checkListType"
    .parameter "con"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p5}, Lcom/android/music/list/view/AbstractMpListView;-><init>(Landroid/content/Context;IZI[Ljava/lang/String;)V

    .line 13
    new-instance v0, Landroid/provider/MediaStore$Audio;

    invoke-direct {v0}, Landroid/provider/MediaStore$Audio;-><init>()V

    iput-object v0, p0, Lcom/android/music/list/view/MpListThumnailTwoLineView;->mAudio:Landroid/provider/MediaStore$Audio;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album_art"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/music/list/view/MpListThumnailTwoLineView;->testInfo:[Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getColumn()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v6, "artist"

    .line 42
    new-array v0, v5, [Ljava/lang/String;

    .line 43
    .local v0, string:[Ljava/lang/String;
    iget v1, p0, Lcom/android/music/list/view/MpListThumnailTwoLineView;->mListType:I

    if-ne v1, v5, :cond_0

    .line 44
    const-string v1, "album"

    aput-object v1, v0, v2

    .line 45
    const-string v1, "artist"

    aput-object v6, v0, v3

    .line 46
    const-string v1, "_id"

    aput-object v1, v0, v4

    .line 60
    :goto_0
    return-object v0

    .line 56
    :cond_0
    const-string v1, "title"

    aput-object v1, v0, v2

    .line 57
    const-string v1, "artist"

    aput-object v6, v0, v3

    .line 58
    const-string v1, "album_id"

    aput-object v1, v0, v4

    goto :goto_0
.end method

.method protected initAdapter(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "hasCheck"

    .prologue
    .line 26
    new-instance v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;

    iget-object v1, p0, Lcom/android/music/list/view/MpListThumnailTwoLineView;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/music/list/view/MpListThumnailTwoLineView;->getColumn()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/music/list/view/MpListThumnailTwoLineView;->mAdapter:Landroid/widget/ListAdapter;

    .line 28
    iget-object v0, p0, Lcom/android/music/list/view/MpListThumnailTwoLineView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/list/view/MpListThumnailTwoLineView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 29
    return-void
.end method
