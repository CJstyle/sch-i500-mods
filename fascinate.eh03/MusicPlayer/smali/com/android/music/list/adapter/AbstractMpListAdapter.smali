.class public abstract Lcom/android/music/list/adapter/AbstractMpListAdapter;
.super Landroid/widget/CursorAdapter;
.source "AbstractMpListAdapter.java"

# interfaces
.implements Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;
.implements Lcom/android/music/list/interfaces/MpSetViewInterface;


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
.field public static defaultimage:[Landroid/graphics/Bitmap;

.field protected static mPressId:I


# instance fields
.field public final MAJOR_MOVE:I

.field public MyTag:Ljava/lang/String;

.field protected final mAlbumArtUri:Ljava/lang/String;

.field protected final mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field protected mChecked:[Z

.field protected mCheckedCount:I

.field protected mColumns:[Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mCursor:Landroid/database/Cursor;

.field private mEnableRequery:Z

.field public mGestureListener:Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;

.field protected mHasCheck:Z

.field public mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mListType:I

.field protected mListView:Lcom/android/music/list/view/AbstractMpListView;

.field protected mResolver:Landroid/content/ContentResolver;

.field protected mSelectallEnable:Z

.field public tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
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

    .line 78
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 42
    const/16 v2, 0x64

    iput v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->MAJOR_MOVE:I

    .line 50
    const-string v2, "content://media/external/audio/albumart"

    iput-object v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mAlbumArtUri:Ljava/lang/String;

    .line 51
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 57
    iput-object v3, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    .line 59
    iput-object v3, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->MyTag:Ljava/lang/String;

    .line 62
    iput-object v3, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 63
    iput v4, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->width:I

    .line 68
    iput-object v3, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mGestureListener:Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;

    .line 79
    iput-object p1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCursor:Landroid/database/Cursor;

    .line 81
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 83
    iput-boolean p3, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mHasCheck:Z

    .line 84
    iput v4, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCheckedCount:I

    .line 86
    if-eqz p3, :cond_0

    .line 87
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 88
    .local v0, count:I
    new-array v2, v0, [Z

    iput-object v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    .line 89
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 90
    iget-object v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    aput-boolean v4, v2, v1

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    return-void
.end method


# virtual methods
.method public GetHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 204
    new-instance v0, Lcom/android/music/list/adapter/AbstractMpListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/music/list/adapter/AbstractMpListAdapter$1;-><init>(Lcom/android/music/list/adapter/AbstractMpListAdapter;)V

    .line 216
    .local v0, handler:Landroid/os/Handler;
    return-object v0
.end method

.method protected abstract SetImageViewRedraw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public getChecked()[Z
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    return-object v0
.end method

.method public getCheckedBoxCount()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCheckedCount:I

    return v0
.end method

.method protected getCreateListView(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter "view"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 423
    const/16 v0, -0x3e6

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 424
    return-object p1
.end method

.method public getIndexView()Lcom/sec/android/touchwiz/widget/TwIndexScrollView;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    return-object v0
.end method

.method protected getNumberOfMusicsView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .parameter "view"
    .parameter "numberOfMusics"

    .prologue
    .line 428
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030012

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 429
    const/16 v1, -0x3e5

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 430
    const v1, 0x7f0c0045

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 431
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    return-object p1
.end method

.method protected getSelectAllView(Landroid/view/View;Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;)Landroid/view/View;
    .locals 6
    .parameter "view"
    .parameter "adapter"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 396
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030015

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 397
    const v1, 0x7f0c004f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 398
    .local v0, allcheck:Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    aget-boolean v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 401
    invoke-virtual {p0}, Lcom/android/music/list/adapter/AbstractMpListAdapter;->getCount()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 402
    iput-boolean v4, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mSelectallEnable:Z

    .line 403
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 415
    :goto_0
    const/16 v1, -0x3e7

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 416
    return-object p1

    .line 405
    :cond_0
    iput-boolean v5, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mSelectallEnable:Z

    .line 406
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 407
    new-instance v1, Lcom/android/music/list/adapter/AbstractMpListAdapter$4;

    invoke-direct {v1, p0, p2}, Lcom/android/music/list/adapter/AbstractMpListAdapter$4;-><init>(Lcom/android/music/list/adapter/AbstractMpListAdapter;Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 438
    :try_start_0
    iget-object v5, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 439
    iget-object v5, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCursor:Landroid/database/Cursor;

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 440
    .local v3, id:I
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v5

    move v4, v5

    .line 441
    .local v4, viewId:I
    :goto_0
    iget-object v5, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    .line 444
    .local v1, cursorCount:I
    const/16 v5, -0x3e7

    if-eq v3, v5, :cond_4

    const/16 v5, -0x3e6

    if-eq v3, v5, :cond_4

    if-eqz p1, :cond_4

    const/16 v5, -0x3e7

    if-eq v4, v5, :cond_0

    const/16 v5, -0x3e6

    if-ne v4, v5, :cond_4

    .line 445
    :cond_0
    const/4 p2, 0x0

    .line 450
    :cond_1
    :goto_1
    const/16 v5, -0x3e5

    if-eq v3, v5, :cond_6

    const/4 v5, 0x1

    sub-int v5, v1, v5

    if-eq p1, v5, :cond_6

    const/16 v5, -0x3e5

    if-ne v4, v5, :cond_6

    .line 451
    const/4 p2, 0x0

    .line 474
    .end local v1           #cursorCount:I
    .end local v3           #id:I
    .end local v4           #viewId:I
    :cond_2
    :goto_2
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v5

    .line 476
    :goto_3
    return-object v5

    .line 440
    .restart local v3       #id:I
    :cond_3
    const/4 v5, 0x0

    move v4, v5

    goto :goto_0

    .line 446
    .restart local v1       #cursorCount:I
    .restart local v4       #viewId:I
    :cond_4
    const/16 v5, -0x3e7

    if-eq v3, v5, :cond_5

    const/16 v5, -0x3e6

    if-ne v3, v5, :cond_1

    :cond_5
    if-nez p1, :cond_1

    .line 447
    const/4 p2, 0x0

    goto :goto_1

    .line 452
    :cond_6
    const/16 v5, -0x3e5

    if-ne v3, v5, :cond_2

    const/4 v5, 0x1

    sub-int v5, v1, v5

    if-ne p1, v5, :cond_2

    .line 453
    const/4 p2, 0x0

    goto :goto_2

    .line 456
    .end local v1           #cursorCount:I
    .end local v3           #id:I
    .end local v4           #viewId:I
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 457
    .local v2, e:Landroid/database/StaleDataException;
    iget-object v5, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->deactivate()V

    .line 458
    iget-object v5, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->requery()Z

    goto :goto_2

    .line 460
    .end local v2           #e:Landroid/database/StaleDataException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 461
    .local v2, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v5, "AbstractMpListAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SQLiteFullException getMusicMainListCursor"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v5, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 463
    iget-object v5, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 464
    .local v0, am:Landroid/app/ActivityManager;
    const-string v5, "com.android.music"

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_2

    .line 465
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v2           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v5

    move-object v2, v5

    .line 466
    .local v2, e:Landroid/database/sqlite/SQLiteDiskIOException;
    iget-object v5, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 467
    iget-object v5, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 468
    .restart local v0       #am:Landroid/app/ActivityManager;
    const-string v5, "com.android.music"

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_2

    .line 475
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v2           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_3
    move-exception v2

    .local v2, e:Ljava/lang/IllegalStateException;
    move-object v5, p2

    .line 476
    goto :goto_3
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mHasCheck:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 389
    iget-boolean v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mSelectallEnable:Z

    .line 391
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 513
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 514
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    .line 515
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    .line 518
    :cond_0
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 520
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    .line 521
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/android/music/list/activity/MpMainTabActivity;

    if-eqz v1, :cond_1

    .line 522
    iget-object v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/music/list/activity/MpMainTabActivity;

    .line 523
    .local v0, mpMainTab:Lcom/android/music/list/activity/MpMainTabActivity;
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/android/music/list/activity/MpMainTabActivity;->getCurrentTab()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/music/list/activity/MpMainTabActivity;->showNoTracksView(ZLjava/lang/String;)V

    .line 526
    .end local v0           #mpMainTab:Lcom/android/music/list/activity/MpMainTabActivity;
    :cond_1
    return-void
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mEnableRequery:Z

    if-eqz v0, :cond_0

    .line 497
    invoke-super {p0}, Landroid/widget/CursorAdapter;->onContentChanged()V

    .line 499
    :cond_0
    return-void
.end method

.method public resumeCheckBox([Z)V
    .locals 3
    .parameter "check"

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    .line 503
    invoke-virtual {p0}, Lcom/android/music/list/adapter/AbstractMpListAdapter;->notifyDataSetChanged()V

    .line 504
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCheckedCount:I

    .line 505
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 506
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 507
    iget v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCheckedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCheckedCount:I

    .line 505
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v1, v1, Lcom/android/music/list/view/AbstractMpListView;->mLeftButtonHandler:Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;

    iget v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCheckedCount:I

    invoke-virtual {v1, v2}, Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;->sendEmptyMessage(I)Z

    .line 510
    return-void
.end method

.method public setCheckAll()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 306
    iget-object v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    aget-boolean v2, v2, v3

    if-nez v2, :cond_0

    move v1, v4

    .line 307
    .local v1, newCheck:Z
    :goto_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 308
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 309
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    array-length v2, v2

    sub-int/2addr v2, v4

    :goto_1
    iput v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCheckedCount:I

    .line 310
    iget v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCheckedCount:I

    if-nez v2, :cond_2

    .line 311
    iput v3, v0, Landroid/os/Message;->what:I

    .line 315
    :goto_2
    invoke-virtual {p0}, Lcom/android/music/list/adapter/AbstractMpListAdapter;->notifyDataSetChanged()V

    .line 318
    iget-object v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v2, v2, Lcom/android/music/list/view/AbstractMpListView;->mLeftButtonHandler:Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;

    invoke-virtual {v2, v0}, Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;->sendMessage(Landroid/os/Message;)Z

    .line 321
    return-void

    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #newCheck:Z
    :cond_0
    move v1, v3

    .line 306
    goto :goto_0

    .restart local v0       #msg:Landroid/os/Message;
    .restart local v1       #newCheck:Z
    :cond_1
    move v2, v3

    .line 309
    goto :goto_1

    .line 313
    :cond_2
    iput v4, v0, Landroid/os/Message;->what:I

    goto :goto_2
.end method

.method public setCheckBox(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    new-instance v1, Lcom/android/music/list/adapter/AbstractMpListAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/music/list/adapter/AbstractMpListAdapter$2;-><init>(Lcom/android/music/list/adapter/AbstractMpListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->post(Ljava/lang/Runnable;)Z

    .line 259
    :goto_0
    return-void

    .line 227
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
    .line 486
    iput-boolean p1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mEnableRequery:Z

    .line 488
    iget-boolean v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mEnableRequery:Z

    if-eqz v0, :cond_0

    .line 490
    invoke-super {p0}, Landroid/widget/CursorAdapter;->onContentChanged()V

    .line 492
    :cond_0
    return-void
.end method

.method public setIndexView(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V
    .locals 0
    .parameter "mindex"

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 384
    return-void
.end method

.method public setListView(Lcom/android/music/list/view/AbstractMpListView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 200
    iget-object v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v0

    iput v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListType:I

    .line 201
    return-void
.end method
