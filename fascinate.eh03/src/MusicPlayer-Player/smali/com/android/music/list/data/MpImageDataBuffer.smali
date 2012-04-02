.class public Lcom/android/music/list/data/MpImageDataBuffer;
.super Ljava/lang/Object;
.source "MpImageDataBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;,
        Lcom/android/music/list/data/MpImageDataBuffer$_threadStop;,
        Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;,
        Lcom/android/music/list/data/MpImageDataBuffer$MpItem;
    }
.end annotation


# static fields
.field static FilenameBitmap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field CallImage:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/music/list/data/MpImageDataBuffer$MpItem;",
            ">;"
        }
    .end annotation
.end field

.field CurrentImage:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/music/list/data/MpImageDataBuffer$MpItem;",
            ">;"
        }
    .end annotation
.end field

.field DeleteFile:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final LOADINDEX:I

.field LoadFile:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field LoadFileThread:Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;

.field final PageItemMax:I

.field private final TAG:Ljava/lang/String;

.field final TotalPageItemMax:I

.field context:Landroid/content/Context;

.field currentImageIndex:I

.field defaultImage:[Landroid/graphics/Bitmap;

.field handler:Landroid/os/Handler;

.field mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field mDB:Lcom/android/music/common/data/MusicDB;

.field mHeight:I

.field mResolver:Landroid/content/ContentResolver;

.field mWidth:I

.field threadStop:Lcom/android/music/list/data/MpImageDataBuffer$_threadStop;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/android/music/list/data/MpImageDataBuffer;->FilenameBitmap:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;Landroid/os/Handler;II)V
    .locals 4
    .parameter "context"
    .parameter "defaultImage"
    .parameter "mBitmapOptions"
    .parameter "mResolver"
    .parameter "handler"
    .parameter "w"
    .parameter "h"

    .prologue
    const/16 v3, 0x74

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/music/list/data/MpImageDataBuffer;->LOADINDEX:I

    .line 31
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/music/list/data/MpImageDataBuffer;->PageItemMax:I

    .line 32
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/music/list/data/MpImageDataBuffer;->TotalPageItemMax:I

    .line 33
    const-string v0, "MpImageDataBuffer"

    iput-object v0, p0, Lcom/android/music/list/data/MpImageDataBuffer;->TAG:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/android/music/list/data/MpImageDataBuffer;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 54
    iput-object v1, p0, Lcom/android/music/list/data/MpImageDataBuffer;->mResolver:Landroid/content/ContentResolver;

    .line 55
    iput v3, p0, Lcom/android/music/list/data/MpImageDataBuffer;->mWidth:I

    iput v3, p0, Lcom/android/music/list/data/MpImageDataBuffer;->mHeight:I

    .line 57
    iput-object v1, p0, Lcom/android/music/list/data/MpImageDataBuffer;->CurrentImage:Ljava/util/LinkedList;

    .line 58
    iput-object v1, p0, Lcom/android/music/list/data/MpImageDataBuffer;->CallImage:Ljava/util/LinkedList;

    .line 59
    iput-object v1, p0, Lcom/android/music/list/data/MpImageDataBuffer;->LoadFile:Ljava/util/LinkedList;

    .line 60
    iput-object v1, p0, Lcom/android/music/list/data/MpImageDataBuffer;->DeleteFile:Ljava/util/LinkedList;

    .line 64
    iput-object v1, p0, Lcom/android/music/list/data/MpImageDataBuffer;->defaultImage:[Landroid/graphics/Bitmap;

    .line 65
    iput-object v1, p0, Lcom/android/music/list/data/MpImageDataBuffer;->context:Landroid/content/Context;

    .line 66
    iput-object v1, p0, Lcom/android/music/list/data/MpImageDataBuffer;->LoadFileThread:Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;

    .line 67
    iput-object v1, p0, Lcom/android/music/list/data/MpImageDataBuffer;->handler:Landroid/os/Handler;

    .line 68
    iput-object v1, p0, Lcom/android/music/list/data/MpImageDataBuffer;->threadStop:Lcom/android/music/list/data/MpImageDataBuffer$_threadStop;

    .line 69
    iput-object v1, p0, Lcom/android/music/list/data/MpImageDataBuffer;->mDB:Lcom/android/music/common/data/MusicDB;

    .line 70
    iput v2, p0, Lcom/android/music/list/data/MpImageDataBuffer;->currentImageIndex:I

    .line 77
    sget-object v0, Lcom/android/music/list/data/MpImageDataBuffer;->FilenameBitmap:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/music/list/data/MpImageDataBuffer;->FilenameBitmap:Ljava/util/Hashtable;

    .line 79
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/music/list/data/MpImageDataBuffer;->LoadFile:Ljava/util/LinkedList;

    .line 80
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/music/list/data/MpImageDataBuffer;->DeleteFile:Ljava/util/LinkedList;

    .line 81
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/music/list/data/MpImageDataBuffer;->CallImage:Ljava/util/LinkedList;

    .line 82
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/music/list/data/MpImageDataBuffer;->CurrentImage:Ljava/util/LinkedList;

    .line 83
    iput-object p1, p0, Lcom/android/music/list/data/MpImageDataBuffer;->context:Landroid/content/Context;

    .line 84
    iput-object p5, p0, Lcom/android/music/list/data/MpImageDataBuffer;->handler:Landroid/os/Handler;

    .line 85
    iput-object p2, p0, Lcom/android/music/list/data/MpImageDataBuffer;->defaultImage:[Landroid/graphics/Bitmap;

    .line 86
    invoke-static {p1}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/data/MpImageDataBuffer;->mDB:Lcom/android/music/common/data/MusicDB;

    .line 87
    iput-object p3, p0, Lcom/android/music/list/data/MpImageDataBuffer;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 88
    iput-object p4, p0, Lcom/android/music/list/data/MpImageDataBuffer;->mResolver:Landroid/content/ContentResolver;

    .line 89
    new-instance v0, Lcom/android/music/list/data/MpImageDataBuffer$_threadStop;

    invoke-direct {v0, p0}, Lcom/android/music/list/data/MpImageDataBuffer$_threadStop;-><init>(Lcom/android/music/list/data/MpImageDataBuffer;)V

    iput-object v0, p0, Lcom/android/music/list/data/MpImageDataBuffer;->threadStop:Lcom/android/music/list/data/MpImageDataBuffer$_threadStop;

    .line 90
    iget-object v0, p0, Lcom/android/music/list/data/MpImageDataBuffer;->threadStop:Lcom/android/music/list/data/MpImageDataBuffer$_threadStop;

    iput-boolean v2, v0, Lcom/android/music/list/data/MpImageDataBuffer$_threadStop;->stop:Z

    .line 91
    iput p6, p0, Lcom/android/music/list/data/MpImageDataBuffer;->mWidth:I

    .line 92
    iput p7, p0, Lcom/android/music/list/data/MpImageDataBuffer;->mHeight:I

    .line 93
    return-void
.end method


# virtual methods
.method public ClearLoadImage()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/music/list/data/MpImageDataBuffer;->CallImage:Ljava/util/LinkedList;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/android/music/list/data/MpImageDataBuffer;->CallImage:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 99
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iget-object v0, p0, Lcom/android/music/list/data/MpImageDataBuffer;->LoadFile:Ljava/util/LinkedList;

    monitor-enter v0

    .line 101
    :try_start_1
    iget-object v1, p0, Lcom/android/music/list/data/MpImageDataBuffer;->LoadFile:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 102
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    return-void

    .line 99
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 102
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public GetDefaultImage(Landroid/database/Cursor;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, tempimage:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/music/list/data/MpImageDataBuffer;->defaultImage:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    move-object v1, v3

    .line 129
    :goto_0
    return-object v1

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/android/music/list/data/MpImageDataBuffer;->defaultImage:[Landroid/graphics/Bitmap;

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    rem-int/lit8 v2, v2, 0x5

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    move-object v1, v3

    .line 127
    goto :goto_0

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/android/music/list/data/MpImageDataBuffer;->defaultImage:[Landroid/graphics/Bitmap;

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    rem-int/lit8 v2, v2, 0x5

    aget-object v0, v1, v2

    move-object v1, v0

    .line 129
    goto :goto_0
.end method

.method public GetImage(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "c"
    .parameter "listType"
    .parameter "path"
    .parameter "albumId"
    .parameter "tag"

    .prologue
    .line 235
    const/4 v5, 0x0

    .line 237
    .local v5, temp:Landroid/graphics/Bitmap;
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 239
    .local v2, index:I
    sget-object v7, Lcom/android/music/list/data/MpImageDataBuffer;->FilenameBitmap:Ljava/util/Hashtable;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;

    .line 242
    .local v6, tempItem:Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;
    if-nez v6, :cond_3

    .line 245
    const/4 v7, 0x2

    if-eq v7, p2, :cond_0

    const/16 v7, 0x19

    if-ne v7, p2, :cond_1

    .line 246
    :cond_0
    iget-object v7, p0, Lcom/android/music/list/data/MpImageDataBuffer;->defaultImage:[Landroid/graphics/Bitmap;

    const/4 v8, 0x5

    aget-object v5, v7, v8

    .line 250
    :goto_0
    new-instance v3, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;

    invoke-direct {v3, p0}, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;-><init>(Lcom/android/music/list/data/MpImageDataBuffer;)V

    .line 251
    .local v3, item:Lcom/android/music/list/data/MpImageDataBuffer$MpItem;
    invoke-static {p2, p1}, Lcom/android/music/common/util/ListType;->getTagIdString(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->dbid:Ljava/lang/String;

    .line 252
    iput-object p3, v3, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->Path:Ljava/lang/String;

    .line 253
    iput-object p4, v3, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->numberID:Ljava/lang/String;

    .line 254
    iput-object p5, v3, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->Tag:Ljava/lang/String;

    .line 255
    iget-object v7, p0, Lcom/android/music/list/data/MpImageDataBuffer;->CallImage:Ljava/util/LinkedList;

    monitor-enter v7

    .line 257
    :try_start_0
    iget-object v8, p0, Lcom/android/music/list/data/MpImageDataBuffer;->CallImage:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v4

    .line 259
    .local v4, size:I
    const/16 v8, 0x3c

    if-le v4, v8, :cond_2

    .line 260
    const/4 v1, 0x0

    .local v1, count:I
    :goto_1
    const/16 v8, 0x3c

    sub-int v8, v4, v8

    if-ge v1, v8, :cond_2

    .line 262
    iget-object v8, p0, Lcom/android/music/list/data/MpImageDataBuffer;->CallImage:Ljava/util/LinkedList;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 265
    :try_start_1
    iget-object v9, p0, Lcom/android/music/list/data/MpImageDataBuffer;->CallImage:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 266
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 248
    .end local v1           #count:I
    .end local v3           #item:Lcom/android/music/list/data/MpImageDataBuffer$MpItem;
    .end local v4           #size:I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/music/list/data/MpImageDataBuffer;->GetDefaultImage(Landroid/database/Cursor;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 266
    .restart local v1       #count:I
    .restart local v3       #item:Lcom/android/music/list/data/MpImageDataBuffer$MpItem;
    .restart local v4       #size:I
    :catchall_0
    move-exception v9

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v9

    .line 269
    .end local v1           #count:I
    .end local v4           #size:I
    :catchall_1
    move-exception v8

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8

    .line 268
    .restart local v4       #size:I
    :cond_2
    :try_start_4
    iget-object v8, p0, Lcom/android/music/list/data/MpImageDataBuffer;->CallImage:Ljava/util/LinkedList;

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 269
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 312
    .end local v3           #item:Lcom/android/music/list/data/MpImageDataBuffer$MpItem;
    .end local v4           #size:I
    :goto_2
    iget-object v7, p0, Lcom/android/music/list/data/MpImageDataBuffer;->LoadFile:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 314
    .local v0, LoadFileCount:I
    const/16 v7, 0x50

    if-le v0, v7, :cond_4

    .line 316
    iget-object v7, p0, Lcom/android/music/list/data/MpImageDataBuffer;->LoadFile:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    const/16 v8, 0x50

    sub-int v0, v7, v8

    .line 317
    :goto_3
    if-lez v0, :cond_4

    .line 319
    iget-object v7, p0, Lcom/android/music/list/data/MpImageDataBuffer;->LoadFile:Ljava/util/LinkedList;

    monitor-enter v7

    .line 321
    :try_start_5
    iget-object v8, p0, Lcom/android/music/list/data/MpImageDataBuffer;->LoadFile:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 322
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 317
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 274
    .end local v0           #LoadFileCount:I
    :cond_3
    iget-object v5, v6, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;->IdBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 322
    .restart local v0       #LoadFileCount:I
    :catchall_2
    move-exception v8

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v8

    .line 326
    :cond_4
    iget-object v7, p0, Lcom/android/music/list/data/MpImageDataBuffer;->LoadFileThread:Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/music/list/data/MpImageDataBuffer;->LoadFileThread:Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;

    invoke-virtual {v7}, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->getState()Ljava/lang/Thread$State;

    move-result-object v7

    sget-object v8, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v7, v8, :cond_5

    iget-object v7, p0, Lcom/android/music/list/data/MpImageDataBuffer;->LoadFileThread:Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;

    invoke-virtual {v7}, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->getState()Ljava/lang/Thread$State;

    move-result-object v7

    sget-object v8, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v7, v8, :cond_6

    .line 330
    :cond_5
    new-instance v7, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;

    invoke-direct {v7, p0}, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;-><init>(Lcom/android/music/list/data/MpImageDataBuffer;)V

    iput-object v7, p0, Lcom/android/music/list/data/MpImageDataBuffer;->LoadFileThread:Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;

    .line 331
    iget-object v7, p0, Lcom/android/music/list/data/MpImageDataBuffer;->LoadFileThread:Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->setPriority(I)V

    .line 332
    iget-object v7, p0, Lcom/android/music/list/data/MpImageDataBuffer;->LoadFileThread:Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;

    invoke-virtual {v7}, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->start()V

    .line 335
    :cond_6
    return-object v5
.end method

.method public IsValueList(Ljava/util/LinkedList;Ljava/lang/String;)I
    .locals 4
    .parameter
    .parameter "svalue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 151
    .local v0, i:I
    const/4 v1, 0x0

    .line 153
    .local v1, value:Ljava/lang/String;
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 155
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #value:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 156
    .restart local v1       #value:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v2, v0

    .line 162
    :goto_1
    return v2

    .line 153
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public IsValueMpItem(Ljava/util/LinkedList;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter
    .parameter "pvalue"
    .parameter "svalue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/music/list/data/MpImageDataBuffer$MpItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/music/list/data/MpImageDataBuffer$MpItem;>;"
    const/4 v3, 0x1

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, i:I
    const/4 v1, 0x0

    .line 136
    .local v1, value:Lcom/android/music/list/data/MpImageDataBuffer$MpItem;
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 138
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #value:Lcom/android/music/list/data/MpImageDataBuffer$MpItem;
    check-cast v1, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;

    .line 139
    .restart local v1       #value:Lcom/android/music/list/data/MpImageDataBuffer$MpItem;
    if-eqz v1, :cond_0

    .line 141
    iget-object v2, v1, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->numberID:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->Path:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v0

    .line 145
    :goto_1
    return v2

    .line 136
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method
