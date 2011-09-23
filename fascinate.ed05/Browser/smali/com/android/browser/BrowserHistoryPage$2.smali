.class Lcom/android/browser/BrowserHistoryPage$2;
.super Ljava/lang/Object;
.source "BrowserHistoryPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserHistoryPage;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserHistoryPage;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserHistoryPage;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/browser/BrowserHistoryPage$2;->this$0:Lcom/android/browser/BrowserHistoryPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$2;->this$0:Lcom/android/browser/BrowserHistoryPage;

    invoke-virtual {v0}, Lcom/android/browser/BrowserHistoryPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Browser;->clearHistory(Landroid/content/ContentResolver;)V

    .line 191
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$2;->this$0:Lcom/android/browser/BrowserHistoryPage;

    invoke-virtual {v0}, Lcom/android/browser/BrowserHistoryPage;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/browser/CombinedBookmarkHistoryActivity;

    invoke-virtual {v0}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->removeParentChildRelationShips()V

    .line 193
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$2;->this$0:Lcom/android/browser/BrowserHistoryPage;

    invoke-static {v0}, Lcom/android/browser/BrowserHistoryPage;->access$000(Lcom/android/browser/BrowserHistoryPage;)Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->refreshData()V

    .line 194
    return-void
.end method
