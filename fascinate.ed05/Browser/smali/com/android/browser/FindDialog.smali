.class Lcom/android/browser/FindDialog;
.super Landroid/app/Dialog;
.source "FindDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mBrowserActivity:Lcom/android/browser/BrowserActivity;

.field private mEditText:Landroid/widget/EditText;

.field private mFindCancelListener:Landroid/view/View$OnClickListener;

.field private mFindDialog:Z

.field private mFindListener:Landroid/view/View$OnClickListener;

.field private mFindPreviousListener:Landroid/view/View$OnClickListener;

.field private mMatches:Landroid/widget/TextView;

.field private mMatchesView:Landroid/view/View;

.field private mNextButton:Landroid/view/View;

.field private mPrevButton:Landroid/view/View;

.field private mTextBoxClickListener:Landroid/view/View$OnClickListener;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 104
    const v0, 0x7f0b0007

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 48
    new-instance v0, Lcom/android/browser/FindDialog$1;

    invoke-direct {v0, p0}, Lcom/android/browser/FindDialog$1;-><init>(Lcom/android/browser/FindDialog;)V

    iput-object v0, p0, Lcom/android/browser/FindDialog;->mFindListener:Landroid/view/View$OnClickListener;

    .line 54
    new-instance v0, Lcom/android/browser/FindDialog$2;

    invoke-direct {v0, p0}, Lcom/android/browser/FindDialog$2;-><init>(Lcom/android/browser/FindDialog;)V

    iput-object v0, p0, Lcom/android/browser/FindDialog;->mFindCancelListener:Landroid/view/View$OnClickListener;

    .line 62
    new-instance v0, Lcom/android/browser/FindDialog$3;

    invoke-direct {v0, p0}, Lcom/android/browser/FindDialog$3;-><init>(Lcom/android/browser/FindDialog;)V

    iput-object v0, p0, Lcom/android/browser/FindDialog;->mTextBoxClickListener:Landroid/view/View$OnClickListener;

    .line 72
    new-instance v0, Lcom/android/browser/FindDialog$4;

    invoke-direct {v0, p0}, Lcom/android/browser/FindDialog$4;-><init>(Lcom/android/browser/FindDialog;)V

    iput-object v0, p0, Lcom/android/browser/FindDialog;->mFindPreviousListener:Landroid/view/View$OnClickListener;

    .line 105
    iput-object p1, p0, Lcom/android/browser/FindDialog;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/FindDialog;->setCanceledOnTouchOutside(Z)V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/FindDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->findNext()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/FindDialog;)Lcom/android/browser/BrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/FindDialog;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/FindDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->hideSoftInput()V

    return-void
.end method

.method private disableButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mPrevButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mNextButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 95
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mPrevButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 96
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mNextButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 97
    return-void
.end method

.method private findNext()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindDialog::findNext"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->findNext(Z)V

    .line 167
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->hideSoftInput()V

    .line 168
    return-void
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/browser/FindDialog;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 89
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 90
    return-void
.end method

.method private setMatchesFound(I)V
    .locals 6
    .parameter "found"

    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/browser/FindDialog;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, template:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/FindDialog;->mMatches:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 259
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 186
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 145
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->closeFind()V

    .line 146
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->notifyFindDialogDismissed()V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/FindDialog;->mFindDialog:Z

    .line 149
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 153
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->findNext()V

    move v0, v2

    .line 159
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getFindDialog()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/android/browser/FindDialog;->mFindDialog:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/browser/FindDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 114
    .local v1, theWindow:Landroid/view/Window;
    const/16 v2, 0x57

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 116
    const v2, 0x7f03000a

    invoke-virtual {p0, v2}, Lcom/android/browser/FindDialog;->setContentView(I)V

    .line 118
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 121
    const v2, 0x7f0d0031

    invoke-virtual {p0, v2}, Lcom/android/browser/FindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    .line 123
    const v2, 0x7f0d000b

    invoke-virtual {p0, v2}, Lcom/android/browser/FindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, button:Landroid/view/View;
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mFindListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iput-object v0, p0, Lcom/android/browser/FindDialog;->mNextButton:Landroid/view/View;

    .line 127
    const v2, 0x7f0d000a

    invoke-virtual {p0, v2}, Lcom/android/browser/FindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 128
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mFindPreviousListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iput-object v0, p0, Lcom/android/browser/FindDialog;->mPrevButton:Landroid/view/View;

    .line 131
    const v2, 0x7f0d0032

    invoke-virtual {p0, v2}, Lcom/android/browser/FindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 132
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mFindCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/browser/FindDialog;->mTextBoxClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v2, 0x7f0d0034

    invoke-virtual {p0, v2}, Lcom/android/browser/FindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/browser/FindDialog;->mMatches:Landroid/widget/TextView;

    .line 137
    const v2, 0x7f0d0033

    invoke-virtual {p0, v2}, Lcom/android/browser/FindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/FindDialog;->mMatchesView:Landroid/view/View;

    .line 138
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->disableButtons()V

    .line 139
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 141
    return-void
.end method

.method public onPageContentChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 222
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    if-nez v2, :cond_0

    .line 223
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "No WebView for FindDialog::onPageContentChanged"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 226
    :cond_0
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 227
    .local v0, find:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 228
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->disableButtons()V

    .line 229
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearMatches()V

    .line 230
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mMatchesView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 249
    :cond_1
    :goto_0
    return-void

    .line 232
    :cond_2
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mMatchesView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/android/browser/FindDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setFindDialogHeight(I)V

    .line 235
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->findAll(Ljava/lang/String;)I

    move-result v1

    .line 236
    .local v1, found:I
    invoke-direct {p0, v1}, Lcom/android/browser/FindDialog;->setMatchesFound(I)V

    .line 237
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 238
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->disableButtons()V

    .line 239
    if-nez v1, :cond_1

    .line 240
    invoke-direct {p0, v5}, Lcom/android/browser/FindDialog;->setMatchesFound(I)V

    goto :goto_0

    .line 243
    :cond_3
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mPrevButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 244
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mNextButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 245
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mPrevButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 246
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mNextButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 192
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    if-nez v2, :cond_0

    .line 193
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "No WebView for FindDialog::onTextChanged"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 196
    :cond_0
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 197
    .local v0, find:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 198
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->disableButtons()V

    .line 199
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearMatches()V

    .line 200
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mMatchesView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 219
    :cond_1
    :goto_0
    return-void

    .line 202
    :cond_2
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mMatchesView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/android/browser/FindDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setFindDialogHeight(I)V

    .line 205
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->findAll(Ljava/lang/String;)I

    move-result v1

    .line 206
    .local v1, found:I
    invoke-direct {p0, v1}, Lcom/android/browser/FindDialog;->setMatchesFound(I)V

    .line 207
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 208
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->disableButtons()V

    .line 209
    if-nez v1, :cond_1

    .line 210
    invoke-direct {p0, v5}, Lcom/android/browser/FindDialog;->setMatchesFound(I)V

    goto :goto_0

    .line 213
    :cond_3
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mPrevButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 214
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mNextButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 215
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mPrevButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 216
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mNextButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setFindDialog(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/android/browser/FindDialog;->mFindDialog:Z

    .line 263
    return-void
.end method

.method setWebView(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "webview"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    .line 101
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 171
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 172
    iget-object v1, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 173
    iget-object v1, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v1, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 175
    .local v0, span:Landroid/text/Spannable;
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    const/16 v2, 0x12

    invoke-interface {v0, p0, v3, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 177
    invoke-direct {p0, v3}, Lcom/android/browser/FindDialog;->setMatchesFound(I)V

    .line 178
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->disableButtons()V

    .line 179
    return-void
.end method
