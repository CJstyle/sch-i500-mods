.class public Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;
.super Lcom/android/music/list/adapter/AbstractMpListAdapter;
.source "MpListThumnailTwoLineAdapter.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private TIMECHECK:Ljava/lang/String;

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

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/music/list/adapter/AbstractMpListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 33
    iput-object v2, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput-object v2, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mGestureDetector:Landroid/view/GestureDetector;

    .line 35
    iput-object v2, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mGestureSweepListener:Lcom/android/music/list/adapter/AbstractMpListAdapter$OnGestureListener;

    .line 36
    const/16 v0, 0x74

    iput v0, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mWidth:I

    .line 37
    const/16 v0, 0x75

    iput v0, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mHeight:I

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->TAG:Ljava/lang/String;

    .line 39
    const-string v0, "TimeCheck"

    iput-object v0, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->TIMECHECK:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mContext:Landroid/content/Context;

    .line 47
    iput-object p4, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mColumns:[Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/graphics/Bitmap;

    sput-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    .line 52
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aput-object v2, v0, v4

    .line 53
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aput-object v2, v0, v3

    .line 54
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aput-object v2, v0, v5

    .line 55
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aput-object v2, v0, v6

    .line 56
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x4

    aput-object v2, v0, v1

    .line 57
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x5

    aput-object v2, v0, v1

    .line 59
    :cond_0
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    if-nez v0, :cond_1

    .line 60
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b5

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v4

    .line 61
    :cond_1
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v3

    if-nez v0, :cond_2

    .line 62
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b6

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v3

    .line 63
    :cond_2
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v5

    if-nez v0, :cond_3

    .line 64
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b7

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v5

    .line 65
    :cond_3
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v6

    if-nez v0, :cond_4

    .line 66
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b8

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v6

    .line 67
    :cond_4
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    if-nez v0, :cond_5

    .line 68
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200b9

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 69
    :cond_5
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    if-nez v0, :cond_6

    .line 70
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02000d

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 72
    :cond_6
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    if-eqz v0, :cond_7

    .line 74
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mWidth:I

    .line 75
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mHeight:I

    .line 77
    :cond_7
    new-instance v0, Lcom/android/music/list/data/MpImageDataBuffer;

    sget-object v2, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v4, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->GetHandler()Landroid/os/Handler;

    move-result-object v5

    iget v6, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mWidth:I

    iget v7, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mHeight:I

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/music/list/data/MpImageDataBuffer;-><init>(Landroid/content/Context;[Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;Landroid/os/Handler;II)V

    iput-object v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    .line 78
    const-string v0, "MpList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThumnailTwoLine defaultimage getWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method


# virtual methods
.method protected SetImageViewRedraw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "dbid"
    .parameter "path"
    .parameter "index"
    .parameter "Tag"

    .prologue
    const/4 v3, 0x0

    const-string v4, "Tag"

    .line 91
    const-string v0, "Tag"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mplist SetImageViewRedraw  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/music/list/interfaces/MpHandlerInterface;

    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->MyTag:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/music/list/interfaces/MpHandlerInterface;->GetView(Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/music/list/view/AbstractMpListView;

    .line 93
    .local v8, listview:Lcom/android/music/list/view/AbstractMpListView;
    if-nez p3, :cond_1

    .line 95
    const-string v0, "Tag"

    const-string v0, "Mplist twoline bineview index = null"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    if-eqz v8, :cond_0

    .line 100
    iget v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListType:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListType:I

    invoke-static {v2}, Lcom/android/music/common/util/ListType;->getAudioIdColumn(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 103
    .local v6, audioId:I
    const-string v0, "%s_%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p4, v1, v3

    const/4 v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 105
    .end local v6           #audioId:I
    :cond_3
    invoke-virtual {v8, p4}, Lcom/android/music/list/view/AbstractMpListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/music/list/view/MpView;

    .line 106
    .local v7, imageView:Lcom/android/music/list/view/MpView;
    if-nez v7, :cond_4

    .line 108
    const-string v0, "Tag"

    const-string v0, "Mplist twoline bineview imageView = null"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_4
    iget-object v9, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    monitor-enter v9

    .line 113
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

    iget v4, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mWidth:I

    iget v5, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mHeight:I

    move-object v0, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/music/list/view/MpView;->SetBackImageBitmap(Landroid/graphics/Bitmap;IIII)V

    .line 114
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {v7}, Lcom/android/music/list/view/MpView;->invalidate()V

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 33
    .parameter "myView"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 122
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v28

    .line 123
    .local v28, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v6

    move v0, v6

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/music/common/util/ListType;->getTagIdString(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v25

    .line 125
    .local v25, itemid:Ljava/lang/String;
    const-string v6, "-999"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    if-nez v28, :cond_1

    .line 287
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 128
    .restart local p2
    :cond_1
    const-string v6, "-997"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move/from16 v0, v28

    move v1, v6

    if-eq v0, v1, :cond_0

    .line 132
    :cond_2
    if-eqz p1, :cond_0

    .line 135
    const v6, 0x7f0c004a

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/music/list/view/MpView;

    .line 136
    .local v5, imageView:Lcom/android/music/list/view/MpView;
    const v6, 0x7f0c004c

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 137
    .local v26, mainTextView:Landroid/widget/TextView;
    const v6, 0x7f0c004e

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 138
    .local v31, subTextView:Landroid/widget/TextView;
    const v6, 0x7f0c0033

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/android/music/list/view/MpView;

    .line 139
    .local v23, imageBackView:Lcom/android/music/list/view/MpView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mColumns:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x2

    aget-object v6, v6, v7

    move-object/from16 v0, p3

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 140
    .local v10, albumId:Ljava/lang/String;
    const/16 v18, 0x0

    .line 142
    .local v18, audioId:I
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->FEATURE_MUSIC_PLAYLIST()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v6

    const/16 v7, 0xd

    if-eq v6, v7, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v6

    const/16 v7, 0x1a

    if-ne v6, v7, :cond_7

    .line 144
    :cond_4
    const-string v6, "_data"

    move-object/from16 v0, p3

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 145
    .local v21, data:Ljava/lang/String;
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v22, file:Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_6

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpImageDataBuffer;->GetDefaultImage(Landroid/database/Cursor;)Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mWidth:I

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mHeight:I

    move v10, v0

    .end local v10           #albumId:Ljava/lang/String;
    invoke-virtual/range {v5 .. v10}, Lcom/android/music/list/view/MpView;->SetBackImageBitmap(Landroid/graphics/Bitmap;IIII)V

    .line 148
    invoke-static/range {v21 .. v21}, Lcom/android/music/common/util/ListUtil;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x205005b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object/from16 v0, v26

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    const-string v6, "<unknown>"

    move-object/from16 v0, v31

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x205005b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object/from16 v0, v31

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mHasCheck:Z

    move v6, v0

    if-eqz v6, :cond_5

    if-eqz p1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    move-object v6, v0

    array-length v6, v6

    move v0, v6

    move/from16 v1, v28

    if-le v0, v1, :cond_5

    .line 153
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v29

    .line 154
    .local v29, position:I
    const v6, 0x7f0c0056

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    .line 156
    .local v19, check:Landroid/widget/CheckBox;
    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    move-object v6, v0

    aget-boolean v6, v6, v29

    move-object/from16 v0, v19

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 159
    new-instance v6, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;

    move-object v0, v6

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;-><init>(Lcom/android/music/list/adapter/AbstractMpListAdapter;I)V

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    .end local v19           #check:Landroid/widget/CheckBox;
    .end local v29           #position:I
    :cond_5
    const/4 v6, 0x2

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    goto/16 :goto_0

    .line 183
    .restart local v10       #albumId:Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    .line 184
    const v6, 0x207000e

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 185
    const v6, 0x207000f

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 187
    const/4 v6, 0x1

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 191
    .end local v21           #data:Ljava/lang/String;
    .end local v22           #file:Ljava/io/File;
    :cond_7
    const-string v6, "MpList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mplist albumId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " _id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mColumns:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object/from16 v0, p3

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mColumns:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x1

    aget-object v6, v6, v7

    move-object/from16 v0, p3

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    const-string v30, ""

    .line 197
    .local v30, subTag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string v7, "-1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v30, v6, v7

    .line 201
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "view_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 202
    .local v27, myViewTag:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 203
    .local v11, imageViewTag:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TagBack"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 205
    .local v24, imageBackViewTag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListType:I

    move v6, v0

    const/16 v7, 0xd

    if-eq v6, v7, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListType:I

    move v6, v0

    const/16 v7, 0x9

    if-ne v6, v7, :cond_a

    .line 206
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListType:I

    move v6, v0

    invoke-static {v6}, Lcom/android/music/common/util/ListType;->getAudioIdColumn(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 207
    const-string v6, "%s_%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v27, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 208
    const-string v6, "%s_%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v11, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 209
    const-string v6, "%s_%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v24, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 211
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mContext:Landroid/content/Context;

    move-object/from16 p2, v0

    .end local p2
    check-cast p2, Landroid/app/Activity;

    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/adapter/AbstractMpListAdapter;->width:I

    .line 217
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mHasCheck:Z

    move v6, v0

    if-nez v6, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v6

    const/16 v7, 0x1a

    if-eq v6, v7, :cond_e

    .line 219
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 220
    invoke-virtual {v5, v11}, Lcom/android/music/list/view/MpView;->setTag(Ljava/lang/Object;)V

    .line 221
    invoke-virtual/range {v23 .. v24}, Lcom/android/music/list/view/MpView;->setTag(Ljava/lang/Object;)V

    .line 223
    invoke-virtual {v5, v11}, Lcom/android/music/list/view/MpView;->SetIdIndex(Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, v23

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/MpView;->SetIdIndex(Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v8

    const-string v9, "content://media/external/audio/albumart/"

    move-object/from16 v7, p3

    invoke-virtual/range {v6 .. v11}, Lcom/android/music/list/data/MpImageDataBuffer;->GetImage(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mHeight:I

    move/from16 v17, v0

    move-object v12, v5

    invoke-virtual/range {v12 .. v17}, Lcom/android/music/list/view/MpView;->SetBackImageBitmap(Landroid/graphics/Bitmap;IIII)V

    .line 239
    new-instance v20, Lcom/android/music/list/adapter/AbstractMpListAdapter$ImageClickListener;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v28

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/music/list/adapter/AbstractMpListAdapter$ImageClickListener;-><init>(Lcom/android/music/list/adapter/AbstractMpListAdapter;ILcom/android/music/list/view/MpView;)V

    .line 240
    .local v20, clickEvent:Lcom/android/music/list/adapter/AbstractMpListAdapter$ImageClickListener;
    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/MpView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 260
    .end local v20           #clickEvent:Lcom/android/music/list/adapter/AbstractMpListAdapter$ImageClickListener;
    :goto_1
    const-string v6, "%s_%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v30, v7, v8

    const/4 v8, 0x1

    aput-object v25, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    .line 261
    .local v32, tag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListType:I

    move v6, v0

    const/16 v7, 0xd

    if-eq v6, v7, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListType:I

    move v6, v0

    const/16 v7, 0x9

    if-ne v6, v7, :cond_c

    .line 262
    :cond_b
    const-string v6, "%s_%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v32, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    .line 265
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mHasCheck:Z

    move v6, v0

    if-nez v6, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v6, v0

    sget v6, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    if-eqz v6, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v6, v0

    sget v6, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v7

    if-ne v6, v7, :cond_d

    sget-object v6, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    move-object v0, v6

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_d

    .line 268
    const-string v6, "MPLIST"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Play handler bindView icon = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v8, v0

    sget v8, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v6, v0

    sget v6, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    invoke-virtual {v5, v6}, Lcom/android/music/list/view/MpView;->SetIcon(I)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v6, v0

    sget-wide v6, Lcom/android/music/list/view/AbstractMpListView;->position:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v8, v0

    sget-wide v8, Lcom/android/music/list/view/AbstractMpListView;->max:J

    move-object/from16 v0, v23

    move-wide v1, v6

    move-wide v3, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/music/list/view/MpView;->SetProgressValue(JJ)V

    .line 275
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mHasCheck:Z

    move v6, v0

    if-eqz v6, :cond_0

    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    move-object v6, v0

    array-length v6, v6

    move v0, v6

    move/from16 v1, v28

    if-le v0, v1, :cond_0

    .line 276
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v29

    .line 277
    .restart local v29       #position:I
    const v6, 0x7f0c0056

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    .line 280
    .restart local v19       #check:Landroid/widget/CheckBox;
    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    move-object v6, v0

    aget-boolean v6, v6, v29

    move-object/from16 v0, v19

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 284
    new-instance v6, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;

    move-object v0, v6

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;-><init>(Lcom/android/music/list/adapter/AbstractMpListAdapter;I)V

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 244
    .end local v19           #check:Landroid/widget/CheckBox;
    .end local v29           #position:I
    .end local v32           #tag:Ljava/lang/String;
    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/music/list/view/MpView;->setTag(Ljava/lang/Object;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v14

    const-string v15, "content://media/external/audio/albumart/"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v13, p3

    move-object/from16 v16, v10

    invoke-virtual/range {v12 .. v17}, Lcom/android/music/list/data/MpImageDataBuffer;->GetImage(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mHeight:I

    move/from16 v17, v0

    move-object v12, v5

    invoke-virtual/range {v12 .. v17}, Lcom/android/music/list/view/MpView;->SetBackImageBitmap(Landroid/graphics/Bitmap;IIII)V

    goto/16 :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 293
    const-string v5, "_id"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 295
    .local v0, _id:I
    const/16 v5, -0x3e7

    if-ne v0, v5, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    if-nez v5, :cond_0

    .line 296
    new-instance v5, Landroid/view/View;

    iget-object v6, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5, p0}, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->getSelectAllView(Landroid/view/View;Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;)Landroid/view/View;

    move-result-object v5

    .line 316
    :goto_0
    return-object v5

    .line 299
    :cond_0
    const/16 v5, -0x3e5

    if-ne v0, v5, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    sub-int/2addr v6, v9

    if-ne v5, v6, :cond_1

    .line 300
    iget-object v5, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mColumns:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 301
    .local v4, title:Ljava/lang/String;
    new-instance v5, Landroid/view/View;

    iget-object v6, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5, v4}, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->getNumberOfMusicsView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    goto :goto_0

    .line 304
    .end local v4           #title:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030017

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 305
    .local v2, myView:Landroid/view/View;
    iget-boolean v5, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mHasCheck:Z

    if-eqz v5, :cond_3

    .line 306
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 307
    .local v3, position:I
    iget-object v5, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    array-length v5, v5

    if-gt v5, v3, :cond_2

    move-object v5, v2

    goto :goto_0

    .line 308
    :cond_2
    const v5, 0x7f0c0056

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 309
    .local v1, check:Landroid/widget/CheckBox;
    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 310
    iget-object v5, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    aget-boolean v5, v5, v3

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 312
    new-instance v5, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;

    invoke-direct {v5, p0, v3}, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;-><init>(Lcom/android/music/list/adapter/AbstractMpListAdapter;I)V

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    .end local v1           #check:Landroid/widget/CheckBox;
    .end local v3           #position:I
    :cond_3
    invoke-virtual {v2, v9}, Landroid/view/View;->setId(I)V

    move-object v5, v2

    .line 316
    goto :goto_0
.end method

.method public reset(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 325
    invoke-virtual {p0, p1}, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 326
    return-void
.end method

.method public setColumn([Ljava/lang/String;)V
    .locals 0
    .parameter "columns"

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mColumns:[Ljava/lang/String;

    .line 322
    return-void
.end method
