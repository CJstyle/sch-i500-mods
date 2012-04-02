.class public Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;
.super Landroid/app/Activity;
.source "LogDetailDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;
    }
.end annotation


# static fields
.field public static final WHICH_OP_ALL_DELTE:I = 0x1

.field public static final WHICH_OP_MULTI_DELETE:I = 0x2


# instance fields
.field private final COLUMN_NAMES:[Ljava/lang/String;

.field ITEM_ARRAY:Ljava/lang/String;

.field ITEM_COUNT:Ljava/lang/String;

.field private final QUERY_MAX_LEN:I

.field private checkedItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private deleteBtn:Landroid/widget/Button;

.field private deletedData:Z

.field private delprogressdlg:Landroid/app/ProgressDialog;

.field mAdapter:Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;

.field mBundle:Landroid/os/Bundle;

.field private mCursor:Landroid/database/Cursor;

.field public mHandler:Landroid/os/Handler;

.field private mHeaderAllCheckBox:Landroid/widget/CheckBox;

.field private mHeaderSelectAll:Landroid/view/View;

.field private volatile mIsListDone:Z

.field private mJustCreated:Z

.field private mListView:Landroid/widget/ListView;

.field mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMainSelection:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->QUERY_MAX_LEN:I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    .line 63
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->deletedData:Z

    .line 65
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "number"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "logtype"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "duration"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->COLUMN_NAMES:[Ljava/lang/String;

    .line 74
    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    .line 77
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mJustCreated:Z

    .line 348
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$5;-><init>(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 361
    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mBundle:Landroid/os/Bundle;

    .line 362
    const-string v0, "item_count"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->ITEM_COUNT:Ljava/lang/String;

    .line 363
    const-string v0, "item_array"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->ITEM_ARRAY:Ljava/lang/String;

    .line 415
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$6;-><init>(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mMainSelection:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->deletedData:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->updateAllCheckState()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mIsListDone:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mIsListDone:Z

    return p1
.end method

.method private updateAllCheckState()V
    .locals 7

    .prologue
    .line 448
    const/4 v3, 0x1

    .line 449
    .local v3, everyBodyIsOn:Z
    const/4 v2, 0x1

    .line 450
    .local v2, everyBodyIsOff:Z
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 452
    .local v1, dataCount:I
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_1

    or-int v5, v3, v2

    if-eqz v5, :cond_1

    .line 453
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 454
    .local v0, checked:Z
    if-nez v0, :cond_0

    .line 455
    const/4 v3, 0x0

    .line 452
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 459
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 462
    .end local v0           #checked:Z
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 463
    if-eqz v2, :cond_2

    .line 464
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->deleteBtn:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 467
    :goto_2
    return-void

    .line 466
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->deleteBtn:Landroid/widget/Button;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method public clickHandler(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 174
    :goto_0
    return-void

    .line 165
    :pswitch_0
    const-string v5, "clickhandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "click"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mListView:Landroid/widget/ListView;

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

    .line 166
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    move-object v1, v0

    .line 167
    .local v1, checkBox:Landroid/widget/CheckBox;
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 168
    .local v2, position:I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    .line 169
    .local v3, sba:Landroid/util/SparseBooleanArray;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 170
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->invalidate()V

    .line 171
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->updateAllCheckState()V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x7f0600aa
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const v9, 0x7f0600c3

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    if-eqz p1, :cond_0

    .line 84
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mBundle:Landroid/os/Bundle;

    .line 91
    :cond_0
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->setContentView(I)V

    .line 92
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->setTitle(I)V

    .line 94
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 96
    .local v7, i:Landroid/content/Intent;
    const-string v0, "SQL"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mMainSelection:Ljava/lang/String;

    .line 101
    const v0, 0x7f0600d7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 104
    const v0, 0x7f03001a

    invoke-static {p0, v0, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$1;-><init>(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->COLUMN_NAMES:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mMainSelection:Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mCursor:Landroid/database/Cursor;

    .line 133
    const v0, 0x7f0600cc

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->deleteBtn:Landroid/widget/Button;

    .line 134
    invoke-virtual {p0, v9}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 136
    .local v6, allChBox:Landroid/widget/CheckBox;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->deleteBtn:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 138
    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 141
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mJustCreated:Z

    .line 142
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 472
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 473
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "bundle"

    .prologue
    .line 389
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 390
    if-nez p1, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mIsListDone:Z

    if-eqz v4, :cond_0

    .line 397
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->ITEM_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 399
    .local v3, itemCnt:I
    if-lez v3, :cond_2

    .line 400
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->ITEM_ARRAY:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    .line 402
    .local v0, checkedarray:[Z
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .line 404
    .local v1, headerViewsCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 405
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    add-int v5, v2, v1

    aget-boolean v6, v0, v2

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 404
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 410
    .end local v0           #checkedarray:[Z
    .end local v1           #headerViewsCount:I
    .end local v2           #i:I
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->invalidate()V

    .line 411
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->updateAllCheckState()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mJustCreated:Z

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->startCheckProcessing()V

    .line 156
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mJustCreated:Z

    .line 159
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "outState"

    .prologue
    .line 367
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 369
    const-string v4, "test"

    const-string v5, "onSaveInstanceState(Bundle outState)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 373
    .local v3, itemCnt:I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->ITEM_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 375
    new-array v0, v3, [Z

    .line 377
    .local v0, checkedArray:[Z
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .line 379
    .local v1, headerViewsCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 380
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    add-int v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v4

    aput-boolean v4, v0, v2

    .line 379
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 383
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->ITEM_ARRAY:Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 384
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mBundle:Landroid/os/Bundle;

    .line 385
    return-void
.end method

.method public setAllItemChecked(Z)V
    .locals 3
    .parameter "bCheckStatus"

    .prologue
    .line 355
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 356
    .local v0, dataCount:I
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 357
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->deleteBtn:Landroid/widget/Button;

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 360
    return-void
.end method

.method public showDeleteConfirmDlg(II)V
    .locals 3
    .parameter "msgId"
    .parameter "iOpIndex"

    .prologue
    .line 280
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090023

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$3;

    invoke-direct {v2, p0, p2}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$3;-><init>(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090022

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$2;-><init>(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 316
    return-void
.end method

.method public showProgress()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$4;-><init>(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 346
    return-void
.end method

.method public softkeyRun1(Landroid/view/View;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    const v0, 0x7f090026

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->showDeleteConfirmDlg(II)V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    const v0, 0x7f090040

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->showDeleteConfirmDlg(II)V

    goto :goto_0
.end method

.method public softkeyRun2(Landroid/view/View;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->finish()V

    .line 275
    return-void
.end method

.method public startCheckProcessing()V
    .locals 2

    .prologue
    .line 428
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mIsListDone:Z

    .line 429
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$7;-><init>(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 444
    .local v0, thread:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 445
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 446
    return-void
.end method
