.class public Lcom/android/music/list/view/MpListGridView;
.super Landroid/widget/GridView;
.source "MpListGridView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/list/view/MpListGridView$EmptyAdapter;
    }
.end annotation


# instance fields
.field protected contextAlert:Landroid/app/AlertDialog;

.field protected contextMenuTitle:Ljava/lang/String;

.field protected mAdapter:Landroid/widget/CursorAdapter;

.field private mContext:Landroid/content/Context;

.field protected mCursor:Landroid/database/Cursor;

.field protected mListType:I

.field protected mMusicDB:Lcom/android/music/common/data/MusicDB;

.field protected subContextAlert:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 3
    .parameter "context"
    .parameter "listType"
    .parameter "hasCheck"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x3

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object v0, p0, Lcom/android/music/list/view/MpListGridView;->contextAlert:Landroid/app/AlertDialog;

    .line 45
    iput-object v0, p0, Lcom/android/music/list/view/MpListGridView;->subContextAlert:Landroid/app/AlertDialog;

    .line 55
    iput p2, p0, Lcom/android/music/list/view/MpListGridView;->mListType:I

    .line 56
    invoke-static {p1}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/view/MpListGridView;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    .line 57
    iput-object p1, p0, Lcom/android/music/list/view/MpListGridView;->mContext:Landroid/content/Context;

    .line 58
    instance-of v0, p1, Lcom/android/music/list/activity/MpListActivity;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0, p1, p3, v2}, Lcom/android/music/list/view/MpListGridView;->initAdapter(Landroid/content/Context;ZZ)V

    .line 60
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/music/list/view/MpListGridView;->setNumColumns(I)V

    .line 61
    invoke-virtual {p0, v1, v1, v1, v2}, Lcom/android/music/list/view/MpListGridView;->setPadding(IIII)V

    .line 63
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/music/list/view/MpListGridView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/music/list/view/MpListGridView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public cancelContextAlert()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/music/list/view/MpListGridView;->contextAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/music/list/view/MpListGridView;->contextAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/music/list/view/MpListGridView;->subContextAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/android/music/list/view/MpListGridView;->subContextAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 276
    :cond_1
    return-void
.end method

.method protected getColumn()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 98
    .local v0, string:[Ljava/lang/String;
    iget v1, p0, Lcom/android/music/list/view/MpListGridView;->mListType:I

    packed-switch v1, :pswitch_data_0

    .line 120
    const-string v1, "album_id"

    aput-object v1, v0, v2

    .line 123
    :goto_0
    return-object v0

    .line 101
    :pswitch_0
    const-string v1, "_id"

    aput-object v1, v0, v2

    goto :goto_0

    .line 104
    :pswitch_1
    const-string v1, "artist"

    aput-object v1, v0, v2

    goto :goto_0

    .line 107
    :pswitch_2
    const-string v1, "genre_name"

    aput-object v1, v0, v2

    goto :goto_0

    .line 110
    :pswitch_3
    const-string v1, "composer"

    aput-object v1, v0, v2

    goto :goto_0

    .line 114
    :pswitch_4
    const-string v1, "year_name"

    aput-object v1, v0, v2

    goto :goto_0

    .line 117
    :pswitch_5
    const-string v1, "name"

    aput-object v1, v0, v2

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public initAdapter(Landroid/content/Context;ZZ)V
    .locals 7
    .parameter "context"
    .parameter "hasCheck"
    .parameter "show"

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    .line 67
    if-eqz p3, :cond_2

    .line 69
    iget-object v0, p0, Lcom/android/music/list/view/MpListGridView;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    iget v1, p0, Lcom/android/music/list/view/MpListGridView;->mListType:I

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/android/music/common/data/MusicDB;->getMusicListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    .line 71
    iget v0, p0, Lcom/android/music/list/view/MpListGridView;->mListType:I

    if-ne v0, v6, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/music/list/view/MpListGridView;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    iget-object v1, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/music/list/view/MpListGridView;->mListType:I

    invoke-virtual {v0, v1, v2}, Lcom/android/music/common/data/MusicDB;->getMergedCursor(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    .line 76
    :cond_0
    new-instance v0, Lcom/android/music/list/adapter/MpListGridAdapter;

    iget-object v2, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/music/list/view/MpListGridView;->getColumn()[Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/music/list/view/MpListGridView;->mListType:I

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/music/list/adapter/MpListGridAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/music/list/view/MpListGridView;->mAdapter:Landroid/widget/CursorAdapter;

    .line 77
    iget-object v0, p0, Lcom/android/music/list/view/MpListGridView;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/list/view/MpListGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    invoke-virtual {p0, p0}, Lcom/android/music/list/view/MpListGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    iget v0, p0, Lcom/android/music/list/view/MpListGridView;->mListType:I

    if-ne v0, v6, :cond_1

    .line 81
    invoke-virtual {p0, p0}, Lcom/android/music/list/view/MpListGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 88
    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    iput-object v2, p0, Lcom/android/music/list/view/MpListGridView;->mAdapter:Landroid/widget/CursorAdapter;

    .line 85
    iput-object v2, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    .line 86
    new-instance v0, Lcom/android/music/list/view/MpListGridView$EmptyAdapter;

    invoke-direct {v0, p0, v2}, Lcom/android/music/list/view/MpListGridView$EmptyAdapter;-><init>(Lcom/android/music/list/view/MpListGridView;Lcom/android/music/list/view/MpListGridView$1;)V

    invoke-virtual {p0, v0}, Lcom/android/music/list/view/MpListGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public initViewAdapter()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/android/music/list/view/MpListGridView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/music/list/view/MpListGridView;->initAdapter(Landroid/content/Context;ZZ)V

    .line 92
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/music/list/view/MpListGridView;->setNumColumns(I)V

    .line 93
    invoke-virtual {p0, v2, v2, v2, v1}, Lcom/android/music/list/view/MpListGridView;->setPadding(IIII)V

    .line 94
    return-void
.end method

.method protected moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 419
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/list/view/MpListGridView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 420
    const-string v1, "ListType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 421
    const-string v1, "TitleText"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    const-string v1, "Conditions"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    iget-object v1, p0, Lcom/android/music/list/view/MpListGridView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 425
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .line 282
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v6, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 283
    iget-object v6, p0, Lcom/android/music/list/view/MpListGridView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v4

    .line 285
    .local v4, mDB:Lcom/android/music/common/data/MusicDB;
    iget v6, p0, Lcom/android/music/list/view/MpListGridView;->mListType:I

    packed-switch v6, :pswitch_data_0

    .line 416
    :goto_0
    return-void

    .line 287
    :pswitch_0
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/String;

    .line 288
    .local v5, title:[Ljava/lang/String;
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    const-string v9, "artist"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 291
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/String;

    .line 292
    .local v0, con:[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "0"

    aput-object v7, v0, v6

    .line 293
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 295
    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 297
    const/16 v6, 0x10

    invoke-virtual {p0, v5, v6, v0}, Lcom/android/music/list/view/MpListGridView;->moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_0

    .line 302
    .end local v0           #con:[Ljava/lang/String;
    .end local v5           #title:[Ljava/lang/String;
    :pswitch_1
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/String;

    .line 303
    .restart local v5       #title:[Ljava/lang/String;
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    const-string v9, "genre_name"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 307
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/String;

    .line 308
    .restart local v0       #con:[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "1"

    aput-object v7, v0, v6

    .line 309
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    const-string v9, "genre_name"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 312
    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 314
    const/16 v6, 0x13

    invoke-virtual {p0, v5, v6, v0}, Lcom/android/music/list/view/MpListGridView;->moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_0

    .line 334
    .end local v0           #con:[Ljava/lang/String;
    .end local v5           #title:[Ljava/lang/String;
    :pswitch_2
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/String;

    .line 335
    .restart local v5       #title:[Ljava/lang/String;
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    const-string v9, "composer"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 337
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/String;

    .line 338
    .restart local v0       #con:[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "1"

    aput-object v7, v0, v6

    .line 339
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    const-string v9, "composer"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 341
    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 343
    const/16 v6, 0x14

    invoke-virtual {p0, v5, v6, v0}, Lcom/android/music/list/view/MpListGridView;->moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 347
    .end local v0           #con:[Ljava/lang/String;
    .end local v5           #title:[Ljava/lang/String;
    :pswitch_3
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/String;

    .line 348
    .restart local v5       #title:[Ljava/lang/String;
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    const-string v9, "year_name"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 353
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/String;

    .line 354
    .restart local v0       #con:[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "1"

    aput-object v7, v0, v6

    .line 355
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    const-string v9, "year_name"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 359
    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 361
    const/16 v6, 0x15

    invoke-virtual {p0, v5, v6, v0}, Lcom/android/music/list/view/MpListGridView;->moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 365
    .end local v0           #con:[Ljava/lang/String;
    .end local v5           #title:[Ljava/lang/String;
    :pswitch_4
    const/4 v6, 0x3

    new-array v5, v6, [Ljava/lang/String;

    .line 366
    .restart local v5       #title:[Ljava/lang/String;
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    const-string v9, "album"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 368
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    const-string v9, "artist"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 370
    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 372
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/String;

    .line 373
    .restart local v0       #con:[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "0"

    aput-object v7, v0, v6

    .line 374
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 376
    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 378
    const/16 v6, 0xe

    invoke-virtual {p0, v5, v6, v0}, Lcom/android/music/list/view/MpListGridView;->moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 382
    .end local v0           #con:[Ljava/lang/String;
    .end local v5           #title:[Ljava/lang/String;
    :pswitch_5
    const/4 v6, 0x3

    new-array v5, v6, [Ljava/lang/String;

    .line 383
    .restart local v5       #title:[Ljava/lang/String;
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    const-string v9, "name"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 384
    const/4 v6, 0x1

    iget v7, p0, Lcom/android/music/list/view/MpListGridView;->mListType:I

    iget-object v8, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v4, v7, v8}, Lcom/android/music/common/data/MusicDB;->getAlbumID(ILandroid/database/Cursor;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 385
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/String;

    .line 386
    .restart local v0       #con:[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "0"

    aput-object v7, v0, v6

    .line 388
    const/16 v1, 0xd

    .line 389
    .local v1, iListType:I
    iget-object v6, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 390
    .local v2, iPlaylistID:I
    iget-object v6, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    const-string v8, "_data"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, listData:Ljava/lang/String;
    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    .line 395
    const/4 v6, 0x1

    const-string v7, "-1"

    aput-object v7, v0, v6

    .line 396
    const-string v6, "Music_Default_Playlist"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 405
    :goto_1
    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 406
    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    const-string v9, "thumbnail_uri"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 411
    invoke-virtual {p0, v5, v1, v0}, Lcom/android/music/list/view/MpListGridView;->moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 400
    :cond_0
    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    goto :goto_1

    .line 285
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    .line 177
    iget-object v3, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 178
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/music/list/view/MpListGridView;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0038

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/android/music/list/view/MpListGridView;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0037

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 181
    .local v2, items:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/music/list/view/MpListGridView;->mContext:Landroid/content/Context;

    const v4, 0x7f0a00c7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/list/view/MpListGridView;->contextMenuTitle:Ljava/lang/String;

    .line 183
    iget v3, p0, Lcom/android/music/list/view/MpListGridView;->mListType:I

    packed-switch v3, :pswitch_data_0

    .line 262
    :cond_0
    :goto_0
    return v6

    .line 185
    :pswitch_0
    iget-object v3, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 186
    .local v1, iPlaylistID:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 188
    iget-object v3, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    const-string v5, "name"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/list/view/MpListGridView;->contextMenuTitle:Ljava/lang/String;

    .line 190
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/music/list/view/MpListGridView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/android/music/list/view/MpListGridView;->contextMenuTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 193
    new-instance v3, Lcom/android/music/list/view/MpListGridView$1;

    invoke-direct {v3, p0, v1}, Lcom/android/music/list/view/MpListGridView$1;-><init>(Lcom/android/music/list/view/MpListGridView;I)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 252
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/list/view/MpListGridView;->contextAlert:Landroid/app/AlertDialog;

    .line 253
    iget-object v3, p0, Lcom/android/music/list/view/MpListGridView;->contextAlert:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
