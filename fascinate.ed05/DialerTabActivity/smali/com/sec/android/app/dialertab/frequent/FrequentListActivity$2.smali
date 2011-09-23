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
    .line 517
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 17
    .parameter "av"
    .parameter "v"
    .parameter "index"
    .parameter "id"

    .prologue
    .line 518
    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    move-object v12, v0

    .line 519
    .local v12, fgv:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;
    invoke-virtual {v12}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->getInterceptTouchPosition()I

    move-result v14

    .line 520
    .local v14, interceptPos:I
    move v0, v14

    move/from16 v1, p3

    if-eq v0, v1, :cond_0

    .line 521
    const-string v4, "test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interceptPos != index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Ipos : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    .end local p1
    :goto_0
    return-void

    .line 526
    .restart local p1
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    move-object v4, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    move-object/from16 v0, p1

    move-object v1, v4

    iput-object v0, v1, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->viewData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    .line 528
    const-string v4, "test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    move-object v4, v0

    iget-object v4, v4, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->viewData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    iget v4, v4, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;->iSepTag:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 531
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    move-object v4, v0

    const-class v5, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;

    invoke-direct {v13, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 532
    .local v13, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    move-object v4, v0

    iget-object v4, v4, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->viewData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    move-object v0, v4

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;->number:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 533
    .local v16, number:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 534
    const-string v16, "-1"

    .line 540
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "number"

    aput-object v8, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "number=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 545
    .local v15, logsCursor:Landroid/database/Cursor;
    if-eqz v15, :cond_2

    .line 546
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 547
    const/4 v4, 0x0

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p4

    .line 548
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 549
    const-string v4, "id"

    move-object v0, v13

    move-object v1, v4

    move-wide/from16 v2, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    move-object v4, v0

    invoke-virtual {v4, v13}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->startActivity(Landroid/content/Intent;)V

    .line 558
    .end local v15           #logsCursor:Landroid/database/Cursor;
    .end local v16           #number:Ljava/lang/String;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->setAdapter()V

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->onResume()V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    move-object v4, v0

    invoke-static {v4}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$900(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->invalidate()V

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    move-object v4, v0

    invoke-static {v4}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$1000(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->invalidate()V

    goto/16 :goto_0

    .line 535
    .restart local v16       #number:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090031

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 536
    const-string v16, "-2"

    goto/16 :goto_1

    .line 537
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090032

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 538
    const-string v16, "-3"

    goto/16 :goto_1

    .line 553
    .end local v13           #intent:Landroid/content/Intent;
    .end local v16           #number:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    move-object v4, v0

    iget-object v4, v4, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->viewData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    iget v4, v4, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;->contact_id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 554
    .local v11, contactID:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.android.contacts/contacts/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 555
    .local v10, bufId:Ljava/lang/StringBuffer;
    new-instance v13, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v13, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 556
    .restart local v13       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    move-object v4, v0

    invoke-virtual {v4, v13}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2
.end method
