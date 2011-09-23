.class Lcom/android/browser/ActiveTabsPage$2;
.super Ljava/lang/Object;
.source "ActiveTabsPage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ActiveTabsPage;-><init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/TabControl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ActiveTabsPage;


# direct methods
.method constructor <init>(Lcom/android/browser/ActiveTabsPage;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/browser/ActiveTabsPage$2;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 86
    .local v0, needToAttach:Z
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage$2;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v1}, Lcom/android/browser/ActiveTabsPage;->access$000(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/BrowserActivity;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/browser/BrowserActivity;->switchToTab(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 88
    :goto_0
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage$2;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v1}, Lcom/android/browser/ActiveTabsPage;->access$000(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/BrowserActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserActivity;->removeActiveTabPage(Z)V

    .line 89
    return-void

    .line 86
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
