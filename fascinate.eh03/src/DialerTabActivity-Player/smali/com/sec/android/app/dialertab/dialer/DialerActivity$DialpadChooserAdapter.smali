.class Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter;
.super Landroid/widget/BaseAdapter;
.source "DialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialer/DialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialpadChooserAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter$ChoiceItem;
    }
.end annotation


# static fields
.field static final DIALPAD_CHOICE_ADD_NEW_CALL:I = 0x67

.field static final DIALPAD_CHOICE_RETURN_TO_CALL:I = 0x66

.field static final DIALPAD_CHOICE_USE_DTMF_DIALPAD:I = 0x65

.field private static final NUM_ITEMS:I = 0x2


# instance fields
.field private mChoiceItems:[Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter$ChoiceItem;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 4392
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4390
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter$ChoiceItem;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter;->mChoiceItems:[Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter$ChoiceItem;

    .line 4394
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 4400
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter;->mChoiceItems:[Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter$ChoiceItem;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter$ChoiceItem;

    const v3, 0x7f090057

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200d1

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v5, 0x65

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter$ChoiceItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    aput-object v2, v0, v1

    .line 4407
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter;->mChoiceItems:[Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter$ChoiceItem;

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter$ChoiceItem;

    const v3, 0x7f090058

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200d0

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v5, 0x66

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter$ChoiceItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    aput-object v2, v0, v1

    .line 4420
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 4423
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 4430
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter;->mChoiceItems:[Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter$ChoiceItem;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 4437
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 4446
    if-nez p2, :cond_0

    .line 4447
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 4450
    :cond_0
    const v2, 0x7f06009f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4451
    .local v1, text:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter;->mChoiceItems:[Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter$ChoiceItem;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter$ChoiceItem;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4453
    const v2, 0x7f06009e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4454
    .local v0, icon:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter;->mChoiceItems:[Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter$ChoiceItem;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter$ChoiceItem;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4456
    return-object p2
.end method
