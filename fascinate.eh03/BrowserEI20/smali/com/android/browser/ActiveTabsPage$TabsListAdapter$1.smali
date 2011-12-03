.class Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;
.super Ljava/lang/Object;
.source "ActiveTabsPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

.field final synthetic val$closePosition:I

.field final synthetic val$tabCount:I

.field final synthetic val$updateTab:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/ActiveTabsPage$TabsListAdapter;IILcom/android/browser/Tab;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iput p2, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->val$closePosition:I

    iput p3, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->val$tabCount:I

    iput-object p4, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->val$updateTab:Lcom/android/browser/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    .line 355
    iget-object v3, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iget-object v3, v3, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v3}, Lcom/android/browser/ActiveTabsPage;->access$000(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/BrowserActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iget-object v4, v4, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v4}, Lcom/android/browser/ActiveTabsPage;->access$100(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/TabControl;

    move-result-object v4

    iget v5, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->val$closePosition:I

    invoke-virtual {v4, v5}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/browser/BrowserActivity;->closeTab(Lcom/android/browser/Tab;)V

    .line 359
    iget-object v3, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iget-object v3, v3, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v3}, Lcom/android/browser/ActiveTabsPage;->access$800(Lcom/android/browser/ActiveTabsPage;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 360
    iget-object v3, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iget-object v3, v3, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v3}, Lcom/android/browser/ActiveTabsPage;->access$800(Lcom/android/browser/ActiveTabsPage;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 363
    iget v3, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->val$tabCount:I

    if-ne v3, v6, :cond_0

    .line 364
    iget-object v3, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iget-object v3, v3, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v3}, Lcom/android/browser/ActiveTabsPage;->access$000(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/BrowserActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/BrowserActivity;->openTabToHomePage()Lcom/android/browser/Tab;

    .line 365
    iget-object v3, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iget-object v3, v3, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v3}, Lcom/android/browser/ActiveTabsPage;->access$000(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/BrowserActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/browser/BrowserActivity;->removeActiveTabPage(Z)V

    .line 407
    :goto_0
    return-void

    .line 368
    :cond_0
    iget v3, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->val$tabCount:I

    iget v4, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->val$closePosition:I

    add-int/lit8 v4, v4, 0x1

    if-eq v3, v4, :cond_1

    .line 370
    iget-object v3, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->val$updateTab:Lcom/android/browser/Tab;

    invoke-virtual {v3}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 371
    iget-object v3, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iget-object v3, v3, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v3}, Lcom/android/browser/ActiveTabsPage;->access$200(Lcom/android/browser/ActiveTabsPage;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f090148

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 376
    :goto_1
    iget-object v3, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iget-object v3, v3, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v3}, Lcom/android/browser/ActiveTabsPage;->access$600(Lcom/android/browser/ActiveTabsPage;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->val$updateTab:Lcom/android/browser/Tab;

    invoke-virtual {v4}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    :cond_1
    iget-object v3, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iget-object v3, v3, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v3}, Lcom/android/browser/ActiveTabsPage;->access$100(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/TabControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v0

    .line 381
    .local v0, count:I
    iget v3, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->val$closePosition:I

    add-int/lit8 v2, v3, 0x1

    .line 382
    .local v2, positionCount:I
    const/4 v1, 0x0

    .local v1, pageIndicator:I
    :goto_2
    iget-object v3, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iget-object v3, v3, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v3}, Lcom/android/browser/ActiveTabsPage;->access$300(Lcom/android/browser/ActiveTabsPage;)I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 384
    iget-object v3, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iget-object v3, v3, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v3}, Lcom/android/browser/ActiveTabsPage;->access$400(Lcom/android/browser/ActiveTabsPage;)Landroid/widget/LinearLayout;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iget-object v3, v3, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v3}, Lcom/android/browser/ActiveTabsPage;->access$500(Lcom/android/browser/ActiveTabsPage;)[Landroid/widget/TextView;

    move-result-object v3

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    .line 385
    iget-object v3, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iget-object v3, v3, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v3}, Lcom/android/browser/ActiveTabsPage;->access$400(Lcom/android/browser/ActiveTabsPage;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iget-object v4, v4, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v4}, Lcom/android/browser/ActiveTabsPage;->access$500(Lcom/android/browser/ActiveTabsPage;)[Landroid/widget/TextView;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 387
    if-ge v1, v0, :cond_2

    .line 388
    iget v3, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->val$closePosition:I

    if-ne v1, v3, :cond_4

    .line 389
    iget-object v3, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iget-object v3, v3, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v3}, Lcom/android/browser/ActiveTabsPage;->access$500(Lcom/android/browser/ActiveTabsPage;)[Landroid/widget/TextView;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v3, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iget-object v3, v3, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v3}, Lcom/android/browser/ActiveTabsPage;->access$500(Lcom/android/browser/ActiveTabsPage;)[Landroid/widget/TextView;

    move-result-object v3

    aget-object v3, v3, v1

    const v4, 0x7f020013

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 391
    iget-object v3, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iget-object v3, v3, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v3}, Lcom/android/browser/ActiveTabsPage;->access$400(Lcom/android/browser/ActiveTabsPage;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iget-object v4, v4, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v4}, Lcom/android/browser/ActiveTabsPage;->access$500(Lcom/android/browser/ActiveTabsPage;)[Landroid/widget/TextView;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 382
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 373
    .end local v0           #count:I
    .end local v1           #pageIndicator:I
    .end local v2           #positionCount:I
    :cond_3
    iget-object v3, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iget-object v3, v3, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v3}, Lcom/android/browser/ActiveTabsPage;->access$200(Lcom/android/browser/ActiveTabsPage;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->val$updateTab:Lcom/android/browser/Tab;

    invoke-virtual {v4}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 394
    .restart local v0       #count:I
    .restart local v1       #pageIndicator:I
    .restart local v2       #positionCount:I
    :cond_4
    iget-object v3, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iget-object v3, v3, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v3}, Lcom/android/browser/ActiveTabsPage;->access$500(Lcom/android/browser/ActiveTabsPage;)[Landroid/widget/TextView;

    move-result-object v3

    aget-object v3, v3, v1

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v3, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iget-object v3, v3, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v3}, Lcom/android/browser/ActiveTabsPage;->access$500(Lcom/android/browser/ActiveTabsPage;)[Landroid/widget/TextView;

    move-result-object v3

    aget-object v3, v3, v1

    const v4, 0x7f020014

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 396
    iget-object v3, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iget-object v3, v3, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v3}, Lcom/android/browser/ActiveTabsPage;->access$400(Lcom/android/browser/ActiveTabsPage;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iget-object v4, v4, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v4}, Lcom/android/browser/ActiveTabsPage;->access$500(Lcom/android/browser/ActiveTabsPage;)[Landroid/widget/TextView;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 403
    :cond_5
    iget-object v3, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    invoke-static {v3, v6}, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->access$902(Lcom/android/browser/ActiveTabsPage$TabsListAdapter;Z)Z

    .line 404
    iget-object v3, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    invoke-virtual {v3}, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method
