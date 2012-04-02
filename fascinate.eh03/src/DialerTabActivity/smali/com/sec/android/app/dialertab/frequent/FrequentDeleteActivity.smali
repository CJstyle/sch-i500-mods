.class public Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;
.super Landroid/app/Activity;
.source "FrequentDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$ItemView;,
        Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;
    }
.end annotation


# static fields
.field static final ITEM_ARRAY_ID:Ljava/lang/String; = "freqArrayId"

.field static final ITEM_COUNT:Ljava/lang/String; = "freqCnt"

.field public static final MAKE_LIST_FINISH2:I = 0x2

.field public static mMCursor:Landroid/database/MergeCursor;


# instance fields
.field private final WHICH_OP_ALL_DELTE:I

.field private final WHICH_OP_MULTI_DELETE:I

.field private deleteBtn:Landroid/widget/Button;

.field private delprogressdlg:Landroid/app/ProgressDialog;

.field private everySelectOff:Z

.field private everySelectOn:Z

.field private mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;

.field mBundle:Landroid/os/Bundle;

.field private mCenterFlag:I

.field private mCenterSepPos:I

.field mCheckedArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mFavoCursor:Landroid/database/Cursor;

.field private mFavoriteCnt:I

.field private mFreqCursor:Landroid/database/Cursor;

.field private mFrequentCnt:I

.field public mHandler:Landroid/os/Handler;

.field private mHeaderAllCheckBox:Landroid/widget/CheckBox;

.field private mHeaderSelectAll:Landroid/view/View;

.field private mIsFirstFrequent:Z

.field private volatile mIsListDone:Z

.field private mJustCreated:Z

.field mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMainListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMCursor:Landroid/database/MergeCursor;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mIsFirstFrequent:Z

    .line 71
    iput v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->WHICH_OP_ALL_DELTE:I

    .line 72
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->WHICH_OP_MULTI_DELETE:I

    .line 74
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    .line 75
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMainListView:Landroid/widget/ListView;

    .line 79
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;

    .line 86
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mJustCreated:Z

    .line 87
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mCheckedArray:Ljava/util/ArrayList;

    .line 149
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mBundle:Landroid/os/Bundle;

    .line 317
    iput v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFrequentCnt:I

    .line 318
    iput v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFavoriteCnt:I

    .line 414
    new-instance v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$3;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 750
    new-instance v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$7;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private UpdateCursor()V
    .locals 11

    .prologue
    .line 321
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFreqCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFreqCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFreqCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$Frequent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFreqCursor:Landroid/database/Cursor;

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 328
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const-string v3, "starred=1"

    const/4 v4, 0x0

    sget-object v5, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 332
    new-instance v10, Landroid/database/MatrixCursor;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "count"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    invoke-direct {v10, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 333
    .local v10, frequentZeroCursor:Landroid/database/MatrixCursor;
    new-instance v8, Landroid/database/MatrixCursor;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "count"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    invoke-direct {v8, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 335
    .local v8, favoriteZeroCursor:Landroid/database/MatrixCursor;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFreqCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_e

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFreqCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFrequentCnt:I

    .line 342
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_f

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFavoriteCnt:I

    .line 349
    :goto_1
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFrequentCnt:I

    iget v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFavoriteCnt:I

    add-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 350
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->finish()V

    .line 352
    :cond_2
    new-instance v9, Landroid/database/MatrixCursor;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "count"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    invoke-direct {v9, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 353
    .local v9, frequentSep:Landroid/database/MatrixCursor;
    if-eqz v9, :cond_3

    .line 354
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-15"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFrequentCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "6"

    aput-object v2, v0, v1

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 356
    :cond_3
    new-instance v7, Landroid/database/MatrixCursor;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "count"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "7"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "8"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "6"

    aput-object v2, v0, v1

    invoke-direct {v7, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 357
    .local v7, favoriteSep:Landroid/database/MatrixCursor;
    if-eqz v7, :cond_4

    .line 358
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-10"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFavoriteCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "6"

    aput-object v2, v0, v1

    invoke-virtual {v7, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 361
    :cond_4
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFrequentCnt:I

    if-nez v0, :cond_6

    .line 362
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFrequentCnt:I

    .line 363
    if-eqz v10, :cond_5

    .line 364
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-100"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFrequentCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "6"

    aput-object v2, v0, v1

    invoke-virtual {v10, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 365
    :cond_5
    iput-object v10, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFreqCursor:Landroid/database/Cursor;

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFreqCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 369
    :cond_6
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFavoriteCnt:I

    if-nez v0, :cond_9

    .line 370
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFavoriteCnt:I

    .line 371
    if-eqz v8, :cond_7

    .line 372
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-100"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFavoriteCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "6"

    aput-object v2, v0, v1

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 373
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 376
    :cond_8
    iput-object v8, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 382
    :cond_9
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mIsFirstFrequent:Z

    if-eqz v0, :cond_10

    .line 383
    const/4 v0, 0x4

    new-array v6, v0, [Landroid/database/Cursor;

    const/4 v0, 0x0

    aput-object v9, v6, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFreqCursor:Landroid/database/Cursor;

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v7, v6, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    aput-object v1, v6, v0

    .line 388
    .local v6, cs:[Landroid/database/Cursor;
    :goto_2
    if-eqz v9, :cond_a

    .line 389
    invoke-virtual {v9}, Landroid/database/MatrixCursor;->close()V

    .line 390
    :cond_a
    if-eqz v7, :cond_b

    .line 391
    invoke-virtual {v7}, Landroid/database/MatrixCursor;->close()V

    .line 392
    :cond_b
    sget-object v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMCursor:Landroid/database/MergeCursor;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMCursor:Landroid/database/MergeCursor;

    invoke-virtual {v0}, Landroid/database/MergeCursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 393
    sget-object v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMCursor:Landroid/database/MergeCursor;

    invoke-virtual {v0}, Landroid/database/MergeCursor;->close()V

    .line 395
    :cond_c
    new-instance v0, Landroid/database/MergeCursor;

    invoke-direct {v0, v6}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    sput-object v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMCursor:Landroid/database/MergeCursor;

    .line 396
    sget-object v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMCursor:Landroid/database/MergeCursor;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 397
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mIsFirstFrequent:Z

    if-eqz v0, :cond_11

    .line 398
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFrequentCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mCenterSepPos:I

    .line 399
    const/16 v0, -0xa

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mCenterFlag:I

    .line 404
    :goto_3
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mJustCreated:Z

    if-nez v0, :cond_d

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;

    sget-object v1, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMCursor:Landroid/database/MergeCursor;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 406
    :cond_d
    return-void

    .line 338
    .end local v6           #cs:[Landroid/database/Cursor;
    .end local v7           #favoriteSep:Landroid/database/MatrixCursor;
    .end local v9           #frequentSep:Landroid/database/MatrixCursor;
    :cond_e
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFrequentCnt:I

    goto/16 :goto_0

    .line 345
    :cond_f
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFavoriteCnt:I

    goto/16 :goto_1

    .line 385
    .restart local v7       #favoriteSep:Landroid/database/MatrixCursor;
    .restart local v9       #frequentSep:Landroid/database/MatrixCursor;
    :cond_10
    const/4 v0, 0x4

    new-array v6, v0, [Landroid/database/Cursor;

    const/4 v0, 0x0

    aput-object v7, v6, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v9, v6, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFreqCursor:Landroid/database/Cursor;

    aput-object v1, v6, v0

    .restart local v6       #cs:[Landroid/database/Cursor;
    goto :goto_2

    .line 401
    :cond_11
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFavoriteCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mCenterSepPos:I

    .line 402
    const/16 v0, -0xf

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mCenterFlag:I

    goto :goto_3
.end method

.method private UpdateItemsCheckStates()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 257
    iget-object v9, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;

    invoke-virtual {v9}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->getItemCheckedArray()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 259
    .local v6, itemCntStored:I
    iget-object v9, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;

    invoke-virtual {v9}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 260
    .local v3, crs:Landroid/database/Cursor;
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 261
    .local v5, itemCntReal:I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 262
    const/4 v1, 0x0

    .line 263
    .local v1, countChecked:I
    const/4 v2, 0x0

    .line 265
    .local v2, countHeadAndDummy:I
    iget-object v9, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;

    invoke-virtual {v9}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->getItemCheckedArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 267
    .local v0, checkeditems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v9, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v9

    if-le v5, v9, :cond_3

    .line 268
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 269
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-gez v9, :cond_0

    .line 270
    add-int/lit8 v2, v2, 0x1

    .line 268
    :goto_1
    add-int/lit8 v4, v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0

    .line 273
    :cond_0
    const/4 v8, 0x0

    .line 274
    .local v8, wasFounded:Z
    const/4 v7, 0x0

    .local v7, j:I
    :goto_2
    if-ge v7, v6, :cond_1

    .line 275
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v10, v9, :cond_2

    .line 276
    add-int/lit8 v1, v1, 0x1

    .line 277
    const/4 v8, 0x1

    .line 283
    :cond_1
    iget-object v9, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMainListView:Landroid/widget/ListView;

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v9, v10, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_1

    .line 274
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 286
    .end local v4           #i:I
    .end local v7           #j:I
    .end local v8           #wasFounded:Z
    :cond_3
    sub-int v9, v5, v2

    if-ne v1, v9, :cond_4

    move v9, v12

    :goto_3
    iput-boolean v9, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->everySelectOn:Z

    .line 287
    if-nez v1, :cond_5

    move v9, v12

    :goto_4
    iput-boolean v9, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->everySelectOff:Z

    .line 288
    iget-object v9, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    iget-boolean v10, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->everySelectOn:Z

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 290
    iget-object v9, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->deleteBtn:Landroid/widget/Button;

    iget-boolean v10, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->everySelectOff:Z

    if-nez v10, :cond_6

    move v10, v12

    :goto_5
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 291
    iget-object v9, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->invalidate()V

    .line 292
    return-void

    :cond_4
    move v9, v11

    .line 286
    goto :goto_3

    :cond_5
    move v9, v11

    .line 287
    goto :goto_4

    :cond_6
    move v10, v11

    .line 290
    goto :goto_5
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->updateAllCheckState()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFavoriteCnt:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFrequentCnt:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMainListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mCenterSepPos:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mCenterFlag:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private closeCursor()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFreqCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFreqCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 203
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFreqCursor:Landroid/database/Cursor;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 208
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    .line 210
    :cond_1
    sget-object v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMCursor:Landroid/database/MergeCursor;

    if-eqz v0, :cond_2

    .line 212
    sget-object v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMCursor:Landroid/database/MergeCursor;

    invoke-virtual {v0}, Landroid/database/MergeCursor;->close()V

    .line 213
    sput-object v1, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMCursor:Landroid/database/MergeCursor;

    .line 215
    :cond_2
    return-void
.end method

.method private setFrequentDeleteAdapter()V
    .locals 6

    .prologue
    .line 408
    new-instance v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;

    sget-object v2, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMCursor:Landroid/database/MergeCursor;

    iget v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mCenterSepPos:I

    iget v5, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mCenterFlag:I

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/app/Activity;II)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMainListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMainListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 412
    return-void
.end method

.method private updateAllCheckState()V
    .locals 10

    .prologue
    .line 678
    iget-object v7, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 679
    .local v1, dataCount:I
    const/4 v3, 0x1

    .line 680
    .local v3, everyBodyIsOn:Z
    const/4 v2, 0x1

    .line 682
    .local v2, everyBodyIsOff:Z
    const-string v7, "test"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "headerviewsconut : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " dataCount : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v7, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_2

    or-int v7, v3, v2

    if-eqz v7, :cond_2

    .line 684
    iget-object v7, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    .line 685
    .local v5, id:J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_0

    .line 686
    iget-object v7, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 687
    .local v0, checked:Z
    if-nez v0, :cond_1

    .line 688
    const/4 v3, 0x0

    .line 683
    .end local v0           #checked:Z
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 692
    .restart local v0       #checked:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 696
    .end local v0           #checked:Z
    .end local v5           #id:J
    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 698
    if-eqz v2, :cond_3

    .line 699
    iget-object v7, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->deleteBtn:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 704
    :goto_2
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->everySelectOn:Z

    .line 705
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->everySelectOff:Z

    .line 707
    return-void

    .line 701
    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->deleteBtn:Landroid/widget/Button;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateAllCheckStateAfterResume()V
    .locals 4

    .prologue
    .line 775
    const/4 v0, 0x0

    .line 776
    .local v0, allChecked:Z
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;

    if-eqz v2, :cond_0

    .line 777
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->getItemCheckedArray()Ljava/util/ArrayList;

    move-result-object v1

    .line 778
    .local v1, first:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 779
    const/4 v0, 0x1

    .line 782
    .end local v1           #first:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 783
    return-void
.end method

.method private updateDeleteButtonEnabled()V
    .locals 3

    .prologue
    .line 764
    const/4 v1, 0x0

    .line 765
    .local v1, isHasChecked:Z
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;

    if-eqz v2, :cond_0

    .line 766
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->getItemCheckedArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 767
    .local v0, first:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 768
    const/4 v1, 0x1

    .line 771
    .end local v0           #first:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->deleteBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 772
    return-void
.end method


# virtual methods
.method public clickHandler(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 595
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 598
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMainListView:Landroid/widget/ListView;

    if-eqz v4, :cond_0

    .line 599
    const-string v5, "clickhandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "click"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    move-object v1, v0

    .line 601
    .local v1, checkBox:Landroid/widget/CheckBox;
    iget-object v5, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 602
    .local v2, position:I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    .line 604
    .local v3, sba:Landroid/util/SparseBooleanArray;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 605
    iget-object v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->invalidate()V

    .line 606
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->updateAllCheckState()V

    goto :goto_0

    .line 595
    :pswitch_data_0
    .packed-switch 0x7f0600aa
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "test"

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    sget-boolean v2, Lcom/sec/android/app/dialertab/DialerTabActivity;->IS_QWERTY:Z

    if-nez v2, :cond_0

    .line 96
    invoke-virtual {p0, v6}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->setRequestedOrientation(I)V

    .line 98
    :cond_0
    if-eqz p1, :cond_1

    .line 99
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mBundle:Landroid/os/Bundle;

    .line 101
    :cond_1
    const v2, 0x7f030016

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->setContentView(I)V

    .line 102
    const v2, 0x7f090037

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->setTitle(I)V

    .line 104
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 105
    .local v1, i:Landroid/content/Intent;
    if-eqz p1, :cond_2

    .line 106
    const-string v2, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "test"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    const-string v2, "isFrequent"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mIsFirstFrequent:Z

    .line 113
    const v2, 0x7f0600cc

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->deleteBtn:Landroid/widget/Button;

    .line 114
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->deleteBtn:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 116
    const v2, 0x7f03001a

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    .line 117
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    const v3, 0x7f0600c3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    .line 119
    new-instance v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$1;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)V

    .line 130
    .local v0, allCheckListener:Landroid/view/View$OnClickListener;
    new-instance v2, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$2;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 137
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    .line 138
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 139
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v2, 0x7f0600ce

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMainListView:Landroid/widget/ListView;

    .line 142
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMainListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 143
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMainListView:Landroid/widget/ListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 145
    iput-boolean v6, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mJustCreated:Z

    .line 147
    return-void

    .line 108
    .end local v0           #allCheckListener:Landroid/view/View$OnClickListener;
    :cond_2
    const-string v2, "test"

    const-string v2, "onCreate : bundle null"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->closeCursor()V

    .line 220
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 221
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 196
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 227
    if-nez p1, :cond_0

    .line 253
    :goto_0
    return-void

    .line 235
    :cond_0
    const-string v0, "freqArrayId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mCheckedArray:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 169
    const-string v0, "test"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 172
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->UpdateCursor()V

    .line 174
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mJustCreated:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->setFrequentDeleteAdapter()V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mJustCreated:Z

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mCheckedArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mCheckedArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->setItemChecked(Ljava/util/ArrayList;)V

    .line 183
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->updateDeleteButtonEnabled()V

    .line 184
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->updateAllCheckStateAfterResume()V

    .line 185
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->UpdateItemsCheckStates()V

    .line 190
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 158
    const-string v0, "test"

    const-string v1, "onSaveInstanceState(Bundle outState)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 160
    const-string v0, "freqArrayId"

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->getItemCheckedArray()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 162
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mBundle:Landroid/os/Bundle;

    .line 163
    return-void
.end method

.method public setAllItemChecked(Z)V
    .locals 4
    .parameter "bCheckStatus"

    .prologue
    .line 425
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 427
    .local v0, dataCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 428
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;

    invoke-virtual {v2, v1, p1}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->setItemChecked(IZ)V

    .line 429
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMainListView:Landroid/widget/ListView;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 427
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 431
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->deleteBtn:Landroid/widget/Button;

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 433
    if-eqz p1, :cond_1

    .line 435
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->everySelectOn:Z

    .line 441
    :goto_1
    return-void

    .line 439
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->everySelectOn:Z

    goto :goto_1
.end method

.method public showDeleteConfirmDlg(II)V
    .locals 3
    .parameter "msgId"
    .parameter "iOpIndex"

    .prologue
    .line 612
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090037

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090023

    new-instance v2, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$5;

    invoke-direct {v2, p0, p2}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$5;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090022

    new-instance v2, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$4;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 650
    return-void
.end method

.method public showProgress(I)V
    .locals 2
    .parameter "MaxCnt"

    .prologue
    .line 654
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 655
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 658
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    const v1, 0x7f090043

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 661
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$6;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 674
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 675
    return-void
.end method

.method public softkeyRun1(Landroid/view/View;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    const v0, 0x7f09003f

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->showDeleteConfirmDlg(II)V

    .line 588
    :goto_0
    return-void

    .line 586
    :cond_0
    const v0, 0x7f090041

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->showDeleteConfirmDlg(II)V

    goto :goto_0
.end method

.method public softkeyRun2(Landroid/view/View;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->finish()V

    .line 593
    return-void
.end method
