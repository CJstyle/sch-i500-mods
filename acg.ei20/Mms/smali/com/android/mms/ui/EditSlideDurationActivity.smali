.class public Lcom/android/mms/ui/EditSlideDurationActivity;
.super Landroid/app/Activity;
.source "EditSlideDurationActivity.java"


# instance fields
.field private mCurSlide:I

.field private mDone:Landroid/widget/Button;

.field private mDur:Landroid/widget/EditText;

.field private mLabel:Landroid/widget/TextView;

.field private final mOnDoneClickListener:Landroid/view/View$OnClickListener;

.field private final mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mState:Landroid/os/Bundle;

.field private mToast:Landroid/widget/Toast;

.field private mTotal:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 123
    new-instance v0, Lcom/android/mms/ui/EditSlideDurationActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EditSlideDurationActivity$1;-><init>(Lcom/android/mms/ui/EditSlideDurationActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 139
    new-instance v0, Lcom/android/mms/ui/EditSlideDurationActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EditSlideDurationActivity$2;-><init>(Lcom/android/mms/ui/EditSlideDurationActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mOnDoneClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private notifyUser(I)V
    .locals 1
    .parameter "msgId"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 169
    iget-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 170
    iget-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mToast:Landroid/widget/Toast;

    .line 172
    iget-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 174
    :cond_1
    return-void
.end method


# virtual methods
.method protected editDone()V
    .locals 6

    .prologue
    .line 149
    iget-object v3, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, dur:Ljava/lang/String;
    const/4 v1, 0x0

    .line 152
    .local v1, durValue:I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 157
    if-gtz v1, :cond_0

    .line 158
    const v3, 0x7f09007b

    invoke-direct {p0, v3}, Lcom/android/mms/ui/EditSlideDurationActivity;->notifyUser(I)V

    .line 165
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 154
    .local v2, e:Ljava/lang/NumberFormatException;
    const v3, 0x7f09007a

    invoke-direct {p0, v3}, Lcom/android/mms/ui/EditSlideDurationActivity;->notifyUser(I)V

    goto :goto_0

    .line 163
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v3, -0x1

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/ui/EditSlideDurationActivity;->setResult(ILandroid/content/Intent;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/mms/ui/EditSlideDurationActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const-string v8, "slide_total"

    const-string v7, "slide_index"

    const-string v6, "dur"

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/EditSlideDurationActivity;->requestWindowFeature(I)Z

    .line 64
    const v2, 0x7f030018

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/EditSlideDurationActivity;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/mms/ui/EditSlideDurationActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 71
    if-nez p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/mms/ui/EditSlideDurationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 74
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "slide_index"

    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mCurSlide:I

    .line 75
    const-string v2, "slide_total"

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mTotal:I

    .line 76
    const-string v2, "dur"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 86
    .end local v1           #intent:Landroid/content/Intent;
    .local v0, dur:I
    :goto_0
    const v2, 0x7f080083

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/EditSlideDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mLabel:Landroid/widget/TextView;

    .line 87
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mLabel:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f090075

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/EditSlideDurationActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mCurSlide:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mTotal:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const v2, 0x7f080084

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/EditSlideDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    .line 91
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 95
    const v2, 0x7f080085

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/EditSlideDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDone:Landroid/widget/Button;

    .line 96
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDone:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mOnDoneClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void

    .line 78
    .end local v0           #dur:I
    :cond_0
    const-string v2, "state"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    .line 80
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    const-string v3, "slide_index"

    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mCurSlide:I

    .line 81
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    const-string v3, "slide_total"

    invoke-virtual {v2, v8, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mTotal:I

    .line 82
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    const-string v3, "dur"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .restart local v0       #dur:I
    goto/16 :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 107
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    .line 108
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    const-string v3, "slide_index"

    iget v4, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mCurSlide:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    const-string v3, "slide_total"

    iget v4, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mTotal:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 118
    .local v0, durValue:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    const-string v3, "dur"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    const-string v2, "state"

    iget-object v3, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 121
    return-void

    .line 114
    .end local v0           #durValue:I
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 116
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v0, 0x5

    .restart local v0       #durValue:I
    goto :goto_0
.end method
