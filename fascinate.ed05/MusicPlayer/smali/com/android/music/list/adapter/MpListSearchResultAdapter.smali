.class public Lcom/android/music/list/adapter/MpListSearchResultAdapter;
.super Landroid/widget/CursorAdapter;
.source "MpListSearchResultAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "c"

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/list/adapter/MpListSearchResultAdapter;->mContext:Landroid/content/Context;

    .line 24
    iput-object p1, p0, Lcom/android/music/list/adapter/MpListSearchResultAdapter;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .parameter "myView"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v9, "album"

    const-string v8, "artist"

    .line 30
    const v6, 0x7f0c0049

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 31
    .local v0, imageView:Landroid/widget/ImageView;
    const v6, 0x7f0c004b

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 32
    .local v4, mainTextView:Landroid/widget/TextView;
    const v6, 0x7f0c004d

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 34
    .local v5, subTextView:Landroid/widget/TextView;
    const-string v6, "mime_type"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, mSearchResult:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 80
    :goto_0
    return-void

    .line 42
    :cond_0
    const-string v6, "artist"

    invoke-virtual {v3, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    .line 44
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020113

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 46
    const-string v6, "artist"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const-string v6, "data1"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 48
    .local v1, intAlbum:I
    const-string v6, "data2"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 50
    .local v2, intSong:I
    if-ne v2, v10, :cond_1

    if-ne v1, v10, :cond_1

    .line 52
    iget-object v6, p0, Lcom/android/music/list/adapter/MpListSearchResultAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0a00c2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 54
    :cond_1
    if-le v2, v10, :cond_2

    if-ne v1, v10, :cond_2

    .line 56
    iget-object v6, p0, Lcom/android/music/list/adapter/MpListSearchResultAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0a00c3

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 60
    :cond_2
    iget-object v6, p0, Lcom/android/music/list/adapter/MpListSearchResultAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0a00c4

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 64
    .end local v1           #intAlbum:I
    .end local v2           #intSong:I
    :cond_3
    const-string v6, "album"

    invoke-virtual {v3, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    .line 66
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020112

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 68
    const-string v6, "album"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const-string v6, "artist"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 74
    :cond_4
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020115

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76
    const-string v6, "title"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const-string v6, "artist"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 86
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 87
    .local v0, mLayoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030013

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, myView:Landroid/view/View;
    return-object v1
.end method
