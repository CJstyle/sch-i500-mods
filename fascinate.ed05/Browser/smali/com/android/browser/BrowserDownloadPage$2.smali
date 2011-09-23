.class Lcom/android/browser/BrowserDownloadPage$2;
.super Ljava/lang/Object;
.source "BrowserDownloadPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserDownloadPage;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserDownloadPage;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserDownloadPage;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/browser/BrowserDownloadPage$2;->this$0:Lcom/android/browser/BrowserDownloadPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadPage$2;->this$0:Lcom/android/browser/BrowserDownloadPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/browser/BrowserDownloadPage;->access$200(Lcom/android/browser/BrowserDownloadPage;Z)V

    .line 252
    return-void
.end method
