.class public Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;
.super Landroid/app/Activity;
.source "RejectCallWithMsgSettings.java"


# static fields
.field private static FROM:[Ljava/lang/String;

.field private static final REJECTMSG_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field createButton:Landroid/widget/Button;

.field createLayout:Landroid/widget/LinearLayout;

.field editText:Landroid/widget/EditText;

.field emptyText:Landroid/widget/LinearLayout;

.field factory:Landroid/view/LayoutInflater;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field listView:Landroid/widget/ListView;

.field mCancelButton:Landroid/widget/Button;

.field protected final mCancelClickListener:Landroid/view/View$OnClickListener;

.field protected final mCreateClickListener:Landroid/view/View$OnClickListener;

.field mDeleteButton:Landroid/widget/Button;

.field protected final mDeleteClickListener:Landroid/view/View$OnClickListener;

.field private mListAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItem:I

.field private mState:I

.field private rejectMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rejectMsgListID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field selectAll:Landroid/widget/LinearLayout;

.field selectAllCheck:Landroid/widget/CheckBox;

.field selectAllLayout:Landroid/widget/LinearLayout;

.field softkeyView:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const-string v0, "content://com.sec.android.app.callsetting.allcalls/reject_msg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "reject_message"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->FROM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgList:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgListID:Ljava/util/ArrayList;

    .line 251
    new-instance v0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$5;

    invoke-direct {v0, p0}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$5;-><init>(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)V

    iput-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mCreateClickListener:Landroid/view/View$OnClickListener;

    .line 316
    new-instance v0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$6;

    invoke-direct {v0, p0}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$6;-><init>(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)V

    iput-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->handler:Landroid/os/Handler;

    .line 326
    new-instance v0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$7;

    invoke-direct {v0, p0}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$7;-><init>(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)V

    iput-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    .line 382
    new-instance v0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$8;

    invoke-direct {v0, p0}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$8;-><init>(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)V

    iput-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mCancelClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mState:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mState:I

    return p1
.end method

.method static synthetic access$102(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->alertdialogRejectMessage()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgListID:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->deleteRejectMessage(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mListAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->saveRejectMessage()V

    return-void
.end method

.method private addRejectMessage(Ljava/lang/String;)J
    .locals 6
    .parameter "string"

    .prologue
    .line 683
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 684
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "reject_message"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-virtual {p0}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 690
    .local v2, new_uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 691
    .local v0, id:J
    return-wide v0
.end method

.method private alertdialogRejectMessage()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 483
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->factory:Landroid/view/LayoutInflater;

    const v3, 0x7f030025

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 484
    .local v1, textEntryView:Landroid/view/View;
    const v2, 0x7f080097

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->editText:Landroid/widget/EditText;

    .line 486
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->editText:Landroid/widget/EditText;

    const/16 v3, 0x2001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 487
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 489
    iget v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mSelectedItem:I

    if-lez v2, :cond_0

    .line 491
    iget-object v3, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->editText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mSelectedItem:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    .line 496
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 497
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0d0013

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 498
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 500
    const v2, 0x7f0d0009

    new-instance v3, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$9;

    invoke-direct {v3, p0}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$9;-><init>(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 506
    const v2, 0x7f0d000a

    new-instance v3, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$10;

    invoke-direct {v3, p0}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$10;-><init>(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 513
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 514
    new-instance v2, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$11;

    invoke-direct {v2, p0}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$11;-><init>(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 521
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 523
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$12;

    invoke-direct {v3, p0}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$12;-><init>(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 528
    return-void
.end method

.method private checkAlreadyInUse(Ljava/lang/String;)Z
    .locals 2
    .parameter "string"

    .prologue
    .line 591
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 593
    iget-object v1, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    const/4 v1, 0x1

    .line 598
    :goto_1
    return v1

    .line 591
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 598
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private deleteRejectMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 699
    invoke-virtual {p0}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 700
    return-void
.end method

.method private deleteRejectMessage(I)V
    .locals 5
    .parameter "rowId"

    .prologue
    const/4 v4, 0x0

    .line 705
    sget-object v1, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 706
    .local v0, rejectmsgUri:Landroid/net/Uri;
    const-string v1, "RejectCallWithMsgSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===deleteRejectMessage===rowID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-virtual {p0}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 708
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 757
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 758
    return-void
.end method

.method private getRejectMessage()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 723
    const-string v5, "_id desc"

    .line 724
    .local v5, sortOrder:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->FROM:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private saveRejectMessage()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 531
    const-wide/16 v0, 0x0

    .line 532
    .local v0, id:J
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 534
    .local v2, inputMessage:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v8

    :goto_0
    iput v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mState:I

    .line 538
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 540
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0d000b

    invoke-virtual {p0, v5}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->displayToast(Ljava/lang/String;)V

    .line 541
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 587
    :goto_1
    return-void

    :cond_0
    move v4, v9

    .line 534
    goto :goto_0

    .line 545
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 547
    const v4, 0x7f0d0012

    invoke-virtual {p0, v4}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->displayToast(Ljava/lang/String;)V

    .line 548
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    .line 552
    :cond_2
    iget v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mSelectedItem:I

    if-lez v4, :cond_5

    .line 554
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mSelectedItem:I

    sub-int/2addr v5, v8

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 555
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mSelectedItem:I

    sub-int/2addr v5, v8

    iget-object v6, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->editText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 557
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgListID:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mSelectedItem:I

    sub-int/2addr v5, v8

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 558
    .local v3, update_id:I
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->updateRejectMessage(Ljava/lang/String;I)V

    .line 559
    iput v7, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mSelectedItem:I

    .line 576
    .end local v3           #update_id:I
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->notifyDataSetInvalidated()V

    .line 578
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->editText:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->emptyText:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-eq v4, v10, :cond_4

    .line 581
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->emptyText:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 583
    :cond_4
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 585
    iput v9, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mState:I

    goto/16 :goto_1

    .line 563
    :cond_5
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 564
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->addRejectMessage(Ljava/lang/String;)J

    move-result-wide v0

    .line 566
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgListID:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 567
    const-string v4, "TEST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " message = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->editText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_3

    .line 571
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->createButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method private showRejectMessage(Landroid/database/Cursor;)V
    .locals 8
    .parameter "cursor"

    .prologue
    .line 732
    const/4 v2, 0x0

    .line 734
    .local v2, idx:I
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 737
    :goto_0
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 738
    .local v0, id:J
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 739
    .local v4, message:Ljava/lang/String;
    const-string v5, "TEST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RejectMsg idx"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Reject Message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v5, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 741
    iget-object v5, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgListID:Ljava/util/ArrayList;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #idx:I
    .local v3, idx:I
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 742
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    move v2, v3

    .line 745
    .end local v0           #id:J
    .end local v3           #idx:I
    .end local v4           #message:Ljava/lang/String;
    .restart local v2       #idx:I
    :cond_0
    const/4 v5, 0x5

    if-le v2, v5, :cond_1

    .line 747
    invoke-direct {p0}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->deleteRejectMessage()V

    .line 748
    const-string v5, "RejectCallWithMsgSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "===updateRejectMessage===idx"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_1
    return-void

    .end local v2           #idx:I
    .restart local v0       #id:J
    .restart local v3       #idx:I
    .restart local v4       #message:Ljava/lang/String;
    :cond_2
    move v2, v3

    .end local v3           #idx:I
    .restart local v2       #idx:I
    goto :goto_0
.end method

.method private updateRejectMessage(Ljava/lang/String;I)V
    .locals 7
    .parameter "string"
    .parameter "rowId"

    .prologue
    const/4 v5, 0x0

    const-string v6, "RejectCallWithMsgSettings"

    .line 712
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 713
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "reject_message"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    sget-object v2, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p2

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 715
    .local v0, rejectmsgUri:Landroid/net/Uri;
    const-string v2, "RejectCallWithMsgSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===updateRejectMessage===rowID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const-string v2, "RejectCallWithMsgSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===updateRejectMessage===values"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-virtual {p0}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 718
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 248
    const-string v0, "Configuration"

    const-string v1, "changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v2, 0x7f03003e

    invoke-virtual {p0, v2}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->setContentView(I)V

    .line 109
    const v2, 0x7f080113

    invoke-virtual {p0, v2}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->selectAllLayout:Landroid/widget/LinearLayout;

    .line 110
    const v2, 0x7f080114

    invoke-virtual {p0, v2}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->selectAll:Landroid/widget/LinearLayout;

    .line 111
    const v2, 0x7f080116

    invoke-virtual {p0, v2}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->selectAllCheck:Landroid/widget/CheckBox;

    .line 113
    const v2, 0x7f080110

    invoke-virtual {p0, v2}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->createLayout:Landroid/widget/LinearLayout;

    .line 114
    const v2, 0x7f080111

    invoke-virtual {p0, v2}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->createButton:Landroid/widget/Button;

    .line 115
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->createButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mCreateClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v2, 0x7f080118

    invoke-virtual {p0, v2}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->listView:Landroid/widget/ListView;

    .line 120
    const v2, 0x7f080117

    invoke-virtual {p0, v2}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->emptyText:Landroid/widget/LinearLayout;

    .line 122
    const v2, 0x7f080119

    invoke-virtual {p0, v2}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->softkeyView:Landroid/widget/RelativeLayout;

    .line 123
    const v2, 0x7f08011a

    invoke-virtual {p0, v2}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mDeleteButton:Landroid/widget/Button;

    .line 124
    const v2, 0x7f08011b

    invoke-virtual {p0, v2}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mCancelButton:Landroid/widget/Button;

    .line 126
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mDeleteButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mCancelButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mCancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->factory:Landroid/view/LayoutInflater;

    .line 131
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->factory:Landroid/view/LayoutInflater;

    const v3, 0x7f030025

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 132
    .local v1, textEntryView:Landroid/view/View;
    const v2, 0x7f080097

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->editText:Landroid/widget/EditText;

    .line 134
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 136
    invoke-direct {p0}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    .line 137
    .local v0, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->showRejectMessage(Landroid/database/Cursor;)V

    .line 138
    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mState:I

    .line 143
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 145
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->emptyText:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mState:I

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2

    .line 151
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->createButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 156
    :cond_2
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f030045

    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgList:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mListAdapter:Landroid/widget/ArrayAdapter;

    .line 157
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f030047

    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgList:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    .line 160
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->selectAll:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$1;

    invoke-direct {v3, p0}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$1;-><init>(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    const-string v2, "RejectCallWithMsgSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "====OnCreate=listView.getCount()==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->listView:Landroid/widget/ListView;

    new-instance v3, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$2;

    invoke-direct {v3, p0}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$2;-><init>(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 199
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 463
    packed-switch p1, :pswitch_data_0

    .line 478
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 467
    :pswitch_0
    iget v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 469
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 471
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->selectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->createLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->softkeyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    iput v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mState:I

    move v0, v2

    .line 476
    goto :goto_0

    .line 475
    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    .line 463
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 410
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 414
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 458
    :goto_0
    return v0

    .line 424
    :pswitch_0
    iget v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mState:I

    if-ne v0, v3, :cond_0

    .line 426
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->selectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->createLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->softkeyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->selectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 432
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 433
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 435
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 438
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mState:I

    .line 440
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 414
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 281
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 283
    iget v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 312
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 286
    :pswitch_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    goto :goto_0

    .line 292
    :pswitch_1
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 293
    const/4 v0, 0x2

    const v1, 0x7f0d000e

    invoke-virtual {p0, v1}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 297
    :pswitch_2
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    goto :goto_0

    .line 304
    :pswitch_3
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 207
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->selectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$3;

    invoke-direct {v1, p0}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$3;-><init>(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    const-string v0, "RejectCallWithMsgSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "====OnCreate=listView.getCount()==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 243
    :goto_0
    :pswitch_0
    return-void

    .line 235
    :pswitch_1
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 236
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$4;

    invoke-direct {v1, p0}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$4;-><init>(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
