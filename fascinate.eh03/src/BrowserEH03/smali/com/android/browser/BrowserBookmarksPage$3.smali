.class Lcom/android/browser/BrowserBookmarksPage$3;
.super Ljava/lang/Object;
.source "BrowserBookmarksPage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserBookmarksPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserBookmarksPage;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserBookmarksPage;)V
    .locals 0
    .parameter

    .prologue
    .line 591
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 595
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1}, Lcom/android/browser/BrowserBookmarksPage;->access$700(Lcom/android/browser/BrowserBookmarksPage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    const-string v1, "browser"

    const-string v2, "item clicked when dismissing"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :goto_0
    return-void

    .line 599
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1}, Lcom/android/browser/BrowserBookmarksPage;->access$800(Lcom/android/browser/BrowserBookmarksPage;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 600
    if-nez p3, :cond_1

    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1}, Lcom/android/browser/BrowserBookmarksPage;->access$600(Lcom/android/browser/BrowserBookmarksPage;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 602
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1}, Lcom/android/browser/BrowserBookmarksPage;->access$000(Lcom/android/browser/BrowserBookmarksPage;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 605
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v1, p2, p3}, Lcom/android/browser/BrowserBookmarksPage;->isFolderItem(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 608
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1}, Lcom/android/browser/BrowserBookmarksPage;->access$200(Lcom/android/browser/BrowserBookmarksPage;)Lcom/android/browser/BrowserBookmarksAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v2}, Lcom/android/browser/BrowserBookmarksPage;->access$900(Lcom/android/browser/BrowserBookmarksPage;)Lcom/android/browser/FolderItem;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lcom/android/browser/BrowserBookmarksAdapter;->populateFolderItem(Lcom/android/browser/FolderItem;I)V

    .line 610
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1}, Lcom/android/browser/BrowserBookmarksPage;->access$900(Lcom/android/browser/BrowserBookmarksPage;)Lcom/android/browser/FolderItem;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/browser/FolderItem;->setVisibility(I)V

    .line 612
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1}, Lcom/android/browser/BrowserBookmarksPage;->access$300(Lcom/android/browser/BrowserBookmarksPage;)Lcom/android/browser/BookmarkViewMode;

    move-result-object v1

    sget-object v2, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v1, v2, :cond_2

    .line 614
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p3}, Lcom/android/browser/BrowserBookmarksPage;->showFolder(Landroid/view/View;I)V

    .line 621
    :goto_1
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1, p3}, Lcom/android/browser/BrowserBookmarksPage;->access$1002(Lcom/android/browser/BrowserBookmarksPage;I)I

    goto :goto_0

    .line 618
    :cond_2
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v1, p2, p3}, Lcom/android/browser/BrowserBookmarksPage;->showFolder(Landroid/view/View;I)V

    goto :goto_1

    .line 627
    :cond_3
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1, p3}, Lcom/android/browser/BrowserBookmarksPage;->access$1100(Lcom/android/browser/BrowserBookmarksPage;I)V

    goto :goto_0

    .line 630
    :cond_4
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1}, Lcom/android/browser/BrowserBookmarksPage;->access$200(Lcom/android/browser/BrowserBookmarksPage;)Lcom/android/browser/BrowserBookmarksAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserBookmarksAdapter;->getFolderCount()I

    move-result v1

    if-ge p3, v1, :cond_5

    .line 631
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    const v2, 0x7f09003a

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 634
    :cond_5
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1, p3}, Lcom/android/browser/BrowserBookmarksPage;->access$1200(Lcom/android/browser/BrowserBookmarksPage;I)Landroid/content/Intent;

    move-result-object v0

    .line 635
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    const/4 v2, -0x1

    invoke-static {v1, v2, v0}, Lcom/android/browser/BrowserBookmarksPage;->access$1300(Lcom/android/browser/BrowserBookmarksPage;ILandroid/content/Intent;)V

    .line 636
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v1}, Lcom/android/browser/BrowserBookmarksPage;->finish()V

    goto/16 :goto_0
.end method
