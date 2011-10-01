.class public Lcom/android/mms/ui/ConversationListDel;
.super Landroid/app/ListActivity;
.source "ConversationListDel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;,
        Lcom/android/mms/ui/ConversationListDel$DeleteThreadListener;
    }
.end annotation


# static fields
.field public static isDeleting:Ljava/lang/Boolean;

.field public static mCheckBox:Landroid/widget/CheckBox;

.field private static mDeleteLockedMessages:Z

.field private static mDialog:Landroid/app/AlertDialog;

.field static mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;


# instance fields
.field private countnToDelete:I

.field private mConvListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

.field private mConvListView:Landroid/widget/ListView;

.field private mOldThreadIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHandler:Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;

.field private mSelectAllCheck:Landroid/widget/CheckBox;

.field private mSelectedThreadIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mThreadListKeyListener:Landroid/view/View$OnKeyListener;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/ConversationListDel;->mDialog:Landroid/app/AlertDialog;

    .line 106
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ConversationListDel;->isDeleting:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 474
    new-instance v0, Lcom/android/mms/ui/ConversationListDel$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListDel$5;-><init>(Lcom/android/mms/ui/ConversationListDel;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListDel;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    .line 589
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationListDel;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel;->mConvListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ConversationListDel;)Lcom/android/mms/ui/ConversationListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel;->mConvListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationListDel;)Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel;->mQueryHandler:Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/mms/ui/ConversationListDel;->mDeleteLockedMessages:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    sput-boolean p0, Lcom/android/mms/ui/ConversationListDel;->mDeleteLockedMessages:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ConversationListDel;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel;->mSelectedThreadIds:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ConversationListDel;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListDel;->processListRestoreToken(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ConversationListDel;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ConversationListDel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/mms/ui/ConversationListDel;->countnToDelete:I

    return v0
.end method

.method static synthetic access$710(Lcom/android/mms/ui/ConversationListDel;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/mms/ui/ConversationListDel;->countnToDelete:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/mms/ui/ConversationListDel;->countnToDelete:I

    return v0
.end method

.method public static confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V
    .locals 1
    .parameter "threadId"
    .parameter "handler"

    .prologue
    .line 433
    const/16 v0, 0x70b

    invoke-static {p2, p0, p1, v0}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V

    .line 435
    return-void
.end method

.method public static confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListDel$DeleteThreadListener;ZZLandroid/content/Context;)V
    .locals 6
    .parameter "listener"
    .parameter "deleteAll"
    .parameter "hasLockedMessages"
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 450
    const v3, 0x7f03000e

    invoke-static {p3, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 451
    .local v2, contents:Landroid/view/View;
    const v3, 0x7f08004a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 452
    .local v1, checkbox:Landroid/widget/CheckBox;
    if-nez p2, :cond_0

    .line 453
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 462
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 463
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_1

    const v3, 0x7f0900af

    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 470
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/mms/ui/ConversationListDel;->mDialog:Landroid/app/AlertDialog;

    .line 471
    sget-object v3, Lcom/android/mms/ui/ConversationListDel;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 472
    return-void

    .line 455
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationListDel$DeleteThreadListener;->setDeleteLockedMessage(Z)V

    .line 456
    new-instance v3, Lcom/android/mms/ui/ConversationListDel$4;

    invoke-direct {v3, p0, v1}, Lcom/android/mms/ui/ConversationListDel$4;-><init>(Lcom/android/mms/ui/ConversationListDel$DeleteThreadListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 463
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    const v3, 0x7f0900ae

    goto :goto_1
.end method

.method private deleteSelectedItems()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 371
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListDel;->mConvListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 372
    .local v0, count:I
    const/16 v3, 0x70b

    .line 374
    .local v3, token:I
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListDel;->mSelectedThreadIds:Ljava/util/HashSet;

    if-nez v4, :cond_0

    .line 375
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/mms/ui/ConversationListDel;->mSelectedThreadIds:Ljava/util/HashSet;

    .line 379
    :goto_0
    sget-object v4, Lcom/android/mms/ui/ConversationListItem;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 380
    const-wide/16 v4, -0x1

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListDel;->mQueryHandler:Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;

    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/ConversationListDel;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    .line 391
    :goto_1
    return-void

    .line 377
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListDel;->mSelectedThreadIds:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    goto :goto_0

    .line 382
    :cond_1
    const/4 v1, 0x1

    .local v1, i:I
    :goto_2
    if-gt v1, v0, :cond_3

    .line 383
    sget-object v4, Lcom/android/mms/ui/ConversationListItem;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 384
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListDel;->mConvListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 385
    .local v2, threadId:Ljava/lang/Long;
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListDel;->mSelectedThreadIds:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 382
    .end local v2           #threadId:Ljava/lang/Long;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 388
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListDel;->mQueryHandler:Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;

    invoke-static {v4, v3}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedThread(Landroid/content/AsyncQueryHandler;I)V

    .line 389
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListDel;->mSelectedThreadIds:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    iput v4, p0, Lcom/android/mms/ui/ConversationListDel;->countnToDelete:I

    goto :goto_1
.end method

.method public static ensureUpdateDeletable()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 232
    sget-boolean v0, Lcom/android/mms/ui/DeleteThreadActivity;->isDeleting:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/ui/DeleteThreadActivity;->isOffScreen()Z

    move-result v0

    if-ne v1, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Z)V
    .locals 3
    .parameter "justcreate"

    .prologue
    const/4 v2, 0x1

    .line 751
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListDel;->setContentView(I)V

    .line 752
    const v0, 0x7f0900be

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListDel;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListDel;->mTitle:Ljava/lang/CharSequence;

    .line 754
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListDel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListDel;->mConvListView:Landroid/widget/ListView;

    .line 755
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListDel;->initResourceHeader()V

    .line 756
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListDel;->initResourceRefs()V

    .line 757
    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListDel;->mConvListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    .line 758
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListDel;->initListAdapter()V

    .line 760
    new-instance v0, Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListDel;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;-><init>(Lcom/android/mms/ui/ConversationListDel;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListDel;->mQueryHandler:Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;

    .line 761
    invoke-static {}, Lcom/android/mms/ui/ConversationListDel;->ensureUpdateDeletable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    invoke-static {}, Lcom/android/mms/ui/ConversationListDel;->updateDeletable()V

    .line 764
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListDel;->startInitQuery()V

    .line 766
    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListDel;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    sput-object p0, Lcom/android/mms/ui/ConversationListDel;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 767
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    .line 768
    sget-object v0, Lcom/android/mms/ui/ConversationListDel;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 771
    :goto_0
    return-void

    .line 770
    :cond_2
    sget-object v0, Lcom/android/mms/ui/ConversationListDel;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initListAdapter()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel;->mConvListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 285
    :cond_0
    new-instance v0, Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ConversationListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListDel;->mConvListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    .line 286
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel;->mConvListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListDel;->mConvListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 287
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel;->mConvListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel;->mConvListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListDel;->mConvListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    goto :goto_0
.end method

.method private initResourceHeader()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 239
    const v1, 0x7f03002b

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 246
    .local v0, mAllItem:Landroid/widget/LinearLayout;
    const v1, 0x7f080038

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    sput-object v1, Lcom/android/mms/ui/ConversationListDel;->mCheckBox:Landroid/widget/CheckBox;

    .line 247
    sget-object v1, Lcom/android/mms/ui/ConversationListDel;->mCheckBox:Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListDel;->mSelectAllCheck:Landroid/widget/CheckBox;

    .line 248
    sget-object v1, Lcom/android/mms/ui/ConversationListItem;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_0

    .line 249
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v1, Lcom/android/mms/ui/ConversationListItem;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 250
    :cond_0
    sget-object v1, Lcom/android/mms/ui/ConversationListDel;->mCheckBox:Landroid/widget/CheckBox;

    sget-object v2, Lcom/android/mms/ui/ConversationListItem;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 260
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListDel;->mConvListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 261
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListDel;->mConvListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 262
    return-void
.end method

.method private initResourceRefs()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel;->mConvListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/mms/ui/ConversationListDel$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListDel$3;-><init>(Lcom/android/mms/ui/ConversationListDel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 279
    return-void
.end method

.method public static isOffScreen()Z
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeThreadsIdsArray()Ljava/util/HashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 211
    .local v3, threadIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListDel;->mConvListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-gt v0, v4, :cond_1

    .line 212
    sget-object v4, Lcom/android/mms/ui/ConversationListItem;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 213
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListDel;->mConvListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 214
    .local v1, threadId:J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 211
    .end local v1           #threadId:J
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_1
    return-object v3
.end method

.method private processListRestoreToken(Landroid/database/Cursor;)V
    .locals 8
    .parameter "cursor"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 492
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListDel;->mSelectAllCheck:Landroid/widget/CheckBox;

    sput-object v4, Lcom/android/mms/ui/ConversationListDel;->mCheckBox:Landroid/widget/CheckBox;

    .line 494
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListDel;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationListDel;->setTitle(Ljava/lang/CharSequence;)V

    .line 495
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ConversationListDel;->setProgressBarIndeterminateVisibility(Z)V

    .line 496
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListDel;->mConvListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v4, p1}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 498
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListDel;->mOldThreadIds:Ljava/util/HashSet;

    if-eqz v4, :cond_4

    .line 499
    const/4 v0, 0x0

    .line 501
    .local v0, checkedCount:I
    sget-object v4, Lcom/android/mms/ui/ConversationListItem;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v4, :cond_1

    .line 502
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v4, Lcom/android/mms/ui/ConversationListItem;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 508
    :goto_0
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListDel;->mConvListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-gt v1, v4, :cond_2

    .line 509
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListDel;->mConvListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    .line 510
    .local v2, threadId:J
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListDel;->mOldThreadIds:Ljava/util/HashSet;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 511
    sget-object v4, Lcom/android/mms/ui/ConversationListItem;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 512
    add-int/lit8 v0, v0, 0x1

    .line 508
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 505
    .end local v1           #i:I
    .end local v2           #threadId:J
    :cond_1
    sget-object v4, Lcom/android/mms/ui/ConversationListItem;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    goto :goto_0

    .line 515
    .restart local v1       #i:I
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListDel;->mConvListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V

    .line 517
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ne v0, v4, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 519
    sget-object v4, Lcom/android/mms/ui/ConversationListItem;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 520
    sput-boolean v6, Lcom/android/mms/ui/ConversationListItem;->isManualCheck:Z

    .line 521
    sget-object v4, Lcom/android/mms/ui/ConversationListDel;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 524
    :cond_3
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/mms/ui/ConversationListDel;->mOldThreadIds:Ljava/util/HashSet;

    .line 526
    .end local v0           #checkedCount:I
    .end local v1           #i:I
    :cond_4
    return-void
.end method

.method private startAsyncQuery(I)V
    .locals 2
    .parameter "token"

    .prologue
    .line 361
    const v1, 0x7f09000e

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListDel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListDel;->setTitle(Ljava/lang/CharSequence;)V

    .line 362
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListDel;->setProgressBarIndeterminateVisibility(Z)V

    .line 364
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListDel;->mQueryHandler:Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;

    invoke-static {v1, p1}, Lcom/android/mms/data/Conversation;->startQueryForAll(Landroid/content/AsyncQueryHandler;I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 366
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private startInitQuery()V
    .locals 1

    .prologue
    .line 356
    const/16 v0, 0x6a5

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListDel;->startAsyncQuery(I)V

    .line 357
    return-void
.end method

.method private startRestoreQuery()V
    .locals 1

    .prologue
    .line 352
    const/16 v0, 0x70d

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListDel;->startAsyncQuery(I)V

    .line 353
    return-void
.end method

.method private updateCheckedInfo(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 204
    const-string v0, "threadIdentifiersInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListDel;->mOldThreadIds:Ljava/util/HashSet;

    .line 206
    return-void
.end method

.method public static updateDeletable()V
    .locals 2

    .prologue
    .line 118
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationListDel;->updateDeletable(J)V

    .line 119
    return-void
.end method

.method public static updateDeletable(J)V
    .locals 11
    .parameter "threadId"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 122
    const-string v6, "Mms/ConversationListDel"

    const-string v7, "begin updateDeletable"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x1

    .line 124
    .local v0, deletable:Z
    if-eqz v0, :cond_0

    move v1, v9

    .line 125
    .local v1, newDeletable:I
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/MmsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 129
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v6, "deletable = %d"

    new-array v7, v9, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    move v8, v10

    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, whereDeletable:Ljava/lang/String;
    const-wide/16 v6, -0x1

    cmp-long v6, p0, v6

    if-lez v6, :cond_2

    const-string v6, " AND %s = %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "thread_id"

    aput-object v8, v7, v10

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 133
    .local v5, whereThreadId:Ljava/lang/String;
    :goto_2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 134
    .local v3, values:Landroid/content/ContentValues;
    const-string v6, "deletable"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/android/mms/ui/ConversationListDel$1;

    invoke-direct {v7, v2, v3, v4, v5}, Lcom/android/mms/ui/ConversationListDel$1;-><init>(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 146
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/android/mms/ui/ConversationListDel$2;

    invoke-direct {v7, v2, v3, v4, v5}, Lcom/android/mms/ui/ConversationListDel$2;-><init>(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 153
    return-void

    .end local v1           #newDeletable:I
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #values:Landroid/content/ContentValues;
    .end local v4           #whereDeletable:Ljava/lang/String;
    .end local v5           #whereThreadId:Ljava/lang/String;
    :cond_0
    move v1, v10

    .line 124
    goto :goto_0

    .restart local v1       #newDeletable:I
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    :cond_1
    move v8, v9

    .line 129
    goto :goto_1

    .line 130
    .restart local v4       #whereDeletable:Ljava/lang/String;
    :cond_2
    const-string v6, ""

    move-object v5, v6

    goto :goto_2
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 745
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 747
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListDel;->init(Z)V

    .line 748
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListDel;->requestWindowFeature(I)Z

    .line 162
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListDel;->init(Z)V

    .line 188
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 343
    sget-object v0, Lcom/android/mms/ui/ConversationListDel;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 344
    sget-object v0, Lcom/android/mms/ui/ConversationListDel;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 346
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/ConversationListItem;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 347
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 349
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 394
    packed-switch p1, :pswitch_data_0

    .line 407
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 400
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel;->mSelectedThreadIds:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel;->mSelectedThreadIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 402
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/ConversationListDel;->mDeleteLockedMessages:Z

    .line 403
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListDel;->finish()V

    .line 404
    const/4 v0, 0x1

    goto :goto_0

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 413
    const-string v2, "Mms/ConversationListDel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onListItemClick: position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    if-nez p3, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    instance-of v2, p2, Lcom/android/mms/ui/ConversationListItem;

    if-eqz v2, :cond_0

    .line 419
    move-object v0, p2

    check-cast v0, Lcom/android/mms/ui/ConversationListItem;

    move-object v1, v0

    .line 420
    .local v1, headerView:Lcom/android/mms/ui/ConversationListItem;
    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListItem;->getConversationListItemData()Lcom/android/mms/ui/ConversationListItemData;

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 297
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 192
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 193
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListDel;->startRestoreQuery()V

    .line 194
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 199
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListDel;->updateCheckedInfo(Landroid/os/Bundle;)V

    .line 200
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 223
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 225
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListDel;->makeThreadsIdsArray()Ljava/util/HashSet;

    move-result-object v0

    .line 226
    .local v0, threadIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const-string v1, "threadIdentifiersInfo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 228
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListDel;->updateCheckedInfo(Landroid/os/Bundle;)V

    .line 229
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 301
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 303
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListDel;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xef

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 329
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 332
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 336
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 340
    return-void
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 731
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListDel;->deleteSelectedItems()V

    .line 732
    return-void
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel;->mSelectedThreadIds:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel;->mSelectedThreadIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 740
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/ConversationListDel;->mDeleteLockedMessages:Z

    .line 741
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListDel;->finish()V

    .line 742
    return-void
.end method
