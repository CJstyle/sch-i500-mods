.class Lcom/android/browser/SearchText$1;
.super Ljava/lang/Object;
.source "TextSelector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/SearchText;->onItemSelected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/SearchText;

.field final synthetic val$QuickSearch_D:Ljava/lang/String;

.field final synthetic val$mBrowserActivity:Landroid/content/Context;

.field final synthetic val$mSelectedText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/SearchText;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/browser/SearchText$1;->this$0:Lcom/android/browser/SearchText;

    iput-object p2, p0, Lcom/android/browser/SearchText$1;->val$mBrowserActivity:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/browser/SearchText$1;->val$mSelectedText:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/browser/SearchText$1;->val$QuickSearch_D:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "item"

    .prologue
    const-string v6, "%s"

    .line 369
    iget-object v2, p0, Lcom/android/browser/SearchText$1;->this$0:Lcom/android/browser/SearchText;

    iget-object v2, v2, Lcom/android/browser/SearchText;->mTextSelector:Lcom/android/browser/TextSelector;

    invoke-virtual {v2}, Lcom/android/browser/TextSelector;->GetTabControl()Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 372
    .local v1, parent:Lcom/android/browser/Tab;
    add-int/lit8 p2, p2, 0x1

    packed-switch p2, :pswitch_data_0

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 376
    :pswitch_0
    iget-object v2, p0, Lcom/android/browser/SearchText$1;->val$mBrowserActivity:Landroid/content/Context;

    check-cast v2, Lcom/android/browser/BrowserActivity;

    iget-object v3, p0, Lcom/android/browser/SearchText$1;->val$mSelectedText:Ljava/lang/String;

    const-string v4, "http://www.google.com/m?q=%s"

    const-string v5, "%s"

    invoke-static {v3, v4, v6}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/BrowserActivity;->openTab(Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v0

    .line 377
    .local v0, newTab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    .line 378
    invoke-virtual {v1, v0}, Lcom/android/browser/Tab;->addChildTab(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 384
    .end local v0           #newTab:Lcom/android/browser/Tab;
    :pswitch_1
    iget-object v2, p0, Lcom/android/browser/SearchText$1;->val$mBrowserActivity:Landroid/content/Context;

    check-cast v2, Lcom/android/browser/BrowserActivity;

    iget-object v3, p0, Lcom/android/browser/SearchText$1;->val$mSelectedText:Ljava/lang/String;

    const-string v4, "http://en.wikipedia.org/w/index.php?search=%s&go=Go"

    const-string v5, "%s"

    invoke-static {v3, v4, v6}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/BrowserActivity;->openTab(Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v0

    .line 385
    .restart local v0       #newTab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    .line 386
    invoke-virtual {v1, v0}, Lcom/android/browser/Tab;->addChildTab(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 392
    .end local v0           #newTab:Lcom/android/browser/Tab;
    :pswitch_2
    iget-object v2, p0, Lcom/android/browser/SearchText$1;->val$mBrowserActivity:Landroid/content/Context;

    check-cast v2, Lcom/android/browser/BrowserActivity;

    iget-object v3, p0, Lcom/android/browser/SearchText$1;->val$mSelectedText:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/browser/SearchText$1;->val$QuickSearch_D:Ljava/lang/String;

    const-string v5, "%s"

    invoke-static {v3, v4, v6}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/BrowserActivity;->openTab(Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v0

    .line 393
    .restart local v0       #newTab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    .line 394
    invoke-virtual {v1, v0}, Lcom/android/browser/Tab;->addChildTab(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 399
    .end local v0           #newTab:Lcom/android/browser/Tab;
    :pswitch_3
    iget-object v2, p0, Lcom/android/browser/SearchText$1;->val$mBrowserActivity:Landroid/content/Context;

    check-cast v2, Lcom/android/browser/BrowserActivity;

    iget-object v3, p0, Lcom/android/browser/SearchText$1;->val$mSelectedText:Ljava/lang/String;

    const-string v4, "http://translate.google.com/m?hl=en&sl=auto&tl=en&prev=_m&q=%s"

    const-string v5, "%s"

    invoke-static {v3, v4, v6}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/BrowserActivity;->openTab(Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v0

    .line 400
    .restart local v0       #newTab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    .line 401
    invoke-virtual {v1, v0}, Lcom/android/browser/Tab;->addChildTab(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 372
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
