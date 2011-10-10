.class public Lcom/android/mms/ui/ConversationList;
.super Lcom/nemustech/tiffany/widget/TFListActivity;
.source "ConversationList.java"

# interfaces
.implements Lcom/android/mms/util/DraftCache$OnDraftChangedListener;
.implements Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;,
        Lcom/android/mms/ui/ConversationList$DeleteThreadListener;
    }
.end annotation


# static fields
.field private static final MMS_ID_PROJECTION:[Ljava/lang/String;

.field private static final SMS_ID_PROJECTION:[Ljava/lang/String;

.field static headerView:Lcom/android/mms/ui/ConversationListItem;

.field public static isCmas:Z


# instance fields
.field private final mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

.field private final mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mFirstItemId:J

.field private mHandler:Landroid/os/Handler;

.field private mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

.field private mListView:Lcom/nemustech/tiffany/widget/TFListView;

.field private mNeedToMarkAsRead:Z

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

.field private mSweepHandler:Lcom/android/mms/ui/SweepHandler;

.field private final mThreadListKeyListener:Landroid/view/View$OnKeyListener;

.field private mTitle:Ljava/lang/CharSequence;

.field mTotalConversations:Landroid/widget/TextView;

.field private mVisiblePosition:I

.field private onNewMessage:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "_id"

    .line 142
    sput-boolean v2, Lcom/android/mms/ui/ConversationList;->isCmas:Z

    .line 151
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v4, v0, v2

    sput-object v0, Lcom/android/mms/ui/ConversationList;->SMS_ID_PROJECTION:[Ljava/lang/String;

    .line 154
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v4, v0, v2

    sput-object v0, Lcom/android/mms/ui/ConversationList;->MMS_ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFListActivity;-><init>()V

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationList;->mVisiblePosition:I

    .line 147
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationList;->mFirstItemId:J

    .line 159
    new-instance v0, Lcom/android/mms/ui/ConversationList$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$1;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->onNewMessage:Landroid/view/View$OnClickListener;

    .line 286
    new-instance v0, Lcom/android/mms/ui/ConversationList$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$2;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    .line 700
    new-instance v0, Lcom/android/mms/ui/ConversationList$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$6;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 880
    new-instance v0, Lcom/android/mms/ui/ConversationList$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$8;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    .line 973
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->createNewMessage()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ConversationList;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ConversationList;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ConversationList;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationList;->updateEmptyScreen(IZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ConversationList;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationList;->startAsyncQueryDelayed(J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/ConversationList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationList;->setTotalQuantityTextView(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/ConversationList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->isFirstItemChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/ConversationList;)Lcom/nemustech/tiffany/widget/TFListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mList:Lcom/nemustech/tiffany/widget/TFListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/ConversationList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/mms/ui/ConversationList;->mVisiblePosition:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/ConversationList;)Lcom/nemustech/tiffany/widget/TFListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mList:Lcom/nemustech/tiffany/widget/TFListView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/ConversationList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mNeedToMarkAsRead:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/mms/ui/ConversationList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationList;->mNeedToMarkAsRead:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ConversationList;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->markCheckedMessageLimit()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ConversationList;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationList;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ConversationList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ConversationList;)Lcom/nemustech/tiffany/widget/TFListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/nemustech/tiffany/widget/TFListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    return-object v0
.end method

.method private beforeQuery()V
    .locals 2

    .prologue
    .line 481
    const v0, 0x7f09000e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->setTitle(Ljava/lang/CharSequence;)V

    .line 482
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->setProgressBarIndeterminateVisibility(Z)V

    .line 485
    const v0, 0x7f080063

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 486
    return-void
.end method

.method private bindNewMessageEmpty()V
    .locals 5

    .prologue
    .line 471
    const v3, 0x7f080064

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    .line 472
    .local v2, stub:Landroid/view/View;
    move-object v0, v2

    check-cast v0, Lcom/android/mms/ui/ConversationListItem;

    move-object v1, v0

    .line 473
    .local v1, item:Lcom/android/mms/ui/ConversationListItem;
    const v3, 0x7f090001

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationList;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090002

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/mms/ui/ConversationListItem;->bind(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020098

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/ConversationListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 475
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->onNewMessage:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/ConversationListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    return-void
.end method

.method public static changeConversationListItemDataStyle(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "isDeleting"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 262
    sget-object v0, Lcom/android/mms/ui/ConversationList;->headerView:Lcom/android/mms/ui/ConversationListItem;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v2, v0, :cond_1

    .line 264
    sget-object v0, Lcom/android/mms/ui/ConversationList;->headerView:Lcom/android/mms/ui/ConversationListItem;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListItem;->setClickable(Z)V

    .line 265
    sget-object v0, Lcom/android/mms/ui/ConversationList;->headerView:Lcom/android/mms/ui/ConversationListItem;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ConversationListItem;->setFocusable(Z)V

    .line 266
    sget-object v0, Lcom/android/mms/ui/ConversationList;->headerView:Lcom/android/mms/ui/ConversationListItem;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListItem;->setTextColor(Ljava/lang/Boolean;)V

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    sget-object v0, Lcom/android/mms/ui/ConversationList;->headerView:Lcom/android/mms/ui/ConversationListItem;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListItem;->setClickable(Z)V

    .line 270
    sget-object v0, Lcom/android/mms/ui/ConversationList;->headerView:Lcom/android/mms/ui/ConversationListItem;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListItem;->setFocusable(Z)V

    .line 271
    sget-object v0, Lcom/android/mms/ui/ConversationList;->headerView:Lcom/android/mms/ui/ConversationListItem;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListItem;->setTextColor(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public static confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V
    .locals 1
    .parameter "threadId"
    .parameter "handler"

    .prologue
    .line 839
    const/16 v0, 0x70b

    invoke-static {p2, p0, p1, v0}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V

    .line 841
    return-void
.end method

.method public static confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;ZZLandroid/content/Context;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 856
    const v0, 0x7f030011

    invoke-static {p3, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 857
    const v0, 0x7f08006f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 858
    if-nez p2, :cond_0

    .line 859
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 869
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 870
    if-eqz p1, :cond_1

    const v2, 0x7f0900af

    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x104

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 878
    return-void

    .line 861
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 862
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->setDeleteLockedMessage(Z)V

    .line 863
    new-instance v2, Lcom/android/mms/ui/ConversationList$7;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/ConversationList$7;-><init>(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 870
    :cond_1
    const v2, 0x7f0900ae

    goto :goto_1
.end method

.method public static createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "address"

    .prologue
    .line 686
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 687
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 688
    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    :goto_0
    const-string v1, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    return-object v0

    .line 690
    :cond_0
    const-string v1, "phone"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    const-string v1, "phone_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private createNewMessage()V
    .locals 2

    .prologue
    .line 668
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    .line 669
    return-void
.end method

.method private static ensureUpdateDeletable()Z
    .locals 4

    .prologue
    .line 245
    invoke-static {}, Lcom/android/mms/ui/ConversationListDel;->ensureUpdateDeletable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/mms/ui/DeleteThreadActivity;->ensureUpdateDeletable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 248
    .local v0, result:Z
    :goto_0
    const-string v1, "Mms/ConversationList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ensureUpdateDeletable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return v0

    .line 245
    .end local v0           #result:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private getConversation(I)Lcom/android/mms/data/Conversation;
    .locals 3
    .parameter

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mList:Lcom/nemustech/tiffany/widget/TFListView;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1180
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1183
    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    return-object v0
.end method

.method private getQuantityText(III)Ljava/lang/String;
    .locals 4
    .parameter "count"
    .parameter "zeroResourceId"
    .parameter "pluralResourceId"

    .prologue
    .line 947
    if-nez p1, :cond_0

    .line 948
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/ConversationList;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 951
    :goto_0
    return-object v1

    .line 950
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, format:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 239
    invoke-static {}, Lcom/android/mms/ui/ConversationListDel;->updateDeletable()V

    .line 240
    return-void
.end method

.method private initListAdapter()V
    .locals 2

    .prologue
    .line 295
    new-instance v0, Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ConversationListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    .line 297
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 298
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Lcom/nemustech/tiffany/widget/TFListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->setRecyclerListener(Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;)V

    .line 299
    return-void
.end method

.method private isFirstItemChanged()Z
    .locals 4

    .prologue
    .line 965
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mList:Lcom/nemustech/tiffany/widget/TFListView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mList:Lcom/nemustech/tiffany/widget/TFListView;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 966
    iget-wide v0, p0, Lcom/android/mms/ui/ConversationList;->mFirstItemId:J

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mList:Lcom/nemustech/tiffany/widget/TFListView;

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mList:Lcom/nemustech/tiffany/widget/TFListView;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/widget/TFListView;->getHeaderViewsCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 967
    const/4 v0, 0x1

    .line 970
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1101
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1102
    const-string v1, "Mms/ConversationList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    return-void
.end method

.method private markCheckedMessageLimit()V
    .locals 3

    .prologue
    .line 356
    const-string v1, "Mms/ConversationList"

    const-string v2, "markCheckedMessageLimit"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 358
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "checked_message_limits"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 359
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 360
    return-void
.end method

.method private openThread(J)V
    .locals 3
    .parameter "threadId"

    .prologue
    .line 673
    const-string v0, "Mms/ConversationList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openThread startActivity for threadId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , CMAS= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/ui/ConversationList;->isCmas:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    .line 681
    return-void
.end method

.method private setSweepHanlder(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    .line 255
    new-instance v0, Lcom/android/mms/ui/SweepHandler;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SweepHandler;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSweepHandler:Lcom/android/mms/ui/SweepHandler;

    .line 257
    new-instance v0, Lcom/android/mms/ui/SweepHandler;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SweepHandler;-><init>(Lcom/android/mms/ui/ConversationList;)V

    invoke-virtual {p1, v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->setSweepActionBarCallback(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;)V

    .line 258
    invoke-virtual {p1, p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->setSweepActionListener(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;)V

    .line 259
    return-void
.end method

.method private setTotalQuantityTextView(I)V
    .locals 2
    .parameter

    .prologue
    .line 956
    const v0, 0x7f09014e

    const v1, 0x7f0a0002

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/ui/ConversationList;->getQuantityText(III)Ljava/lang/String;

    move-result-object v0

    .line 958
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 959
    const-string v1, "Mms/ConversationList"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    return-void
.end method

.method private startAsyncQuery()V
    .locals 1

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->beforeQuery()V

    .line 513
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery(Z)V

    .line 514
    return-void
.end method

.method private startAsyncQuery(Z)V
    .locals 4
    .parameter "isFake"

    .prologue
    .line 529
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v2, 0x6a4

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Lcom/android/mms/data/Conversation;->startQueryForFakeView(Landroid/content/AsyncQueryHandler;II)V

    .line 535
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v2, 0x6a5

    invoke-static {v1, v2}, Lcom/android/mms/data/Conversation;->startQueryForAll(Landroid/content/AsyncQueryHandler;I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 532
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 533
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private startAsyncQueryDelayed(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 517
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/ConversationList$5;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationList$5;-><init>(Lcom/android/mms/ui/ConversationList;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 522
    return-void
.end method

.method private startFakeAsyncQuery()V
    .locals 1

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->beforeQuery()V

    .line 507
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery(Z)V

    .line 508
    return-void
.end method

.method private updateEmptyScreen(IZ)V
    .locals 5
    .parameter "resultCount"
    .parameter "handleFooter"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 489
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Lcom/nemustech/tiffany/widget/TFListView;

    move-result-object v1

    .line 490
    .local v1, listView:Landroid/view/View;
    const v2, 0x7f080063

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 493
    .local v0, emptyView:Landroid/view/View;
    if-nez p1, :cond_1

    .line 494
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 495
    invoke-virtual {v1, v4}, Lcom/nemustech/tiffany/widget/TFAdapterView;->setVisibility(I)V

    .line 496
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 500
    invoke-virtual {v1, v3}, Lcom/nemustech/tiffany/widget/TFAdapterView;->setVisibility(I)V

    .line 501
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getNumber(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const-string v1, "Mms/ConversationList"

    .line 1212
    const-string v0, "Mms/ConversationList"

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1213
    const-string v0, "Mms/ConversationList"

    const-string v0, "getNumber"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationList;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 1217
    if-nez v0, :cond_1

    move-object v0, v2

    .line 1235
    :goto_0
    return-object v0

    .line 1219
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 1220
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-nez v1, :cond_2

    move-object v0, v2

    goto :goto_0

    .line 1222
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v0

    .line 1223
    array-length v1, v0

    if-nez v1, :cond_3

    move-object v0, v2

    goto :goto_0

    .line 1227
    :cond_3
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1228
    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1230
    :catch_0
    move-exception v0

    .line 1231
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    .line 1232
    goto :goto_0

    :cond_4
    move-object v0, v2

    .line 1235
    goto :goto_0
.end method

.method public isConversationIndex(I)Z
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 277
    if-gez p1, :cond_0

    move v3, v4

    .line 283
    :goto_0
    return v3

    .line 279
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mList:Lcom/nemustech/tiffany/widget/TFListView;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/widget/TFListView;->getCount()I

    move-result v0

    .line 280
    .local v0, cnt:I
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mList:Lcom/nemustech/tiffany/widget/TFListView;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/widget/TFListView;->getHeaderViewsCount()I

    move-result v2

    .line 281
    .local v2, cntHeader:I
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mList:Lcom/nemustech/tiffany/widget/TFListView;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/widget/TFListView;->getFooterViewsCount()I

    move-result v1

    .line 283
    .local v1, cntFooter:I
    sub-int v3, v2, v5

    if-le p1, v3, :cond_1

    sub-int v3, v0, v1

    if-ge p1, v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 827
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 828
    const-string v0, "Mms/ConversationList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const/4 v10, 0x0

    .line 783
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    check-cast v4, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterContextMenuInfo;

    .line 784
    .local v4, info:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterContextMenuInfo;
    iget-object v8, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/nemustech/tiffany/widget/TFListView;

    iget v9, v4, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v8, v9}, Lcom/nemustech/tiffany/widget/TFListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    .line 786
    .local v3, cursor:Landroid/database/Cursor;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    if-ltz v8, :cond_0

    .line 787
    invoke-static {p0, v3}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    .line 788
    .local v2, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v6

    .line 789
    .local v6, threadId:J
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 814
    .end local v2           #conv:Lcom/android/mms/data/Conversation;
    .end local v6           #threadId:J
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v8

    return v8

    .line 791
    .restart local v2       #conv:Lcom/android/mms/data/Conversation;
    .restart local v6       #threadId:J
    :pswitch_0
    iget-object v8, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    goto :goto_0

    .line 795
    :pswitch_1
    invoke-direct {p0, v6, v7}, Lcom/android/mms/ui/ConversationList;->openThread(J)V

    goto :goto_0

    .line 799
    :pswitch_2
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 800
    .local v1, contact:Lcom/android/mms/data/Contact;
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 801
    .local v5, intent:Landroid/content/Intent;
    const/high16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 802
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 806
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_3
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/data/Contact;

    invoke-virtual {v8}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 807
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 789
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v4, "Mms/ConversationList"

    .line 183
    const-string v3, "Mms/ConversationList"

    const-string v3, "speed check : onCreate is called"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 187
    invoke-static {}, Lcom/android/mms/util/TFResourceMitigate;->init()V

    .line 189
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationList;->requestWindowFeature(I)Z

    .line 192
    new-instance v3, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;-><init>(Lcom/android/mms/ui/ConversationList;Landroid/content/ContentResolver;)V

    iput-object v3, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    .line 194
    const v3, 0x7f03000e

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationList;->setContentView(I)V

    .line 195
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Lcom/nemustech/tiffany/widget/TFListView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/nemustech/tiffany/widget/TFListView;

    .line 196
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/nemustech/tiffany/widget/TFListView;

    check-cast v3, Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ConversationList;->setSweepHanlder(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)V

    .line 198
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->bindNewMessageEmpty()V

    .line 200
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 201
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03000d

    iget-object v4, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/nemustech/tiffany/widget/TFListView;

    invoke-virtual {v2, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/ConversationListItem;

    sput-object v3, Lcom/android/mms/ui/ConversationList;->headerView:Lcom/android/mms/ui/ConversationListItem;

    .line 202
    sget-object v3, Lcom/android/mms/ui/ConversationList;->headerView:Lcom/android/mms/ui/ConversationListItem;

    const v4, 0x7f090001

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationList;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f090002

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationList;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/mms/ui/ConversationListItem;->bind(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-object v3, Lcom/android/mms/ui/ConversationList;->headerView:Lcom/android/mms/ui/ConversationListItem;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020098

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ConversationListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/nemustech/tiffany/widget/TFListView;

    sget-object v4, Lcom/android/mms/ui/ConversationList;->headerView:Lcom/android/mms/ui/ConversationListItem;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v7, v5}, Lcom/nemustech/tiffany/widget/TFListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 205
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/nemustech/tiffany/widget/TFListView;

    invoke-virtual {v3, v6}, Lcom/nemustech/tiffany/widget/TFListView;->setHeaderDividersEnabled(Z)V

    .line 206
    const v3, 0x7f03000c

    iget-object v4, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/nemustech/tiffany/widget/TFListView;

    invoke-virtual {v2, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/ConversationList;->mTotalConversations:Landroid/widget/TextView;

    .line 207
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mTotalConversations:Landroid/widget/TextView;

    const v4, 0x7f09000e

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/nemustech/tiffany/widget/TFListView;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationList;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v7, v6}, Lcom/nemustech/tiffany/widget/TFListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 211
    invoke-static {}, Lcom/android/mms/ui/ConversationList;->ensureUpdateDeletable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    invoke-static {}, Lcom/android/mms/ui/ConversationListDel;->updateDeletable()V

    .line 216
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/nemustech/tiffany/widget/TFListView;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationList;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/widget/TFListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 217
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/nemustech/tiffany/widget/TFListView;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationList;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/widget/TFListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 218
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->initListAdapter()V

    .line 220
    const/high16 v3, 0x7f09

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationList;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/ConversationList;->mTitle:Ljava/lang/CharSequence;

    .line 222
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/mms/ui/ConversationList;->mHandler:Landroid/os/Handler;

    .line 225
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/ConversationList;->mPrefs:Landroid/content/SharedPreferences;

    .line 226
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "checked_message_limits"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 227
    .local v0, checkedMessageLimits:Z
    const-string v3, "Mms/ConversationList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkedMessageLimits: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    if-nez v0, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->runOneTimeStorageLimitCheckForLegacyMessages()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v0           #checkedMessageLimits:Z
    :cond_1
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 232
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 436
    const-string v0, "Mms/ConversationList"

    const-string v1, "speed check : onDestroy is called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/ConversationList;->headerView:Lcom/android/mms/ui/ConversationListItem;

    .line 438
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFListActivity;->onDestroy()V

    .line 439
    return-void
.end method

.method public onDraftChanged(JZ)V
    .locals 2
    .parameter "threadId"
    .parameter "hasDraft"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    new-instance v1, Lcom/android/mms/ui/ConversationList$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationList$4;-><init>(Lcom/android/mms/ui/ConversationList;JZ)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->post(Ljava/lang/Runnable;)Z

    .line 451
    return-void
.end method

.method protected onListItemClick(Lcom/nemustech/tiffany/widget/TFListView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const-string v6, "Mms/ConversationList"

    .line 630
    const-string v4, "Mms/ConversationList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onListItemClick: position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    if-nez p3, :cond_0

    .line 634
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->createNewMessage()V

    .line 665
    :goto_0
    return-void

    .line 643
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Lcom/nemustech/tiffany/widget/TFListView;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/nemustech/tiffany/widget/TFListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 644
    .local v1, cursor:Landroid/database/Cursor;
    invoke-static {p0, v1}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 645
    .local v0, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    .line 660
    .local v2, tid:J
    const-string v4, "Mms/ConversationList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onListItemClick: pos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", view="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/ConversationList;->openThread(J)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    .line 366
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 587
    const/4 v0, 0x0

    .line 588
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 624
    :goto_0
    :pswitch_0
    return v0

    .line 590
    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->createNewMessage()V

    move v0, v3

    .line 592
    goto :goto_0

    .line 594
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->onSearchRequested()Z

    move v0, v3

    .line 596
    goto :goto_0

    .line 600
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ConversationListDel;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 604
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 606
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 608
    goto :goto_0

    .line 610
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 611
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 614
    goto :goto_0

    .line 617
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 618
    const-string v1, "com.wsomacp"

    const-string v2, "com.wsomacp.WSSClientProvUiList"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 620
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 621
    goto :goto_0

    .line 588
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 540
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 541
    sget-object v0, Lcom/android/mms/ui/ConversationListDel;->isDeleting:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    .line 574
    :goto_0
    return v0

    .line 544
    :cond_0
    const v0, 0x7f090005

    invoke-interface {p1, v8, v8, v8, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x10801d3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 547
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 548
    const/4 v0, 0x3

    const v1, 0x7f09000a

    invoke-interface {p1, v8, v0, v8, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20200df

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 552
    :cond_1
    const/4 v7, 0x0

    .line 554
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "content://com.wsomacp.messagelist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 555
    .local v2, cpUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 558
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 559
    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v3, 0x0

    const v4, 0x7f090007

    invoke-interface {p1, v0, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20200dc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    :cond_2
    if-eqz v7, :cond_3

    .line 564
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 567
    :cond_3
    const v0, 0x104000c

    invoke-interface {p1, v8, v9, v8, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20200fe

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x73

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 571
    const/4 v0, 0x5

    const v1, 0x7f090006

    invoke-interface {p1, v8, v0, v8, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20200f7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v9

    .line 574
    goto :goto_0

    .line 563
    .end local v2           #cpUri:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 564
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 1189
    const-string v0, "Mms/ConversationList"

    const-string v1, "speed check : onResume is called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFListActivity;->onResume()V

    .line 1191
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Lcom/nemustech/tiffany/widget/TFListView;

    move-result-object p0

    check-cast p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    .line 1192
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->closeAllActionBar(Z)Z

    .line 1193
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 407
    const-string v1, "Mms/ConversationList"

    const-string v2, "onSaveInstanceState "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :try_start_0
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 412
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mList:Lcom/nemustech/tiffany/widget/TFListView;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFListView;->getFirstVisiblePosition()I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/ConversationList;->mVisiblePosition:I

    .line 415
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mList:Lcom/nemustech/tiffany/widget/TFListView;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFListView;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mList:Lcom/nemustech/tiffany/widget/TFListView;

    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mList:Lcom/nemustech/tiffany/widget/TFListView;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mList:Lcom/nemustech/tiffany/widget/TFListView;

    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFListView;->getHeaderViewsCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/ui/ConversationList;->mFirstItemId:J

    .line 424
    :goto_0
    return-void

    .line 418
    :cond_0
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/mms/ui/ConversationList;->mFirstItemId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 420
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 422
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 580
    invoke-virtual {p0, v1, v0, v1, v0}, Lcom/android/mms/ui/ConversationList;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 581
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 370
    const-string v0, "Mms/ConversationList"

    const-string v1, "speed check : onStart is called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFListActivity;->onStart()V

    .line 373
    sget-object v0, Lcom/android/mms/ui/ConversationListDel;->isDeleting:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->changeConversationListItemDataStyle(Ljava/lang/Boolean;)V

    .line 375
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xef

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 378
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x378

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 381
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->addOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mNeedToMarkAsRead:Z

    .line 385
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->startFakeAsyncQuery()V

    .line 400
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 403
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 428
    const-string v0, "Mms/ConversationList"

    const-string v1, "speed check : onStop is called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFListActivity;->onStop()V

    .line 431
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->removeOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 432
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 433
    return-void
.end method

.method public onSweepActionCanceled(I)V
    .locals 3
    .parameter

    .prologue
    const-string v2, "Mms/ConversationList"

    .line 1107
    const-string v0, "Mms/ConversationList"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1108
    const-string v0, "Mms/ConversationList"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSweepActionCanceled("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_0
    return-void
.end method

.method public onSweepActionFired(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x1

    const-string v6, "Mms/ConversationList"

    .line 1113
    const-string v0, "Mms/ConversationList"

    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    const-string v0, "Mms/ConversationList"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSweepActionFired("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/nemustech/tiffany/widget/TFListView;

    check-cast v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    .line 1119
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationList;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 1121
    if-nez v1, :cond_2

    .line 1122
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->closeAllActionBar(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1175
    :cond_1
    :goto_0
    return-void

    .line 1125
    :catch_0
    move-exception v1

    .line 1126
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1127
    invoke-virtual {v0, v5}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 1132
    :cond_2
    if-nez p2, :cond_6

    .line 1133
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationList;->getNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 1136
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationList;->getConversation(I)Lcom/android/mms/data/Conversation;

    .line 1153
    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1154
    :cond_3
    invoke-virtual {v0, v5}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 1156
    :cond_4
    const-string v0, "Mms/ConversationList"

    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1157
    const-string v0, "Mms/ConversationList"

    const-string v0, "onSweepActionFired calling(itemIndex:%d, number:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "xxxxxxxx"

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    :cond_5
    sget-boolean v0, Lcom/android/mms/ui/ConversationList;->isCmas:Z

    if-eq v5, v0, :cond_1

    .line 1161
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1162
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1163
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1169
    :cond_6
    if-ne v5, p2, :cond_7

    .line 1170
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ConversationList;->openThread(J)V

    goto :goto_0

    .line 1173
    :cond_7
    invoke-virtual {v0, v5}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0
.end method

.method public onSweepActionStarted(I)V
    .locals 3
    .parameter

    .prologue
    .line 1208
    const-string v0, "Mms/ConversationList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionStarted("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    return-void
.end method

.method public declared-synchronized runOneTimeStorageLimitCheckForLegacyMessages()V
    .locals 2

    .prologue
    .line 308
    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/android/mms/util/Recycler;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    const-string v0, "Mms/ConversationList"

    const-string v1, "recycler is already turned on"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->markCheckedMessageLimit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :goto_0
    monitor-exit p0

    return-void

    .line 315
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ConversationList$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationList$3;-><init>(Lcom/android/mms/ui/ConversationList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
