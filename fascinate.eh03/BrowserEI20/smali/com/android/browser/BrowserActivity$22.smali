.class Lcom/android/browser/BrowserActivity$22;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4813
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$22;->this$0:Lcom/android/browser/BrowserActivity;

    iput-object p2, p0, Lcom/android/browser/BrowserActivity$22;->val$view:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 4816
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$22;->this$0:Lcom/android/browser/BrowserActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/browser/BrowserActivity;->access$2502(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 4822
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$22;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$1000(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/BrowserActivity$22;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Lcom/android/browser/TabControl;->getTabFromView(Landroid/webkit/WebView;)Lcom/android/browser/Tab;

    move-result-object v0

    .line 4823
    .local v0, tab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 4824
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$22;->this$0:Lcom/android/browser/BrowserActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/browser/BrowserActivity;->access$2400(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;Z)V

    .line 4826
    :cond_0
    return-void
.end method
