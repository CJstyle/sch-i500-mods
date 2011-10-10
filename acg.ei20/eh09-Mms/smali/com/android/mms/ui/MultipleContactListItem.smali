.class public Lcom/android/mms/ui/MultipleContactListItem;
.super Landroid/widget/LinearLayout;
.source "MultipleContactListItem.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;


# instance fields
.field avatarView:Landroid/widget/ImageView;

.field checkBox:Landroid/widget/CheckBox;

.field private mContact:Lcom/android/mms/data/Contact;

.field mDefaultContactImage:Landroid/graphics/drawable/Drawable;

.field mHandler:Landroid/os/Handler;

.field nameView:Landroid/widget/TextView;

.field numberView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MultipleContactListItem;->mHandler:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MultipleContactListItem;->mHandler:Landroid/os/Handler;

    .line 42
    return-void
.end method


# virtual methods
.method public bind(Lcom/android/mms/data/Contact;Landroid/graphics/drawable/Drawable;IZ)V
    .locals 2
    .parameter "contact"
    .parameter "defaultContactImage"
    .parameter "position"
    .parameter "checkState"

    .prologue
    .line 57
    iput-object p2, p0, Lcom/android/mms/ui/MultipleContactListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 59
    iput-object p1, p0, Lcom/android/mms/ui/MultipleContactListItem;->mContact:Lcom/android/mms/data/Contact;

    .line 60
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleContactListItem;->updateView()V

    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/MultipleContactListItem;->checkBox:Landroid/widget/CheckBox;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/android/mms/ui/MultipleContactListItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 65
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 66
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 48
    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultipleContactListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MultipleContactListItem;->avatarView:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f080084

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultipleContactListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MultipleContactListItem;->numberView:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f080083

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultipleContactListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MultipleContactListItem;->nameView:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultipleContactListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/MultipleContactListItem;->checkBox:Landroid/widget/CheckBox;

    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/MultipleContactListItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 53
    iget-object v0, p0, Lcom/android/mms/ui/MultipleContactListItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 54
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MultipleContactListItem;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/android/mms/ui/MultipleContactListItem;->mContact:Lcom/android/mms/data/Contact;

    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MultipleContactListItem;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/MultipleContactListItem$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MultipleContactListItem$1;-><init>(Lcom/android/mms/ui/MultipleContactListItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/mms/ui/MultipleContactListItem;->mContact:Lcom/android/mms/data/Contact;

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 112
    :cond_0
    if-eqz p1, :cond_1

    .line 113
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleContactListItem;->unbind()V

    goto :goto_0
.end method

.method public final unbind()V
    .locals 0

    .prologue
    .line 69
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 70
    return-void
.end method

.method public updateView()V
    .locals 6

    .prologue
    .line 73
    iget-object v3, p0, Lcom/android/mms/ui/MultipleContactListItem;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleContactListItem;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MultipleContactListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4, v5}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 74
    .local v0, contactAvatar:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/mms/ui/MultipleContactListItem;->avatarView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v3, p0, Lcom/android/mms/ui/MultipleContactListItem;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getRecentNumber()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, contactNumber:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 78
    iget-object v3, p0, Lcom/android/mms/ui/MultipleContactListItem;->numberView:Landroid/widget/TextView;

    const v4, 0x7f09014f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 83
    :goto_0
    if-nez v2, :cond_2

    .line 85
    iget-object v3, p0, Lcom/android/mms/ui/MultipleContactListItem;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->isEmail()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    iget-object v3, p0, Lcom/android/mms/ui/MultipleContactListItem;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, contactName:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/MultipleContactListItem;->nameView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void

    .line 80
    .end local v1           #contactName:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MultipleContactListItem;->numberView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 88
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MultipleContactListItem;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #contactName:Ljava/lang/String;
    goto :goto_1

    .line 91
    .end local v1           #contactName:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MultipleContactListItem;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #contactName:Ljava/lang/String;
    goto :goto_1
.end method
