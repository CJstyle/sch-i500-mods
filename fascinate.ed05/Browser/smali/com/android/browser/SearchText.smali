.class Lcom/android/browser/SearchText;
.super Lcom/android/browser/ToolTipItem;
.source "TextSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final INITIAL_PROGRESS:I = 0xa

.field static final LOGTAG:Ljava/lang/String; = "SearchText"

.field private static final SHORTCUT_DICTIONARY_SEARCH:I = 0x4

.field private static final SHORTCUT_GOOGLE_SEARCH:I = 0x1

.field private static final SHORTCUT_GOOGLE_TRANSLATE_SEARCH:I = 0x2

.field private static final SHORTCUT_INVALID:I = 0x0

.field private static final SHORTCUT_WIKIPEDIA_SEARCH:I = 0x3


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
    .locals 15

    .prologue
    .line 346
    iget-object v13, p0, Lcom/android/browser/SearchText;->mTextSelector:Lcom/android/browser/TextSelector;

    invoke-virtual {v13}, Lcom/android/browser/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 349
    .local v6, mBrowserActivity:Landroid/content/Context;
    iget-object v13, p0, Lcom/android/browser/SearchText;->mTextSelector:Lcom/android/browser/TextSelector;

    invoke-virtual {v13}, Lcom/android/browser/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/webkit/WebView;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v12

    .line 350
    .local v12, wtsc:Landroid/webkit/WebTextSelectionControls;
    const-string v7, ""

    .line 351
    .local v7, mPrepareSelectedText:Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 352
    invoke-virtual {v12}, Landroid/webkit/WebTextSelectionControls;->getSelectionText()Ljava/lang/String;

    move-result-object v7

    .line 355
    :cond_0
    move-object v9, v7

    .line 359
    .local v9, mSelectedText:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget-object v13, v13, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    .line 360
    .local v8, mSelectedLanguage:Ljava/lang/String;
    iget-object v13, p0, Lcom/android/browser/SearchText;->mTextSelector:Lcom/android/browser/TextSelector;

    invoke-virtual {v13}, Lcom/android/browser/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v10

    .line 363
    .local v10, mWebView:Landroid/webkit/WebView;
    const-string v2, "http://www.google.com/m?q=%s"

    .line 365
    .local v2, QuickSearch_G:Ljava/lang/String;
    const-string v4, "http://en.wikipedia.org/w/index.php?search=%s&go=Go"

    .line 368
    .local v4, QuickSearch_W:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "http://www.google.com/dictionary?langpair="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&q=%s&hl="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&aq=f"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, QuickSearch_D:Ljava/lang/String;
    const-string v3, "http://translate.google.com/m?hl=en&sl=auto&tl=en&prev=_m&q=%s"

    .line 373
    .local v3, QuickSearch_T:Ljava/lang/String;
    const-string v0, "%s"

    .line 375
    .local v0, QUERY_PLACE_HOLDER:Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v5, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 376
    .local v5, builder:Landroid/app/AlertDialog$Builder;
    const v13, 0x7f090136

    invoke-virtual {v5, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 377
    const v13, 0x7f060065

    new-instance v14, Lcom/android/browser/SearchText$1;

    invoke-direct {v14, p0, v6, v9, v1}, Lcom/android/browser/SearchText$1;-><init>(Lcom/android/browser/SearchText;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v13, v14}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 417
    iget-object v13, p0, Lcom/android/browser/SearchText;->mTextSelector:Lcom/android/browser/TextSelector;

    invoke-virtual {v13}, Lcom/android/browser/TextSelector;->clearSelection()V

    .line 419
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    .line 420
    .local v11, searchPopup:Landroid/app/AlertDialog;
    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    .line 421
    return-void
.end method
