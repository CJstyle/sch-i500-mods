.class public Lcom/android/browser/AddFolderPage;
.super Landroid/app/Activity;
.source "AddFolderPage.java"


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private mButton:Landroid/widget/TextView;

.field private mCancel:Landroid/view/View$OnClickListener;

.field private mCancelButton:Landroid/view/View;

.field private mEditExisting:Z

.field private mHandler:Landroid/os/Handler;

.field private mId:I

.field private mMap:Landroid/os/Bundle;

.field private mSaveFolder:Landroid/view/View$OnClickListener;

.field private mTitle:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const-string v0, "Folders"

    iput-object v0, p0, Lcom/android/browser/AddFolderPage;->LOGTAG:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/android/browser/AddFolderPage$1;

    invoke-direct {v0, p0}, Lcom/android/browser/AddFolderPage$1;-><init>(Lcom/android/browser/AddFolderPage;)V

    iput-object v0, p0, Lcom/android/browser/AddFolderPage;->mSaveFolder:Landroid/view/View$OnClickListener;

    .line 63
    new-instance v0, Lcom/android/browser/AddFolderPage$2;

    invoke-direct {v0, p0}, Lcom/android/browser/AddFolderPage$2;-><init>(Lcom/android/browser/AddFolderPage;)V

    iput-object v0, p0, Lcom/android/browser/AddFolderPage;->mCancel:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/AddFolderPage;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/browser/AddFolderPage;->updateFolderDB(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private createHandler()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/browser/AddFolderPage;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/android/browser/AddFolderPage$3;

    invoke-direct {v0, p0}, Lcom/android/browser/AddFolderPage$3;-><init>(Lcom/android/browser/AddFolderPage;)V

    iput-object v0, p0, Lcom/android/browser/AddFolderPage;->mHandler:Landroid/os/Handler;

    .line 129
    :cond_0
    return-void
.end method

.method private hasDuplicateFolder(Ljava/lang/String;)Z
    .locals 4
    .parameter "title"

    .prologue
    .line 144
    const/4 v2, 0x0

    .line 147
    .local v2, retValue:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/browser/AddFolderPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 148
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    invoke-static {v3, v0, p1}, Lcom/android/browser/Folders;->hasDuplicateFolder(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v3, v2

    .line 153
    .end local v0           #cr:Landroid/content/ContentResolver;
    :goto_0
    return v3

    .line 150
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 151
    .local v1, e:Ljava/lang/IllegalStateException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateFolderDB(Ljava/lang/String;)Z
    .locals 3
    .parameter "title"

    .prologue
    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/android/browser/AddFolderPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 135
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    invoke-static {v2, v0, p1}, Lcom/android/browser/Folders;->addFolder(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    const/4 v2, 0x1

    .end local v0           #cr:Landroid/content/ContentResolver;
    :goto_0
    return v2

    .line 137
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 138
    .local v1, e:Ljava/lang/IllegalStateException;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 169
    iget-object v3, p0, Lcom/android/browser/AddFolderPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, title:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    move v0, v3

    .line 172
    .local v0, emptyTitle:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/AddFolderPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 174
    .local v1, r:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 175
    iget-object v3, p0, Lcom/android/browser/AddFolderPage;->mTitle:Landroid/widget/EditText;

    const v4, 0x7f090144

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 177
    :cond_0
    return-void

    .line 170
    .end local v0           #emptyTitle:Z
    .end local v1           #r:Landroid/content/res/Resources;
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x3

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0, v5}, Lcom/android/browser/AddFolderPage;->requestWindowFeature(I)Z

    .line 72
    const v3, 0x7f030008

    invoke-virtual {p0, v3}, Lcom/android/browser/AddFolderPage;->setContentView(I)V

    .line 73
    const v3, 0x7f09013b

    invoke-virtual {p0, v3}, Lcom/android/browser/AddFolderPage;->setTitle(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/browser/AddFolderPage;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f020026

    invoke-virtual {v3, v5, v4}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 76
    const/4 v2, 0x0

    .line 78
    .local v2, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/browser/AddFolderPage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/AddFolderPage;->mMap:Landroid/os/Bundle;

    .line 79
    iget-object v3, p0, Lcom/android/browser/AddFolderPage;->mMap:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 80
    iget-object v3, p0, Lcom/android/browser/AddFolderPage;->mMap:Landroid/os/Bundle;

    const-string v4, "folder"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 81
    .local v1, b:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 82
    iput-object v1, p0, Lcom/android/browser/AddFolderPage;->mMap:Landroid/os/Bundle;

    .line 83
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/browser/AddFolderPage;->mEditExisting:Z

    .line 84
    const-string v3, "Folders"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AddFolderPage: OnCreate editing = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/browser/AddFolderPage;->mEditExisting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const v3, 0x7f090140

    invoke-virtual {p0, v3}, Lcom/android/browser/AddFolderPage;->setTitle(I)V

    .line 87
    :cond_0
    iget-object v3, p0, Lcom/android/browser/AddFolderPage;->mMap:Landroid/os/Bundle;

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .end local v1           #b:Landroid/os/Bundle;
    :cond_1
    const v3, 0x7f0d0007

    invoke-virtual {p0, v3}, Lcom/android/browser/AddFolderPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/browser/AddFolderPage;->mTitle:Landroid/widget/EditText;

    .line 91
    iget-object v3, p0, Lcom/android/browser/AddFolderPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/android/browser/AddFolderPage;->mSaveFolder:Landroid/view/View$OnClickListener;

    .line 94
    .local v0, accept:Landroid/view/View$OnClickListener;
    const v3, 0x7f0d001d

    invoke-virtual {p0, v3}, Lcom/android/browser/AddFolderPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/browser/AddFolderPage;->mButton:Landroid/widget/TextView;

    .line 95
    iget-object v3, p0, Lcom/android/browser/AddFolderPage;->mButton:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v3, 0x7f0d001e

    invoke-virtual {p0, v3}, Lcom/android/browser/AddFolderPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/AddFolderPage;->mCancelButton:Landroid/view/View;

    .line 98
    iget-object v3, p0, Lcom/android/browser/AddFolderPage;->mCancelButton:Landroid/view/View;

    iget-object v4, p0, Lcom/android/browser/AddFolderPage;->mCancel:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/browser/AddFolderPage;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 101
    iget-object v3, p0, Lcom/android/browser/AddFolderPage;->mButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    .line 103
    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 161
    return-void
.end method

.method save()Z
    .locals 12

    .prologue
    const v11, 0x7f090145

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v7, 0x0

    const-string v8, "title"

    .line 184
    invoke-direct {p0}, Lcom/android/browser/AddFolderPage;->createHandler()V

    .line 186
    iget-object v5, p0, Lcom/android/browser/AddFolderPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, title:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    move v1, v10

    .line 189
    .local v1, emptyTitle:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/AddFolderPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 191
    .local v3, r:Landroid/content/res/Resources;
    if-eqz v1, :cond_1

    .line 192
    iget-object v5, p0, Lcom/android/browser/AddFolderPage;->mTitle:Landroid/widget/EditText;

    const v6, 0x7f090144

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v5, v7

    .line 226
    :goto_1
    return v5

    .end local v1           #emptyTitle:Z
    .end local v3           #r:Landroid/content/res/Resources;
    :cond_0
    move v1, v7

    .line 187
    goto :goto_0

    .line 197
    .restart local v1       #emptyTitle:Z
    .restart local v3       #r:Landroid/content/res/Resources;
    :cond_1
    iget-boolean v5, p0, Lcom/android/browser/AddFolderPage;->mEditExisting:Z

    if-eqz v5, :cond_3

    .line 199
    invoke-direct {p0, v4}, Lcom/android/browser/AddFolderPage;->hasDuplicateFolder(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/browser/AddFolderPage;->mMap:Landroid/os/Bundle;

    const-string v6, "title"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 201
    iget-object v5, p0, Lcom/android/browser/AddFolderPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v5, v7

    .line 202
    goto :goto_1

    .line 205
    :cond_2
    iget-object v5, p0, Lcom/android/browser/AddFolderPage;->mMap:Landroid/os/Bundle;

    const-string v6, "title"

    invoke-virtual {v5, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v5, "Folders"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AddFolderPage: save() title="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/browser/AddFolderPage;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/browser/AddFolderPage;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/browser/AddFolderPage;->mMap:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v9, v5}, Lcom/android/browser/AddFolderPage;->setResult(ILandroid/content/Intent;)V

    :goto_2
    move v5, v10

    .line 226
    goto :goto_1

    .line 212
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/browser/AddFolderPage;->hasDuplicateFolder(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 214
    iget-object v5, p0, Lcom/android/browser/AddFolderPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v5, v7

    .line 215
    goto :goto_1

    .line 218
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 219
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "title"

    invoke-virtual {v0, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v5, p0, Lcom/android/browser/AddFolderPage;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xc7

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 221
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 222
    iget-object v5, p0, Lcom/android/browser/AddFolderPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 223
    invoke-virtual {p0, v9}, Lcom/android/browser/AddFolderPage;->setResult(I)V

    goto :goto_2
.end method
