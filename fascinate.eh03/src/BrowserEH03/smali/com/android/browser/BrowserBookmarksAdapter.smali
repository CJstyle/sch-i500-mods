.class Lcom/android/browser/BrowserBookmarksAdapter;
.super Landroid/widget/BaseAdapter;
.source "BrowserBookmarksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserBookmarksAdapter$MyDataSetObserver;,
        Lcom/android/browser/BrowserBookmarksAdapter$ChangeObserver;
    }
.end annotation


# instance fields
.field private mBookmarksPage:Lcom/android/browser/BrowserBookmarksPage;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCount:I

.field private mCurrentPage:Ljava/lang/String;

.field private mCurrentThumbnail:Landroid/graphics/Bitmap;

.field private mCurrentTitle:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDataValid:Z

.field private mExtraOffset:I

.field private mFolderCount:I

.field private mFolderCursor:Landroid/database/Cursor;

.field private mMostVisited:Z

.field private mNeedsOffset:Z

.field private mViewMode:Lcom/android/browser/BookmarkViewMode;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserBookmarksPage;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)V
    .locals 15
    .parameter "b"
    .parameter "curPage"
    .parameter "curTitle"
    .parameter "curThumbnail"
    .parameter "createShortcut"
    .parameter "mostVisited"

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 82
    if-nez p5, :cond_1

    if-nez p6, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mNeedsOffset:Z

    .line 83
    move/from16 v0, p6

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/browser/BrowserBookmarksAdapter;->mMostVisited:Z

    .line 84
    iget-boolean v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mNeedsOffset:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    .line 85
    move-object/from16 v0, p1

    move-object v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarksPage:Lcom/android/browser/BrowserBookmarksPage;

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/browser/BrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentPage:Ljava/lang/String;

    .line 88
    move-object/from16 v0, p3

    move-object v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentTitle:Ljava/lang/String;

    .line 89
    move-object/from16 v0, p4

    move-object v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/android/browser/BrowserBookmarksPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 91
    sget-object v2, Lcom/android/browser/BookmarkViewMode;->LIST:Lcom/android/browser/BookmarkViewMode;

    iput-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    .line 97
    if-eqz p6, :cond_3

    .line 98
    const-string v5, "visits != 0"

    .line 99
    .local v5, whereClause:Ljava/lang/String;
    const-string v7, "visits DESC"

    .line 113
    .local v7, orderBy:Ljava/lang/String;
    :goto_2
    const-string v14, "created > 0"

    .line 114
    .local v14, folderWhereClause:Ljava/lang/String;
    const-string v13, "position ASC"

    .line 116
    .local v13, folderOrderBy:Ljava/lang/String;
    sget-object v3, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v4, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/browser/BrowserBookmarksPage;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    .line 119
    if-nez p5, :cond_0

    if-nez p6, :cond_0

    .line 121
    sget-object v9, Landroid/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    sget-object v10, Landroid/provider/Browser;->FOLDER_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/browser/BrowserBookmarksPage;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    .line 125
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    new-instance v3, Lcom/android/browser/BrowserBookmarksAdapter$ChangeObserver;

    invoke-direct {v3, p0}, Lcom/android/browser/BrowserBookmarksAdapter$ChangeObserver;-><init>(Lcom/android/browser/BrowserBookmarksAdapter;)V

    invoke-interface {v2, v3}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 126
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    new-instance v3, Lcom/android/browser/BrowserBookmarksAdapter$MyDataSetObserver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/browser/BrowserBookmarksAdapter$MyDataSetObserver;-><init>(Lcom/android/browser/BrowserBookmarksAdapter;Lcom/android/browser/BrowserBookmarksAdapter$1;)V

    invoke-interface {v2, v3}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 127
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    new-instance v3, Lcom/android/browser/BrowserBookmarksAdapter$ChangeObserver;

    invoke-direct {v3, p0}, Lcom/android/browser/BrowserBookmarksAdapter$ChangeObserver;-><init>(Lcom/android/browser/BrowserBookmarksAdapter;)V

    invoke-interface {v2, v3}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 133
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    new-instance v3, Lcom/android/browser/BrowserBookmarksAdapter$MyDataSetObserver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/browser/BrowserBookmarksAdapter$MyDataSetObserver;-><init>(Lcom/android/browser/BrowserBookmarksAdapter;Lcom/android/browser/BrowserBookmarksAdapter$1;)V

    invoke-interface {v2, v3}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 135
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mDataValid:Z

    .line 136
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->notifyDataSetChanged()V

    .line 138
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iget v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    .line 139
    return-void

    .line 82
    .end local v5           #whereClause:Ljava/lang/String;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v13           #folderOrderBy:Ljava/lang/String;
    .end local v14           #folderWhereClause:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 84
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 101
    :cond_3
    if-eqz p5, :cond_4

    .line 102
    const-string v5, "bookmark = 1"

    .line 103
    .restart local v5       #whereClause:Ljava/lang/String;
    const-string v7, "(CASE WHEN _id > 3 THEN 1 END), visits DESC"

    .restart local v7       #orderBy:Ljava/lang/String;
    goto :goto_2

    .line 106
    .end local v5           #whereClause:Ljava/lang/String;
    .end local v7           #orderBy:Ljava/lang/String;
    :cond_4
    const-string v5, "bookmark = 1 and folder = 0"

    .line 107
    .restart local v5       #whereClause:Ljava/lang/String;
    const-string v7, "(CASE WHEN _id > 3 THEN 1 END), visits DESC"

    .restart local v7       #orderBy:Ljava/lang/String;
    goto :goto_2
.end method

.method static synthetic access$102(Lcom/android/browser/BrowserBookmarksAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mDataValid:Z

    return p1
.end method

.method private bind(Lcom/android/browser/BookmarkItem;I)V
    .locals 8
    .parameter "b"
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xa0

    .line 906
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v4, p2, v4

    iget v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 908
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 909
    .local v1, title:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_0

    .line 910
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 912
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/browser/BookmarkItem;->setName(Ljava/lang/String;)V

    .line 913
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 914
    .local v2, url:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_1

    .line 915
    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 917
    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/browser/BookmarkItem;->setUrl(Ljava/lang/String;)V

    .line 918
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 919
    .local v0, data:[B
    if-eqz v0, :cond_2

    .line 920
    array-length v3, v0

    invoke-static {v0, v7, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/browser/BookmarkItem;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 925
    :goto_0
    return-void

    .line 922
    :cond_2
    invoke-static {}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getIconListenerSet()Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;->getFavicon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/browser/BookmarkItem;->setFavicon(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private bind(Lcom/android/browser/FolderItem;I)V
    .locals 6
    .parameter "f"
    .parameter "position"

    .prologue
    const/16 v5, 0xa0

    const/4 v4, 0x0

    .line 888
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v3, p2, v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 890
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 891
    .local v1, title:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_0

    .line 892
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 894
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/browser/FolderItem;->setName(Ljava/lang/String;)V

    .line 895
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 896
    .local v0, folder:I
    invoke-virtual {p1, v0}, Lcom/android/browser/FolderItem;->setFolder(I)V

    .line 897
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/browser/FolderItem;->setThumbnailIcon(Landroid/graphics/Bitmap;)V

    .line 899
    return-void
.end method

.method private getBitmap(II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "cursorIndex"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 840
    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    if-lt p2, v1, :cond_0

    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    iget v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    add-int/2addr v1, v2

    if-le p2, v1, :cond_1

    :cond_0
    move-object v1, v4

    .line 850
    :goto_0
    return-object v1

    .line 844
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 846
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 847
    .local v0, data:[B
    if-nez v0, :cond_2

    move-object v1, v4

    .line 848
    goto :goto_0

    .line 850
    :cond_2
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method private getString(II)Ljava/lang/String;
    .locals 3
    .parameter "cursorIndex"
    .parameter "position"

    .prologue
    .line 868
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    if-lt p2, v0, :cond_0

    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    add-int/2addr v0, v1

    if-le p2, v0, :cond_1

    .line 869
    :cond_0
    const-string v0, ""

    .line 872
    :goto_0
    return-object v0

    .line 871
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 872
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getTouchIcon(Lcom/android/browser/BrowserActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "b"
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 782
    const-string v5, "_id DESC"

    .line 783
    .local v5, orderBy:Ljava/lang/String;
    const-string v3, "bookmark = 1"

    .line 785
    .local v3, whereClause:Ljava/lang/String;
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/BrowserActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 788
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 790
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 793
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 795
    const/16 v0, 0x8

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 796
    .local v7, data:[B
    if-nez v7, :cond_0

    move-object v0, v4

    .line 806
    .end local v7           #data:[B
    :goto_1
    return-object v0

    .line 801
    .restart local v7       #data:[B
    :cond_0
    const/4 v0, 0x0

    array-length v1, v7

    invoke-static {v7, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 804
    .end local v7           #data:[B
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 790
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v4

    .line 806
    goto :goto_1
.end method

.method static queryBookmarksForUrl(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 12
    .parameter "cr"
    .parameter "originalUrl"
    .parameter "url"
    .parameter "onlyBookmarks"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "[?]"

    .line 408
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v5

    .line 447
    :goto_0
    return-object v0

    .line 413
    :cond_1
    if-nez p1, :cond_2

    .line 414
    move-object p1, p2

    .line 419
    :cond_2
    invoke-static {p1}, Lcom/android/browser/BrowserBookmarksAdapter;->removeQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 420
    .local v7, originalUrlNoQuery:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/browser/BrowserBookmarksAdapter;->removeQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 421
    .local v8, urlNoQuery:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[?]"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[?]"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 426
    const-string v6, "http://m.bing.com/?mid=2050&qi=AndroidBrowser"

    .line 427
    .local v6, compareBingUrl:Ljava/lang/String;
    const-string v0, "http://m.bing.com/"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v6, ""

    .line 435
    :cond_3
    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    aput-object v7, v4, v9

    aput-object v8, v4, v10

    const/4 v0, 0x2

    aput-object p1, v4, v0

    const/4 v0, 0x3

    aput-object p2, v4, v0

    const/4 v0, 0x4

    aput-object v6, v4, v0

    .line 437
    .local v4, selArgs:[Ljava/lang/String;
    const-string v3, "url == ? OR url == ? OR url LIKE ? || \'%\' OR url LIKE ? || \'%\' OR url == ?"

    .line 442
    .local v3, where:Ljava/lang/String;
    if-eqz p3, :cond_4

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bookmark"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " == 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 445
    :cond_4
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    .line 447
    .local v2, projection:[Ljava/lang/String;
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static removeQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 453
    if-nez p0, :cond_0

    .line 454
    const/4 v2, 0x0

    .line 461
    :goto_0
    return-object v2

    .line 456
    :cond_0
    const/16 v2, 0x3f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 457
    .local v1, query:I
    move-object v0, p0

    .line 458
    .local v0, noQuery:Ljava/lang/String;
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 459
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v2, v0

    .line 461
    goto :goto_0
.end method

.method static updateBookmarkFavicon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "cr"
    .parameter "originalUrl"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 380
    new-instance v0, Lcom/android/browser/BrowserBookmarksAdapter$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/browser/BrowserBookmarksAdapter$1;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserBookmarksAdapter$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 404
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x1

    return v0
.end method

.method public deleteFolderRow(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 207
    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    if-le p1, v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v2, p1, v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 211
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, title:Ljava/lang/String;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2, v0}, Lcom/android/browser/Folders;->removeFromFolders(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->refreshList()V

    goto :goto_0
.end method

.method public deleteRow(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 275
    iget v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    if-lt p1, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->getCount()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v4, p1, v4

    iget v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 281
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, url:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, title:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0xa

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, folder:Ljava/lang/String;
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v4, v2, v1, v0}, Lcom/android/browser/Bookmarks;->removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->refreshList()V

    goto :goto_0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 759
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 761
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 764
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 766
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x6

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 767
    .local v0, data:[B
    if-nez v0, :cond_0

    move-object v2, v4

    .line 777
    .end local v0           #data:[B
    :goto_1
    return-object v2

    .line 772
    .restart local v0       #data:[B
    :cond_0
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    .line 775
    .end local v0           #data:[B
    :cond_1
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 761
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object v2, v4

    .line 777
    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    .line 470
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    add-int/2addr v0, v1

    .line 472
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFavicon(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "position"

    .prologue
    .line 832
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFolderCount()I
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    .line 478
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    .line 480
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFolderId(Lcom/android/browser/BrowserBookmarksPage;I)I
    .locals 7
    .parameter "b"
    .parameter "position"

    .prologue
    .line 747
    const-string v3, "_id != 0 "

    .line 748
    .local v3, folderWhereClause:Ljava/lang/String;
    const-string v5, "position ASC"

    .line 749
    .local v5, folderOrderBy:Ljava/lang/String;
    sget-object v1, Landroid/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->FOLDER_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/BrowserBookmarksPage;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 754
    .local v6, folderCursor:Landroid/database/Cursor;
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v0, p2, v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 755
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getFolderName(Lcom/android/browser/BrowserBookmarksPage;I)Ljava/lang/String;
    .locals 7
    .parameter "b"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 731
    const-string v3, "_id != 0 "

    .line 732
    .local v3, folderWhereClause:Ljava/lang/String;
    const-string v5, "position ASC"

    .line 733
    .local v5, folderOrderBy:Ljava/lang/String;
    sget-object v1, Landroid/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->FOLDER_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/BrowserBookmarksPage;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 737
    .local v6, folderCursor:Landroid/database/Cursor;
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    if-lt p2, v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le p2, v0, :cond_1

    :cond_0
    move-object v0, v4

    .line 742
    :goto_0
    return-object v0

    .line 741
    :cond_1
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v0, p2, v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 742
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIsBookmark(I)Z
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 857
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    add-int/2addr v0, v1

    if-le p1, v0, :cond_1

    :cond_0
    move v0, v3

    .line 861
    :goto_0
    return v0

    .line 860
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 861
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v4, v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 498
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 507
    int-to-long v0, p1

    return-wide v0
.end method

.method public getRow(I)Landroid/os/Bundle;
    .locals 8
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    .line 149
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 150
    .local v2, map:Landroid/os/Bundle;
    iget v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    if-lt p1, v4, :cond_0

    iget v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    iget v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    add-int/2addr v4, v5

    if-lt p1, v4, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-object v2

    .line 154
    :cond_1
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v5, p1, v5

    iget v6, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    sub-int/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 156
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, url:Ljava/lang/String;
    const-string v4, "title"

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x5

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v4, "url"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v5, 0xa

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 162
    .local v1, folder:I
    const-string v4, "folder"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x6

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 165
    .local v0, data:[B
    if-eqz v0, :cond_2

    .line 166
    const-string v4, "favicon"

    array-length v5, v0

    invoke-static {v0, v7, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 169
    :cond_2
    const-string v4, "id"

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public getScreenshot(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "position"

    .prologue
    .line 825
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 648
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTouchIcon(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "position"

    .prologue
    .line 836
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getUrl(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 818
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v10, 0x7f02000b

    .line 537
    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mDataValid:Z

    if-nez v7, :cond_0

    .line 538
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "this should only be called when the cursor is valid"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 541
    :cond_0
    if-ltz p1, :cond_1

    iget v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    iget v8, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    add-int/2addr v7, v8

    if-le p1, v7, :cond_2

    .line 542
    :cond_1
    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "BrowserBookmarksAdapter tried to get a view out of range"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 545
    :cond_2
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v8, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v7, v8, :cond_9

    .line 546
    if-eqz p2, :cond_3

    instance-of v7, p2, Lcom/android/browser/AddNewBookmark;

    if-nez v7, :cond_3

    instance-of v7, p2, Lcom/android/browser/BookmarkItem;

    if-nez v7, :cond_3

    instance-of v7, p2, Lcom/android/browser/FolderItem;

    if-eqz v7, :cond_4

    .line 550
    :cond_3
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarksPage:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 551
    .local v2, factory:Landroid/view/LayoutInflater;
    const v7, 0x7f030004

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 554
    .end local v2           #factory:Landroid/view/LayoutInflater;
    :cond_4
    const v7, 0x7f0d000e

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 555
    .local v3, holder:Landroid/view/View;
    const v7, 0x7f0d000d

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 556
    .local v4, thumb:Landroid/widget/ImageView;
    const v7, 0x7f0d000f

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 558
    .local v6, tv:Landroid/widget/TextView;
    if-nez p1, :cond_6

    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mNeedsOffset:Z

    if-eqz v7, :cond_6

    .line 560
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 561
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_5

    .line 564
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    move-object v7, p2

    .line 641
    .end local v3           #holder:Landroid/view/View;
    .end local v4           #thumb:Landroid/widget/ImageView;
    .end local v6           #tv:Landroid/widget/TextView;
    :goto_1
    return-object v7

    .line 566
    .restart local v3       #holder:Landroid/view/View;
    .restart local v4       #thumb:Landroid/widget/ImageView;
    .restart local v6       #tv:Landroid/widget/TextView;
    :cond_5
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 571
    :cond_6
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 574
    iget v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v7, p1, v7

    iget v8, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    if-ge v7, v8, :cond_7

    .line 576
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    iget v8, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v8, p1, v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 577
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    const v7, 0x7f020008

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    move-object v7, p2

    .line 598
    goto :goto_1

    .line 586
    :cond_7
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v8, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v8, p1, v8

    iget v9, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    sub-int/2addr v8, v9

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 587
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x5

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getScreenshot(I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 590
    .local v5, thumbnail:Landroid/graphics/Bitmap;
    if-nez v5, :cond_8

    .line 591
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 593
    :cond_8
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 601
    .end local v3           #holder:Landroid/view/View;
    .end local v4           #thumb:Landroid/widget/ImageView;
    .end local v5           #thumbnail:Landroid/graphics/Bitmap;
    .end local v6           #tv:Landroid/widget/TextView;
    :cond_9
    if-nez p1, :cond_b

    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mNeedsOffset:Z

    if-eqz v7, :cond_b

    .line 603
    instance-of v7, p2, Lcom/android/browser/AddNewBookmark;

    if-eqz v7, :cond_a

    .line 604
    move-object v0, p2

    check-cast v0, Lcom/android/browser/AddNewBookmark;

    move-object v1, v0

    .line 608
    .local v1, b:Lcom/android/browser/AddNewBookmark;
    :goto_3
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentPage:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/android/browser/AddNewBookmark;->setUrl(Ljava/lang/String;)V

    move-object v7, v1

    .line 609
    goto :goto_1

    .line 606
    .end local v1           #b:Lcom/android/browser/AddNewBookmark;
    :cond_a
    new-instance v1, Lcom/android/browser/AddNewBookmark;

    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarksPage:Lcom/android/browser/BrowserBookmarksPage;

    invoke-direct {v1, v7}, Lcom/android/browser/AddNewBookmark;-><init>(Landroid/content/Context;)V

    .restart local v1       #b:Lcom/android/browser/AddNewBookmark;
    goto :goto_3

    .line 611
    .end local v1           #b:Lcom/android/browser/AddNewBookmark;
    :cond_b
    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mMostVisited:Z

    if-eqz v7, :cond_f

    .line 612
    if-eqz p2, :cond_c

    instance-of v7, p2, Lcom/android/browser/HistoryItem;

    if-nez v7, :cond_d

    .line 613
    :cond_c
    new-instance p2, Lcom/android/browser/HistoryItem;

    .end local p2
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarksPage:Lcom/android/browser/BrowserBookmarksPage;

    invoke-direct {p2, v7}, Lcom/android/browser/HistoryItem;-><init>(Landroid/content/Context;)V

    .line 628
    .restart local p2
    :cond_d
    :goto_4
    iget v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v7, p1, v7

    iget v8, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    if-ge v7, v8, :cond_12

    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mMostVisited:Z

    if-nez v7, :cond_12

    .line 630
    move-object v0, p2

    check-cast v0, Lcom/android/browser/FolderItem;

    move-object v7, v0

    invoke-direct {p0, v7, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->bind(Lcom/android/browser/FolderItem;I)V

    .line 637
    :goto_5
    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mMostVisited:Z

    if-eqz v7, :cond_e

    .line 638
    move-object v0, p2

    check-cast v0, Lcom/android/browser/HistoryItem;

    move-object v7, v0

    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getIsBookmark(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/browser/HistoryItem;->setIsBookmark(Z)V

    :cond_e
    move-object v7, p2

    .line 641
    goto/16 :goto_1

    .line 616
    :cond_f
    if-eqz p2, :cond_10

    instance-of v7, p2, Lcom/android/browser/BookmarkItem;

    if-eqz v7, :cond_10

    instance-of v7, p2, Lcom/android/browser/FolderItem;

    if-nez v7, :cond_d

    .line 619
    :cond_10
    iget v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v7, p1, v7

    iget v8, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    if-ge v7, v8, :cond_11

    .line 621
    new-instance p2, Lcom/android/browser/FolderItem;

    .end local p2
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarksPage:Lcom/android/browser/BrowserBookmarksPage;

    invoke-direct {p2, v7}, Lcom/android/browser/FolderItem;-><init>(Landroid/content/Context;)V

    .restart local p2
    goto :goto_4

    .line 624
    :cond_11
    new-instance p2, Lcom/android/browser/BookmarkItem;

    .end local p2
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarksPage:Lcom/android/browser/BrowserBookmarksPage;

    invoke-direct {p2, v7}, Lcom/android/browser/BookmarkItem;-><init>(Landroid/content/Context;)V

    .restart local p2
    goto :goto_4

    .line 635
    :cond_12
    move-object v0, p2

    check-cast v0, Lcom/android/browser/BookmarkItem;

    move-object v7, v0

    invoke-direct {p0, v7, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->bind(Lcom/android/browser/BookmarkItem;I)V

    goto :goto_5
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 489
    const/4 v0, 0x1

    return v0
.end method

.method public isFolderItem(Lcom/android/browser/BrowserBookmarksPage;Landroid/view/View;I)Z
    .locals 4
    .parameter "b"
    .parameter "convertView"
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 707
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v1, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v0, v1, :cond_2

    .line 709
    if-nez p3, :cond_0

    move v0, v2

    .line 721
    :goto_0
    return v0

    .line 711
    :cond_0
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v0, p3, v0

    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    if-ge v0, v1, :cond_1

    move v0, v3

    .line 712
    goto :goto_0

    :cond_1
    move v0, v2

    .line 714
    goto :goto_0

    .line 718
    :cond_2
    instance-of v0, p2, Lcom/android/browser/FolderItem;

    if-eqz v0, :cond_3

    move v0, v3

    .line 719
    goto :goto_0

    :cond_3
    move v0, v2

    .line 721
    goto :goto_0
.end method

.method populateBookmarkItem(Lcom/android/browser/BookmarkItem;I)V
    .locals 6
    .parameter "b"
    .parameter "position"

    .prologue
    .line 515
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v4, p2, v4

    iget v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 516
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/android/browser/BookmarkItem;->setUrl(Ljava/lang/String;)V

    .line 518
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/browser/BookmarkItem;->setName(Ljava/lang/String;)V

    .line 519
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 520
    .local v1, data:[B
    const/4 v0, 0x0

    .line 521
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 522
    invoke-static {}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getIconListenerSet()Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;->getFavicon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 527
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/browser/BookmarkItem;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 528
    return-void

    .line 525
    :cond_0
    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method populateFolderItem(Lcom/android/browser/FolderItem;I)V
    .locals 2
    .parameter "f"
    .parameter "position"

    .prologue
    .line 655
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    if-lt p2, v0, :cond_0

    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    if-gt p2, v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v1, p2, v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 658
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/browser/FolderItem;->setName(Ljava/lang/String;)V

    .line 661
    :cond_0
    return-void
.end method

.method public refreshList()V
    .locals 2

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mMostVisited:Z

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 355
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    .line 362
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 365
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    .line 367
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->notifyDataSetChanged()V

    .line 368
    return-void

    .line 358
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    goto :goto_0
.end method

.method public showFolder(Lcom/android/browser/BrowserBookmarksPage;Landroid/view/View;I)V
    .locals 15
    .parameter "b"
    .parameter "v"
    .parameter "position"

    .prologue
    .line 668
    if-eqz p2, :cond_1

    .line 670
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/browser/FolderItem;

    move-object v14, v0

    .line 671
    .local v14, item:Lcom/android/browser/FolderItem;
    invoke-virtual {v14}, Lcom/android/browser/FolderItem;->getFolder()I

    move-result v13

    .line 685
    .end local v14           #item:Lcom/android/browser/FolderItem;
    .local v13, currentFolder:I
    :goto_0
    iget-boolean v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mMostVisited:Z

    if-nez v1, :cond_0

    .line 688
    const-string v6, "_id DESC"

    .line 689
    .local v6, orderBy:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bookmark != 0 and folder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 690
    .local v4, whereClause:Ljava/lang/String;
    sget-object v2, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/browser/BrowserBookmarksPage;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    .line 693
    if-nez p3, :cond_3

    .line 694
    const-string v10, "_id != 0 "

    .line 697
    .local v10, folderWhereClause:Ljava/lang/String;
    :goto_1
    const-string v12, "position ASC"

    .line 698
    .local v12, folderOrderBy:Ljava/lang/String;
    sget-object v8, Landroid/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    sget-object v9, Landroid/provider/Browser;->FOLDER_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Lcom/android/browser/BrowserBookmarksPage;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    .line 702
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->refreshList()V

    .line 704
    .end local v4           #whereClause:Ljava/lang/String;
    .end local v6           #orderBy:Ljava/lang/String;
    .end local v10           #folderWhereClause:Ljava/lang/String;
    .end local v12           #folderOrderBy:Ljava/lang/String;
    :cond_0
    return-void

    .line 673
    .end local v13           #currentFolder:I
    :cond_1
    if-nez p3, :cond_2

    .line 675
    move/from16 v13, p3

    .restart local v13       #currentFolder:I
    goto :goto_0

    .line 679
    .end local v13           #currentFolder:I
    :cond_2
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v2, p3, v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 680
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .restart local v13       #currentFolder:I
    goto :goto_0

    .line 696
    .restart local v4       #whereClause:Ljava/lang/String;
    .restart local v6       #orderBy:Ljava/lang/String;
    :cond_3
    const-string v10, "_id = -1 "

    .restart local v10       #folderWhereClause:Ljava/lang/String;
    goto :goto_1
.end method

.method switchViewMode(Lcom/android/browser/BookmarkViewMode;)V
    .locals 0
    .parameter "viewMode"

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    .line 512
    return-void
.end method

.method public updateFolderRow(Landroid/os/Bundle;)V
    .locals 8
    .parameter "map"

    .prologue
    const-string v6, "title"

    .line 180
    const-string v4, "id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 181
    .local v0, id:I
    const/4 v1, -0x1

    .line 182
    .local v1, position:I
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_0

    .line 183
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v0, :cond_2

    .line 184
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 188
    :cond_0
    if-gez v1, :cond_3

    .line 204
    :cond_1
    :goto_1
    return-void

    .line 182
    :cond_2
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 192
    :cond_3
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    invoke-interface {v4, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 193
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 194
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "title"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, title:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 197
    const-string v4, "title"

    invoke-virtual {v3, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_4
    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->refreshList()V

    goto :goto_1
.end method

.method public updateRow(Landroid/os/Bundle;)V
    .locals 13
    .parameter "map"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v12, "url"

    const-string v11, "title"

    const-string v10, "folder"

    .line 226
    const-string v6, "id"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 227
    .local v1, id:I
    const/4 v2, -0x1

    .line 228
    .local v2, position:I
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_0

    .line 229
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v1, :cond_2

    .line 230
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 234
    :cond_0
    if-gez v2, :cond_3

    .line 267
    :cond_1
    :goto_1
    return-void

    .line 228
    :cond_2
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 238
    :cond_3
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 239
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 240
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "title"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, title:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x5

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 243
    const-string v6, "title"

    invoke-virtual {v5, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_4
    const-string v6, "url"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, url:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 248
    const-string v6, "url"

    invoke-virtual {v5, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_5
    const-string v6, "folder"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 253
    .local v0, folder:I
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v7, 0xa

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eq v0, v6, :cond_6

    .line 254
    const-string v6, "folder"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 259
    :cond_6
    const-string v6, "invalidateThumbnail"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v9, :cond_7

    .line 260
    const-string v6, "thumbnail"

    new-array v7, v8, [B

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 262
    :cond_7
    invoke-virtual {v5}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->refreshList()V

    goto/16 :goto_1
.end method
