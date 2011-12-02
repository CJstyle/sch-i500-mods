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

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/music/list/adapter/AbstractMpListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 32
    iput-object v2, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mContext:Landroid/content/Context;

    .line 33
    iput-object v2, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mGestureDetector:Landroid/view/GestureDetector;

    .line 34
    iput-object v2, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mGestureSweepListener:Lcom/android/music/list/adapter/AbstractMpListAdapter$OnGestureListener;

    .line 35
    const/16 v0, 0x74

    iput v0, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mWidth:I

    .line 36
    const/16 v0, 0x75

    iput v0, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mHeight:I

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->TAG:Ljava/lang/String;

    .line 38
    const-string v0, "TimeCheck"

    iput-object v0, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->TIMECHECK:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mContext:Landroid/content/Context;

    .line 46
    iput-object p4, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mColumns:[Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/graphics/Bitmap;

    sput-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    .line 51
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aput-object v2, v0, v4

    .line 52
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aput-object v2, v0, v3

    .line 53
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aput-object v2, v0, v5

    .line 54
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aput-object v2, v0, v6

    .line 55
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x4

    aput-object v2, v0, v1

    .line 56
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x5

    aput-object v2, v0, v1

    .line 58
    :cond_0
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    if-nez v0, :cond_1

    .line 59
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200bc

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v4

    .line 60
    :cond_1
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v3

    if-nez v0, :cond_2

    .line 61
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200bd

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v3

    .line 62
    :cond_2
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v5

    if-nez v0, :cond_3

    .line 63
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200be

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v5

    .line 64
    :cond_3
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v6

    if-nez v0, :cond_4

    .line 65
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200bf

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v6

    .line 66
    :cond_4
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    if-nez v0, :cond_5

    .line 67
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200c0

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 68
    :cond_5
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    if-nez v0, :cond_6

    .line 69
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02000d

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 71
    :cond_6
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    if-eqz v0, :cond_7

    .line 73
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mWidth:I

    .line 74
    sget-object v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mHeight:I

    .line 76
    :cond_7
    new-instance v0, Lcom/android/music/list/data/MpImageDataBuffer;

    sget-object v2, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v4, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->GetHandler()Landroid/os/Handler;

    move-result-object v5

    iget v6, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mWidth:I

    iget v7, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mHeight:I

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/music/list/data/MpImageDataBuffer;-><init>(Landroid/content/Context;[Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;Landroid/os/Handler;II)V

    iput-object v0, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    .line 77
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

    .line 87
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

    iget-object v1, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->MyTag:Ljava/lang/String;

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

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    if-eqz v8, :cond_0

    .line 100
    iget v0, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mListType:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mListType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->cursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mListType:I

    invoke-static {v2}, Lcom/android/music/common/util/ListType;->getAudioIdColumn(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 102
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

    .line 104
    .end local v6           #audioId:I
    :cond_3
    invoke-virtual {v8, p4}, Lcom/android/music/list/view/AbstractMpListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/music/list/view/MpView;

    .line 105
    .local v7, imageView:Lcom/android/music/list/view/MpView;
    if-nez v7, :cond_4

    .line 107
    const-string v0, "Tag"

    const-string v0, "Mplist twoline bineview imageView = null"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_4
    iget-object v9, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    monitor-enter v9

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    iget-object v1, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->cursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

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

    .line 113
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-virtual {v7}, Lcom/android/music/list/view/MpView;->invalidate()V

    goto :goto_0

    .line 113
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
    .line 121
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v28

    .line 122
    .local v28, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/music/common/util/ListType;->getTagIdString(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v25

    .line 124
    .local v25, itemid:Ljava/lang/String;
    const-string v5, "-999"

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    if-nez v28, :cond_1

    .line 283
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 127
    .restart local p2
    :cond_1
    if-eqz p1, :cond_0

    .line 130
    const v5, 0x7f0c0049

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/view/MpView;

    .line 131
    .local v4, imageView:Lcom/android/music/list/view/MpView;
    const v5, 0x7f0c004b

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 132
    .local v26, mainTextView:Landroid/widget/TextView;
    const v5, 0x7f0c004d

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 133
    .local v31, subTextView:Landroid/widget/TextView;
    const v5, 0x7f0c0033

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/android/music/list/view/MpView;

    .line 134
    .local v23, imageBackView:Lcom/android/music/list/view/MpView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mColumns:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x2

    aget-object v5, v5, v6

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 135
    .local v9, albumId:Ljava/lang/String;
    const/16 v17, 0x0

    .line 136
    .local v17, audioId:I
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->FEATURE_MUSIC_PLAYLIST()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v5

    const/16 v6, 0x1a

    if-ne v5, v6, :cond_6

    .line 138
    :cond_3
    const-string v5, "_data"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 139
    .local v20, data:Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v21, file:Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpImageDataBuffer;->GetDefaultImage(Landroid/database/Cursor;)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mWidth:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mHeight:I

    move v9, v0

    .end local v9           #albumId:Ljava/lang/String;
    invoke-virtual/range {v4 .. v9}, Lcom/android/music/list/view/MpView;->SetBackImageBitmap(Landroid/graphics/Bitmap;IIII)V

    .line 142
    invoke-static/range {v20 .. v20}, Lcom/android/music/common/util/ListUtil;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x205005b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    move-object/from16 v0, v26

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    const-string v5, "<unknown>"

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x205005b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    move-object/from16 v0, v31

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mHasCheck:Z

    move v5, v0

    if-eqz v5, :cond_4

    if-eqz p1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mChecked:[Z

    move-object v5, v0

    array-length v5, v5

    move v0, v5

    move/from16 v1, v28

    if-le v0, v1, :cond_4

    .line 147
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v29

    .line 148
    .local v29, position:I
    const v5, 0x7f0c0054

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    .line 149
    .local v18, check:Landroid/widget/CheckBox;
    const v5, 0x7f0c0053

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    .line 150
    .local v22, image:Landroid/widget/ImageView;
    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 151
    const/16 v5, 0x8

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mChecked:[Z

    move-object v5, v0

    aget-boolean v5, v5, v29

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 153
    new-instance v5, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;

    move-object v0, v5

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;-><init>(Lcom/android/music/list/adapter/AbstractMpListAdapter;I)V

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    .end local v18           #check:Landroid/widget/CheckBox;
    .end local v22           #image:Landroid/widget/ImageView;
    .end local v29           #position:I
    :cond_4
    const/4 v5, 0x2

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    goto/16 :goto_0

    .line 176
    .restart local v9       #albumId:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 177
    const v5, 0x207000e

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 178
    const v5, 0x207000f

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 179
    const/4 v5, 0x1

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 183
    .end local v20           #data:Ljava/lang/String;
    .end local v21           #file:Ljava/io/File;
    :cond_6
    const-string v5, "MpList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mplist albumId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " _id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mColumns:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mColumns:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    const-string v30, ""

    .line 189
    .local v30, subTag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const-string v6, "-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v30, v5, v6

    .line 193
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "view_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 194
    .local v27, myViewTag:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 195
    .local v10, imageViewTag:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TagBack"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 197
    .local v24, imageBackViewTag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mListType:I

    move v5, v0

    const/16 v6, 0xd

    if-eq v5, v6, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mListType:I

    move v5, v0

    const/16 v6, 0x9

    if-ne v5, v6, :cond_9

    .line 198
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mListType:I

    move v5, v0

    invoke-static {v5}, Lcom/android/music/common/util/ListType;->getAudioIdColumn(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 199
    const-string v5, "%s_%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v27, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 200
    const-string v5, "%s_%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v10, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 201
    const-string v5, "%s_%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v24, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 203
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mContext:Landroid/content/Context;

    move-object/from16 p2, v0

    .end local p2
    check-cast p2, Landroid/app/Activity;

    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->width:I

    .line 209
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mHasCheck:Z

    move v5, v0

    if-nez v5, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v5

    const/16 v6, 0x1a

    if-eq v5, v6, :cond_d

    .line 211
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 212
    invoke-virtual {v4, v10}, Lcom/android/music/list/view/MpView;->setTag(Ljava/lang/Object;)V

    .line 213
    invoke-virtual/range {v23 .. v24}, Lcom/android/music/list/view/MpView;->setTag(Ljava/lang/Object;)V

    .line 215
    invoke-virtual {v4, v10}, Lcom/android/music/list/view/MpView;->SetIdIndex(Ljava/lang/String;)V

    .line 216
    move-object/from16 v0, v23

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/MpView;->SetIdIndex(Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v7

    const-string v8, "content://media/external/audio/albumart/"

    move-object/from16 v6, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/music/list/data/MpImageDataBuffer;->GetImage(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mWidth:I

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mHeight:I

    move/from16 v16, v0

    move-object v11, v4

    invoke-virtual/range {v11 .. v16}, Lcom/android/music/list/view/MpView;->SetBackImageBitmap(Landroid/graphics/Bitmap;IIII)V

    .line 231
    new-instance v19, Lcom/android/music/list/adapter/AbstractMpListAdapter$ImageClickListener;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v28

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/music/list/adapter/AbstractMpListAdapter$ImageClickListener;-><init>(Lcom/android/music/list/adapter/AbstractMpListAdapter;ILcom/android/music/list/view/MpView;)V

    .line 232
    .local v19, clickEvent:Lcom/android/music/list/adapter/AbstractMpListAdapter$ImageClickListener;
    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/MpView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 252
    .end local v19           #clickEvent:Lcom/android/music/list/adapter/AbstractMpListAdapter$ImageClickListener;
    :goto_1
    const-string v5, "%s_%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v30, v6, v7

    const/4 v7, 0x1

    aput-object v25, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    .line 253
    .local v32, tag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mListType:I

    move v5, v0

    const/16 v6, 0xd

    if-eq v5, v6, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mListType:I

    move v5, v0

    const/16 v6, 0x9

    if-ne v5, v6, :cond_b

    .line 254
    :cond_a
    const-string v5, "%s_%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v32, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    .line 257
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mHasCheck:Z

    move v5, v0

    if-nez v5, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v5, v0

    sget v5, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v5, v0

    sget v5, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v6

    if-ne v5, v6, :cond_c

    sget-object v5, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_c

    .line 260
    const-string v5, "MPLIST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Play handler bindView icon = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v7, v0

    sget v7, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v5, v0

    sget v5, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    invoke-virtual {v4, v5}, Lcom/android/music/list/view/MpView;->SetIcon(I)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v5, v0

    sget v5, Lcom/android/music/list/view/AbstractMpListView;->position:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v6, v0

    sget v6, Lcom/android/music/list/view/AbstractMpListView;->max:I

    move-object/from16 v0, v23

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/music/list/view/MpView;->SetProgressValue(II)V

    .line 269
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mHasCheck:Z

    move v5, v0

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mChecked:[Z

    move-object v5, v0

    array-length v5, v5

    move v0, v5

    move/from16 v1, v28

    if-le v0, v1, :cond_0

    .line 270
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v29

    .line 271
    .restart local v29       #position:I
    const v5, 0x7f0c0054

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    .line 272
    .restart local v18       #check:Landroid/widget/CheckBox;
    const v5, 0x7f0c0053

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    .line 274
    .restart local v22       #image:Landroid/widget/ImageView;
    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 275
    const/16 v5, 0x8

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mChecked:[Z

    move-object v5, v0

    aget-boolean v5, v5, v29

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 278
    new-instance v5, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;

    move-object v0, v5

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;-><init>(Lcom/android/music/list/adapter/AbstractMpListAdapter;I)V

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 236
    .end local v18           #check:Landroid/widget/CheckBox;
    .end local v22           #image:Landroid/widget/ImageView;
    .end local v29           #position:I
    .end local v32           #tag:Ljava/lang/String;
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/music/list/view/MpView;->setTag(Ljava/lang/Object;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v13

    const-string v14, "content://media/external/audio/albumart/"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v12, p3

    move-object v15, v9

    invoke-virtual/range {v11 .. v16}, Lcom/android/music/list/data/MpImageDataBuffer;->GetImage(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mWidth:I

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mHeight:I

    move/from16 v16, v0

    move-object v11, v4

    invoke-virtual/range {v11 .. v16}, Lcom/android/music/list/view/MpView;->SetBackImageBitmap(Landroid/graphics/Bitmap;IIII)V

    goto/16 :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 288
    const-string v3, "_id"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v4, -0x3e7

    if-ne v3, v4, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-nez v3, :cond_0

    .line 289
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3, p0}, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->getSelectAllView(Landroid/view/View;Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;)Landroid/view/View;

    move-result-object v3

    .line 302
    :goto_0
    return-object v3

    .line 291
    :cond_0
    iget-object v3, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030016

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 292
    .local v1, myView:Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mHasCheck:Z

    if-eqz v3, :cond_2

    .line 293
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 294
    .local v2, position:I
    iget-object v3, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mChecked:[Z

    array-length v3, v3

    if-gt v3, v2, :cond_1

    move-object v3, v1

    goto :goto_0

    .line 295
    :cond_1
    const v3, 0x7f0c0054

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 296
    .local v0, check:Landroid/widget/CheckBox;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 297
    iget-object v3, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mChecked:[Z

    aget-boolean v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 299
    new-instance v3, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;

    invoke-direct {v3, p0, v2}, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;-><init>(Lcom/android/music/list/adapter/AbstractMpListAdapter;I)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    .end local v0           #check:Landroid/widget/CheckBox;
    .end local v2           #position:I
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    move-object v3, v1

    .line 302
    goto :goto_0
.end method

.method public reset(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 317
    return-void
.end method

.method public setColumn([Ljava/lang/String;)V
    .locals 0
    .parameter "columns"

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/music/list/adapter/MpListThumnailTwoLineAdapter;->mColumns:[Ljava/lang/String;

    .line 313
    return-void
.end method
