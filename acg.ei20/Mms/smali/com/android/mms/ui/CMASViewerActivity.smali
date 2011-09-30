.class public Lcom/android/mms/ui/CMASViewerActivity;
.super Landroid/app/Activity;
.source "CMASViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;
    }
.end annotation


# instance fields
.field private cmas_alert_type_tv:Landroid/widget/TextView;

.field private cmas_data_tv:Landroid/widget/TextView;

.field private cmas_date_time_tv:Landroid/widget/TextView;

.field private cmas_msg_expiry_tv:Landroid/widget/TextView;

.field private cmas_text_tv:Landroid/widget/TextView;

.field private linearLayout01:Landroid/widget/LinearLayout;

.field private linearLayout02:Landroid/widget/LinearLayout;

.field private mBackgroundQueryHandler:Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mLocked:I

.field private msgDate:J

.field private msgExpiry:J

.field private msgId:J

.field private msgServiceCategory:I

.field private msgText:Ljava/lang/String;

.field private scrollView:Landroid/widget/ScrollView;

.field private threadId:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 74
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 92
    iput-wide v1, p0, Lcom/android/mms/ui/CMASViewerActivity;->msgId:J

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->msgText:Ljava/lang/String;

    .line 94
    iput-wide v1, p0, Lcom/android/mms/ui/CMASViewerActivity;->msgDate:J

    .line 95
    iput v3, p0, Lcom/android/mms/ui/CMASViewerActivity;->msgServiceCategory:I

    .line 96
    iput-wide v1, p0, Lcom/android/mms/ui/CMASViewerActivity;->msgExpiry:J

    .line 97
    iput v3, p0, Lcom/android/mms/ui/CMASViewerActivity;->mLocked:I

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/CMASViewerActivity;)Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/CMASViewerActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->msgId:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/CMASViewerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->cmas_date_time_tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/CMASViewerActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/android/mms/ui/CMASViewerActivity;->msgId:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/CMASViewerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->cmas_msg_expiry_tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/CMASViewerActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->msgText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/CMASViewerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/mms/ui/CMASViewerActivity;->msgText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/CMASViewerActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->msgDate:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/CMASViewerActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/android/mms/ui/CMASViewerActivity;->msgDate:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/CMASViewerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->msgServiceCategory:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/CMASViewerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/mms/ui/CMASViewerActivity;->msgServiceCategory:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/CMASViewerActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->msgExpiry:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/CMASViewerActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/android/mms/ui/CMASViewerActivity;->msgExpiry:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/CMASViewerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->mLocked:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/mms/ui/CMASViewerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/mms/ui/CMASViewerActivity;->mLocked:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/mms/ui/CMASViewerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->cmas_text_tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/CMASViewerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->cmas_data_tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/CMASViewerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->cmas_alert_type_tv:Landroid/widget/TextView;

    return-object v0
.end method

.method private confirmDeleteThread(J)V
    .locals 3
    .parameter "mthreadId"

    .prologue
    .line 484
    const-string v0, "Mms/CMASViewerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " confirmDeleteThread() with threadId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;

    const/16 v1, 0x70b

    invoke-static {v0, p1, p2, v1}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V

    .line 488
    return-void
.end method

.method private copyToClipboard(Ljava/lang/String;)V
    .locals 4
    .parameter "str"

    .prologue
    .line 491
    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CMASViewerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 494
    .local v0, clip:Landroid/text/ClipboardManager;
    const-string v1, "Mms/CMASViewerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " copyToClipboard() with str = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 497
    return-void
.end method

.method public static createIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 5
    .parameter
    .parameter

    .prologue
    const-string v4, "Mms/CMASViewerActivity"

    .line 585
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/CMASViewerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 587
    const-string v1, "Mms/CMASViewerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " createIntent threadId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 591
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 592
    const-string v2, "Mms/CMASViewerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " createIntent Uri for threadId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 596
    :cond_0
    return-object v0
.end method

.method private goToConversationList()V
    .locals 2

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASViewerActivity;->finish()V

    .line 521
    const-string v0, "Mms/CMASViewerActivity"

    const-string v1, " goToConversationList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASViewerActivity;->startActivity(Landroid/content/Intent;)V

    .line 523
    return-void
.end method

.method private initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 9
    .parameter "bundle"
    .parameter "intent"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 307
    if-eqz p1, :cond_0

    .line 309
    const-string v3, "Mms/CMASViewerActivity"

    const-string v4, "initActivityState"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v3, "recipients"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, recipients:Ljava/lang/String;
    invoke-static {v2, v5, v6}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-static {p0, v3, v5}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Lcom/android/mms/data/Conversation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/CMASViewerActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 339
    .end local v2           #recipients:Ljava/lang/String;
    :goto_0
    return-void

    .line 319
    :cond_0
    const-string v3, "thread_id"

    invoke-virtual {p2, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/mms/ui/CMASViewerActivity;->threadId:J

    .line 320
    iget-wide v3, p0, Lcom/android/mms/ui/CMASViewerActivity;->threadId:J

    cmp-long v3, v3, v7

    if-lez v3, :cond_1

    .line 321
    iget-wide v3, p0, Lcom/android/mms/ui/CMASViewerActivity;->threadId:J

    invoke-static {p0, v3, v4, v5}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/CMASViewerActivity;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 325
    .local v1, intentData:Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 327
    invoke-static {p0, v1, v5}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/data/Conversation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/CMASViewerActivity;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_0

    .line 330
    :cond_2
    const-string v3, "address"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 332
    invoke-static {v0, v5, v6}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-static {p0, v3, v5}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Lcom/android/mms/data/Conversation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/CMASViewerActivity;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_0

    .line 335
    :cond_3
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/CMASViewerActivity;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_0
.end method

.method private initResourceRefs()V
    .locals 2

    .prologue
    .line 130
    const-string v0, "Mms/CMASViewerActivity"

    const-string v1, " onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->cmas_text_tv:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->cmas_alert_type_tv:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->cmas_data_tv:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->cmas_date_time_tv:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->cmas_msg_expiry_tv:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->linearLayout01:Landroid/widget/LinearLayout;

    .line 139
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->linearLayout02:Landroid/widget/LinearLayout;

    .line 140
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->scrollView:Landroid/widget/ScrollView;

    .line 142
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->linearLayout02:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASViewerActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 144
    return-void
.end method

.method private lockMessage(JZ)V
    .locals 8
    .parameter "msgId"
    .parameter "locked"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 500
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 501
    .local v1, uri:Landroid/net/Uri;
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 503
    .local v0, lockUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 505
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "Mms/CMASViewerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " lockMessage() with msgId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and locked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const-string v3, "locked"

    if-eqz p3, :cond_0

    move v4, v6

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 509
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/CMASViewerActivity$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/mms/ui/CMASViewerActivity$1;-><init>(Lcom/android/mms/ui/CMASViewerActivity;Landroid/net/Uri;Landroid/content/ContentValues;)V

    const-string v5, "lockMessage"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 516
    if-eqz p3, :cond_1

    move v3, v6

    :goto_1
    iput v3, p0, Lcom/android/mms/ui/CMASViewerActivity;->mLocked:I

    .line 517
    return-void

    :cond_0
    move v4, v7

    .line 507
    goto :goto_0

    :cond_1
    move v3, v7

    .line 516
    goto :goto_1
.end method

.method private startMsgListQuery()V
    .locals 9

    .prologue
    const/16 v2, 0x2537

    const-string v4, "Mms/CMASViewerActivity"

    .line 369
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 371
    .local v3, conversationUri:Landroid/net/Uri;
    const-string v0, "Mms/CMASViewerActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startMsgListQuery for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    if-nez v3, :cond_0

    .line 396
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->cancelOperation(I)V

    .line 381
    :try_start_0
    const-string v0, "Mms/CMASViewerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMsgListQuery startQuery for conversationUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;

    const/16 v1, 0x2537

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 394
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method


# virtual methods
.method public initialize(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 291
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/CMASViewerActivity;->initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 293
    const-string v1, "Mms/CMASViewerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize: savedInstanceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mConversation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/CMASViewerActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-void
.end method

.method public loadMessageContent()V
    .locals 2

    .prologue
    .line 364
    const-string v0, "Mms/CMASViewerActivity"

    const-string v1, "loadMessageContent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-direct {p0}, Lcom/android/mms/ui/CMASViewerActivity;->startMsgListQuery()V

    .line 366
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 456
    const-string v0, "Mms/CMASViewerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContextItemSelected() item id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v4

    .line 479
    :goto_0
    return v0

    .line 460
    :pswitch_0
    iget-wide v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->msgId:J

    invoke-direct {p0, v0, v1, v3}, Lcom/android/mms/ui/CMASViewerActivity;->lockMessage(JZ)V

    move v0, v3

    .line 461
    goto :goto_0

    .line 464
    :pswitch_1
    iget-wide v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->msgId:J

    invoke-direct {p0, v0, v1, v4}, Lcom/android/mms/ui/CMASViewerActivity;->lockMessage(JZ)V

    move v0, v3

    .line 465
    goto :goto_0

    .line 468
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->msgText:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/CMASViewerActivity;->copyToClipboard(Ljava/lang/String;)V

    move v0, v3

    .line 469
    goto :goto_0

    .line 472
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/CMASMoreInfoActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASViewerActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 473
    goto :goto_0

    .line 476
    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/CMASViewerActivity;->confirmDeleteThread(J)V

    move v0, v3

    .line 477
    goto :goto_0

    .line 458
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASViewerActivity;->setContentView(I)V

    .line 123
    invoke-direct {p0}, Lcom/android/mms/ui/CMASViewerActivity;->initResourceRefs()V

    .line 124
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 125
    new-instance v0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/CMASViewerActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/CMASViewerActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/CMASViewerActivity;->initialize(Landroid/os/Bundle;)V

    .line 127
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v2, 0x0

    .line 433
    const-string v0, "Mms/CMASViewerActivity"

    const-string v1, "onCreateContextMenu() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const v0, 0x7f090030

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 440
    iget v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->mLocked:I

    if-eqz v0, :cond_0

    .line 441
    const/16 v0, 0xb

    const v1, 0x7f0900dc

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 446
    :goto_0
    const/16 v0, 0xc

    const v1, 0x7f09002a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 448
    const/16 v0, 0xd

    const v1, 0x7f090018

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 449
    const/16 v0, 0xe

    const v1, 0x7f09001a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 451
    return-void

    .line 443
    :cond_0
    const/16 v0, 0xa

    const v1, 0x7f0900db

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 621
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 623
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 628
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 630
    packed-switch p1, :pswitch_data_0

    .line 638
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 633
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASViewerActivity;->finish()V

    .line 634
    const/4 v0, 0x1

    goto :goto_0

    .line 630
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    const-string v9, "Mms/CMASViewerActivity"

    .line 527
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 529
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/CMASViewerActivity;->setIntent(Landroid/content/Intent;)V

    .line 531
    const/4 v0, 0x0

    .line 534
    .local v0, conversation:Lcom/android/mms/data/Conversation;
    const-string v4, "thread_id"

    invoke-virtual {p1, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mms/ui/CMASViewerActivity;->threadId:J

    .line 535
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 538
    .local v1, intentUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 540
    .local v3, scheme:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 541
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 545
    :cond_0
    const/4 v2, 0x0

    .line 546
    .local v2, sameThread:Z
    iget-wide v4, p0, Lcom/android/mms/ui/CMASViewerActivity;->threadId:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 547
    iget-wide v4, p0, Lcom/android/mms/ui/CMASViewerActivity;->threadId:J

    invoke-static {p0, v4, v5, v8}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 556
    :cond_1
    :goto_0
    const-string v4, "Mms/CMASViewerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNewIntent: data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", thread_id extra is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/mms/ui/CMASViewerActivity;->threadId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string v4, "Mms/CMASViewerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " new conversation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mConversation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/CMASViewerActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    if-eqz v0, :cond_2

    .line 562
    invoke-virtual {v0, v10}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 570
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/mms/ui/CMASViewerActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/CMASViewerActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/Conversation;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v10

    .line 574
    :cond_2
    :goto_1
    if-eqz v2, :cond_5

    .line 575
    const-string v4, "Mms/CMASViewerActivity"

    const-string v4, "onNewIntent: same conversation"

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :goto_2
    return-void

    .line 549
    :cond_3
    if-nez v2, :cond_1

    .line 552
    invoke-static {p0, v1, v8}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/data/Conversation;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v2, v8

    .line 570
    goto :goto_1

    .line 578
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/CMASViewerActivity;->initialize(Landroid/os/Bundle;)V

    .line 579
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASViewerActivity;->loadMessageContent()V

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 414
    const-string v0, "Mms/CMASViewerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onOptionsItemSelected item selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 427
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 418
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/CMASViewerActivity;->goToConversationList()V

    goto :goto_0

    .line 421
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/CMASMoreInfoActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASViewerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 611
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 612
    const-string v0, "Mms/CMASViewerActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 402
    const-string v0, "Mms/CMASViewerActivity"

    const-string v1, " onPrepareOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 405
    const v0, 0x7f0901dd

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 406
    const/4 v0, 0x2

    const v1, 0x7f0901df

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 408
    return v3
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 616
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 617
    const-string v0, "Mms/CMASViewerActivity"

    const-string v1, " onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 601
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 602
    const-string v0, "Mms/CMASViewerActivity"

    const-string v1, " onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 343
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 344
    const-string v0, "Mms/CMASViewerActivity"

    const-string v1, " onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASViewerActivity;->loadMessageContent()V

    .line 346
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASViewerActivity;->setMessageFont()V

    .line 347
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 606
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 607
    const-string v0, "Mms/CMASViewerActivity"

    const-string v1, " onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    return-void
.end method

.method public setMessageFont()V
    .locals 6

    .prologue
    .line 351
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 352
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "#cmas#pref##font#size"

    const-string v4, "14"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, bTemp:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 355
    .local v1, iFont:I
    const-string v3, "Mms/CMASViewerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Font size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewerActivity;->cmas_alert_type_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 358
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewerActivity;->cmas_data_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 359
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewerActivity;->cmas_date_time_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 360
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewerActivity;->cmas_msg_expiry_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 361
    return-void
.end method
