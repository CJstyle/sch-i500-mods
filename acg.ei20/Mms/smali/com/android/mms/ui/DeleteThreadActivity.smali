.class public Lcom/android/mms/ui/DeleteThreadActivity;
.super Landroid/app/Activity;
.source "DeleteThreadActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/DeleteThreadActivity$DeleteThreadListener;,
        Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;
    }
.end annotation


# static fields
.field public static isDeleting:Z

.field private static mDialog:Landroid/app/AlertDialog;

.field private static mOffScreen:Z


# instance fields
.field private countnToDelete:I

.field public isManualCheck:Z

.field public mCheckBox:Landroid/widget/CheckBox;

.field public mCheckStates:Landroid/util/SparseBooleanArray;

.field private mContentResolver:Landroid/content/ContentResolver;

.field mDeleteLockedMessages:Z

.field private mExitOnSent:Z

.field public mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mMessageUri:Landroid/net/Uri;

.field protected mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

.field protected mMsgListView:Lcom/android/mms/ui/MessageListView;

.field private mMsgText:Ljava/lang/CharSequence;

.field protected mQueryHandler:Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;

.field private mThreadId:J

.field private recipients:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/DeleteThreadActivity;->isDeleting:Z

    .line 106
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/DeleteThreadActivity;->mOffScreen:Z

    .line 113
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/DeleteThreadActivity;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 95
    iput-boolean v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->isManualCheck:Z

    .line 103
    iput-boolean v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mDeleteLockedMessages:Z

    .line 104
    iput v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->countnToDelete:I

    .line 343
    return-void
.end method

.method private DeleteMessage(J)V
    .locals 11
    .parameter "messageId"

    .prologue
    const/16 v1, 0x25e4

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 611
    const-string v0, "Mms/DeleteThread"

    const-string v4, "2. Delete message : delete query is started"

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 614
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 615
    .local v9, type:Ljava/lang/String;
    const/16 v0, 0x9

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v10

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 616
    .local v8, smsLock:Ljava/lang/Boolean;
    const/16 v0, 0x15

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v10

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 618
    .local v7, mmsLock:Ljava/lang/Boolean;
    const-wide/16 v4, -0x1

    cmp-long v0, p1, v4

    if-nez v0, :cond_2

    .line 619
    iget v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->countnToDelete:I

    sub-int/2addr v0, v10

    iput v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->countnToDelete:I

    .line 644
    :goto_2
    return-void

    .end local v7           #mmsLock:Ljava/lang/Boolean;
    .end local v8           #smsLock:Ljava/lang/Boolean;
    :cond_0
    move v0, v5

    .line 615
    goto :goto_0

    .restart local v8       #smsLock:Ljava/lang/Boolean;
    :cond_1
    move v0, v5

    .line 616
    goto :goto_1

    .line 623
    .restart local v7       #mmsLock:Ljava/lang/Boolean;
    :cond_2
    const-string v0, "mms"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 624
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 630
    .local v3, MessageUri:Landroid/net/Uri;
    :goto_3
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 631
    :cond_3
    sput-boolean v10, Lcom/android/mms/ui/DeleteThreadActivity;->isDeleting:Z

    .line 632
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mQueryHandler:Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    .line 626
    .end local v3           #MessageUri:Landroid/net/Uri;
    :cond_4
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .restart local v3       #MessageUri:Landroid/net/Uri;
    goto :goto_3

    .line 635
    :cond_5
    iget-boolean v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mDeleteLockedMessages:Z

    if-ne v10, v0, :cond_6

    .line 636
    sput-boolean v10, Lcom/android/mms/ui/DeleteThreadActivity;->isDeleting:Z

    .line 637
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mQueryHandler:Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    .line 641
    :cond_6
    iget v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->countnToDelete:I

    sub-int/2addr v0, v10

    iput v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->countnToDelete:I

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/mms/ui/DeleteThreadActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->countnToDelete:I

    return v0
.end method

.method static synthetic access$010(Lcom/android/mms/ui/DeleteThreadActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->countnToDelete:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/mms/ui/DeleteThreadActivity;->countnToDelete:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/DeleteThreadActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mThreadId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/DeleteThreadActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/mms/ui/DeleteThreadActivity;->getThreadUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/DeleteThreadActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/DeleteThreadActivity;->DeleteMessage(J)V

    return-void
.end method

.method public static confirmDeleteThreadDialog(Lcom/android/mms/ui/DeleteThreadActivity$DeleteThreadListener;ZZLandroid/content/Context;)V
    .locals 6
    .parameter "listener"
    .parameter "deleteAll"
    .parameter "hasLockedMessages"
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 417
    const v3, 0x7f030011

    invoke-static {p3, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 418
    .local v2, contents:Landroid/view/View;
    const v3, 0x7f08006f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 421
    .local v1, checkbox:Landroid/widget/CheckBox;
    if-nez p2, :cond_0

    .line 422
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 436
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 437
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

    .line 444
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/mms/ui/DeleteThreadActivity;->mDialog:Landroid/app/AlertDialog;

    .line 445
    sget-object v3, Lcom/android/mms/ui/DeleteThreadActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 446
    return-void

    .line 425
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    new-instance v3, Lcom/android/mms/ui/DeleteThreadActivity$2;

    invoke-direct {v3, p0, v1}, Lcom/android/mms/ui/DeleteThreadActivity$2;-><init>(Lcom/android/mms/ui/DeleteThreadActivity$DeleteThreadListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 437
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    const v3, 0x7f0900ae

    goto :goto_1
.end method

.method private deleteSelectedItems()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 584
    iget-object v6, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 585
    iget-object v6, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v6, v8}, Lcom/android/mms/ui/MessageListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 586
    .local v2, cursor:Landroid/database/Cursor;
    const/4 v6, 0x2

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 587
    .local v5, threadId:Ljava/lang/Long;
    iget-object v6, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mQueryHandler:Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/16 v9, 0x70a

    invoke-static {v6, v7, v8, v9}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V

    .line 608
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v5           #threadId:Ljava/lang/Long;
    :goto_0
    return-void

    .line 590
    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListView;->getCount()I

    move-result v1

    .line 591
    .local v1, count:I
    const/4 v3, 0x0

    .line 592
    .local v3, hasLockedMessages:Z
    iput v7, p0, Lcom/android/mms/ui/DeleteThreadActivity;->countnToDelete:I

    .line 593
    const/4 v4, 0x1

    .local v4, i:I
    :goto_1
    if-gt v4, v1, :cond_4

    if-nez v3, :cond_4

    .line 594
    iget-object v6, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4, v7}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 595
    iget v6, p0, Lcom/android/mms/ui/DeleteThreadActivity;->countnToDelete:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/mms/ui/DeleteThreadActivity;->countnToDelete:I

    .line 596
    iget-object v6, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v6, v4}, Lcom/android/mms/ui/MessageListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 597
    .local v0, c:Landroid/database/Cursor;
    if-nez v3, :cond_2

    .line 598
    const/16 v6, 0x15

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x9

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    move v3, v8

    .line 593
    .end local v0           #c:Landroid/database/Cursor;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .restart local v0       #c:Landroid/database/Cursor;
    :cond_3
    move v3, v7

    .line 598
    goto :goto_2

    .line 603
    .end local v0           #c:Landroid/database/Cursor;
    :cond_4
    new-instance v6, Lcom/android/mms/ui/DeleteThreadActivity$DeleteThreadListener;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/DeleteThreadActivity$DeleteThreadListener;-><init>(Lcom/android/mms/ui/DeleteThreadActivity;)V

    invoke-static {v6, v7, v3, p0}, Lcom/android/mms/ui/DeleteThreadActivity;->confirmDeleteThreadDialog(Lcom/android/mms/ui/DeleteThreadActivity$DeleteThreadListener;ZZLandroid/content/Context;)V

    goto :goto_0
.end method

.method private deriveAddress(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 125
    .local v0, recipientUri:Landroid/net/Uri;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static ensureUpdateDeletable()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 502
    sget-object v0, Lcom/android/mms/ui/ConversationListDel;->isDeleting:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/ui/ConversationListDel;->isOffScreen()Z

    move-result v0

    if-ne v1, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOrCreateThreadId([Ljava/lang/String;)J
    .locals 3
    .parameter "numbers"

    .prologue
    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 131
    .local v0, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 132
    invoke-static {p0, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v1

    return-wide v1
.end method

.method private getThreadUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 553
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mThreadId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 10
    .parameter "bundle"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const-string v9, "msg_uri"

    const-string v8, "exit_on_sent"

    .line 212
    if-eqz p1, :cond_2

    .line 213
    const-string v2, "recipients"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/DeleteThreadActivity;->recipients:Ljava/lang/String;

    .line 214
    const-string v2, "thread_id"

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/DeleteThreadActivity;->setThreadId(J)V

    .line 215
    const-string v2, "msg_uri"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mMessageUri:Landroid/net/Uri;

    .line 217
    const-string v2, "exit_on_sent"

    invoke-virtual {p1, v8, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mExitOnSent:Z

    .line 219
    const-string v2, "sms_body"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mMsgText:Ljava/lang/CharSequence;

    .line 244
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mMsgText:Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    .line 245
    const-string v2, ""

    iput-object v2, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mMsgText:Ljava/lang/CharSequence;

    .line 248
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/DeleteThreadActivity;->recipients:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 249
    iget-wide v2, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mThreadId:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 250
    iget-wide v2, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mThreadId:J

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/DeleteThreadActivity;->recipients:Ljava/lang/String;

    .line 261
    :cond_1
    :goto_1
    return-void

    .line 221
    :cond_2
    const-string v2, "thread_id"

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/DeleteThreadActivity;->setThreadId(J)V

    .line 222
    const-string v2, "msg_uri"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mMessageUri:Landroid/net/Uri;

    .line 223
    iget-object v2, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mMessageUri:Landroid/net/Uri;

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mThreadId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 226
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 227
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    .line 229
    :try_start_0
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/DeleteThreadActivity;->setThreadId(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v1           #uri:Landroid/net/Uri;
    :cond_3
    :goto_2
    const-string v2, "recipients"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/DeleteThreadActivity;->recipients:Ljava/lang/String;

    .line 239
    const-string v2, "exit_on_sent"

    invoke-virtual {p2, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mExitOnSent:Z

    .line 240
    const-string v2, "sms_body"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mMsgText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 231
    .restart local v1       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 232
    .local v0, exception:Ljava/lang/NumberFormatException;
    const-string v2, "Mms/DeleteThread"

    const-string v3, "Thread ID must be a Long."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 252
    .end local v0           #exception:Ljava/lang/NumberFormatException;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/mms/ui/DeleteThreadActivity;->deriveAddress(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/DeleteThreadActivity;->recipients:Ljava/lang/String;

    .line 256
    iget-object v2, p0, Lcom/android/mms/ui/DeleteThreadActivity;->recipients:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 257
    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/DeleteThreadActivity;->recipients:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-direct {p0, v2}, Lcom/android/mms/ui/DeleteThreadActivity;->getOrCreateThreadId([Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/DeleteThreadActivity;->setThreadId(J)V

    goto :goto_1
.end method

.method private initMessageList()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 275
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteThreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "highlight"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 281
    .local v6, highlightString:Ljava/lang/String;
    if-nez v6, :cond_1

    move-object v5, v2

    .line 287
    .local v5, highlight:Ljava/util/regex/Pattern;
    :goto_1
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;)V

    iput-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    .line 292
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 293
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v7}, Lcom/android/mms/ui/MessageListView;->setItemsCanFocus(Z)V

    .line 294
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v7}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    goto :goto_0

    .line 281
    .end local v5           #highlight:Ljava/util/regex/Pattern;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    move-object v5, v0

    goto :goto_1
.end method

.method private initResourceRefs()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 299
    const v1, 0x7f08006d

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DeleteThreadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MessageListView;

    iput-object v1, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    .line 301
    const v1, 0x7f03002e

    invoke-static {p0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 308
    .local v0, mAllItem:Landroid/widget/LinearLayout;
    const v1, 0x7f08005d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckBox:Landroid/widget/CheckBox;

    .line 309
    iget-object v1, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_0

    .line 310
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 322
    iget-object v1, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MessageListView;->addHeaderView(Landroid/view/View;)V

    .line 325
    iget-object v1, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/MessageListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 326
    iget-object v1, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    new-instance v2, Lcom/android/mms/ui/DeleteThreadActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/DeleteThreadActivity$1;-><init>(Lcom/android/mms/ui/DeleteThreadActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 341
    return-void
.end method

.method public static isOffScreen()Z
    .locals 1

    .prologue
    .line 116
    sget-boolean v0, Lcom/android/mms/ui/DeleteThreadActivity;->mOffScreen:Z

    return v0
.end method

.method private setThreadId(J)V
    .locals 0
    .parameter "threadId"

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mThreadId:J

    .line 121
    return-void
.end method

.method private startMsgListQuery()V
    .locals 9

    .prologue
    const/16 v4, 0x2537

    .line 557
    iget-wide v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mThreadId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 570
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mQueryHandler:Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;->cancelOperation(I)V

    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mQueryHandler:Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;

    const/16 v1, 0x2537

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/mms/ui/DeleteThreadActivity;->getThreadUri()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 567
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 568
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "Mms/DeleteThread"

    .line 450
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 453
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeleteThreadActivity;->requestWindowFeature(I)Z

    .line 454
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeleteThreadActivity;->requestWindowFeature(I)Z

    .line 456
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeleteThreadActivity;->setContentView(I)V

    .line 457
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/DeleteThreadActivity;->setProgressBarVisibility(Z)V

    .line 459
    const v0, 0x7f0900be

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeleteThreadActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeleteThreadActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 461
    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteThreadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 462
    new-instance v0, Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteThreadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;-><init>(Lcom/android/mms/ui/DeleteThreadActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mQueryHandler:Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;

    .line 465
    invoke-direct {p0}, Lcom/android/mms/ui/DeleteThreadActivity;->initResourceRefs()V

    .line 468
    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteThreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/DeleteThreadActivity;->initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 471
    const-string v0, "Mms/DeleteThread"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate(): savedInstanceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v0, "Mms/DeleteThread"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate(): intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteThreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string v0, "Mms/DeleteThread"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate(): mThreadId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mThreadId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v0, "Mms/DeleteThread"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate(): mMessageUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-direct {p0}, Lcom/android/mms/ui/DeleteThreadActivity;->initMessageList()V

    .line 484
    iget-wide v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mThreadId:J

    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationListDel;->updateDeletable(J)V

    .line 490
    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeleteThreadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 491
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 499
    :goto_0
    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 576
    sget-object v0, Lcom/android/mms/ui/DeleteThreadActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 577
    sget-object v0, Lcom/android/mms/ui/DeleteThreadActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 579
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 580
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 581
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 666
    packed-switch p1, :pswitch_data_0

    .line 675
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 671
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteThreadActivity;->finish()V

    .line 672
    const/4 v0, 0x1

    goto :goto_0

    .line 666
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 514
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 516
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/DeleteThreadActivity;->mOffScreen:Z

    .line 517
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 520
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 524
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 535
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 536
    invoke-direct {p0}, Lcom/android/mms/ui/DeleteThreadActivity;->startMsgListQuery()V

    .line 538
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/DeleteThreadActivity;->mOffScreen:Z

    .line 539
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 544
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 546
    const-string v0, "thread_id"

    iget-wide v1, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mThreadId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 547
    const-string v0, "msg_uri"

    iget-object v1, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 548
    const-string v0, "recipients"

    iget-object v1, p0, Lcom/android/mms/ui/DeleteThreadActivity;->recipients:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string v0, "exit_on_sent"

    iget-boolean v1, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mExitOnSent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 550
    const-string v0, "sms_body"

    iget-object v1, p0, Lcom/android/mms/ui/DeleteThreadActivity;->mMsgText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 507
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 511
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 527
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 530
    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteThreadActivity;->finish()V

    .line 531
    return-void
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 680
    invoke-direct {p0}, Lcom/android/mms/ui/DeleteThreadActivity;->deleteSelectedItems()V

    .line 681
    return-void
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 688
    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteThreadActivity;->finish()V

    .line 689
    return-void
.end method
