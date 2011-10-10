.class public Lcom/android/mms/ui/CMASMoreInfoActivity;
.super Landroid/app/Activity;
.source "CMASMoreInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/CMASMoreInfoActivity$BackgroundQueryHandler;
    }
.end annotation


# instance fields
.field private mBackgroundQueryHandler:Lcom/android/mms/ui/CMASMoreInfoActivity$BackgroundQueryHandler;

.field private mCertainity:Landroid/widget/TextView;

.field private mCertainityMenu:Landroid/widget/TextView;

.field private mCmaeCategory:Landroid/widget/TextView;

.field private mCmaeCategoryMenu:Landroid/widget/TextView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mMsgId:Landroid/widget/TextView;

.field private mMsgIdMenu:Landroid/widget/TextView;

.field private mResponseType:Landroid/widget/TextView;

.field private mResponseTypeMenu:Landroid/widget/TextView;

.field private mServiceCategory:Landroid/widget/TextView;

.field private mServiceCategoryBroadcastMenu:Landroid/widget/TextView;

.field private mSeverity:Landroid/widget/TextView;

.field private mSeverityMenu:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mUrgency:Landroid/widget/TextView;

.field private mUrgencyMenu:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 116
    return-void
.end method

.method private CMASMoreInfoInitActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 11
    .parameter "bundle"
    .parameter "intent"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 421
    if-eqz p1, :cond_0

    .line 424
    const-string v5, "Mms/CMASMoreInfoActivity"

    const-string v6, "initActivityState"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-string v5, "recipients"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, recipients:Ljava/lang/String;
    invoke-static {v2, v7, v8}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-static {p0, v5, v7}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Lcom/android/mms/data/Conversation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 461
    .end local v2           #recipients:Ljava/lang/String;
    :goto_0
    return-void

    .line 437
    :cond_0
    const-string v5, "thread_id"

    invoke-virtual {p2, v5, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 438
    .local v3, threadId:J
    cmp-long v5, v3, v9

    if-lez v5, :cond_1

    .line 439
    invoke-static {p0, v3, v4, v7}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_0

    .line 441
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 443
    .local v1, intentData:Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 446
    invoke-static {p0, v1, v7}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/data/Conversation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_0

    .line 449
    :cond_2
    const-string v5, "address"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 451
    invoke-static {v0, v7, v8}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-static {p0, v5, v7}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Lcom/android/mms/data/Conversation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_0

    .line 457
    :cond_3
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_0
.end method

.method private CMASMoreInfoInitResourceRefs()V
    .locals 2

    .prologue
    .line 96
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mTitle:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mMsgId:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mCmaeCategory:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mServiceCategory:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mResponseType:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mSeverity:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mUrgency:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mCertainity:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f080027

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mMsgIdMenu:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f08002a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mCmaeCategoryMenu:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mServiceCategoryBroadcastMenu:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mResponseTypeMenu:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f080033

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mSeverityMenu:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mUrgencyMenu:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mCertainityMenu:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0901e0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 114
    return-void
.end method

.method public static createIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 632
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/CMASMoreInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 634
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 636
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 638
    const-string v2, "Mms/CMASMoreInfoActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " createIntent Uri for threadId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 641
    :cond_0
    return-object v0
.end method

.method private setCertainityText(I)V
    .locals 2
    .parameter "msgCertainity"

    .prologue
    .line 194
    packed-switch p1, :pswitch_data_0

    .line 209
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mCertainity:Landroid/widget/TextView;

    const v1, 0x7f090207

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 212
    :goto_0
    return-void

    .line 198
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mCertainity:Landroid/widget/TextView;

    const v1, 0x7f090205

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 202
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mCertainity:Landroid/widget/TextView;

    const v1, 0x7f090206

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setCmaeCategoryText(I)V
    .locals 2
    .parameter "msgCategory"

    .prologue
    .line 305
    packed-switch p1, :pswitch_data_0

    .line 364
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mCmaeCategory:Landroid/widget/TextView;

    const v1, 0x7f090207

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 367
    :goto_0
    return-void

    .line 308
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mCmaeCategory:Landroid/widget/TextView;

    const v1, 0x7f0901ed

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 312
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mCmaeCategory:Landroid/widget/TextView;

    const v1, 0x7f0901ee

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 317
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mCmaeCategory:Landroid/widget/TextView;

    const v1, 0x7f0901ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 323
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mCmaeCategory:Landroid/widget/TextView;

    const v1, 0x7f0901f0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 327
    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mCmaeCategory:Landroid/widget/TextView;

    const v1, 0x7f0901f1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 331
    :pswitch_5
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mCmaeCategory:Landroid/widget/TextView;

    const v1, 0x7f0901f2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 335
    :pswitch_6
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mCmaeCategory:Landroid/widget/TextView;

    const v1, 0x7f0901f3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 339
    :pswitch_7
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mCmaeCategory:Landroid/widget/TextView;

    const v1, 0x7f0901f4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 344
    :pswitch_8
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mCmaeCategory:Landroid/widget/TextView;

    const v1, 0x7f0901f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 349
    :pswitch_9
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mCmaeCategory:Landroid/widget/TextView;

    const v1, 0x7f0901f6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 356
    :pswitch_a
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mCmaeCategory:Landroid/widget/TextView;

    const v1, 0x7f0901f7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 360
    :pswitch_b
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mCmaeCategory:Landroid/widget/TextView;

    const v1, 0x7f0901f8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private setResponseTypeText(I)V
    .locals 2
    .parameter "msgResponseType"

    .prologue
    .line 258
    packed-switch p1, :pswitch_data_0

    .line 298
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mResponseType:Landroid/widget/TextView;

    const v1, 0x7f090207

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 301
    :goto_0
    return-void

    .line 261
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mResponseType:Landroid/widget/TextView;

    const v1, 0x7f0901f9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 265
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mResponseType:Landroid/widget/TextView;

    const v1, 0x7f0901fa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 269
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mResponseType:Landroid/widget/TextView;

    const v1, 0x7f0901fb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 274
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mResponseType:Landroid/widget/TextView;

    const v1, 0x7f0901fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 279
    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mResponseType:Landroid/widget/TextView;

    const v1, 0x7f0901fd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 283
    :pswitch_5
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mResponseType:Landroid/widget/TextView;

    const v1, 0x7f0901fe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 290
    :pswitch_6
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mResponseType:Landroid/widget/TextView;

    const v1, 0x7f0901ff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 294
    :pswitch_7
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mResponseType:Landroid/widget/TextView;

    const v1, 0x7f090200

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private setServiceCategoryText(I)V
    .locals 3
    .parameter "msgServiceCategory"

    .prologue
    .line 370
    packed-switch p1, :pswitch_data_0

    .line 393
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mServiceCategory:Landroid/widget/TextView;

    const v1, 0x7f090207

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 395
    const-string v0, "Mms/CMASMoreInfoActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Wrong msgServiceCategory for CMAS with msgServiceCategory = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_0
    return-void

    .line 373
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mServiceCategory:Landroid/widget/TextView;

    const v1, 0x7f0901e8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 377
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mServiceCategory:Landroid/widget/TextView;

    const v1, 0x7f0901e9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 381
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mServiceCategory:Landroid/widget/TextView;

    const v1, 0x7f0901ea

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 385
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mServiceCategory:Landroid/widget/TextView;

    const v1, 0x7f0901eb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 389
    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mServiceCategory:Landroid/widget/TextView;

    const v1, 0x7f0901ec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setSeverityText(I)V
    .locals 2
    .parameter "msgSeverity"

    .prologue
    .line 238
    packed-switch p1, :pswitch_data_0

    .line 251
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mSeverity:Landroid/widget/TextView;

    const v1, 0x7f090207

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 254
    :goto_0
    return-void

    .line 242
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mSeverity:Landroid/widget/TextView;

    const v1, 0x7f090201

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 247
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mSeverity:Landroid/widget/TextView;

    const v1, 0x7f090202

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setUrgencyText(I)V
    .locals 2
    .parameter "msgUrgency"

    .prologue
    .line 216
    packed-switch p1, :pswitch_data_0

    .line 230
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mUrgency:Landroid/widget/TextView;

    const v1, 0x7f090207

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 234
    :goto_0
    return-void

    .line 220
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mUrgency:Landroid/widget/TextView;

    const v1, 0x7f090203

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 226
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mUrgency:Landroid/widget/TextView;

    const v1, 0x7f090204

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startMsgListQuery()V
    .locals 9

    .prologue
    const/16 v2, 0x2537

    const-string v4, "Mms/CMASMoreInfoActivity"

    .line 505
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 508
    .local v3, conversationUri:Landroid/net/Uri;
    const-string v0, "Mms/CMASMoreInfoActivity"

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

    .line 510
    if-nez v3, :cond_0

    .line 535
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/CMASMoreInfoActivity$BackgroundQueryHandler;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/CMASMoreInfoActivity$BackgroundQueryHandler;->cancelOperation(I)V

    .line 519
    :try_start_0
    const-string v0, "Mms/CMASMoreInfoActivity"

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

    .line 529
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/CMASMoreInfoActivity$BackgroundQueryHandler;

    const/16 v1, 0x2537

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/CMASMoreInfoActivity$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 533
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method


# virtual methods
.method public CMASMoreInfoInitialize(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASMoreInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 403
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/CMASMoreInfoActivity;->CMASMoreInfoInitActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 406
    const-string v1, "Mms/CMASMoreInfoActivity"

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

    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void
.end method

.method public CMASMoreInfoLoadMessageContent()V
    .locals 2

    .prologue
    .line 473
    const-string v0, "Mms/CMASMoreInfoActivity"

    const-string v1, "loadMessageContent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-direct {p0}, Lcom/android/mms/ui/CMASMoreInfoActivity;->startMsgListQuery()V

    .line 475
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASMoreInfoActivity;->setMessageFont()V

    .line 476
    return-void
.end method

.method public CMASMoreInfoSetData(Landroid/database/Cursor;)V
    .locals 14
    .parameter "cursor"

    .prologue
    const-string v13, "Mms/CMASMoreInfoActivity"

    .line 149
    const-string v11, "Mms/CMASMoreInfoActivity"

    const-string v11, "CMASMoreInfoSetData"

    invoke-static {v13, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/16 v11, 0x1d

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 152
    .local v4, msgId:J
    const/16 v11, 0x18

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 153
    .local v0, msgCategory:I
    const/16 v11, 0x17

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 154
    .local v7, msgServiceCategory:I
    const/16 v11, 0x19

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 155
    .local v6, msgResponseType:I
    const/16 v11, 0x1a

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 156
    .local v8, msgSeverity:I
    const/16 v11, 0x1b

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 157
    .local v10, msgUrgency:I
    const/16 v11, 0x1c

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 161
    .local v1, msgCertainity:I
    const/4 v11, 0x4

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 162
    .local v9, msgText:Ljava/lang/String;
    const/4 v11, 0x5

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 164
    .local v2, msgDate:J
    const-string v11, "Mms/CMASMoreInfoActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "msgId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "string format"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v11, "Mms/CMASMoreInfoActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "msgText "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " msgServiceCategory "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " msgCategory "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " msgDate "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " msgResponseType "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " msgSeverity "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " msgUrgency "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " msgCertainity "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mTitle:Landroid/widget/TextView;

    const v12, 0x7f0901e0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 175
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mMsgId:Landroid/widget/TextView;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-direct {p0, v7}, Lcom/android/mms/ui/CMASMoreInfoActivity;->setServiceCategoryText(I)V

    .line 181
    invoke-direct {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoActivity;->setCmaeCategoryText(I)V

    .line 183
    invoke-direct {p0, v6}, Lcom/android/mms/ui/CMASMoreInfoActivity;->setResponseTypeText(I)V

    .line 185
    invoke-direct {p0, v8}, Lcom/android/mms/ui/CMASMoreInfoActivity;->setSeverityText(I)V

    .line 187
    invoke-direct {p0, v10}, Lcom/android/mms/ui/CMASMoreInfoActivity;->setUrgencyText(I)V

    .line 189
    invoke-direct {p0, v1}, Lcom/android/mms/ui/CMASMoreInfoActivity;->setCertainityText(I)V

    .line 190
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoActivity;->setContentView(I)V

    .line 88
    invoke-direct {p0}, Lcom/android/mms/ui/CMASMoreInfoActivity;->CMASMoreInfoInitResourceRefs()V

    .line 89
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASMoreInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 90
    new-instance v0, Lcom/android/mms/ui/CMASMoreInfoActivity$BackgroundQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/CMASMoreInfoActivity$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/CMASMoreInfoActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/CMASMoreInfoActivity$BackgroundQueryHandler;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/CMASMoreInfoActivity;->CMASMoreInfoInitialize(Landroid/os/Bundle;)V

    .line 92
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 540
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 541
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v12, 0x1

    const/4 v10, 0x0

    const-string v11, "Mms/CMASMoreInfoActivity"

    .line 563
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 565
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/CMASMoreInfoActivity;->setIntent(Landroid/content/Intent;)V

    .line 567
    const/4 v0, 0x0

    .line 571
    .local v0, conversation:Lcom/android/mms/data/Conversation;
    const-string v6, "thread_id"

    invoke-virtual {p1, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 572
    .local v4, threadId:J
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 575
    .local v1, intentUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 577
    .local v3, scheme:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 578
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 582
    :cond_0
    const/4 v2, 0x0

    .line 583
    .local v2, sameThread:Z
    cmp-long v6, v4, v7

    if-lez v6, :cond_3

    .line 584
    invoke-static {p0, v4, v5, v10}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 594
    :cond_1
    :goto_0
    const-string v6, "Mms/CMASMoreInfoActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNewIntent: data="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", thread_id extra is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string v6, "Mms/CMASMoreInfoActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " new conversation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mConversation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    if-eqz v0, :cond_2

    .line 604
    invoke-virtual {v0, v12}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 616
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/Conversation;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v12

    .line 620
    :cond_2
    :goto_1
    if-eqz v2, :cond_5

    .line 622
    const-string v6, "Mms/CMASMoreInfoActivity"

    const-string v6, "onNewIntent: same conversation"

    invoke-static {v11, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :goto_2
    return-void

    .line 586
    :cond_3
    if-nez v2, :cond_1

    .line 589
    invoke-static {p0, v1, v10}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/data/Conversation;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v2, v10

    .line 616
    goto :goto_1

    .line 625
    :cond_5
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/CMASMoreInfoActivity;->CMASMoreInfoInitialize(Landroid/os/Bundle;)V

    .line 626
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASMoreInfoActivity;->CMASMoreInfoLoadMessageContent()V

    goto :goto_2
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 546
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 547
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 552
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 553
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 465
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 467
    const-string v0, "Mms/CMASMoreInfoActivity"

    const-string v1, " onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASMoreInfoActivity;->CMASMoreInfoLoadMessageContent()V

    .line 469
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 558
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 559
    return-void
.end method

.method public setMessageFont()V
    .locals 6

    .prologue
    .line 479
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 481
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "#cmas#pref##font#size"

    const-string v4, "14"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, bTemp:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 485
    .local v1, iFont:I
    const-string v3, "Mms/CMASMoreInfoActivity"

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

    .line 487
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mMsgId:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 488
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mCmaeCategory:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 489
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mServiceCategory:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 490
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mResponseType:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 491
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mSeverity:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 492
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mUrgency:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 493
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mCertainity:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 495
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mMsgIdMenu:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 496
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mCmaeCategoryMenu:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 497
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mServiceCategoryBroadcastMenu:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 498
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mResponseTypeMenu:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 499
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mSeverityMenu:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 500
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mUrgencyMenu:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 501
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoActivity;->mCertainityMenu:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 502
    return-void
.end method
