.class public Lcom/android/music/list/adapter/MpListGridAdapter;
.super Lcom/android/music/list/adapter/AbstractMpListAdapter;
.source "MpListGridAdapter.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field context:Landroid/content/Context;

.field mHeight:I

.field mListType:I

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z[Ljava/lang/String;I)V
    .locals 9
    .parameter "context"
    .parameter "c"
    .parameter "hasCheck"
    .parameter "columns"
    .parameter "list"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/music/list/adapter/AbstractMpListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 25
    iput-object v2, p0, Lcom/android/music/list/adapter/MpListGridAdapter;->context:Landroid/content/Context;

    .line 27
    const-string v0, "MpList"

    iput-object v0, p0, Lcom/android/music/list/adapter/MpListGridAdapter;->TAG:Ljava/lang/String;

    .line 30
    const/16 v0, 0x60

    iput v0, p0, Lcom/android/music/list/adapter/MpListGridAdapter;->mWidth:I

    .line 31
    const/16 v0, 0x60

    iput v0, p0, Lcom/android/music/list/adapter/MpListGridAdapter;->mHeight:I

    .line 36
    iput-object p1, p0, Lcom/android/music/list/adapter/MpListGridAdapter;->context:Landroid/content/Context;

    .line 38
    iput-object p4, p0, Lcom/android/music/list/adapter/MpListGridAdapter;->mColumns:[Ljava/lang/String;

    .line 40
    iput p5, p0, Lcom/android/music/list/adapter/MpListGridAdapter;->mListType:I

    .line 41
    invoke-virtual {p0, v3}, Lcom/android/music/list/adapter/MpListGridAdapter;->setEnable(Z)V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 44
    .local v8, imageForSize:Landroid/graphics/Bitmap;
    sget-object v0, Lcom/android/music/list/adapter/MpListGridAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/graphics/Bitmap;

    sput-object v0, Lcom/android/music/list/adapter/MpListGridAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    .line 47
    sget-object v0, Lcom/android/music/list/adapter/MpListGridAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aput-object v2, v0, v4

    .line 48
    sget-object v0, Lcom/android/music/list/adapter/MpListGridAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aput-object v2, v0, v3

    .line 49
    sget-object v0, Lcom/android/music/list/adapter/MpListGridAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aput-object v2, v0, v5

    .line 50
    sget-object v0, Lcom/android/music/list/adapter/MpListGridAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aput-object v2, v0, v6

    .line 51
    sget-object v0, Lcom/android/music/list/adapter/MpListGridAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x4

    aput-object v2, v0, v1

    .line 52
    sget-object v0, Lcom/android/music/list/adapter/MpListGridAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x5

    aput-object v2, v0, v1

    .line 54
    :cond_0
    sget-object v0, Lcom/android/music/list/adapter/MpListGridAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    if-nez v0, :cond_1

    .line 55
    sget-object v0, Lcom/android/music/list/adapter/MpListGridAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200bc

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v4

    .line 56
    :cond_1
    sget-object v0, Lcom/android/music/list/adapter/MpListGridAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v3

    if-nez v0, :cond_2

    .line 57
    sget-object v0, Lcom/android/music/list/adapter/MpListGridAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200bd

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v3

    .line 58
    :cond_2
    sget-object v0, Lcom/android/music/list/adapter/MpListGridAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v5

    if-nez v0, :cond_3

    .line 59
    sget-object v0, Lcom/android/music/list/adapter/MpListGridAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200be

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v5

    .line 60
    :cond_3
    sget-object v0, Lcom/android/music/list/adapter/MpListGridAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v6

    if-nez v0, :cond_4

    .line 61
    sget-object v0, Lcom/android/music/list/adapter/MpListGridAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200bf

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v6

    .line 62
    :cond_4
    sget-object v0, Lcom/android/music/list/adapter/MpListGridAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    if-nez v0, :cond_5

    .line 63
    sget-object v0, Lcom/android/music/list/adapter/MpListGridAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200c0

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 64
    :cond_5
    sget-object v0, Lcom/android/music/list/adapter/MpListGridAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    if-nez v0, :cond_6

    .line 65
    sget-object v0, Lcom/android/music/list/adapter/MpListGridAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02000d

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 67
    :cond_6
    sget-object v0, Lcom/android/music/list/adapter/MpListGridAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/music/list/adapter/MpListGridAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    if-eqz v0, :cond_7

    .line 69
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/music/list/adapter/MpListGridAdapter;->mWidth:I

    .line 70
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/music/list/adapter/MpListGridAdapter;->mHeight:I

    .line 73
    :cond_7
    const/4 v8, 0x0

    .line 75
    new-instance v0, Lcom/android/music/list/data/MpImageDataBuffer;

    sget-object v2, Lcom/android/music/list/adapter/MpListGridAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/music/list/adapter/MpListGridAdapter;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v4, p0, Lcom/android/music/list/adapter/MpListGridAdapter;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/music/list/adapter/MpListGridAdapter;->GetHandler()Landroid/os/Handler;

    move-result-object v5

    iget v6, p0, Lcom/android/music/list/adapter/MpListGridAdapter;->mWidth:I

    iget v7, p0, Lcom/android/music/list/adapter/MpListGridAdapter;->mHeight:I

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/music/list/data/MpImageDataBuffer;-><init>(Landroid/content/Context;[Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;Landroid/os/Handler;II)V

    iput-object v0, p0, Lcom/android/music/list/adapter/MpListGridAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    .line 76
    return-void
.end method


# virtual methods
.method protected SetImageViewRedraw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "dbid"
    .parameter "path"
    .parameter "index"
    .parameter "tag"

    .prologue
    const/4 v3, 0x1

    .line 82
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGridAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/android/music/list/interfaces/MpHandlerInterface;

    iget-object v1, p0, Lcom/android/music/list/adapter/MpListGridAdapter;->MyTag:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/music/list/interfaces/MpHandlerInterface;->GetView(Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/music/list/view/MpListGridView;

    .line 85
    .local v6, gridview:Lcom/android/music/list/view/MpListGridView;
    if-nez p3, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    if-eqz v6, :cond_0

    .line 93
    invoke-virtual {v6, p4}, Lcom/android/music/list/view/MpListGridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 95
    .local v7, imageView:Landroid/widget/ImageView;
    if-eqz v7, :cond_0

    .line 99
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget v1, p0, Lcom/android/music/list/adapter/MpListGridAdapter;->mWidth:I

    iget v2, p0, Lcom/android/music/list/adapter/MpListGridAdapter;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    invoke-virtual {v7, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 103
    iget-object v8, p0, Lcom/android/music/list/adapter/MpListGridAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    monitor-enter v8

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGridAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    iget-object v1, p0, Lcom/android/music/list/adapter/MpListGridAdapter;->cursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/music/list/adapter/MpListGridAdapter;->mListType:I

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/music/list/data/MpImageDataBuffer;->GetImage(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 106
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-virtual {v7}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 24
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 118
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v22

    .line 119
    .local v22, pos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/adapter/MpListGridAdapter;->mListType:I

    move v5, v0

    .line 121
    .local v5, listType:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/adapter/MpListGridAdapter;->mListType:I

    move v3, v0

    move v0, v3

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/music/common/util/ListType;->getTagIdString(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v18

    .line 124
    .local v18, itemid:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v19

    .line 125
    .local v19, mDB:Lcom/android/music/common/data/MusicDB;
    const v3, 0x7f0c0035

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 126
    .local v17, imageView:Landroid/widget/ImageView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/adapter/MpListGridAdapter;->mListType:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_Grid_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 128
    .local v8, imageViewTag:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 129
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/adapter/MpListGridAdapter;->mListType:I

    move v3, v0

    move-object/from16 v0, v19

    move v1, v3

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/music/common/data/MusicDB;->getAlbumID(ILandroid/database/Cursor;)I

    move-result v16

    .line 160
    .local v16, iAlbumId:I
    const/4 v3, -0x1

    move/from16 v0, v16

    move v1, v3

    if-eq v0, v1, :cond_2

    .line 162
    const/4 v3, 0x5

    if-ne v5, v3, :cond_1

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListGridAdapter;->mColumns:[Ljava/lang/String;

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

    move-result v23

    .line 165
    .local v23, rsrcID:I
    const/4 v3, -0x1

    move/from16 v0, v23

    move v1, v3

    if-ne v0, v1, :cond_0

    .line 167
    move-object/from16 v0, v19

    move v1, v5

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/music/common/data/MusicDB;->getAlbumID(ILandroid/database/Cursor;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 168
    .local v7, strAlbumId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListGridAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object v3, v0

    const-string v6, "content://media/external/audio/albumart/"

    move-object/from16 v4, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/music/list/data/MpImageDataBuffer;->GetImage(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 229
    .end local v7           #strAlbumId:Ljava/lang/String;
    .end local v23           #rsrcID:I
    :goto_0
    return-void

    .line 172
    .restart local v23       #rsrcID:I
    :cond_0
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 177
    .end local v23           #rsrcID:I
    :cond_1
    move-object/from16 v0, v19

    move v1, v5

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/music/common/data/MusicDB;->getAlbumID(ILandroid/database/Cursor;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 178
    .restart local v7       #strAlbumId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListGridAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object v3, v0

    const-string v6, "content://media/external/audio/albumart/"

    move-object/from16 v4, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/music/list/data/MpImageDataBuffer;->GetImage(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 183
    .end local v7           #strAlbumId:Ljava/lang/String;
    :cond_2
    const/16 v23, -0x1

    .line 184
    .restart local v23       #rsrcID:I
    const/4 v3, 0x5

    if-ne v5, v3, :cond_3

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListGridAdapter;->mColumns:[Ljava/lang/String;

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

    move-result v23

    .line 187
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 191
    :cond_3
    const/4 v3, 0x2

    if-eq v5, v3, :cond_4

    const/16 v3, 0x19

    if-ne v5, v3, :cond_7

    .line 195
    :cond_4
    const-string v3, "_id"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 196
    .local v21, playlistID:I
    const/4 v3, -0x1

    move/from16 v0, v21

    move v1, v3

    if-ne v0, v1, :cond_5

    .line 198
    const-string v3, "_data"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 199
    .local v15, _data:Ljava/lang/String;
    const-string v3, "Music_Default_Playlist"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 201
    .local v20, mainListType:I
    invoke-static/range {v20 .. v20}, Lcom/android/music/common/util/ListUtil;->getDefaultPlaylistRsrcID(I)I

    move-result v23

    .line 202
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 208
    .end local v15           #_data:Ljava/lang/String;
    .end local v20           #mainListType:I
    :cond_5
    const-string v3, "thumbnail_uri"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 209
    .local v13, imagePath:Ljava/lang/String;
    if-eqz v13, :cond_6

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListGridAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object v9, v0

    const-string v12, "file://"

    move-object/from16 v10, p3

    move v11, v5

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/android/music/list/data/MpImageDataBuffer;->GetImage(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 214
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_0

    .line 218
    :cond_6
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/android/music/common/util/ListUtil;->getDefaultPlaylistRsrcID(I)I

    move-result v23

    .line 219
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 225
    .end local v13           #imagePath:Ljava/lang/String;
    .end local v21           #playlistID:I
    :cond_7
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v23

    .line 226
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v5, 0x1

    .line 234
    iget-object v2, p0, Lcom/android/music/list/adapter/MpListGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 235
    .local v1, myView:Landroid/view/View;
    const v2, 0x7f0c0035

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 237
    .local v0, mImageView:Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    iget v3, p0, Lcom/android/music/list/adapter/MpListGridAdapter;->mWidth:I

    iget v4, p0, Lcom/android/music/list/adapter/MpListGridAdapter;->mHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 240
    return-object v0
.end method

.method public reset(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 250
    return-void
.end method

.method public setColumn([Ljava/lang/String;)V
    .locals 0
    .parameter "columns"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/music/list/adapter/MpListGridAdapter;->mColumns:[Ljava/lang/String;

    .line 246
    return-void
.end method