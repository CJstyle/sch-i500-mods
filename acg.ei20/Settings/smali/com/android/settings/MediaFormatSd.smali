.class public Lcom/android/settings/MediaFormatSd;
.super Landroid/app/Activity;
.source "MediaFormatSd.java"


# static fields
.field private static final KEYGUARD_REQUEST:I = 0x37

.field private static final TAG:Ljava/lang/String; = "MediaFormat"


# instance fields
.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mLockUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    new-instance v0, Lcom/android/settings/MediaFormatSd$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MediaFormatSd$1;-><init>(Lcom/android/settings/MediaFormatSd;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormatSd;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 128
    new-instance v0, Lcom/android/settings/MediaFormatSd$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MediaFormatSd$2;-><init>(Lcom/android/settings/MediaFormatSd;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MediaFormatSd;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/MediaFormatSd;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/MediaFormatSd;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/MediaFormatSd;->establishFinalConfirmationState()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mFinalView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormatSd;->mFinalView:Landroid/view/View;

    .line 142
    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mFinalView:Landroid/view/View;

    const v1, 0x7f0b007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MediaFormatSd;->mFinalButton:Landroid/widget/Button;

    .line 144
    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MediaFormatSd;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/MediaFormatSd;->setContentView(Landroid/view/View;)V

    .line 148
    return-void
.end method

.method private establishInitialState()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInitialView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030030

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInitialView:Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInitialView:Landroid/view/View;

    const v1, 0x7f0b0081

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInitiateButton:Landroid/widget/Button;

    .line 167
    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MediaFormatSd;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/MediaFormatSd;->setContentView(Landroid/view/View;)V

    .line 171
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .parameter "request"

    .prologue
    .line 98
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f090310

    invoke-virtual {p0, v1}, Lcom/android/settings/MediaFormatSd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f090311

    invoke-virtual {p0, v2}, Lcom/android/settings/MediaFormatSd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 106
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 108
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 114
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/android/settings/MediaFormatSd;->establishFinalConfirmationState()V

    goto :goto_0

    .line 116
    :cond_1
    if-nez p2, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/MediaFormatSd;->finish()V

    goto :goto_0

    .line 119
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MediaFormatSd;->establishInitialState()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    const/4 v0, 0x0

    .line 175
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 177
    iput-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInitialView:Landroid/view/View;

    .line 178
    iput-object v0, p0, Lcom/android/settings/MediaFormatSd;->mFinalView:Landroid/view/View;

    .line 179
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInflater:Landroid/view/LayoutInflater;

    .line 180
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormatSd;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 182
    invoke-direct {p0}, Lcom/android/settings/MediaFormatSd;->establishInitialState()V

    .line 183
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 193
    invoke-direct {p0}, Lcom/android/settings/MediaFormatSd;->establishInitialState()V

    .line 194
    return-void
.end method
