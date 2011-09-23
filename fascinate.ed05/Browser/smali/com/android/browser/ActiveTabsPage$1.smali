.class Lcom/android/browser/ActiveTabsPage$1;
.super Ljava/lang/Object;
.source "ActiveTabsPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 66
    iput-object p1, p0, Lcom/android/browser/ActiveTabsPage$1;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage$1;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v0}, Lcom/android/browser/ActiveTabsPage;->access$000(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->openTabToHomePage()Lcom/android/browser/Tab;

    .line 68
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage$1;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v0}, Lcom/android/browser/ActiveTabsPage;->access$000(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/BrowserActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->removeActiveTabPage(Z)V

    .line 69
    return-void
.end method
