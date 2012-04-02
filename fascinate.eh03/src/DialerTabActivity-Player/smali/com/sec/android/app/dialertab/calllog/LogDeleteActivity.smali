.class public Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;
.super Landroid/app/Activity;
.source "LogDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$ItemView;,
        Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;
    }
.end annotation


# static fields
.field public static final MAKE_LIST_FINISH:I = 0x1


# instance fields
.field ITEM_ARRAY:Ljava/lang/String;

.field ITEM_COUNT:Ljava/lang/String;

.field private final QUERY_MAX_LEN:I

.field VIEW_BY:Ljava/lang/String;

.field private final WHICH_OP_ALL_DELTE:I

.field private final WHICH_OP_MULTI_DELETE:I

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

.field private delprogressdlg:Landroid/app/ProgressDialog;

.field mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;

.field mBundle:Landroid/os/Bundle;

.field private mCursor:Landroid/database/Cursor;

.field public mHandler:Landroid/os/Handler;

.field private mHeaderAllCheckBox:Landroid/widget/CheckBox;

.field private mHeaderSelectAll:Landroid/view/View;

.field private volatile mIsListDone:Z

.field private mListView:Landroid/widget/ListView;

.field mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPickItems:Z

.field private mViewBy:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->QUERY_MAX_LEN:I

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->WHICH_OP_ALL_DELTE:I

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->WHICH_OP_MULTI_DELETE:I

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mPickItems:Z

    .line 77
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    .line 190
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mBundle:Landroid/os/Bundle;

    .line 191
    const-string v0, "view_by"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->VIEW_BY:Ljava/lang/String;

    .line 192
    const-string v0, "item_count"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->ITEM_COUNT:Ljava/lang/String;

    .line 193
    const-string v0, "item_array"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->ITEM_ARRAY:Ljava/lang/String;

    .line 269
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$3;-><init>(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mHandler:Landroid/os/Handler;

    .line 549
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$7;-><init>(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 591
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mIsListDone:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mIsListDone:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mViewBy:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->updateAllCheckState()V

    return-void
.end method

.method private updateAllCheckState()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 565
    const/4 v3, 0x1

    .line 566
    .local v3, everyBodyIsOn:Z
    const/4 v2, 0x1

    .line 567
    .local v2, everyBodyIsOff:Z
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 569
    .local v1, dataCount:I
    const-string v7, "test"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "headerviewsconut : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " dataCount : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_2

    or-int v7, v3, v2

    if-eqz v7, :cond_2

    .line 571
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    .line 572
    .local v5, id:J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_0

    .line 573
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 574
    .local v0, checked:Z
    if-nez v0, :cond_1

    .line 575
    const/4 v3, 0x0

    .line 570
    .end local v0           #checked:Z
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 578
    .restart local v0       #checked:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 581
    .end local v0           #checked:Z
    .end local v5           #id:J
    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v7

    if-ne v10, v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCount()I

    move-result v7

    if-ne v10, v7, :cond_3

    .line 582
    const/4 v3, 0x0

    .line 584
    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 585
    if-eqz v2, :cond_4

    .line 586
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->deleteBtn:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 589
    :goto_2
    return-void

    .line 588
    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->deleteBtn:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method public clickHandler(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 505
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 517
    :goto_0
    return-void

    .line 507
    :pswitch_0
    const-string v5, "clickhandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "click"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

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

    .line 508
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    move-object v1, v0

    .line 509
    .local v1, checkBox:Landroid/widget/CheckBox;
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 510
    .local v2, position:I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    .line 512
    .local v3, sba:Landroid/util/SparseBooleanArray;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 513
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->invalidate()V

    .line 514
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->updateAllCheckState()V

    goto :goto_0

    .line 505
    :pswitch_data_0
    .packed-switch 0x7f0600aa
        :pswitch_0
    .end packed-switch
.end method

.method public getSelectedItems()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, checked:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    .local v3, sb:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 432
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 433
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 434
    .local v4, viewid:J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 435
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_0

    .line 436
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mCursor:Landroid/database/Cursor;

    sub-int v7, v1, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 437
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mCursor:Landroid/database/Cursor;

    const-string v8, "name"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mCursor:Landroid/database/Cursor;

    const-string v8, "number"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #viewid:J
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v9

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 451
    new-instance v1, Landroid/content/Intent;

    .end local v1           #i:I
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 452
    .local v1, i:Landroid/content/Intent;
    const-string v6, "result"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v1}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->setResult(ILandroid/content/Intent;)V

    .line 454
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f09005e

    const v6, 0x7f0600c3

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    sget-boolean v2, Lcom/sec/android/app/dialertab/DialerTabActivity;->IS_QWERTY:Z

    if-nez v2, :cond_0

    .line 87
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->setRequestedOrientation(I)V

    .line 89
    :cond_0
    if-eqz p1, :cond_1

    .line 90
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mBundle:Landroid/os/Bundle;

    .line 92
    :cond_1
    const v2, 0x7f03001b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->setContentView(I)V

    .line 93
    const v2, 0x7f090014

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->setTitle(I)V

    .line 95
    const v2, 0x7f0600d1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

    .line 96
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 97
    const v2, 0x7f03001a

    invoke-static {p0, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    .line 98
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    .line 101
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 103
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 105
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$1;-><init>(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 122
    .local v1, i:Landroid/content/Intent;
    const-string v2, "ViewBy"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mViewBy:I

    .line 123
    const-string v2, "PICK_ITEM"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mPickItems:Z

    .line 125
    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mViewBy:I

    packed-switch v2, :pswitch_data_0

    .line 142
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;

    invoke-direct {v2, p0, v4, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mCursor:Landroid/database/Cursor;

    .line 145
    :goto_0
    const v2, 0x7f0600cc

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->deleteBtn:Landroid/widget/Button;

    .line 146
    invoke-virtual {p0, v6}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 148
    .local v0, allChBox:Landroid/widget/CheckBox;
    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mPickItems:Z

    if-eqz v2, :cond_2

    .line 149
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->deleteBtn:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setText(I)V

    .line 150
    invoke-virtual {p0, v7}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->setTitle(I)V

    .line 153
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->deleteBtn:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 154
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 155
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 157
    const-string v2, "SYLEE"

    const-string v3, "SYLEE - mHeaderAllCheckBox & mHeaderSelectAll disable setClickable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 159
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setClickable(Z)V

    .line 161
    :cond_3
    return-void

    .line 127
    .end local v0           #allChBox:Landroid/widget/CheckBox;
    :pswitch_0
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;

    invoke-direct {v2, p0, v4, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 130
    :pswitch_1
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;

    const-string v3, "type=3"

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 134
    :pswitch_2
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;

    const-string v3, "type=2"

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 138
    :pswitch_3
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;

    const-string v3, "type=1"

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 188
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 75
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "bundle"

    .prologue
    .line 219
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 220
    if-nez p1, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mIsListDone:Z

    if-eqz v4, :cond_0

    .line 227
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->ITEM_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 228
    .local v3, itemCnt:I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->VIEW_BY:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mViewBy:I

    .line 229
    if-lez v3, :cond_3

    .line 231
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->ITEM_ARRAY:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    .line 232
    .local v0, checkedarray:[Z
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .line 234
    .local v1, headerViewsCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 235
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

    add-int v5, v2, v1

    aget-boolean v6, v0, v2

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 238
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->updateAllCheckState()V

    .line 242
    .end local v0           #checkedarray:[Z
    .end local v1           #headerViewsCount:I
    .end local v2           #i:I
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->invalidate()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 167
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->startCheckProcessing()V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 176
    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->setAllItemChecked(Z)V

    .line 181
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 179
    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->setAllItemChecked(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "outState"

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 200
    const-string v4, "test"

    const-string v5, "onSaveInstanceState(Bundle outState)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 203
    .local v3, itemCnt:I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->ITEM_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->VIEW_BY:Ljava/lang/String;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mViewBy:I

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    new-array v0, v3, [Z

    .line 207
    .local v0, checkedArray:[Z
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .line 209
    .local v1, headerViewsCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 210
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

    add-int v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v4

    aput-boolean v4, v0, v2

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->ITEM_ARRAY:Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 214
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mBundle:Landroid/os/Bundle;

    .line 215
    return-void
.end method

.method public setAllItemChecked(Z)V
    .locals 3
    .parameter "bCheckStatus"

    .prologue
    .line 556
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 557
    .local v0, dataCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 558
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 557
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 560
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->deleteBtn:Landroid/widget/Button;

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 562
    return-void
.end method

.method public showDeleteConfirmDlg(II)V
    .locals 3
    .parameter "msgId"
    .parameter "iOpIndex"

    .prologue
    .line 463
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090023

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$5;

    invoke-direct {v2, p0, p2}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$5;-><init>(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090022

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$4;-><init>(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 503
    return-void
.end method

.method public showProgress()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 521
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 525
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$6;-><init>(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 546
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 547
    return-void
.end method

.method public softkeyRun1(Landroid/view/View;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mPickItems:Z

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->getSelectedItems()V

    .line 417
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->finish()V

    .line 426
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    const v0, 0x7f090025

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->showDeleteConfirmDlg(II)V

    goto :goto_0

    .line 424
    :cond_1
    const v0, 0x7f090040

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->showDeleteConfirmDlg(II)V

    goto :goto_0
.end method

.method public softkeyRun2(Landroid/view/View;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->finish()V

    .line 459
    return-void
.end method

.method public startCheckProcessing()V
    .locals 2

    .prologue
    .line 248
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mIsListDone:Z

    .line 249
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$2;-><init>(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 264
    .local v0, thread:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 265
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 266
    return-void
.end method
