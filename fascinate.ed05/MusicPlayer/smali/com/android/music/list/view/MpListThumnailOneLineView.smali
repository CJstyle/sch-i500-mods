.class public Lcom/android/music/list/view/MpListThumnailOneLineView;
.super Lcom/android/music/list/view/AbstractMpListView;
.source "MpListThumnailOneLineView.java"


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
    .line 18
    invoke-direct/range {p0 .. p5}, Lcom/android/music/list/view/AbstractMpListView;-><init>(Landroid/content/Context;IZI[Ljava/lang/String;)V

    .line 14
    new-instance v0, Landroid/provider/MediaStore$Audio;

    invoke-direct {v0}, Landroid/provider/MediaStore$Audio;-><init>()V

    iput-object v0, p0, Lcom/android/music/list/view/MpListThumnailOneLineView;->mAudio:Landroid/provider/MediaStore$Audio;

    .line 15
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

    iput-object v0, p0, Lcom/android/music/list/view/MpListThumnailOneLineView;->testInfo:[Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method protected getCheckBoxId()I
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f0c004f

    return v0
.end method

.method public getColumn()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 39
    .local v0, string:[Ljava/lang/String;
    iget v1, p0, Lcom/android/music/list/view/MpListThumnailOneLineView;->mListType:I

    sparse-switch v1, :sswitch_data_0

    .line 77
    :goto_0
    return-object v0

    .line 41
    :sswitch_0
    const-string v1, "artist"

    aput-object v1, v0, v2

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "genre_name"

    aput-object v1, v0, v2

    goto :goto_0

    .line 51
    :sswitch_2
    const-string v1, "composer"

    aput-object v1, v0, v2

    goto :goto_0

    .line 59
    :sswitch_3
    const-string v1, "year_name"

    aput-object v1, v0, v2

    goto :goto_0

    .line 72
    :sswitch_4
    const-string v1, "name"

    aput-object v1, v0, v2

    goto :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x19 -> :sswitch_4
    .end sparse-switch
.end method

.method protected initAdapter(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "hasCheck"

    .prologue
    .line 25
    new-instance v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;

    iget-object v1, p0, Lcom/android/music/list/view/MpListThumnailOneLineView;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, p1, v1, p2}, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-object v0, p0, Lcom/android/music/list/view/MpListThumnailOneLineView;->mAdapter:Landroid/widget/ListAdapter;

    .line 26
    iget-object v0, p0, Lcom/android/music/list/view/MpListThumnailOneLineView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    invoke-virtual {p0}, Lcom/android/music/list/view/MpListThumnailOneLineView;->getColumn()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/adapter/AbstractMpListAdapter;->setColumn([Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/android/music/list/view/MpListThumnailOneLineView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/list/view/MpListThumnailOneLineView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 29
    return-void
.end method
