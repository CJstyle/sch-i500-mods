.class public Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;
.super Landroid/widget/BaseAdapter;
.source "MpListReorderThumnailTwoLineAdapter.java"

# interfaces
.implements Lcom/android/music/list/interfaces/MpSetViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;
    }
.end annotation


# instance fields
.field private defaultMoveImage:Landroid/graphics/Bitmap;

.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;",
            ">;"
        }
    .end annotation
.end field

.field private mColumns:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mHeight:I

.field private mListView:Lcom/android/music/list/view/AbstractMpListView;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "c"
    .parameter "con"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->mContext:Landroid/content/Context;

    .line 45
    const/16 v0, 0x74

    iput v0, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->mWidth:I

    .line 46
    const/16 v0, 0x75

    iput v0, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->mHeight:I

    .line 47
    iput-object v1, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->defaultMoveImage:Landroid/graphics/Bitmap;

    .line 67
    iput-object p1, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->mContext:Landroid/content/Context;

    .line 68
    iput-object p3, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->mColumns:[Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->mCursor:Landroid/database/Cursor;

    .line 70
    invoke-direct {p0}, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->makeArray()V

    .line 91
    return-void
.end method

.method private makeArray()V
    .locals 5

    .prologue
    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->mArray:Ljava/util/ArrayList;

    .line 95
    iget-object v1, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    :cond_0
    new-instance v0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;

    invoke-direct {v0, p0}, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;-><init>(Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;)V

    .line 98
    .local v0, viewItem:Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;
    iget-object v1, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v3, 0xd

    invoke-static {v3}, Lcom/android/music/common/util/ListType;->getAudioIdColumn(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;->mId:I

    .line 100
    iget-object v1, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->mCursor:Landroid/database/Cursor;

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;->mData:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->mColumns:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;->mMainText:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->mColumns:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;->mSubText:Ljava/lang/String;

    .line 123
    iget-object v1, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v1, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    .end local v0           #viewItem:Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;
    :cond_1
    return-void
.end method


# virtual methods
.method public changeArray(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;>;"
    iput-object p1, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->mArray:Ljava/util/ArrayList;

    .line 130
    invoke-virtual {p0}, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->notifyDataSetChanged()V

    .line 131
    return-void
.end method

.method public getArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public getChecked()[Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getIndexView()Lcom/sec/android/touchwiz/widget/TwIndexScrollView;
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;

    iget v0, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;->mId:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "view"
    .parameter "arg2"

    .prologue
    .line 147
    if-nez p2, :cond_0

    .line 148
    iget-object v5, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 149
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030017

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 152
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    const v5, 0x7f0c004a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/view/MpView;

    .line 153
    .local v0, imageView:Lcom/android/music/list/view/MpView;
    const v5, 0x7f0c004c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 154
    .local v2, mainTextView:Landroid/widget/TextView;
    const v5, 0x7f0c004e

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 163
    .local v3, subTextView:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;

    .line 166
    .local v4, viewItem:Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;
    iget-object v5, v4, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;->mMainText:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v5, v4, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;->mSubText:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    const v5, 0x7f020051

    invoke-virtual {v0, v5}, Lcom/android/music/list/view/MpView;->setBackgroundResource(I)V

    .line 195
    return-object p2
.end method

.method public reset(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 227
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 239
    return-void
.end method

.method public setIndexView(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V
    .locals 0
    .parameter "mindex"

    .prologue
    .line 231
    return-void
.end method

.method public setListView(Lcom/android/music/list/view/AbstractMpListView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 235
    return-void
.end method
