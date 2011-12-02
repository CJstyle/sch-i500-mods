.class public abstract Lcom/android/music/list/adapter/AbstractMpListAdapter;
.super Landroid/widget/CursorAdapter;
.source "AbstractMpListAdapter.java"

# interfaces
.implements Lcom/android/music/list/interfaces/MpSetViewInterface;
.implements Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/list/adapter/AbstractMpListAdapter$OnGestureListener;,
        Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;,
        Lcom/android/music/list/adapter/AbstractMpListAdapter$ImageClickListener;,
        Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;
    }
.end annotation


# static fields
.field protected static final CHECKALL:I = -0x3e7

.field protected static final CREATELIST:I = -0x3e6

.field public static defaultimage:[Landroid/graphics/Bitmap;

.field protected static mPressId:I


# instance fields
.field public final MAJOR_MOVE:I

.field public MyTag:Ljava/lang/String;

.field protected cursor:Landroid/database/Cursor;

.field protected final mAlbumArtUri:Ljava/lang/String;

.field protected final mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field protected mChecked:[Z

.field protected mCheckedCount:I

.field protected mColumns:[Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mEnableRequery:Z

.field public mGestureListener:Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;

.field protected mHasCheck:Z

.field public mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mListType:I

.field protected mListView:Lcom/android/music/list/view/AbstractMpListView;

.field private mRequeryCalled:Z

.field protected mResolver:Landroid/content/ContentResolver;

.field protected mSelectallEnable:Z

.field public tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 5
    .parameter "context"
    .parameter "c"
    .parameter "hasCheck"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 71
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 39
    const/16 v2, 0x64

    iput v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->MAJOR_MOVE:I

    .line 43
    const-string v2, "content://media/external/audio/albumart"

    iput-object v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mAlbumArtUri:Ljava/lang/String;

    .line 44
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 50
    iput-object v3, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    .line 52
    iput-object v3, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->MyTag:Ljava/lang/String;

    .line 55
    iput-object v3, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 56
    iput v4, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->width:I

    .line 61
    iput-object v3, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mGestureListener:Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;

    .line 72
    iput-object p1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->cursor:Landroid/database/Cursor;

    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 76
    iput-boolean p3, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mHasCheck:Z

    .line 77
    iput v4, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCheckedCount:I

    .line 80
    if-eqz p3, :cond_0

    .line 81
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 82
    .local v0, count:I
    new-array v2, v0, [Z

    iput-object v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    .line 83
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 84
    iget-object v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    aput-boolean v4, v2, v1

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    return-void
.end method


# virtual methods
.method public GetHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lcom/android/music/list/adapter/AbstractMpListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/music/list/adapter/AbstractMpListAdapter$1;-><init>(Lcom/android/music/list/adapter/AbstractMpListAdapter;)V

    .line 214
    .local v0, handler:Landroid/os/Handler;
    return-object v0
.end method

.method protected abstract SetImageViewRedraw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public getChecked()[Z
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    return-object v0
.end method

.method public getCheckedBoxCount()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCheckedCount:I

    return v0
.end method

.method protected getCreateListView(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter "view"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 425
    const/16 v0, -0x3e6

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 426
    return-object p1
.end method

.method public getIndexView()Lcom/sec/android/touchwiz/widget/TwIndexScrollView;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    return-object v0
.end method

.method protected getSelectAllView(Landroid/view/View;Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;)Landroid/view/View;
    .locals 6
    .parameter "view"
    .parameter "adapter"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 394
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030014

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 395
    const v1, 0x7f0c004e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 397
    .local v0, allcheck:Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    aget-boolean v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 400
    invoke-virtual {p0}, Lcom/android/music/list/adapter/AbstractMpListAdapter;->getCount()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 401
    iput-boolean v4, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mSelectallEnable:Z

    .line 402
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 417
    :goto_0
    const/16 v1, -0x3e7

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 418
    return-object p1

    .line 404
    :cond_0
    iput-boolean v5, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mSelectallEnable:Z

    .line 405
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 406
    new-instance v1, Lcom/android/music/list/adapter/AbstractMpListAdapter$4;

    invoke-direct {v1, p0, p2}, Lcom/android/music/list/adapter/AbstractMpListAdapter$4;-><init>(Lcom/android/music/list/adapter/AbstractMpListAdapter;Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v8, -0x3e6

    const/16 v7, -0x3e7

    const-string v10, "com.android.music"

    const-string v9, "activity"

    .line 432
    :try_start_0
    iget-object v4, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->cursor:Landroid/database/Cursor;

    invoke-interface {v4, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 433
    iget-object v4, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->cursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->cursor:Landroid/database/Cursor;

    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 434
    .local v2, id:I
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getId()I
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    move v3, v4

    .line 435
    .local v3, viewId:I
    :goto_0
    if-eq v2, v7, :cond_3

    if-eq v2, v8, :cond_3

    if-eqz p1, :cond_3

    if-eq v3, v7, :cond_0

    if-ne v3, v8, :cond_3

    .line 436
    :cond_0
    const/4 p2, 0x0

    .line 469
    .end local v2           #id:I
    .end local v3           #viewId:I
    :cond_1
    :goto_1
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v4

    .line 471
    :goto_2
    return-object v4

    .line 434
    .restart local v2       #id:I
    :cond_2
    const/4 v4, 0x0

    move v3, v4

    goto :goto_0

    .line 437
    .restart local v3       #viewId:I
    :cond_3
    if-eq v2, v7, :cond_4

    if-ne v2, v8, :cond_1

    :cond_4
    if-nez p1, :cond_1

    .line 438
    const/4 p2, 0x0

    goto :goto_1

    .line 441
    .end local v2           #id:I
    .end local v3           #viewId:I
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 442
    .local v1, e:Landroid/database/StaleDataException;
    iget-object v4, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->cursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->deactivate()V

    .line 443
    iget-object v4, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->cursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->requery()Z

    goto :goto_1

    .line 444
    .end local v1           #e:Landroid/database/StaleDataException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 447
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v4, "AbstractMpListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLiteFullException getMusicMainListCursor"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v4, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 452
    iget-object v4, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 453
    .local v0, am:Landroid/app/ActivityManager;
    const-string v4, "com.android.music"

    invoke-virtual {v0, v10}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_1

    .line 455
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v4

    move-object v1, v4

    .line 457
    .local v1, e:Landroid/database/sqlite/SQLiteDiskIOException;
    iget-object v4, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 461
    iget-object v4, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 463
    .restart local v0       #am:Landroid/app/ActivityManager;
    const-string v4, "com.android.music"

    invoke-virtual {v0, v10}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_1

    .line 470
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_3
    move-exception v1

    .local v1, e:Ljava/lang/IllegalStateException;
    move-object v4, p2

    .line 471
    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mHasCheck:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 387
    iget-boolean v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mSelectallEnable:Z

    .line 389
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mEnableRequery:Z

    if-eqz v0, :cond_0

    .line 490
    invoke-super {p0}, Landroid/widget/CursorAdapter;->onContentChanged()V

    .line 492
    :cond_0
    return-void
.end method

.method public resumeCheckBox([Z)V
    .locals 2
    .parameter "check"

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    .line 496
    invoke-virtual {p0}, Lcom/android/music/list/adapter/AbstractMpListAdapter;->notifyDataSetChanged()V

    .line 497
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCheckedCount:I

    .line 498
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 499
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 500
    iget v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCheckedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCheckedCount:I

    .line 498
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 502
    :cond_1
    return-void
.end method

.method public setCheckAll()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 303
    iget-object v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    aget-boolean v2, v2, v3

    if-nez v2, :cond_0

    move v1, v4

    .line 304
    .local v1, newCheck:Z
    :goto_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 305
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 306
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    array-length v2, v2

    sub-int/2addr v2, v4

    :goto_1
    iput v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCheckedCount:I

    .line 307
    iget v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCheckedCount:I

    if-nez v2, :cond_2

    .line 308
    iput v3, v0, Landroid/os/Message;->what:I

    .line 312
    :goto_2
    invoke-virtual {p0}, Lcom/android/music/list/adapter/AbstractMpListAdapter;->notifyDataSetChanged()V

    .line 317
    iget-object v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v2, v2, Lcom/android/music/list/view/AbstractMpListView;->mLeftButtonHandler:Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;

    invoke-virtual {v2, v0}, Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;->sendMessage(Landroid/os/Message;)Z

    .line 319
    return-void

    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #newCheck:Z
    :cond_0
    move v1, v3

    .line 303
    goto :goto_0

    .restart local v0       #msg:Landroid/os/Message;
    .restart local v1       #newCheck:Z
    :cond_1
    move v2, v3

    .line 306
    goto :goto_1

    .line 310
    :cond_2
    iput v4, v0, Landroid/os/Message;->what:I

    goto :goto_2
.end method

.method public setCheckBox(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 218
    if-nez p1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    new-instance v1, Lcom/android/music/list/adapter/AbstractMpListAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/music/list/adapter/AbstractMpListAdapter$2;-><init>(Lcom/android/music/list/adapter/AbstractMpListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->post(Ljava/lang/Runnable;)Z

    .line 255
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    new-instance v1, Lcom/android/music/list/adapter/AbstractMpListAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/android/music/list/adapter/AbstractMpListAdapter$3;-><init>(Lcom/android/music/list/adapter/AbstractMpListAdapter;I)V

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public abstract setColumn([Ljava/lang/String;)V
.end method

.method public setEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 480
    iput-boolean p1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mEnableRequery:Z

    .line 481
    iget-boolean v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mEnableRequery:Z

    if-eqz v0, :cond_0

    .line 482
    invoke-super {p0}, Landroid/widget/CursorAdapter;->onContentChanged()V

    .line 485
    :cond_0
    return-void
.end method

.method public setIndexView(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V
    .locals 0
    .parameter "mindex"

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 382
    return-void
.end method

.method public setListView(Lcom/android/music/list/view/AbstractMpListView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 198
    iget-object v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v0

    iput v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListType:I

    .line 199
    return-void
.end method
