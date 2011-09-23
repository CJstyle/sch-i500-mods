.class Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;
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
    .line 1204
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 16
    .parameter "av"
    .parameter "v"
    .parameter "index"
    .parameter "id"

    .prologue
    .line 1205
    if-eqz p3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    move-object v4, v0

    invoke-static {v4}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$1100(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)I

    move-result v4

    move/from16 v0, p3

    move v1, v4

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    move-object v4, v0

    invoke-static {v4}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$1500(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1242
    :cond_0
    :goto_0
    return-void

    .line 1209
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    move-object v4, v0

    invoke-static {v4}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$1100(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    move-object v5, v0

    invoke-static {v5}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$1300(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)I

    move-result v5

    move/from16 v0, p3

    move v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getIsFrequentView(III)Z

    move-result v13

    .line 1210
    .local v13, isFrequentView:Z
    if-eqz v13, :cond_3

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    move-object v4, v0

    invoke-static {v4}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$1400(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Landroid/database/MergeCursor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/database/MergeCursor;->getInt(I)I

    move-result v4

    const/16 v5, -0x64

    if-eq v4, v5, :cond_0

    .line 1213
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    move-object v4, v0

    const-class v5, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;

    invoke-direct {v12, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1214
    .local v12, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    move-object v4, v0

    invoke-static {v4}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$1400(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Landroid/database/MergeCursor;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/database/MergeCursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1215
    .local v15, number:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

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

    const-string v7, "number=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1220
    .local v14, logsCursor:Landroid/database/Cursor;
    if-eqz v14, :cond_0

    .line 1221
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 1222
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1223
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p4

    .line 1224
    const-string v4, "id"

    move-object v0, v12

    move-object v1, v4

    move-wide/from16 v2, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    move-object v4, v0

    invoke-virtual {v4, v12}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->startActivity(Landroid/content/Intent;)V

    .line 1227
    :cond_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1231
    .end local v12           #intent:Landroid/content/Intent;
    .end local v14           #logsCursor:Landroid/database/Cursor;
    .end local v15           #number:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    move-object v4, v0

    invoke-static {v4}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$1400(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Landroid/database/MergeCursor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/database/MergeCursor;->getInt(I)I

    move-result v4

    const/16 v5, -0x64

    if-eq v4, v5, :cond_0

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    move-object v4, v0

    invoke-static {v4}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$1400(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Landroid/database/MergeCursor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/database/MergeCursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1234
    .local v11, contactID:Ljava/lang/String;
    const-string v4, "-15"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "-10"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1235
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

    .line 1237
    .local v10, bufId:Ljava/lang/StringBuffer;
    new-instance v12, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v12, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1238
    .restart local v12       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    move-object v4, v0

    invoke-virtual {v4, v12}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
