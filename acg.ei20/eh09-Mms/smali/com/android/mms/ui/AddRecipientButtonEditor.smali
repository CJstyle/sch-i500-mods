.class public Lcom/android/mms/ui/AddRecipientButtonEditor;
.super Landroid/widget/LinearLayout;
.source "AddRecipientButtonEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/AddRecipientButtonEditor$RecipientButtonOnClick;
    }
.end annotation


# static fields
.field private static mGroupButton:Landroid/widget/Button;

.field private static mPhonebookButton:Landroid/widget/Button;

.field private static mRecentButton:Landroid/widget/Button;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mTemp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/AddRecipientButtonEditor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/mms/ui/AddRecipientButtonEditor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getGroupButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/mms/ui/AddRecipientButtonEditor;->mGroupButton:Landroid/widget/Button;

    return-object v0
.end method

.method public static getPhoneBookButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/mms/ui/AddRecipientButtonEditor;->mPhonebookButton:Landroid/widget/Button;

    return-object v0
.end method

.method public static getRecentButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/mms/ui/AddRecipientButtonEditor;->mRecentButton:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public CreateAddRecipientButton()V
    .locals 3

    .prologue
    .line 75
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AddRecipientButtonEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/mms/ui/AddRecipientButtonEditor;->mRecentButton:Landroid/widget/Button;

    .line 76
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AddRecipientButtonEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/mms/ui/AddRecipientButtonEditor;->mPhonebookButton:Landroid/widget/Button;

    .line 77
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AddRecipientButtonEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/mms/ui/AddRecipientButtonEditor;->mGroupButton:Landroid/widget/Button;

    .line 79
    sget-object v0, Lcom/android/mms/ui/AddRecipientButtonEditor;->mRecentButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/AddRecipientButtonEditor$RecipientButtonOnClick;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/AddRecipientButtonEditor$RecipientButtonOnClick;-><init>(Lcom/android/mms/ui/AddRecipientButtonEditor;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    sget-object v0, Lcom/android/mms/ui/AddRecipientButtonEditor;->mPhonebookButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/AddRecipientButtonEditor$RecipientButtonOnClick;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/AddRecipientButtonEditor$RecipientButtonOnClick;-><init>(Lcom/android/mms/ui/AddRecipientButtonEditor;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    sget-object v0, Lcom/android/mms/ui/AddRecipientButtonEditor;->mGroupButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/AddRecipientButtonEditor$RecipientButtonOnClick;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/AddRecipientButtonEditor$RecipientButtonOnClick;-><init>(Lcom/android/mms/ui/AddRecipientButtonEditor;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/16 v3, 0xa

    const v2, 0x3f4ccccd

    .line 37
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 38
    sget-object v1, Lcom/android/mms/ui/AddRecipientButtonEditor;->mRecentButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/ui/AddRecipientButtonEditor;->mTemp:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lcom/android/mms/ui/AddRecipientButtonEditor;->mTemp:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 41
    .local v0, textLength:I
    if-lt v0, v3, :cond_0

    .line 42
    sget-object v1, Lcom/android/mms/ui/AddRecipientButtonEditor;->mRecentButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextScaleX(F)V

    .line 44
    :cond_0
    sget-object v1, Lcom/android/mms/ui/AddRecipientButtonEditor;->mPhonebookButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/ui/AddRecipientButtonEditor;->mTemp:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcom/android/mms/ui/AddRecipientButtonEditor;->mTemp:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 46
    if-lt v0, v3, :cond_1

    .line 47
    sget-object v1, Lcom/android/mms/ui/AddRecipientButtonEditor;->mPhonebookButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextScaleX(F)V

    .line 49
    :cond_1
    sget-object v1, Lcom/android/mms/ui/AddRecipientButtonEditor;->mGroupButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/ui/AddRecipientButtonEditor;->mTemp:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/android/mms/ui/AddRecipientButtonEditor;->mTemp:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 51
    if-lt v0, v3, :cond_2

    .line 52
    sget-object v1, Lcom/android/mms/ui/AddRecipientButtonEditor;->mGroupButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextScaleX(F)V

    .line 54
    :cond_2
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/mms/ui/AddRecipientButtonEditor;->mHandler:Landroid/os/Handler;

    .line 58
    return-void
.end method
