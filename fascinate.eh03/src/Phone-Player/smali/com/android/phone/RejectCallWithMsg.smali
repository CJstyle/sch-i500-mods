.class public Lcom/android/phone/RejectCallWithMsg;
.super Landroid/app/Activity;
.source "RejectCallWithMsg.java"


# static fields
.field private static final REJECTMSG_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private rejectMsgList:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "content://com.sec.android.app.callsetting.allcalls/reject_msg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/RejectCallWithMsg;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->phoneNumber:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->message:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->rejectMsgList:Landroid/widget/ListView;

    .line 28
    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->list:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/RejectCallWithMsg;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/RejectCallWithMsg;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/RejectCallWithMsg;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsg;->message:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/RejectCallWithMsg;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->list:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v1, 0x7f03003c

    invoke-virtual {p0, v1}, Lcom/android/phone/RejectCallWithMsg;->setContentView(I)V

    .line 46
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsg;->phoneNumber:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsg;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 48
    .local v7, parentIntent:Landroid/content/Intent;
    const-string v1, "phone_number"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsg;->phoneNumber:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsg;->phoneNumber:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsg;->finish()V

    .line 55
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsg;->list:Ljava/util/ArrayList;

    .line 56
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsg;->list:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsg;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d025b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 61
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/phone/RejectCallWithMsg;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 62
    .local v6, cur:Landroid/database/Cursor;
    invoke-virtual {p0, v6}, Lcom/android/phone/RejectCallWithMsg;->startManagingCursor(Landroid/database/Cursor;)V

    .line 64
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    :cond_1
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8}, Ljava/lang/String;-><init>()V

    .line 67
    .local v8, rejectMessage:Ljava/lang/String;
    const-string v1, "reject_message"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 68
    if-eqz v8, :cond_2

    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsg;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    .end local v8           #rejectMessage:Ljava/lang/String;
    :cond_3
    const v1, 0x7f08010b

    invoke-virtual {p0, v1}, Lcom/android/phone/RejectCallWithMsg;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsg;->rejectMsgList:Landroid/widget/ListView;

    .line 73
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsg;->rejectMsgList:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsg;->list:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsg;->rejectMsgList:Landroid/widget/ListView;

    new-instance v2, Lcom/android/phone/RejectCallWithMsg$1;

    invoke-direct {v2, p0}, Lcom/android/phone/RejectCallWithMsg$1;-><init>(Lcom/android/phone/RejectCallWithMsg;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 105
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 115
    const-string v0, "RejectCallWithMSg"

    const-string v1, "Pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 117
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 120
    const-string v0, "RejectCallWithMSg"

    const-string v1, "Resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 122
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "RejectCallWithMSg"

    const-string v1, "Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 111
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsg;->finish()V

    .line 112
    return-void
.end method
