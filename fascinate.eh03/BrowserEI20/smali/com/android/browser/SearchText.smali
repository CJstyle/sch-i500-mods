.class Lcom/android/browser/SearchText;
.super Lcom/android/browser/ToolTipItem;
.source "TextSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mTextSelector:Lcom/android/browser/TextSelector;


# direct methods
.method constructor <init>(Lcom/android/browser/TextSelector;I)V
    .locals 5
    .parameter "ts"
    .parameter "nStrId"

    .prologue
    const-string v4, "SearchText"

    .line 324
    invoke-direct {p0}, Lcom/android/browser/ToolTipItem;-><init>()V

    .line 313
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/browser/SearchText;->mTextSelector:Lcom/android/browser/TextSelector;

    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, strText:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 327
    const-string v2, "SearchText"

    const-string v2, "SearchText : ts is null"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :goto_0
    iput-object p1, p0, Lcom/android/browser/SearchText;->mTextSelector:Lcom/android/browser/TextSelector;

    .line 336
    return-void

    .line 329
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    .line 330
    .local v1, vWebView:Landroid/webkit/WebView;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/SearchText;->mstrText:Ljava/lang/String;

    .line 332
    const-string v2, "SearchText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SearchText : String - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/SearchText;->mstrText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/android/browser/SearchText;->onItemSelected()V

    .line 341
    return-void
.end method

.method public onItemSelected()V
    .locals 13

    .prologue
    .line 346
    iget-object v11, p0, Lcom/android/browser/SearchText;->mTextSelector:Lcom/android/browser/TextSelector;

    invoke-virtual {v11}, Lcom/android/browser/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 347
    .local v6, mBrowserActivity:Landroid/content/Context;
    iget-object v11, p0, Lcom/android/browser/SearchText;->mTextSelector:Lcom/android/browser/TextSelector;

    invoke-virtual {v11}, Lcom/android/browser/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/WebView;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/WebTextSelectionControls;->getSelectionText()Ljava/lang/String;

    move-result-object v8

    .line 348
    .local v8, mSelectedText:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v11, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 349
    .local v7, mSelectedLanguage:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/browser/SearchText;->mTextSelector:Lcom/android/browser/TextSelector;

    invoke-virtual {v11}, Lcom/android/browser/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v9

    .line 352
    .local v9, mWebView:Landroid/webkit/WebView;
    const-string v2, "http://www.google.com/m?q=%s"

    .line 354
    .local v2, QuickSearch_G:Ljava/lang/String;
    const-string v4, "http://en.wikipedia.org/w/index.php?search=%s&go=Go"

    .line 357
    .local v4, QuickSearch_W:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "http://www.google.com/dictionary?langpair="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&q=%s&hl="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&aq=f"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, QuickSearch_D:Ljava/lang/String;
    const-string v3, "http://translate.google.com/m?hl=en&sl=auto&tl=en&prev=_m&q=%s"

    .line 362
    .local v3, QuickSearch_T:Ljava/lang/String;
    const-string v0, "%s"

    .line 364
    .local v0, QUERY_PLACE_HOLDER:Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v5, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 365
    .local v5, builder:Landroid/app/AlertDialog$Builder;
    const v11, 0x7f090136

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 366
    const v11, 0x7f060069

    new-instance v12, Lcom/android/browser/SearchText$1;

    invoke-direct {v12, p0, v6, v8, v1}, Lcom/android/browser/SearchText$1;-><init>(Lcom/android/browser/SearchText;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v11, v12}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 406
    iget-object v11, p0, Lcom/android/browser/SearchText;->mTextSelector:Lcom/android/browser/TextSelector;

    invoke-virtual {v11}, Lcom/android/browser/TextSelector;->clearSelection()V

    .line 408
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 409
    .local v10, searchPopup:Landroid/app/AlertDialog;
    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 410
    return-void
.end method
