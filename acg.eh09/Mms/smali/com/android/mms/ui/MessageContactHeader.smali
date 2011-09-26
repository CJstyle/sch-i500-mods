.class public Lcom/android/mms/ui/MessageContactHeader;
.super Landroid/widget/FrameLayout;
.source "MessageContactHeader.java"


# instance fields
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
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MessageContactHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageContactHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mExcludeMimes:[Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/android/mms/ui/MessageContactHeader;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageContactHeader;)Landroid/widget/QuickContactBadge;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
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

    .line 75
    iput-object p1, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactList:Lcom/android/mms/data/ContactList;

    .line 77
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageContactHeader;->wipeClean()V

    .line 78
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageContactHeader;->invalidate()V

    .line 80
    if-nez p1, :cond_0

    move v6, v10

    .line 127
    :goto_0
    return v6

    .line 84
    :cond_0
    const-string v5, ""

    .line 85
    .local v5, recipient:Ljava/lang/String;
    const/4 v2, 0x0

    .line 86
    .local v2, badgeDrawable:Landroid/graphics/drawable/Drawable;
    const v1, 0x7f020086

    .line 87
    .local v1, avatarResId:I
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-ne v6, v9, :cond_6

    .line 88
    invoke-virtual {p1, v10}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    .line 89
    .local v3, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, addr:Ljava/lang/String;
    const-string v6, "CBmessages"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 92
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessageContactHeader;->setContactUri(Landroid/net/Uri;)V

    .line 93
    iget-object v6, p0, Lcom/android/mms/ui/MessageContactHeader;->mContext:Landroid/content/Context;

    const v7, 0x7f09015d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 94
    const v1, 0x7f020080

    .line 117
    .end local v0           #addr:Ljava/lang/String;
    .end local v3           #contact:Lcom/android/mms/data/Contact;
    :goto_1
    if-nez v2, :cond_1

    .line 119
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/ui/MessageContactHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 125
    :cond_1
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageContactHeader;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageContactHeader;->setDisplayName(Ljava/lang/CharSequence;)V

    move v6, v9

    .line 127
    goto :goto_0

    .line 96
    .restart local v0       #addr:Ljava/lang/String;
    .restart local v3       #contact:Lcom/android/mms/data/Contact;
    :cond_2
    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 97
    iget-object v6, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 107
    :goto_3
    iget-object v6, p0, Lcom/android/mms/ui/MessageContactHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6, v8}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 108
    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v5

    .line 109
    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "vnd.android.cursor.item/sms-address"

    aput-object v7, v6, v10

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessageContactHeader;->setExcludeMimes([Ljava/lang/String;)V

    goto :goto_1

    .line 99
    :cond_3
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 100
    iget-object v6, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v6, v0, v9}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_3

    .line 102
    :cond_4
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 103
    iget-object v6, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v6, v0, v9}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_3

    .line 105
    :cond_5
    iget-object v6, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v6, v8}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_3

    .line 112
    .end local v0           #addr:Ljava/lang/String;
    .end local v3           #contact:Lcom/android/mms/data/Contact;
    :cond_6
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-le v6, v9, :cond_7

    .line 113
    const-string v6, ", "

    invoke-virtual {p1, v6}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 114
    :cond_7
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessageContactHeader;->setContactUri(Landroid/net/Uri;)V

    .line 115
    const v1, 0x7f02007d

    goto :goto_1

    .line 120
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 121
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

    .line 122
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public init()V
    .locals 2

    .prologue
    .line 64
    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageContactHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mHeaderWidgetView:Landroid/view/View;

    .line 65
    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageContactHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mNameView:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageContactHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactBadge:Landroid/widget/QuickContactBadge;

    .line 67
    iget-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mHeaderWidgetView:Landroid/view/View;

    new-instance v1, Lcom/android/mms/ui/MessageContactHeader$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageContactHeader$1;-><init>(Lcom/android/mms/ui/MessageContactHeader;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/MessageContactHeader;->setContactUri(Landroid/net/Uri;Z)V

    .line 136
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;Z)V
    .locals 1
    .parameter "uri"
    .parameter "sendToFastrack"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactUri:Landroid/net/Uri;

    .line 140
    if-eqz p2, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 143
    :cond_0
    return-void
.end method

.method public setDisplayName(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "displayName"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-void
.end method

.method public setExcludeMimes([Ljava/lang/String;)V
    .locals 1
    .parameter "excludeMimes"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/QuickContactBadge;->setExcludeMimes([Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    return-void
.end method

.method public setPhoto(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 151
    return-void
.end method

.method public wipeClean()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageContactHeader;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 163
    iput-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactUri:Landroid/net/Uri;

    .line 164
    return-void
.end method
