.class public Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;
.super Landroid/app/Activity;
.source "AxT9IMETutorial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBackButton:Landroid/widget/Button;

.field private mNextButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected doBackButton()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->setResult(I)V

    .line 122
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->finish()V

    .line 123
    return-void
.end method

.method protected doNextButton()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->setResult(I)V

    .line 131
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->finish()V

    .line 132
    return-void
.end method

.method protected initViews()V
    .locals 12

    .prologue
    const/16 v7, 0x2e

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 45
    const v5, 0x7f030021

    invoke-virtual {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->setContentView(I)V

    .line 58
    const/4 v5, 0x5

    new-array v1, v5, [Ljava/lang/String;

    .line 60
    .local v1, tmp:[Ljava/lang/String;
    const v5, 0x7f070067

    invoke-virtual {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 61
    .local v2, tv01:Landroid/widget/TextView;
    const v5, 0x7f070069

    invoke-virtual {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 62
    .local v3, tv02:Landroid/widget/TextView;
    const v5, 0x7f07006a

    invoke-virtual {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 64
    .local v4, tv03:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00bb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v10

    .line 65
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00bc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v9

    .line 67
    aget-object v5, v1, v9

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    aget-object v5, v1, v9

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00c0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v10

    .line 71
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00c1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00c2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v9

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00c3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v11

    .line 75
    aget-object v5, v1, v10

    aget-object v6, v1, v10

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_0

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v10

    .line 79
    :cond_0
    aget-object v5, v1, v8

    aget-object v6, v1, v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_1

    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    .line 83
    :cond_1
    aget-object v5, v1, v9

    aget-object v6, v1, v9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_2

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v9

    .line 87
    :cond_2
    aget-object v5, v1, v11

    aget-object v6, v1, v11

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_3

    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v11

    .line 91
    :cond_3
    const/4 v5, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v1, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 92
    const/4 v5, 0x4

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const v5, 0x7f070072

    invoke-virtual {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->mNextButton:Landroid/widget/Button;

    .line 97
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->mNextButton:Landroid/widget/Button;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    :cond_4
    const v5, 0x7f070071

    invoke-virtual {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->mBackButton:Landroid/widget/Button;

    .line 100
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->mBackButton:Landroid/widget/Button;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "hasNextScreen"

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 103
    .local v0, hasNextScreen:Z
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->mNextButton:Landroid/widget/Button;

    if-eqz v5, :cond_6

    if-nez v0, :cond_6

    .line 105
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->mNextButton:Landroid/widget/Button;

    const v6, 0x7f0a0023

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 108
    :cond_6
    invoke-virtual {p0, v8}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->setRequestedOrientation(I)V

    .line 109
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 110
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->mNextButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->doNextButton()V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->mBackButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->doBackButton()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->initViews()V

    .line 42
    return-void
.end method
