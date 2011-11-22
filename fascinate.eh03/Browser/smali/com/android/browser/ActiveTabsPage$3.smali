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
    .line 125
    iput-object p1, p0, Lcom/android/browser/ActiveTabsPage$3;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 127
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/android/browser/ActiveTabsPage$3;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v4}, Lcom/android/browser/ActiveTabsPage;->access$100(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/TabControl;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v3

    .line 128
    .local v3, tab:Lcom/android/browser/Tab;
    invoke-virtual {v3}, Lcom/android/browser/Tab;->populatePickerData()V

    .line 129
    invoke-virtual {v3}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 131
    iget-object v4, p0, Lcom/android/browser/ActiveTabsPage$3;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v4}, Lcom/android/browser/ActiveTabsPage;->access$200(Lcom/android/browser/ActiveTabsPage;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f090148

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 140
    :goto_0
    iget-object v4, p0, Lcom/android/browser/ActiveTabsPage$3;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v4}, Lcom/android/browser/ActiveTabsPage;->access$100(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/TabControl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v0

    .line 141
    .local v0, count:I
    add-int/lit8 v2, p3, 0x1

    .line 142
    .local v2, positionCount:I
    const/4 v1, 0x0

    .local v1, pageIndicator:I
    :goto_1
    iget-object v4, p0, Lcom/android/browser/ActiveTabsPage$3;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v4}, Lcom/android/browser/ActiveTabsPage;->access$300(Lcom/android/browser/ActiveTabsPage;)I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 144
    iget-object v4, p0, Lcom/android/browser/ActiveTabsPage$3;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v4}, Lcom/android/browser/ActiveTabsPage;->access$400(Lcom/android/browser/ActiveTabsPage;)Landroid/widget/LinearLayout;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/browser/ActiveTabsPage$3;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v4}, Lcom/android/browser/ActiveTabsPage;->access$500(Lcom/android/browser/ActiveTabsPage;)[Landroid/widget/TextView;

    move-result-object v4

    aget-object v4, v4, v1

    if-eqz v4, :cond_0

    .line 146
    if-ge v1, v0, :cond_0

    .line 147
    if-ne v1, p3, :cond_2

    .line 148
    iget-object v4, p0, Lcom/android/browser/ActiveTabsPage$3;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v4}, Lcom/android/browser/ActiveTabsPage;->access$500(Lcom/android/browser/ActiveTabsPage;)[Landroid/widget/TextView;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v4, p0, Lcom/android/browser/ActiveTabsPage$3;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v4}, Lcom/android/browser/ActiveTabsPage;->access$500(Lcom/android/browser/ActiveTabsPage;)[Landroid/widget/TextView;

    move-result-object v4

    aget-object v4, v4, v1

    const v5, 0x7f020013

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 142
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 135
    .end local v0           #count:I
    .end local v1           #pageIndicator:I
    .end local v2           #positionCount:I
    :cond_1
    iget-object v4, p0, Lcom/android/browser/ActiveTabsPage$3;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v4}, Lcom/android/browser/ActiveTabsPage;->access$200(Lcom/android/browser/ActiveTabsPage;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 152
    .restart local v0       #count:I
    .restart local v1       #pageIndicator:I
    .restart local v2       #positionCount:I
    :cond_2
    iget-object v4, p0, Lcom/android/browser/ActiveTabsPage$3;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v4}, Lcom/android/browser/ActiveTabsPage;->access$500(Lcom/android/browser/ActiveTabsPage;)[Landroid/widget/TextView;

    move-result-object v4

    aget-object v4, v4, v1

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v4, p0, Lcom/android/browser/ActiveTabsPage$3;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v4}, Lcom/android/browser/ActiveTabsPage;->access$500(Lcom/android/browser/ActiveTabsPage;)[Landroid/widget/TextView;

    move-result-object v4

    aget-object v4, v4, v1

    const v5, 0x7f020014

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    .line 159
    :cond_3
    iget-object v4, p0, Lcom/android/browser/ActiveTabsPage$3;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v4}, Lcom/android/browser/ActiveTabsPage;->access$600(Lcom/android/browser/ActiveTabsPage;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    return-void
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
    .line 164
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
