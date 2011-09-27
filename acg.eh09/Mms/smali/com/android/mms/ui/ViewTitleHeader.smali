.class public Lcom/android/mms/ui/ViewTitleHeader;
.super Landroid/widget/LinearLayout;
.source "ViewTitleHeader.java"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field mDisplayAddress:Ljava/lang/String;

.field mMsgID:J

.field mMsgItem:Lcom/android/mms/ui/MessageItem;

.field mMsgType:Ljava/lang/String;

.field mTitleIcon01:Landroid/widget/ImageView;

.field mTitleIcon02:Landroid/widget/ImageView;

.field mTitleIcon03:Landroid/widget/ImageView;

.field mTitleSender:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method private createViewTitleHeader()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    .line 94
    const v0, 0x7f0800b8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ViewTitleHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleSender:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f0800b9

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ViewTitleHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    .line 96
    const v0, 0x7f0800ba

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ViewTitleHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    .line 97
    const v0, 0x7f0800bb

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ViewTitleHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon03:Landroid/widget/ImageView;

    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon03:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    invoke-direct {p0}, Lcom/android/mms/ui/ViewTitleHeader;->setTitleSender()V

    .line 105
    iget-wide v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/android/mms/ui/ViewTitleHeader;->setTitleIcon()V

    .line 108
    :cond_0
    return-void
.end method

.method private setTitleIcon()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 132
    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgType:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgID:J

    iget-object v5, p0, Lcom/android/mms/ui/ViewTitleHeader;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->isLockmessage(Ljava/lang/String;JLandroid/content/ContentResolver;)J

    move-result-wide v0

    .line 133
    .local v0, isMsgLock:J
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    const v3, 0x7f02008e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    const v3, 0x7f02008d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    :cond_1
    return-void
.end method

.method private setTitleSender()V
    .locals 4

    .prologue
    const-string v2, "%s"

    .line 111
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 112
    const-string v0, "mms"

    iget-object v1, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mContext:Landroid/content/Context;

    const v1, 0x7f090072

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    .line 127
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleSender:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mContext:Landroid/content/Context;

    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mContext:Landroid/content/Context;

    const v1, 0x7f090015

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s"

    iget-object v1, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    goto :goto_0

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mContext:Landroid/content/Context;

    const v1, 0x7f090014

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s"

    iget-object v1, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public ViewTitleHeaderCreate(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "msgItem"
    .parameter "messageId"
    .parameter "type"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/mms/ui/ViewTitleHeader;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/ViewTitleHeader;->mContentResolver:Landroid/content/ContentResolver;

    .line 50
    iput-wide p3, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgID:J

    .line 51
    iput-object p5, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgType:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 54
    iget-wide v5, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgID:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    .line 55
    const-string v5, "mms"

    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 56
    const-string v5, "Me"

    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 59
    iget-object v5, p0, Lcom/android/mms/ui/ViewTitleHeader;->mContext:Landroid/content/Context;

    invoke-static {v5, p3, p4}, Lcom/android/mms/ui/MessageUtils;->getViewTitleStrings(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v4

    .line 60
    .local v4, phoneNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v0, displayAddress:Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 62
    .local v2, numberCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 63
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 64
    .local v3, phoneNumber:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 65
    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_0
    const/4 v5, 0x1

    sub-int v5, v2, v5

    if-eq v1, v5, :cond_1

    .line 67
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v3           #phoneNumber:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    .line 90
    .end local v0           #displayAddress:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v2           #numberCount:I
    .end local v4           #phoneNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/ViewTitleHeader;->createViewTitleHeader()V

    .line 91
    return-void

    .line 75
    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, v5, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    goto :goto_1

    .line 76
    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v5, :cond_3

    .line 83
    const-string v5, "Me"

    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 84
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    goto :goto_1

    .line 86
    :cond_6
    iget-object v5, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, v5, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    goto :goto_1
.end method

.method public setFailedeIcon(Z)V
    .locals 2
    .parameter "bFailed"

    .prologue
    .line 157
    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    const v1, 0x7f02008d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLockIcon(Z)V
    .locals 2
    .parameter "isLock"

    .prologue
    .line 146
    if-eqz p1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method