.class public Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;
.super Lcom/android/music/list/adapter/AbstractMpListAdapter;
.source "MpListThumnailOneLineAdapter.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 9
    .parameter "context"
    .parameter "c"
    .parameter "hasCheck"

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/music/list/adapter/AbstractMpListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 35
    iput-object v2, p0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->context:Landroid/content/Context;

    .line 37
    const-string v0, "MpList"

    iput-object v0, p0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->TAG:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->context:Landroid/content/Context;

    .line 43
    const/16 v6, 0x74

    .line 44
    .local v6, mWidth:I
    const/16 v7, 0x75

    .line 46
    .local v7, mHeight:I
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/graphics/Bitmap;

    sput-object v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    .line 49
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aput-object v2, v0, v4

    .line 50
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aput-object v2, v0, v3

    .line 51
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aput-object v2, v0, v5

    .line 52
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aput-object v2, v0, v8

    .line 53
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x4

    aput-object v2, v0, v1

    .line 54
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x5

    aput-object v2, v0, v1

    .line 56
    :cond_0
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    if-nez v0, :cond_1

    .line 57
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b5

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v4

    .line 58
    :cond_1
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v3

    if-nez v0, :cond_2

    .line 59
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b6

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v3

    .line 60
    :cond_2
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v5

    if-nez v0, :cond_3

    .line 61
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b7

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v5

    .line 62
    :cond_3
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v8

    if-nez v0, :cond_4

    .line 63
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b8

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v8

    .line 64
    :cond_4
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    if-nez v0, :cond_5

    .line 65
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200b9

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 66
    :cond_5
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    if-nez v0, :cond_6

    .line 67
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02000d

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 69
    :cond_6
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    if-eqz v0, :cond_7

    .line 71
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 72
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 74
    :cond_7
    new-instance v0, Lcom/android/music/list/data/MpImageDataBuffer;

    sget-object v2, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v4, p0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->GetHandler()Landroid/os/Handler;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/music/list/data/MpImageDataBuffer;-><init>(Landroid/content/Context;[Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;Landroid/os/Handler;II)V

    iput-object v0, p0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    .line 83
    return-void
.end method


# virtual methods
.method protected SetImageViewRedraw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "dbid"
    .parameter "path"
    .parameter "index"
    .parameter "Tag"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/android/music/list/interfaces/MpHandlerInterface;

    iget-object v1, p0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->MyTag:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/music/list/interfaces/MpHandlerInterface;->GetView(Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/music/list/view/AbstractMpListView;

    .line 88
    .local v7, listview:Lcom/android/music/list/view/AbstractMpListView;
    const-string v0, "Tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetImageViewRedraw "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    if-nez p3, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    if-eqz v7, :cond_0

    .line 94
    invoke-virtual {v7, p4}, Lcom/android/music/list/view/AbstractMpListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 95
    .local v6, imageView:Landroid/widget/ImageView;
    if-eqz v6, :cond_0

    .line 97
    const-string v0, "Setimageview4"

    invoke-static {v0, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v8, p0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    monitor-enter v8

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    iget-object v1, p0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/music/list/data/MpImageDataBuffer;->GetImage(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 101
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-virtual {v6}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 29
    .parameter "myView"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 110
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v25

    .line 111
    .local v25, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v5

    .line 113
    .local v5, listType:I
    move v0, v5

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/music/common/util/ListType;->getTagIdString(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v20

    .line 114
    .local v20, itemid:Ljava/lang/String;
    const-string v3, "MpList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thumnailoneline bineview pos = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " itemid = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " listtype = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v3, "-999"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const-string v3, "-998"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    if-nez v25, :cond_2

    .line 252
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    if-eqz p1, :cond_1

    .line 122
    invoke-static/range {p2 .. p2}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v21

    .line 133
    .local v21, mDB:Lcom/android/music/common/data/MusicDB;
    const v3, 0x7f0c0052

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 135
    .local v19, imageView:Landroid/widget/ImageView;
    const v3, 0x7f0c0055

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 136
    .local v23, mainTextView:Landroid/widget/TextView;
    const-string v28, ""

    .line 137
    .local v28, subTag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v28, v3, v4

    .line 141
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 143
    .local v8, imageViewTag:Ljava/lang/String;
    move-object/from16 v0, v21

    move v1, v5

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/music/common/data/MusicDB;->getAlbumID(ILandroid/database/Cursor;)I

    move-result v17

    .line 145
    .local v17, iAlbumId:I
    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 148
    const/4 v3, -0x1

    move/from16 v0, v17

    move v1, v3

    if-eq v0, v1, :cond_6

    .line 150
    const/4 v3, 0x5

    if-ne v5, v3, :cond_5

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->mColumns:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/music/common/util/ListUtil;->getGenreThumbnailRsrcID(Ljava/lang/String;)I

    move-result v27

    .line 153
    .local v27, rsrcID:I
    const/4 v3, -0x1

    move/from16 v0, v27

    move v1, v3

    if-ne v0, v1, :cond_4

    .line 155
    move-object/from16 v0, v21

    move v1, v5

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/music/common/data/MusicDB;->getAlbumID(ILandroid/database/Cursor;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 156
    .local v7, strAlbumId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object v3, v0

    const-string v6, "content://media/external/audio/albumart/"

    move-object/from16 v4, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/music/list/data/MpImageDataBuffer;->GetImage(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 217
    .end local v7           #strAlbumId:Ljava/lang/String;
    .end local v27           #rsrcID:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->mColumns:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->mHasCheck:Z

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    if-eqz p1, :cond_1

    .line 226
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v26

    .line 227
    .local v26, position:I
    const v3, 0x7f0c0050

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/CheckBox;

    .line 228
    .local v16, check:Landroid/widget/CheckBox;
    const v3, 0x7f0c0051

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 229
    .local v18, image:Landroid/widget/ImageView;
    if-eqz v16, :cond_1

    .line 244
    const/4 v3, 0x0

    move-object/from16 v0, v16

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 245
    const/16 v3, 0x8

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->mChecked:[Z

    move-object v3, v0

    aget-boolean v3, v3, v26

    move-object/from16 v0, v16

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 248
    new-instance v3, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;

    move-object v0, v3

    move-object/from16 v1, p0

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;-><init>(Lcom/android/music/list/adapter/AbstractMpListAdapter;I)V

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 160
    .end local v16           #check:Landroid/widget/CheckBox;
    .end local v18           #image:Landroid/widget/ImageView;
    .end local v26           #position:I
    .restart local v27       #rsrcID:I
    :cond_4
    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 165
    .end local v27           #rsrcID:I
    :cond_5
    move-object/from16 v0, v21

    move v1, v5

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/music/common/data/MusicDB;->getAlbumID(ILandroid/database/Cursor;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 166
    .restart local v7       #strAlbumId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object v3, v0

    const-string v6, "content://media/external/audio/albumart/"

    move-object/from16 v4, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/music/list/data/MpImageDataBuffer;->GetImage(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 171
    .end local v7           #strAlbumId:Ljava/lang/String;
    :cond_6
    const/16 v27, -0x1

    .line 172
    .restart local v27       #rsrcID:I
    const/4 v3, 0x5

    if-ne v5, v3, :cond_7

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->mColumns:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/music/common/util/ListUtil;->getGenreThumbnailRsrcID(Ljava/lang/String;)I

    move-result v27

    .line 175
    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 178
    :cond_7
    const/4 v3, 0x2

    if-eq v5, v3, :cond_8

    const/16 v3, 0x19

    if-ne v5, v3, :cond_b

    .line 182
    :cond_8
    const-string v3, "_id"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 183
    .local v24, playlistID:I
    const/4 v3, -0x1

    move/from16 v0, v24

    move v1, v3

    if-ne v0, v1, :cond_9

    .line 185
    const-string v3, "_data"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 186
    .local v15, _data:Ljava/lang/String;
    const-string v3, "Music_Default_Playlist"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 188
    .local v22, mainListType:I
    invoke-static/range {v22 .. v22}, Lcom/android/music/common/util/ListUtil;->getDefaultPlaylistRsrcID(I)I

    move-result v27

    .line 189
    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 195
    .end local v15           #_data:Ljava/lang/String;
    .end local v22           #mainListType:I
    :cond_9
    const-string v3, "thumbnail_uri"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 196
    .local v13, imagePath:Ljava/lang/String;
    if-eqz v13, :cond_a

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object v9, v0

    const-string v12, "file://"

    move-object/from16 v10, p3

    move v11, v5

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/android/music/list/data/MpImageDataBuffer;->GetImage(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 201
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_1

    .line 205
    :cond_a
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/android/music/common/util/ListUtil;->getDefaultPlaylistRsrcID(I)I

    move-result v27

    .line 206
    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 212
    .end local v13           #imagePath:Ljava/lang/String;
    .end local v24           #playlistID:I
    :cond_b
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v27

    .line 213
    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const-string v5, "_id"

    .line 257
    const-string v3, "MpList"

    const-string v4, "MpListThumnailOneLineAdapter::newView called"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v3, "_id"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v4, -0x3e7

    if-ne v3, v4, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-nez v3, :cond_0

    .line 260
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3, p0}, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->getSelectAllView(Landroid/view/View;Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;)Landroid/view/View;

    move-result-object v3

    .line 278
    :goto_0
    return-object v3

    .line 261
    :cond_0
    const-string v3, "_id"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v4, -0x3e6

    if-ne v3, v4, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-nez v3, :cond_1

    .line 262
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->getCreateListView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 264
    :cond_1
    iget-object v3, p0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030016

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 266
    .local v1, myView:Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->mHasCheck:Z

    if-eqz v3, :cond_2

    .line 267
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 268
    .local v2, position:I
    const v3, 0x7f0c0050

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 269
    .local v0, check:Landroid/widget/CheckBox;
    if-eqz v0, :cond_2

    .line 270
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 271
    iget-object v3, p0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->mChecked:[Z

    aget-boolean v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 272
    new-instance v3, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;

    invoke-direct {v3, p0, v2}, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;-><init>(Lcom/android/music/list/adapter/AbstractMpListAdapter;I)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    .end local v0           #check:Landroid/widget/CheckBox;
    .end local v2           #position:I
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    move-object v3, v1

    .line 278
    goto :goto_0
.end method

.method public reset(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 306
    return-void
.end method

.method public setColumn([Ljava/lang/String;)V
    .locals 0
    .parameter "columns"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/music/list/adapter/MpListThumnailOneLineAdapter;->mColumns:[Ljava/lang/String;

    .line 301
    return-void
.end method
