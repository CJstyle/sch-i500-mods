.class public Lcom/android/music/list/adapter/MpListMediaPickerAdapter;
.super Lcom/android/music/list/adapter/AbstractMpListAdapter;
.source "MpListMediaPickerAdapter.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureSweepListener:Lcom/android/music/list/adapter/AbstractMpListAdapter$OnGestureListener;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z[Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "c"
    .parameter "hasCheck"
    .parameter "con"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/music/list/adapter/AbstractMpListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 27
    iput-object v2, p0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object v2, p0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->mGestureDetector:Landroid/view/GestureDetector;

    .line 29
    iput-object v2, p0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->mGestureSweepListener:Lcom/android/music/list/adapter/AbstractMpListAdapter$OnGestureListener;

    .line 30
    const/16 v0, 0x74

    iput v0, p0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->mWidth:I

    .line 31
    const/16 v0, 0x75

    iput v0, p0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->mHeight:I

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->TAG:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->mContext:Landroid/content/Context;

    .line 38
    iput-object p4, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mColumns:[Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/graphics/Bitmap;

    sput-object v0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    .line 43
    sget-object v0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aput-object v2, v0, v4

    .line 44
    sget-object v0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aput-object v2, v0, v3

    .line 45
    sget-object v0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aput-object v2, v0, v5

    .line 46
    sget-object v0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aput-object v2, v0, v6

    .line 47
    sget-object v0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x4

    aput-object v2, v0, v1

    .line 48
    sget-object v0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x5

    aput-object v2, v0, v1

    .line 50
    :cond_0
    sget-object v0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    if-nez v0, :cond_1

    .line 51
    sget-object v0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b5

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v4

    .line 52
    :cond_1
    sget-object v0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v3

    if-nez v0, :cond_2

    .line 53
    sget-object v0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b6

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v3

    .line 54
    :cond_2
    sget-object v0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v5

    if-nez v0, :cond_3

    .line 55
    sget-object v0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b7

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v5

    .line 56
    :cond_3
    sget-object v0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v6

    if-nez v0, :cond_4

    .line 57
    sget-object v0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b8

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v6

    .line 58
    :cond_4
    sget-object v0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    if-nez v0, :cond_5

    .line 59
    sget-object v0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200b9

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 60
    :cond_5
    sget-object v0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    if-nez v0, :cond_6

    .line 61
    sget-object v0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02000d

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 63
    :cond_6
    sget-object v0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    if-eqz v0, :cond_7

    .line 65
    sget-object v0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->mWidth:I

    .line 66
    sget-object v0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->mHeight:I

    .line 68
    :cond_7
    new-instance v0, Lcom/android/music/list/data/MpImageDataBuffer;

    sget-object v2, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v4, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->GetHandler()Landroid/os/Handler;

    move-result-object v5

    iget v6, p0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->mWidth:I

    iget v7, p0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->mHeight:I

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/music/list/data/MpImageDataBuffer;-><init>(Landroid/content/Context;[Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;Landroid/os/Handler;II)V

    iput-object v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    .line 71
    new-instance v0, Lcom/android/music/list/adapter/AbstractMpListAdapter$OnGestureListener;

    invoke-direct {v0, p0}, Lcom/android/music/list/adapter/AbstractMpListAdapter$OnGestureListener;-><init>(Lcom/android/music/list/adapter/AbstractMpListAdapter;)V

    iput-object v0, p0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->mGestureSweepListener:Lcom/android/music/list/adapter/AbstractMpListAdapter$OnGestureListener;

    .line 72
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->mGestureSweepListener:Lcom/android/music/list/adapter/AbstractMpListAdapter$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->mGestureDetector:Landroid/view/GestureDetector;

    .line 73
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
    const/4 v2, 0x0

    const-string v3, "Tag"

    .line 79
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/music/list/interfaces/MpHandlerInterface;

    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->MyTag:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/music/list/interfaces/MpHandlerInterface;->GetView(Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/music/list/view/AbstractMpListView;

    .line 80
    .local v7, listview:Lcom/android/music/list/view/AbstractMpListView;
    if-nez p3, :cond_1

    .line 82
    const-string v0, "Tag"

    const-string v0, "Mplist twoline bineview index = null"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    if-eqz v7, :cond_0

    .line 87
    invoke-virtual {v7, p4}, Lcom/android/music/list/view/AbstractMpListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/music/list/view/MpView;

    .line 88
    .local v6, imageView:Lcom/android/music/list/view/MpView;
    if-nez v6, :cond_2

    .line 90
    const-string v0, "Tag"

    const-string v0, "Mplist twoline bineview imageView = null"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    :cond_2
    iget-object v8, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    monitor-enter v8

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/music/list/data/MpImageDataBuffer;->GetImage(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->mWidth:I

    iget v5, p0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->mHeight:I

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/music/list/view/MpView;->SetBackImageBitmap(Landroid/graphics/Bitmap;IIII)V

    .line 96
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {v6}, Lcom/android/music/list/view/MpView;->invalidate()V

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 21
    .parameter "myView"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v2

    move v0, v2

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/music/common/util/ListType;->getTagIdString(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v16

    .line 112
    .local v16, itemid:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 150
    .end local p2
    :goto_0
    return-void

    .line 115
    .restart local p2
    :cond_0
    const v2, 0x7f0c004a

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/music/list/view/MpView;

    .line 116
    .local v8, imageView:Lcom/android/music/list/view/MpView;
    const v2, 0x7f0c004c

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 117
    .local v17, mainTextView:Landroid/widget/TextView;
    const v2, 0x7f0c004e

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 118
    .local v20, subTextView:Landroid/widget/TextView;
    const v2, 0x7f0c0033

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/music/list/view/MpView;

    .line 119
    .local v14, imageBackView:Lcom/android/music/list/view/MpView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mColumns:[Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x2

    aget-object v2, v2, v3

    move-object/from16 v0, p3

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, albumId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mColumns:[Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p3

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mColumns:[Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x1

    aget-object v2, v2, v3

    move-object/from16 v0, p3

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const-string v19, ""

    .line 127
    .local v19, subTag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v19, v2, v3

    .line 131
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 132
    .local v18, myVierTag:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 133
    .local v7, imageViewTag:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TagBack"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 135
    .local v15, imageBackViewTag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->mContext:Landroid/content/Context;

    move-object/from16 p2, v0

    .end local p2
    check-cast p2, Landroid/app/Activity;

    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/adapter/AbstractMpListAdapter;->width:I

    .line 137
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 138
    invoke-virtual {v8, v7}, Lcom/android/music/list/view/MpView;->setTag(Ljava/lang/Object;)V

    .line 139
    invoke-virtual {v14, v15}, Lcom/android/music/list/view/MpView;->setTag(Ljava/lang/Object;)V

    .line 141
    invoke-virtual {v8, v7}, Lcom/android/music/list/view/MpView;->SetIdIndex(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v14, v7}, Lcom/android/music/list/view/MpView;->SetIdIndex(Ljava/lang/String;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v4

    const-string v5, "content://media/external/audio/albumart/"

    move-object/from16 v3, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/music/list/data/MpImageDataBuffer;->GetImage(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->mWidth:I

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->mHeight:I

    move v13, v0

    invoke-virtual/range {v8 .. v13}, Lcom/android/music/list/view/MpView;->SetBackImageBitmap(Landroid/graphics/Bitmap;IIII)V

    goto/16 :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030017

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 155
    .local v0, myView:Landroid/view/View;
    return-object v0
.end method

.method public reset(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/android/music/list/adapter/MpListMediaPickerAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 161
    return-void
.end method

.method public setColumn([Ljava/lang/String;)V
    .locals 0
    .parameter "columns"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mColumns:[Ljava/lang/String;

    .line 105
    return-void
.end method
