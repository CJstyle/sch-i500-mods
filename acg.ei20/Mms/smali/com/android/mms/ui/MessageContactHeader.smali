.class public Lcom/android/mms/ui/MessageContactHeader;
.super Landroid/widget/FrameLayout;
.source "MessageContactHeader.java"


# instance fields
.field mBannerClickListener:Landroid/view/View$OnClickListener;

.field private mContactBadge:Landroid/widget/QuickContactBadge;

.field private mContactList:Lcom/android/mms/data/ContactList;

.field protected mContactUri:Landroid/net/Uri;

.field protected mContext:Landroid/content/Context;

.field protected mExcludeMimes:[Ljava/lang/String;

.field private mHeaderWidgetView:Landroid/view/View;

.field private mNameView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MessageContactHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageContactHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mExcludeMimes:[Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/android/mms/ui/MessageContactHeader$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageContactHeader$2;-><init>(Lcom/android/mms/ui/MessageContactHeader;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mBannerClickListener:Landroid/view/View$OnClickListener;

    .line 65
    iput-object p1, p0, Lcom/android/mms/ui/MessageContactHeader;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageContactHeader;)Landroid/widget/QuickContactBadge;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactBadge:Landroid/widget/QuickContactBadge;

    return-object v0
.end method


# virtual methods
.method public bindContactHeader(Lcom/android/mms/data/ContactList;)Z
    .locals 11
    .parameter "contactList"

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 103
    iput-object p1, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactList:Lcom/android/mms/data/ContactList;

    .line 105
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageContactHeader;->wipeClean()V

    .line 106
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageContactHeader;->invalidate()V

    .line 108
    if-nez p1, :cond_0

    move v6, v10

    .line 160
    :goto_0
    return v6

    .line 112
    :cond_0
    const-string v5, ""

    .line 113
    .local v5, recipient:Ljava/lang/String;
    const/4 v2, 0x0

    .line 114
    .local v2, badgeDrawable:Landroid/graphics/drawable/Drawable;
    const v1, 0x7f02008a

    .line 115
    .local v1, avatarResId:I
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-ne v6, v9, :cond_6

    .line 116
    invoke-virtual {p1, v10}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    .line 117
    .local v3, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, addr:Ljava/lang/String;
    const-string v6, "CBmessages"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 120
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessageContactHeader;->setContactUri(Landroid/net/Uri;)V

    .line 121
    iget-object v6, p0, Lcom/android/mms/ui/MessageContactHeader;->mContext:Landroid/content/Context;

    const v7, 0x7f09015d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 122
    const v1, 0x7f020084

    .line 150
    .end local v0           #addr:Ljava/lang/String;
    .end local v3           #contact:Lcom/android/mms/data/Contact;
    :goto_1
    if-nez v2, :cond_1

    .line 152
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/ui/MessageContactHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 158
    :cond_1
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageContactHeader;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageContactHeader;->setDisplayName(Ljava/lang/CharSequence;)V

    move v6, v9

    .line 160
    goto :goto_0

    .line 129
    .restart local v0       #addr:Ljava/lang/String;
    .restart local v3       #contact:Lcom/android/mms/data/Contact;
    :cond_2
    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 130
    iget-object v6, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 140
    :goto_3
    iget-object v6, p0, Lcom/android/mms/ui/MessageContactHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6, v8}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 141
    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v5

    .line 142
    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "vnd.android.cursor.item/sms-address"

    aput-object v7, v6, v10

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessageContactHeader;->setExcludeMimes([Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :cond_3
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 133
    iget-object v6, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v6, v0, v9}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_3

    .line 135
    :cond_4
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 136
    iget-object v6, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v6, v0, v9}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_3

    .line 138
    :cond_5
    iget-object v6, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v6, v8}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_3

    .line 145
    .end local v0           #addr:Ljava/lang/String;
    .end local v3           #contact:Lcom/android/mms/data/Contact;
    :cond_6
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-le v6, v9, :cond_7

    .line 146
    const-string v6, ", "

    invoke-virtual {p1, v6}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 147
    :cond_7
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessageContactHeader;->setContactUri(Landroid/net/Uri;)V

    .line 148
    const v1, 0x7f020081

    goto :goto_1

    .line 153
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 154
    .local v4, e:Ljava/lang/OutOfMemoryError;
    const-string v6, "Mms/MessageContactHeader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OutOfMemoryError"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public init()V
    .locals 2

    .prologue
    .line 69
    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageContactHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mHeaderWidgetView:Landroid/view/View;

    .line 70
    const v0, 0x7f08008f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageContactHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mNameView:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f08008e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageContactHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactBadge:Landroid/widget/QuickContactBadge;

    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mHeaderWidgetView:Landroid/view/View;

    new-instance v1, Lcom/android/mms/ui/MessageContactHeader$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageContactHeader$1;-><init>(Lcom/android/mms/ui/MessageContactHeader;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 168
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/MessageContactHeader;->setContactUri(Landroid/net/Uri;Z)V

    .line 169
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;Z)V
    .locals 1
    .parameter "uri"
    .parameter "sendToFastrack"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactUri:Landroid/net/Uri;

    .line 173
    if-eqz p2, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 176
    :cond_0
    return-void
.end method

.method public setDisplayName(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "displayName"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    return-void
.end method

.method public setExcludeMimes([Ljava/lang/String;)V
    .locals 1
    .parameter "excludeMimes"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/QuickContactBadge;->setExcludeMimes([Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    return-void
.end method

.method public setPhoto(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 184
    return-void
.end method

.method public wipeClean()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageContactHeader;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 196
    iput-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactUri:Landroid/net/Uri;

    .line 197
    return-void
.end method
