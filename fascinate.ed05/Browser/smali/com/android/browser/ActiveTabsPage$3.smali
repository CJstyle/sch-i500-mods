.class Lcom/android/browser/ActiveTabsPage$3;
.super Ljava/lang/Object;
.source "ActiveTabsPage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 107
    iput-object p1, p0, Lcom/android/browser/ActiveTabsPage$3;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage$3;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v1}, Lcom/android/browser/ActiveTabsPage;->access$100(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 95
    .local v0, tab:Lcom/android/browser/Tab;
    invoke-virtual {v0}, Lcom/android/browser/Tab;->populatePickerData()V

    .line 96
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage$3;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v1}, Lcom/android/browser/ActiveTabsPage;->access$200(Lcom/android/browser/ActiveTabsPage;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f090146

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 104
    :goto_0
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage$3;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v1}, Lcom/android/browser/ActiveTabsPage;->access$300(Lcom/android/browser/ActiveTabsPage;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage$3;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v1}, Lcom/android/browser/ActiveTabsPage;->access$200(Lcom/android/browser/ActiveTabsPage;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
