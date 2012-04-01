.class Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;
.super Ljava/lang/Object;
.source "FrequentListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 516
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v8, 0x0

    const-string v3, "test"

    .line 518
    check-cast p1, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    .line 519
    invoke-virtual {p1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->getInterceptTouchPosition()I

    move-result v0

    .line 520
    if-eq v0, p3, :cond_0

    .line 521
    const-string v1, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interceptPos != index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Ipos : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :goto_0
    return-void

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    iput-object v0, v1, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->viewData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    .line 528
    const-string v0, "test"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->viewData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;->iSepTag:I

    if-ne v0, v5, :cond_4

    .line 531
    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    const-class v1, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 532
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->viewData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;->number:Ljava/lang/String;

    .line 533
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 534
    const-string v0, "-1"

    move-object v3, v0

    .line 540
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v8

    const/4 v5, 0x1

    const-string v7, "number"

    aput-object v7, v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "number=\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 545
    if-eqz v0, :cond_1

    .line 546
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 547
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 548
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 549
    const-string v0, "id"

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 550
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->startActivity(Landroid/content/Intent;)V

    .line 558
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->setAdapter()V

    .line 559
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->onResume()V

    .line 560
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$900(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->invalidate()V

    .line 561
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$1000(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->invalidate()V

    goto/16 :goto_0

    .line 535
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 536
    const-string v0, "-2"

    move-object v3, v0

    goto :goto_1

    .line 537
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 538
    const-string v0, "-3"

    move-object v3, v0

    goto/16 :goto_1

    .line 553
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->viewData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;->contact_id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 554
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/contacts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 555
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 556
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_5
    move-object v3, v0

    goto/16 :goto_1
.end method
