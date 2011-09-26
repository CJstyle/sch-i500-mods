.class public Lcom/android/mms/ui/ConversationListItem;
.super Landroid/widget/RelativeLayout;
.source "ConversationListItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/mms/data/Contact$UpdateListener;


# static fields
.field private static final STYLE_BOLD:Landroid/text/style/StyleSpan;

.field public static isManualCheck:Z

.field public static mCheckStates:Landroid/util/SparseBooleanArray;

.field private static mDefaultContactImage:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAttachmentView:Landroid/view/View;

.field private mAvatarView:Landroid/widget/QuickContactBadge;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

.field private mCursor:Landroid/database/Cursor;

.field private mDateView:Landroid/widget/TextView;

.field private mDraftsView:Landroid/view/View;

.field private mErrorIndicator:Landroid/view/View;

.field private mFromView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mPresenceView:Landroid/widget/ImageView;

.field private mSubjectView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/ConversationListItem;->isManualCheck:Z

    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 89
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/ConversationListItem;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    .line 100
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 103
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateFromView()V

    return-void
.end method

.method private formatMessage(Lcom/android/mms/ui/ConversationListItemData;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "ch"

    .prologue
    const/4 v8, 0x0

    .line 166
    const v4, 0x1030046

    .line 167
    .local v4, size:I
    const/16 v1, 0x8

    .line 168
    .local v1, color:I
    invoke-virtual {p1}, Lcom/android/mms/ui/ConversationListItemData;->getFrom()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, from:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v3

    .line 170
    .local v3, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-virtual {v3, v8}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/data/Contact;

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CBmessages"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 171
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09015d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 173
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 176
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    invoke-virtual {p1}, Lcom/android/mms/ui/ConversationListItemData;->getMessageCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 177
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/mms/ui/ConversationListItemData;->getUnreadMessageCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/mms/ui/ConversationListItemData;->getMessageCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 181
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/ConversationListItemData;->isRead()Z

    move-result v5

    if-nez v5, :cond_2

    .line 182
    sget-object v5, Lcom/android/mms/ui/ConversationListItem;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x11

    invoke-virtual {v0, v5, v8, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 185
    :cond_2
    return-object v0
.end method

.method private setConversationListItemData(Lcom/android/mms/ui/ConversationListItemData;)V
    .locals 0
    .parameter "header"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    .line 141
    return-void
.end method

.method private updateAvatarView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 189
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    .line 193
    .local v1, ch:Lcom/android/mms/ui/ConversationListItemData;
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 195
    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 196
    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    .line 197
    .local v2, contact:Lcom/android/mms/data/Contact;
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 199
    .local v0, avatarDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CBmessages"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 201
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020080

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 224
    .end local v2           #contact:Lcom/android/mms/data/Contact;
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v7}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 226
    return-void

    .line 203
    .restart local v2       #contact:Lcom/android/mms/data/Contact;
    :cond_0
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 208
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 212
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_0

    .line 215
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 221
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #contact:Lcom/android/mms/data/Contact;
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02007d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private updateFromView()V
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    .line 230
    .local v0, ch:Lcom/android/mms/ui/ConversationListItemData;
    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItemData;->updateRecipients()V

    .line 231
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->formatMessage(Lcom/android/mms/ui/ConversationListItemData;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->getPresenceResId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListItem;->setPresenceIcon(I)V

    .line 233
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarView()V

    .line 234
    return-void
.end method


# virtual methods
.method public bind(Landroid/content/Context;Lcom/android/mms/ui/ConversationListItemData;Landroid/database/Cursor;)V
    .locals 7
    .parameter "context"
    .parameter "ch"
    .parameter "cursor"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 253
    invoke-direct {p0, p2}, Lcom/android/mms/ui/ConversationListItem;->setConversationListItemData(Lcom/android/mms/ui/ConversationListItemData;)V

    .line 255
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->isRead()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    .line 259
    .local v0, background:Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mErrorIndicator:Landroid/view/View;

    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->hasError()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentView:Landroid/view/View;

    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->hasAttachment()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mDraftsView:Landroid/view/View;

    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->hasDraft()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/android/mms/ui/ConversationListItem;->formatMessage(Lcom/android/mms/ui/ConversationListItemData;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 275
    .local v1, contacts:Lcom/android/mms/data/ContactList;
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 276
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->getPresenceResId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationListItem;->setPresenceIcon(I)V

    .line 278
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarView()V

    .line 280
    iput-object p3, p0, Lcom/android/mms/ui/ConversationListItem;->mCursor:Landroid/database/Cursor;

    .line 281
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationListItem;->setLongClickable(Z)V

    .line 283
    instance-of v3, p1, Lcom/android/mms/ui/ConversationListDel;

    if-eqz v3, :cond_1

    .line 284
    sget-object v3, Lcom/android/mms/ui/ConversationListItem;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v3, :cond_0

    .line 285
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Landroid/util/SparseBooleanArray;-><init>(I)V

    sput-object v3, Lcom/android/mms/ui/ConversationListItem;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 287
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 288
    .local v2, i:I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, p0, v3}, Lcom/android/mms/ui/ConversationListItem;->setCheckBox(Landroid/view/View;I)V

    .line 290
    .end local v2           #i:I
    :cond_1
    return-void

    .line 255
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    .end local v1           #contacts:Lcom/android/mms/data/ContactList;
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .restart local v0       #background:Landroid/graphics/drawable/Drawable;
    :cond_3
    move v4, v6

    .line 262
    goto :goto_1

    :cond_4
    move v4, v6

    .line 263
    goto :goto_2

    :cond_5
    move v4, v6

    .line 264
    goto :goto_3
.end method

.method public bind(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "title"
    .parameter "explain"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    return-void
.end method

.method public getConversationListItemData()Lcom/android/mms/ui/ConversationListItemData;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 300
    sget-object v3, Lcom/android/mms/ui/ConversationListItem;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_1

    .line 301
    sget-object v4, Lcom/android/mms/ui/ConversationListItem;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 303
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 305
    .local v2, nTotalItem:I
    const/4 v0, 0x1

    .line 306
    .local v0, allChecked:Z
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-gt v1, v2, :cond_0

    .line 307
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListAdapter;->isChecked(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 308
    const/4 v0, 0x0

    .line 313
    :cond_0
    if-eqz v0, :cond_4

    .line 314
    sget-object v3, Lcom/android/mms/ui/ConversationListDel;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v5

    :goto_1
    sput-boolean v3, Lcom/android/mms/ui/ConversationListItem;->isManualCheck:Z

    .line 315
    sget-object v3, Lcom/android/mms/ui/ConversationListDel;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 316
    sget-object v3, Lcom/android/mms/ui/ConversationListItem;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 324
    :goto_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Lcom/android/mms/ui/ConversationListDel;

    if-eqz v3, :cond_1

    .line 325
    sget-object v3, Lcom/android/mms/ui/ConversationListItem;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v6}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_6

    .line 326
    sget-object v3, Lcom/android/mms/ui/ConversationListDel;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 332
    .end local v0           #allChecked:Z
    .end local v1           #i:I
    .end local v2           #nTotalItem:I
    :cond_1
    :goto_3
    return-void

    .line 306
    .restart local v0       #allChecked:Z
    .restart local v1       #i:I
    .restart local v2       #nTotalItem:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v3, v6

    .line 314
    goto :goto_1

    .line 318
    :cond_4
    sget-object v3, Lcom/android/mms/ui/ConversationListDel;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v5

    :goto_4
    sput-boolean v3, Lcom/android/mms/ui/ConversationListItem;->isManualCheck:Z

    .line 319
    sget-object v3, Lcom/android/mms/ui/ConversationListDel;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 320
    sget-object v3, Lcom/android/mms/ui/ConversationListItem;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v5, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    :cond_5
    move v3, v6

    .line 318
    goto :goto_4

    .line 328
    :cond_6
    sget-object v3, Lcom/android/mms/ui/ConversationListDel;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_3
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 109
    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDraftsView:Landroid/view/View;

    .line 113
    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentView:Landroid/view/View;

    .line 115
    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mErrorIndicator:Landroid/view/View;

    .line 116
    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    .line 117
    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 119
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/mms/ui/ConversationListDel;

    if-eqz v0, :cond_0

    .line 120
    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 123
    :cond_0
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/data/ContactList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ConversationListItem$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListItem$1;-><init>(Lcom/android/mms/ui/ConversationListItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 349
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 351
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    if-nez v0, :cond_0

    .line 358
    :goto_0
    return-void

    .line 353
    :cond_0
    if-eqz p1, :cond_1

    .line 354
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    goto :goto_0

    .line 356
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->unbind()V

    goto :goto_0
.end method

.method public setCheckBox(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 338
    const v0, 0x7f080038

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 340
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 342
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    sget-object v1, Lcom/android/mms/ui/ConversationListItem;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 343
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 344
    return-void
.end method

.method public setPresenceIcon(I)V
    .locals 2
    .parameter "iconId"

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTextColor(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "isDeleting"

    .prologue
    const v1, -0x777778

    .line 155
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    const v2, 0x207000e

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 161
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    const v2, 0x207000f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public final unbind()V
    .locals 0

    .prologue
    .line 295
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 296
    return-void
.end method
