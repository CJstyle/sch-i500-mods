.class public Lcom/android/browser/BrowserDownloadPage;
.super Landroid/app/ExpandableListActivity;
.source "BrowserDownloadPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserDownloadPage$ChangeObserver;
    }
.end annotation


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

    .line 287
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

.method static synthetic access$200(Lcom/android/browser/BrowserDownloadPage;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/android/browser/BrowserDownloadPage;->mContextMenuPosition:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/browser/BrowserDownloadPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserDownloadPage;->openOrDeleteCurrentDownload(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/browser/BrowserDownloadPage;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadPage;->mContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/BrowserDownloadPage;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadPage;->mSelectedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/BrowserDownloadPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/browser/BrowserDownloadPage;->cancelAllDownloads()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/browser/BrowserDownloadPage;Z)Z
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
    .line 474
    iget-object v3, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .local v2, where:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 477
    .local v0, firstTime:Z
    :goto_0
    iget-object v3, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_2

    .line 478
    iget-object v3, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/browser/BrowserDownloadPage;->mStateColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 479
    .local v1, state:I
    invoke-static {v1}, Landroid/provider/Downloads$Impl;->isDownloadCompleted(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 480
    if-eqz v0, :cond_1

    .line 481
    const/4 v0, 0x0

    .line 485
    :goto_1
    const-string v3, "( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    const-string v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    iget-object v3, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/browser/BrowserDownloadPage;->mIdColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 489
    const-string v3, "\' )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    :cond_0
    iget-object v3, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 483
    :cond_1
    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 493
    .end local v1           #state:I
    :cond_2
    if-nez v0, :cond_3

    .line 494
    invoke-virtual {p0}, Lcom/android/browser/BrowserDownloadPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 498
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

    .line 378
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadAdapter:Lcom/android/browser/BrowserDownloadAdapter;

    invoke-virtual {v4, p1, p2}, Lcom/android/browser/BrowserDownloadAdapter;->groupFromChildId(J)I

    move-result v0

    .line 379
    .local v0, groupToShow:I
    const/4 v4, -0x1

    if-ne v4, v0, :cond_0

    move v4, v6

    .line 404
    :goto_0
    return v4

    .line 380
    :cond_0
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/browser/BrowserDownloadPage;->mStatusColumnId:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 381
    .local v2, status:I
    invoke-static {v2}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v0

    .line 382
    goto :goto_0

    .line 384
    :cond_1
    const/16 v4, 0x1ec

    if-ne v2, v4, :cond_4

    .line 385
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/browser/BrowserDownloadPage;->mTitleColumnId:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 386
    .local v3, title:Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 387
    :cond_2
    const v4, 0x7f0900c9

    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserDownloadPage;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 389
    :cond_3
    const v4, 0x7f0900d3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/browser/BrowserDownloadPage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, msg:Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0900d2

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

    .line 404
    goto :goto_0

    .line 397
    :cond_4
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0900d4

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f020063

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

    .line 698
    const-string v4, "MB"

    .line 699
    .local v4, strMB:Ljava/lang/String;
    const-string v3, "KB"

    .line 700
    .local v3, strKB:Ljava/lang/String;
    const-string v2, "Byte"

    .line 702
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

    .line 703
    if-lez p1, :cond_2

    .line 704
    int-to-float v5, p1

    div-float v0, v5, v12

    .line 705
    .local v0, sizeKB:F
    div-float v1, v0, v12

    .line 707
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

    .line 708
    float-to-double v5, v0

    cmpl-double v5, v5, v10

    if-lez v5, :cond_1

    .line 709
    float-to-double v5, v1

    cmpl-double v5, v5, v10

    if-lez v5, :cond_0

    .line 710
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

    .line 717
    .end local v0           #sizeKB:F
    .end local v1           #sizeMB:F
    :goto_0
    return-object v5

    .line 712
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

    .line 714
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

    .line 717
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
    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, count:I
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    .line 423
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 425
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/browser/BrowserDownloadPage;->mStateColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 426
    .local v1, state:I
    invoke-static {v1}, Landroid/provider/Downloads$Impl;->isDownloadCompleted(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 427
    add-int/lit8 v0, v0, 0x1

    .line 424
    :cond_0
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 432
    .end local v1           #state:I
    :cond_1
    return v0
.end method

.method private hideCompletedDownload()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-string v6, "visibility"

    .line 747
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/browser/BrowserDownloadPage;->mStateColumnId:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 749
    .local v0, state:I
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    const-string v5, "visibility"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 751
    .local v3, visibilityColumn:I
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 753
    .local v2, visibility:I
    invoke-static {v0}, Landroid/provider/Downloads$Impl;->isDownloadCompleted(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 755
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 756
    .local v1, values:Landroid/content/ContentValues;
    const-string v4, "visibility"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 757
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

    .line 761
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private openOrDeleteCurrentDownload(Z)V
    .locals 7
    .parameter "delete"

    .prologue
    .line 521
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    const-string v5, "notificationpackage"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 523
    .local v2, packageColumnId:I
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 524
    .local v3, packageName:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v4, "android.intent.action.DELETE"

    :goto_0
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 526
    .local v1, intent:Landroid/content/Intent;
    sget-object v4, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/android/browser/BrowserDownloadPage;->mIdColumnId:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 529
    .local v0, contentUri:Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 530
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserDownloadPage;->sendBroadcast(Landroid/content/Intent;)V

    .line 532
    return-void

    .line 524
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

    .line 439
    invoke-direct {p0}, Lcom/android/browser/BrowserDownloadPage;->getCancelableCount()I

    move-result v0

    .line 442
    .local v0, count:I
    if-nez v0, :cond_0

    .line 466
    :goto_0
    return-void

    .line 447
    :cond_0
    if-ne v0, v3, :cond_1

    .line 448
    invoke-direct {p0}, Lcom/android/browser/BrowserDownloadPage;->cancelAllDownloads()V

    goto :goto_0

    .line 451
    :cond_1
    const v2, 0x7f0900d0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/browser/BrowserDownloadPage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, msg:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0900cf

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f020063

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


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 4
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 725
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadAdapter:Lcom/android/browser/BrowserDownloadAdapter;

    invoke-virtual {v2, p3, p4}, Lcom/android/browser/BrowserDownloadAdapter;->moveCursorToChildPosition(II)Z

    .line 728
    invoke-direct {p0}, Lcom/android/browser/BrowserDownloadPage;->hideCompletedDownload()V

    .line 730
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/browser/BrowserDownloadPage;->mStatusColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 731
    .local v1, status:I
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/browser/BrowserDownloadPage;->mStateColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 732
    .local v0, state:I
    invoke-static {v1}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/provider/Downloads$Impl;->isDownloadCompleted(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 734
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/browser/BrowserDownloadPage;->openOrDeleteCurrentDownload(Z)V

    .line 739
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 737
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

    .line 270
    :goto_0
    return v0

    .line 235
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    move v0, v3

    .line 270
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

    const v1, 0x7f0900d1

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

    .line 267
    :pswitch_2
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/browser/BrowserDownloadPage;->mIdColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/browser/BrowserDownloadPage;->clearFromDownloads(J)V

    move v0, v4

    .line 268
    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d00db
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
    const v2, 0x7f03000b

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserDownloadPage;->setContentView(I)V

    .line 88
    const v2, 0x7f0900c8

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

    const v3, 0x7f0d0035

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
    .line 332
    iget-object v7, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_1

    .line 333
    move-object v0, p3

    check-cast v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    move-object v2, v0

    .line 335
    .local v2, info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-wide v3, v2, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    .line 337
    .local v3, packedPosition:J
    iget-object v7, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadAdapter:Lcom/android/browser/BrowserDownloadAdapter;

    invoke-virtual {v7, v3, v4}, Lcom/android/browser/BrowserDownloadAdapter;->moveCursorToPackedChildPosition(J)Z

    move-result v7

    if-nez v7, :cond_0

    .line 369
    .end local v2           #info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    .end local v3           #packedPosition:J
    :goto_0
    return-void

    .line 341
    .restart local v2       #info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    .restart local v3       #packedPosition:J
    :cond_0
    iput-wide v3, p0, Lcom/android/browser/BrowserDownloadPage;->mContextMenuPosition:J

    .line 342
    iget-object v7, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v8, p0, Lcom/android/browser/BrowserDownloadPage;->mTitleColumnId:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 344
    invoke-virtual {p0}, Lcom/android/browser/BrowserDownloadPage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 345
    .local v1, inflater:Landroid/view/MenuInflater;
    iget-object v7, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v8, p0, Lcom/android/browser/BrowserDownloadPage;->mStatusColumnId:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 346
    .local v5, status:I
    invoke-static {v5}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 347
    const v7, 0x7f0c0007

    invoke-virtual {v1, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 368
    .end local v1           #inflater:Landroid/view/MenuInflater;
    .end local v2           #info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    .end local v3           #packedPosition:J
    .end local v5           #status:I
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/ExpandableListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0

    .line 348
    .restart local v1       #inflater:Landroid/view/MenuInflater;
    .restart local v2       #info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    .restart local v3       #packedPosition:J
    .restart local v5       #status:I
    :cond_2
    invoke-static {v5}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 349
    const v7, 0x7f0c0006

    invoke-virtual {v1, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_1

    .line 354
    :cond_3
    sget-object v7, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v9, p0, Lcom/android/browser/BrowserDownloadPage;->mIdColumnId:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 357
    .local v6, track:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/browser/BrowserDownloadPage;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v7, :cond_4

    .line 358
    invoke-virtual {p0}, Lcom/android/browser/BrowserDownloadPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/browser/BrowserDownloadPage;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 361
    :cond_4
    new-instance v7, Lcom/android/browser/BrowserDownloadPage$ChangeObserver;

    invoke-direct {v7, p0, v6}, Lcom/android/browser/BrowserDownloadPage$ChangeObserver;-><init>(Lcom/android/browser/BrowserDownloadPage;Landroid/net/Uri;)V

    iput-object v7, p0, Lcom/android/browser/BrowserDownloadPage;->mContentObserver:Landroid/database/ContentObserver;

    .line 362
    iput-object p2, p0, Lcom/android/browser/BrowserDownloadPage;->mSelectedView:Landroid/view/View;

    .line 363
    invoke-virtual {p0}, Lcom/android/browser/BrowserDownloadPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/browser/BrowserDownloadPage;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v6, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 365
    const v7, 0x7f0c0008

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
    const v1, 0x7f0c0005

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
    .packed-switch 0x7f0d00da
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 275
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onPause()V

    .line 276
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadPage;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/android/browser/BrowserDownloadPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserDownloadPage;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 281
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
    const v1, 0x7f0d00da

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
    .line 535
    iget-object v8, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v8, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 536
    const-string v8, "BrowserDownloadPage"

    const-string v9, "viewDDInfo()"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-boolean v8, p0, Lcom/android/browser/BrowserDownloadPage;->bDDinfoViewed:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 694
    .end local p1
    :goto_0
    return-void

    .line 543
    .restart local p1
    :cond_0
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/browser/BrowserDownloadPage;->bDDinfoViewed:Z

    .line 547
    invoke-direct {p0}, Lcom/android/browser/BrowserDownloadPage;->hideCompletedDownload()V

    .line 559
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 560
    .local v0, InformationDialog:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 561
    .local v1, factory:Landroid/view/LayoutInflater;
    const v8, 0x7f03000a

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 569
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

    .line 570
    .local v5, tempTag:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v9, p0, Lcom/android/browser/BrowserDownloadPage;->mDDNameId:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    .line 571
    const v8, 0x7f0900c9

    invoke-virtual {p0, v8}, Lcom/android/browser/BrowserDownloadPage;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 575
    .local v4, temp:Ljava/lang/String;
    :goto_1
    const v8, 0x7f0d0029

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 576
    .local v7, tmpTVTag:Landroid/widget/TextView;
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    const/16 v8, -0x100

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 579
    const v8, 0x7f0d002a

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 580
    .local v6, tmpTV:Landroid/widget/TextView;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    const-string v8, "BrowserDownloadPage : NAME "

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
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

    .line 586
    iget-object v8, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v9, p0, Lcom/android/browser/BrowserDownloadPage;->mDDVendorId:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 587
    if-nez v4, :cond_1

    .line 588
    const-string v4, "null"

    .line 590
    :cond_1
    const v8, 0x7f0d002b

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #tmpTVTag:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 591
    .restart local v7       #tmpTVTag:Landroid/widget/TextView;
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    const/16 v8, -0x100

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 593
    const v8, 0x7f0d002c

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #tmpTV:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 594
    .restart local v6       #tmpTV:Landroid/widget/TextView;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    const-string v8, "BrowserDownloadPage : VENDOR "

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
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

    .line 600
    iget-object v8, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v9, p0, Lcom/android/browser/BrowserDownloadPage;->mDDSizeId:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 601
    .local v3, size:I
    invoke-direct {p0, v3}, Lcom/android/browser/BrowserDownloadPage;->converSize(I)Ljava/lang/String;

    move-result-object v4

    .line 602
    if-nez v4, :cond_2

    .line 603
    const-string v4, "null"

    .line 605
    :cond_2
    const v8, 0x7f0d002d

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #tmpTVTag:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 606
    .restart local v7       #tmpTVTag:Landroid/widget/TextView;
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    const/16 v8, -0x100

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 608
    const v8, 0x7f0d002e

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #tmpTV:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 609
    .restart local v6       #tmpTV:Landroid/widget/TextView;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    const-string v8, "BrowserDownloadPage : SIZE "

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
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

    .line 614
    iget-object v8, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v9, p0, Lcom/android/browser/BrowserDownloadPage;->mDDVersionId:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_6

    .line 615
    const-string v4, "1.0"

    .line 619
    :goto_2
    const v8, 0x7f0d002f

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
    const v8, 0x7f0d0030

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #tmpTV:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 623
    .restart local v6       #tmpTV:Landroid/widget/TextView;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    const-string v8, "BrowserDownloadPage : VERSION "

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
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

    .line 628
    iget-object v8, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v9, p0, Lcom/android/browser/BrowserDownloadPage;->mDDTypeId:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 629
    if-nez v4, :cond_3

    .line 630
    const-string v4, "null"

    .line 632
    :cond_3
    const v8, 0x7f0d0031

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #tmpTVTag:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 633
    .restart local v7       #tmpTVTag:Landroid/widget/TextView;
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    const/16 v8, -0x100

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 635
    const v8, 0x7f0d0032

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #tmpTV:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 636
    .restart local v6       #tmpTV:Landroid/widget/TextView;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    const-string v8, "BrowserDownloadPage : TYPE "

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
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

    .line 641
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

    .line 642
    if-nez v4, :cond_4

    .line 643
    const-string v4, "null"

    .line 645
    :cond_4
    const v8, 0x7f0d0033

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #tmpTVTag:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 646
    .restart local v7       #tmpTVTag:Landroid/widget/TextView;
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    const/16 v8, -0x100

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 648
    const v8, 0x7f0d0034

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #tmpTV:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 649
    .restart local v6       #tmpTV:Landroid/widget/TextView;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    const-string v8, "BrowserDownloadPage : DESCRIPTION "

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
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

    .line 573
    .end local v3           #size:I
    .end local v4           #temp:Ljava/lang/String;
    .end local v6           #tmpTV:Landroid/widget/TextView;
    .end local v7           #tmpTVTag:Landroid/widget/TextView;
    :cond_5
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

    .line 617
    .restart local v3       #size:I
    .restart local v6       #tmpTV:Landroid/widget/TextView;
    .restart local v7       #tmpTVTag:Landroid/widget/TextView;
    :cond_6
    iget-object v8, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v9, p0, Lcom/android/browser/BrowserDownloadPage;->mDDVersionId:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2
.end method
