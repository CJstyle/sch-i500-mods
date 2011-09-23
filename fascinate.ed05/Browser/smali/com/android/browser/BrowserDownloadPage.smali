.class public Lcom/android/browser/BrowserDownloadPage;
.super Landroid/app/ExpandableListActivity;
.source "BrowserDownloadPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserDownloadPage$ChangeObserver;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "BrowserDownloadPage"


# instance fields
.field private bDDinfoViewed:Z

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContextMenuPosition:J

.field private mDDDescriptionId:I

.field private mDDNameId:I

.field private mDDSizeId:I

.field private mDDTypeId:I

.field private mDDVendorId:I

.field private mDDVersionId:I

.field private mDownloadAdapter:Lcom/android/browser/BrowserDownloadAdapter;

.field private mDownloadCursor:Landroid/database/Cursor;

.field private mIdColumnId:I

.field private mListView:Landroid/widget/ExpandableListView;

.field private mMethodType:I

.field private mSelectedView:Landroid/view/View;

.field private mStateColumnId:I

.field private mStatusColumnId:I

.field private mTitleColumnId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserDownloadPage;->bDDinfoViewed:Z

    .line 279
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/BrowserDownloadPage;)Lcom/android/browser/BrowserDownloadAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadAdapter:Lcom/android/browser/BrowserDownloadAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/BrowserDownloadPage;)Landroid/widget/ExpandableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadPage;->mListView:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/BrowserDownloadPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserDownloadPage;->openOrDeleteCurrentDownload(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/browser/BrowserDownloadPage;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadPage;->mContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/BrowserDownloadPage;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadPage;->mSelectedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/BrowserDownloadPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/browser/BrowserDownloadPage;->cancelAllDownloads()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/browser/BrowserDownloadPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/browser/BrowserDownloadPage;->bDDinfoViewed:Z

    return p1
.end method

.method private cancelAllDownloads()V
    .locals 7

    .prologue
    .line 466
    iget-object v3, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    .local v2, where:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 469
    .local v0, firstTime:Z
    :goto_0
    iget-object v3, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_2

    .line 470
    iget-object v3, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/browser/BrowserDownloadPage;->mStateColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 471
    .local v1, state:I
    invoke-static {v1}, Landroid/provider/Downloads$Impl;->isDownloadCompleted(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 472
    if-eqz v0, :cond_1

    .line 473
    const/4 v0, 0x0

    .line 477
    :goto_1
    const-string v3, "( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    const-string v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    iget-object v3, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/browser/BrowserDownloadPage;->mIdColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 481
    const-string v3, "\' )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    :cond_0
    iget-object v3, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 475
    :cond_1
    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 485
    .end local v1           #state:I
    :cond_2
    if-nez v0, :cond_3

    .line 486
    invoke-virtual {p0}, Lcom/android/browser/BrowserDownloadPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 490
    .end local v0           #firstTime:Z
    .end local v2           #where:Ljava/lang/StringBuilder;
    :cond_3
    return-void
.end method

.method private checkStatus(J)I
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f090010

    const/4 v6, 0x0

    .line 370
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadAdapter:Lcom/android/browser/BrowserDownloadAdapter;

    invoke-virtual {v4, p1, p2}, Lcom/android/browser/BrowserDownloadAdapter;->groupFromChildId(J)I

    move-result v0

    .line 371
    .local v0, groupToShow:I
    const/4 v4, -0x1

    if-ne v4, v0, :cond_0

    move v4, v6

    .line 396
    :goto_0
    return v4

    .line 372
    :cond_0
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/browser/BrowserDownloadPage;->mStatusColumnId:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 373
    .local v2, status:I
    invoke-static {v2}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v0

    .line 374
    goto :goto_0

    .line 376
    :cond_1
    const/16 v4, 0x1ec

    if-ne v2, v4, :cond_4

    .line 377
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/browser/BrowserDownloadPage;->mTitleColumnId:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, title:Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 379
    :cond_2
    const v4, 0x7f0900c8

    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserDownloadPage;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 381
    :cond_3
    const v4, 0x7f0900d2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/browser/BrowserDownloadPage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, msg:Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0900d1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x108005d

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .end local v1           #msg:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :goto_1
    move v4, v0

    .line 396
    goto :goto_0

    .line 389
    :cond_4
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0900d3

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f02005c

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/browser/BrowserDownloadAdapter;->getErrorText(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method private clearFromDownloads(J)V
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-virtual {p0}, Lcom/android/browser/BrowserDownloadPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 227
    return-void
.end method

.method private converSize(I)Ljava/lang/String;
    .locals 14
    .parameter "size"

    .prologue
    const/high16 v12, 0x4480

    const-wide/high16 v10, 0x3ff0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v13, "%.2f"

    .line 682
    const-string v4, "MB"

    .line 683
    .local v4, strMB:Ljava/lang/String;
    const-string v3, "KB"

    .line 684
    .local v3, strKB:Ljava/lang/String;
    const-string v2, "Byte"

    .line 686
    .local v2, strByte:Ljava/lang/String;
    const-string v5, "Browser_CD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "converSize : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    if-lez p1, :cond_2

    .line 688
    int-to-float v5, p1

    div-float v0, v5, v12

    .line 689
    .local v0, sizeKB:F
    div-float v1, v0, v12

    .line 691
    .local v1, sizeMB:F
    const-string v5, "Browser_CD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "conver sizeKB : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " KB sizeMB : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " MB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    float-to-double v5, v0

    cmpl-double v5, v5, v10

    if-lez v5, :cond_1

    .line 693
    float-to-double v5, v1

    cmpl-double v5, v5, v10

    if-lez v5, :cond_0

    .line 694
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%.2f"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v13, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 701
    .end local v0           #sizeKB:F
    .end local v1           #sizeMB:F
    :goto_0
    return-object v5

    .line 696
    .restart local v0       #sizeKB:F
    .restart local v1       #sizeMB:F
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%.2f"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v13, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 698
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%d"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 701
    .end local v0           #sizeKB:F
    .end local v1           #sizeMB:F
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private getCancelableCount()I
    .locals 4

    .prologue
    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, count:I
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    .line 415
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 417
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/browser/BrowserDownloadPage;->mStateColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 418
    .local v1, state:I
    invoke-static {v1}, Landroid/provider/Downloads$Impl;->isDownloadCompleted(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 419
    add-int/lit8 v0, v0, 0x1

    .line 416
    :cond_0
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 424
    .end local v1           #state:I
    :cond_1
    return v0
.end method

.method private getClearableCount()I
    .locals 4

    .prologue
    .line 493
    const/4 v0, 0x0

    .line 494
    .local v0, count:I
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 495
    :goto_0
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 496
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/browser/BrowserDownloadPage;->mStateColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 497
    .local v1, state:I
    invoke-static {v1}, Landroid/provider/Downloads$Impl;->isDownloadCompleted(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    add-int/lit8 v0, v0, 0x1

    .line 500
    :cond_0
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 503
    .end local v1           #state:I
    :cond_1
    return v0
.end method

.method private hideCompletedDownload()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-string v6, "visibility"

    .line 731
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/browser/BrowserDownloadPage;->mStateColumnId:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 733
    .local v0, state:I
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    const-string v5, "visibility"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 735
    .local v3, visibilityColumn:I
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 737
    .local v2, visibility:I
    invoke-static {v0}, Landroid/provider/Downloads$Impl;->isDownloadCompleted(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 739
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 740
    .local v1, values:Landroid/content/ContentValues;
    const-string v4, "visibility"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 741
    invoke-virtual {p0}, Lcom/android/browser/BrowserDownloadPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v7, p0, Lcom/android/browser/BrowserDownloadPage;->mIdColumnId:I

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 745
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private openOrDeleteCurrentDownload(Z)V
    .locals 7
    .parameter "delete"

    .prologue
    .line 513
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    const-string v5, "notificationpackage"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 515
    .local v2, packageColumnId:I
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 516
    .local v3, packageName:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v4, "android.intent.action.DELETE"

    :goto_0
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    .local v1, intent:Landroid/content/Intent;
    sget-object v4, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/android/browser/BrowserDownloadPage;->mIdColumnId:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 521
    .local v0, contentUri:Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 522
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserDownloadPage;->sendBroadcast(Landroid/content/Intent;)V

    .line 524
    return-void

    .line 516
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const-string v4, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    goto :goto_0
.end method

.method private promptCancelAll()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 431
    invoke-direct {p0}, Lcom/android/browser/BrowserDownloadPage;->getCancelableCount()I

    move-result v0

    .line 434
    .local v0, count:I
    if-nez v0, :cond_0

    .line 458
    :goto_0
    return-void

    .line 439
    :cond_0
    if-ne v0, v3, :cond_1

    .line 440
    invoke-direct {p0}, Lcom/android/browser/BrowserDownloadPage;->cancelAllDownloads()V

    goto :goto_0

    .line 443
    :cond_1
    const v2, 0x7f0900cf

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/browser/BrowserDownloadPage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, msg:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0900ce

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f02005c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090010

    new-instance v4, Lcom/android/browser/BrowserDownloadPage$3;

    invoke-direct {v4, p0}, Lcom/android/browser/BrowserDownloadPage$3;-><init>(Lcom/android/browser/BrowserDownloadPage;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09000f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private resumeDownload(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 405
    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 4
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 709
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadAdapter:Lcom/android/browser/BrowserDownloadAdapter;

    invoke-virtual {v2, p3, p4}, Lcom/android/browser/BrowserDownloadAdapter;->moveCursorToChildPosition(II)Z

    .line 712
    invoke-direct {p0}, Lcom/android/browser/BrowserDownloadPage;->hideCompletedDownload()V

    .line 714
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/browser/BrowserDownloadPage;->mStatusColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 715
    .local v1, status:I
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/browser/BrowserDownloadPage;->mStateColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 716
    .local v0, state:I
    invoke-static {v1}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/provider/Downloads$Impl;->isDownloadCompleted(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 718
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/browser/BrowserDownloadPage;->openOrDeleteCurrentDownload(Z)V

    .line 723
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 721
    :cond_0
    invoke-direct {p0, p5, p6}, Lcom/android/browser/BrowserDownloadPage;->checkStatus(J)I

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 231
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadAdapter:Lcom/android/browser/BrowserDownloadAdapter;

    iget-wide v1, p0, Lcom/android/browser/BrowserDownloadPage;->mContextMenuPosition:J

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BrowserDownloadAdapter;->moveCursorToPackedChildPosition(J)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    .line 262
    :goto_0
    return v0

    .line 235
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    move v0, v3

    .line 262
    goto :goto_0

    .line 237
    :pswitch_0
    invoke-direct {p0}, Lcom/android/browser/BrowserDownloadPage;->hideCompletedDownload()V

    .line 238
    invoke-direct {p0, v3}, Lcom/android/browser/BrowserDownloadPage;->openOrDeleteCurrentDownload(Z)V

    move v0, v4

    .line 239
    goto :goto_0

    .line 242
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900d0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/BrowserDownloadPage;->mTitleColumnId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09000f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090010

    new-instance v2, Lcom/android/browser/BrowserDownloadPage$2;

    invoke-direct {v2, p0}, Lcom/android/browser/BrowserDownloadPage$2;-><init>(Lcom/android/browser/BrowserDownloadPage;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 259
    :pswitch_2
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/browser/BrowserDownloadPage;->mIdColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/browser/BrowserDownloadPage;->clearFromDownloads(J)V

    move v0, v4

    .line 260
    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d00cf
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    const-string v10, "dd_fileName"

    const-string v9, "dd_description"

    const-string v8, "dd_contentSize"

    const-string v7, "_id"

    .line 85
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v2, 0x7f030009

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserDownloadPage;->setContentView(I)V

    .line 88
    const v2, 0x7f0900c7

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserDownloadPage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserDownloadPage;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserDownloadPage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListView;

    iput-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mListView:Landroid/widget/ExpandableListView;

    .line 91
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mListView:Landroid/widget/ExpandableListView;

    const v3, 0x7f0d002f

    invoke-virtual {p0, v3}, Lcom/android/browser/BrowserDownloadPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 92
    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    const/16 v3, 0x18

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v7, v3, v6

    const/4 v4, 0x1

    const-string v5, "title"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "status"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "state"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "total_bytes"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "current_bytes"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "description"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "notificationpackage"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "lastmod"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "visibility"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "downloadmethod"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "uri"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "dd_primaryMimeType"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "dd_SecondaryMimeType1"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "dd_SecondaryMimeType2"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, "dd_fileName"

    aput-object v10, v3, v4

    const/16 v4, 0x10

    const-string v5, "dd_vendor"

    aput-object v5, v3, v4

    const/16 v4, 0x11

    const-string v5, "dd_description"

    aput-object v9, v3, v4

    const/16 v4, 0x12

    const-string v5, "dd_contentSize"

    aput-object v8, v3, v4

    const/16 v4, 0x13

    const-string v5, "dd_objUrl"

    aput-object v5, v3, v4

    const/16 v4, 0x14

    const-string v5, "dd_notifyurl"

    aput-object v5, v3, v4

    const/16 v4, 0x15

    const-string v5, "dd_majorVersion"

    aput-object v5, v3, v4

    const/16 v4, 0x16

    const-string v5, "_data"

    aput-object v5, v3, v4

    const/16 v4, 0x17

    const-string v5, "mimetype"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const-string v5, "lastmod DESC"

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/browser/BrowserDownloadPage;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    .line 118
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    .line 119
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    const-string v3, "status"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/browser/BrowserDownloadPage;->mStatusColumnId:I

    .line 121
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    const-string v3, "state"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/browser/BrowserDownloadPage;->mStateColumnId:I

    .line 123
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/browser/BrowserDownloadPage;->mIdColumnId:I

    .line 125
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    const-string v3, "title"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/browser/BrowserDownloadPage;->mTitleColumnId:I

    .line 127
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    const-string v3, "downloadmethod"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/browser/BrowserDownloadPage;->mMethodType:I

    .line 130
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    const-string v3, "dd_fileName"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDDNameId:I

    .line 131
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    const-string v3, "dd_vendor"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDDVendorId:I

    .line 132
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    const-string v3, "dd_contentSize"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDDSizeId:I

    .line 133
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    const-string v3, "dd_majorVersion"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDDVersionId:I

    .line 134
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    const-string v3, "dd_primaryMimeType"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDDTypeId:I

    .line 135
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    const-string v3, "dd_description"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDDDescriptionId:I

    .line 137
    new-instance v2, Lcom/android/browser/BrowserDownloadAdapter;

    iget-object v3, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    const-string v5, "lastmod"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/browser/BrowserDownloadAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadAdapter:Lcom/android/browser/BrowserDownloadAdapter;

    .line 141
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadAdapter:Lcom/android/browser/BrowserDownloadAdapter;

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserDownloadPage;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 142
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, p0}, Landroid/widget/ExpandableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/browser/BrowserDownloadPage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 145
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v6

    .line 147
    .local v0, groupToShow:I
    :goto_0
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadAdapter:Lcom/android/browser/BrowserDownloadAdapter;

    invoke-virtual {v2}, Lcom/android/browser/BrowserDownloadAdapter;->getGroupCount()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 148
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mListView:Landroid/widget/ExpandableListView;

    new-instance v3, Lcom/android/browser/BrowserDownloadPage$1;

    invoke-direct {v3, p0, v0}, Lcom/android/browser/BrowserDownloadPage$1;-><init>(Lcom/android/browser/BrowserDownloadPage;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->post(Ljava/lang/Runnable;)Z

    .line 157
    .end local v0           #groupToShow:I
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    return-void

    .line 145
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/browser/BrowserDownloadPage;->checkStatus(J)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 324
    iget-object v7, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_1

    .line 325
    move-object v0, p3

    check-cast v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    move-object v2, v0

    .line 327
    .local v2, info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-wide v3, v2, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    .line 329
    .local v3, packedPosition:J
    iget-object v7, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadAdapter:Lcom/android/browser/BrowserDownloadAdapter;

    invoke-virtual {v7, v3, v4}, Lcom/android/browser/BrowserDownloadAdapter;->moveCursorToPackedChildPosition(J)Z

    move-result v7

    if-nez v7, :cond_0

    .line 361
    .end local v2           #info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    .end local v3           #packedPosition:J
    :goto_0
    return-void

    .line 333
    .restart local v2       #info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    .restart local v3       #packedPosition:J
    :cond_0
    iput-wide v3, p0, Lcom/android/browser/BrowserDownloadPage;->mContextMenuPosition:J

    .line 334
    iget-object v7, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v8, p0, Lcom/android/browser/BrowserDownloadPage;->mTitleColumnId:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 336
    invoke-virtual {p0}, Lcom/android/browser/BrowserDownloadPage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 337
    .local v1, inflater:Landroid/view/MenuInflater;
    iget-object v7, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v8, p0, Lcom/android/browser/BrowserDownloadPage;->mStatusColumnId:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 338
    .local v5, status:I
    invoke-static {v5}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 339
    const v7, 0x7f0c0006

    invoke-virtual {v1, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 360
    .end local v1           #inflater:Landroid/view/MenuInflater;
    .end local v2           #info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    .end local v3           #packedPosition:J
    .end local v5           #status:I
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/ExpandableListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0

    .line 340
    .restart local v1       #inflater:Landroid/view/MenuInflater;
    .restart local v2       #info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    .restart local v3       #packedPosition:J
    .restart local v5       #status:I
    :cond_2
    invoke-static {v5}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 341
    const v7, 0x7f0c0005

    invoke-virtual {v1, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_1

    .line 346
    :cond_3
    sget-object v7, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v9, p0, Lcom/android/browser/BrowserDownloadPage;->mIdColumnId:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 349
    .local v6, track:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/browser/BrowserDownloadPage;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v7, :cond_4

    .line 350
    invoke-virtual {p0}, Lcom/android/browser/BrowserDownloadPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/browser/BrowserDownloadPage;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 353
    :cond_4
    new-instance v7, Lcom/android/browser/BrowserDownloadPage$ChangeObserver;

    invoke-direct {v7, p0, v6}, Lcom/android/browser/BrowserDownloadPage$ChangeObserver;-><init>(Lcom/android/browser/BrowserDownloadPage;Landroid/net/Uri;)V

    iput-object v7, p0, Lcom/android/browser/BrowserDownloadPage;->mContentObserver:Landroid/database/ContentObserver;

    .line 354
    iput-object p2, p0, Lcom/android/browser/BrowserDownloadPage;->mSelectedView:Landroid/view/View;

    .line 355
    invoke-virtual {p0}, Lcom/android/browser/BrowserDownloadPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/browser/BrowserDownloadPage;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v6, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 357
    const v7, 0x7f0c0007

    invoke-virtual {v1, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 196
    iget-object v1, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/android/browser/BrowserDownloadPage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 198
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0c0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 200
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 212
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 217
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 214
    :pswitch_0
    invoke-direct {p0}, Lcom/android/browser/BrowserDownloadPage;->promptCancelAll()V

    .line 215
    const/4 v0, 0x1

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x7f0d00ce
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 267
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onPause()V

    .line 268
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadPage;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/android/browser/BrowserDownloadPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserDownloadPage;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 273
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/android/browser/BrowserDownloadPage;->getCancelableCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 206
    .local v0, showCancel:Z
    :goto_0
    const v1, 0x7f0d00ce

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 207
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 205
    .end local v0           #showCancel:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const-string v8, "\'"

    .line 161
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onResume()V

    .line 162
    iget-object v6, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_4

    .line 163
    const/4 v5, 0x0

    .line 164
    .local v5, where:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v6, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_3

    .line 166
    iget-object v6, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v7, p0, Lcom/android/browser/BrowserDownloadPage;->mStatusColumnId:I

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 165
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 171
    :cond_1
    iget-object v6, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    const-string v7, "_data"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 173
    .local v2, filenameColumnId:I
    iget-object v6, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, filename:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 175
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 177
    iget-object v6, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v7, p0, Lcom/android/browser/BrowserDownloadPage;->mIdColumnId:I

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 178
    .local v3, id:J
    if-nez v5, :cond_2

    .line 179
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 181
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " OR _id = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 187
    .end local v0           #file:Ljava/io/File;
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #filenameColumnId:I
    .end local v3           #id:J
    :cond_3
    if-eqz v5, :cond_4

    .line 188
    invoke-virtual {p0}, Lcom/android/browser/BrowserDownloadPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v5, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 192
    .end local v5           #where:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public viewDDInfo(IJ)V
    .locals 11
    .parameter "iPosition"
    .parameter "lID"

    .prologue
    .line 527
    iget-object v8, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v8, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 528
    const-string v8, "BrowserDownloadPage"

    const-string v9, "viewDDInfo()"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-boolean v8, p0, Lcom/android/browser/BrowserDownloadPage;->bDDinfoViewed:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 678
    .end local p1
    :goto_0
    return-void

    .line 535
    .restart local p1
    :cond_0
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/browser/BrowserDownloadPage;->bDDinfoViewed:Z

    .line 539
    invoke-direct {p0}, Lcom/android/browser/BrowserDownloadPage;->hideCompletedDownload()V

    .line 551
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 552
    .local v0, InformationDialog:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 553
    .local v1, factory:Landroid/view/LayoutInflater;
    const v8, 0x7f030008

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 561
    .local v2, popupBody:Landroid/view/View;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f090117

    invoke-virtual {p0, v9}, Lcom/android/browser/BrowserDownloadPage;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 562
    .local v5, tempTag:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v9, p0, Lcom/android/browser/BrowserDownloadPage;->mDDNameId:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    .line 563
    const v8, 0x7f0900c8

    invoke-virtual {p0, v8}, Lcom/android/browser/BrowserDownloadPage;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 567
    .local v4, temp:Ljava/lang/String;
    :goto_1
    const v8, 0x7f0d0023

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 568
    .local v7, tmpTVTag:Landroid/widget/TextView;
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    const/16 v8, -0x100

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 571
    const v8, 0x7f0d0024

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 572
    .local v6, tmpTV:Landroid/widget/TextView;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    const-string v8, "BrowserDownloadPage : NAME "

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f090118

    invoke-virtual {p0, v9}, Lcom/android/browser/BrowserDownloadPage;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 578
    iget-object v8, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v9, p0, Lcom/android/browser/BrowserDownloadPage;->mDDVendorId:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 579
    if-nez v4, :cond_1

    .line 580
    const-string v4, ""

    .line 581
    :cond_1
    const v8, 0x7f0d0025

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #tmpTVTag:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 582
    .restart local v7       #tmpTVTag:Landroid/widget/TextView;
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    const/16 v8, -0x100

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 584
    const v8, 0x7f0d0026

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #tmpTV:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 585
    .restart local v6       #tmpTV:Landroid/widget/TextView;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    const-string v8, "BrowserDownloadPage : VENDOR "

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f090119

    invoke-virtual {p0, v9}, Lcom/android/browser/BrowserDownloadPage;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 591
    iget-object v8, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v9, p0, Lcom/android/browser/BrowserDownloadPage;->mDDSizeId:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 592
    .local v3, size:I
    invoke-direct {p0, v3}, Lcom/android/browser/BrowserDownloadPage;->converSize(I)Ljava/lang/String;

    move-result-object v4

    .line 593
    const v8, 0x7f0d0027

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #tmpTVTag:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 594
    .restart local v7       #tmpTVTag:Landroid/widget/TextView;
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    const/16 v8, -0x100

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 596
    const v8, 0x7f0d0028

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #tmpTV:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 597
    .restart local v6       #tmpTV:Landroid/widget/TextView;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    const-string v8, "BrowserDownloadPage : SIZE "

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f09011a

    invoke-virtual {p0, v9}, Lcom/android/browser/BrowserDownloadPage;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 602
    iget-object v8, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v9, p0, Lcom/android/browser/BrowserDownloadPage;->mDDVersionId:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    .line 603
    const-string v4, "1.0"

    .line 607
    :goto_2
    const v8, 0x7f0d0029

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #tmpTVTag:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 608
    .restart local v7       #tmpTVTag:Landroid/widget/TextView;
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    const/16 v8, -0x100

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 610
    const v8, 0x7f0d002a

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #tmpTV:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 611
    .restart local v6       #tmpTV:Landroid/widget/TextView;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    const-string v8, "BrowserDownloadPage : VERSION "

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f09011b

    invoke-virtual {p0, v9}, Lcom/android/browser/BrowserDownloadPage;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 616
    iget-object v8, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v9, p0, Lcom/android/browser/BrowserDownloadPage;->mDDTypeId:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 617
    if-nez v4, :cond_2

    .line 618
    const-string v4, ""

    .line 619
    :cond_2
    const v8, 0x7f0d002b

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #tmpTVTag:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 620
    .restart local v7       #tmpTVTag:Landroid/widget/TextView;
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    const/16 v8, -0x100

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 622
    const v8, 0x7f0d002c

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #tmpTV:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 623
    .restart local v6       #tmpTV:Landroid/widget/TextView;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    const-string v8, "BrowserDownloadPage : TYPE "

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f09011c

    invoke-virtual {p0, v9}, Lcom/android/browser/BrowserDownloadPage;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 628
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v10, p0, Lcom/android/browser/BrowserDownloadPage;->mDDDescriptionId:I

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 629
    const v8, 0x7f0d002d

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #tmpTVTag:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 630
    .restart local v7       #tmpTVTag:Landroid/widget/TextView;
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    const/16 v8, -0x100

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 632
    const v8, 0x7f0d002e

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #tmpTV:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 633
    .restart local v6       #tmpTV:Landroid/widget/TextView;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    const-string v8, "BrowserDownloadPage : DESCRIPTION "

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const v8, 0x7f090116

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f09002c

    new-instance v10, Lcom/android/browser/BrowserDownloadPage$5;

    invoke-direct {v10, p0, p2, p3}, Lcom/android/browser/BrowserDownloadPage$5;-><init>(Lcom/android/browser/BrowserDownloadPage;J)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f09000f

    new-instance v10, Lcom/android/browser/BrowserDownloadPage$4;

    invoke-direct {v10, p0, p2, p3}, Lcom/android/browser/BrowserDownloadPage$4;-><init>(Lcom/android/browser/BrowserDownloadPage;J)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 565
    .end local v3           #size:I
    .end local v4           #temp:Ljava/lang/String;
    .end local v6           #tmpTV:Landroid/widget/TextView;
    .end local v7           #tmpTVTag:Landroid/widget/TextView;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v10, p0, Lcom/android/browser/BrowserDownloadPage;->mDDNameId:I

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #temp:Ljava/lang/String;
    goto/16 :goto_1

    .line 605
    .restart local v3       #size:I
    .restart local v6       #tmpTV:Landroid/widget/TextView;
    .restart local v7       #tmpTVTag:Landroid/widget/TextView;
    :cond_4
    iget-object v8, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v9, p0, Lcom/android/browser/BrowserDownloadPage;->mDDVersionId:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2
.end method
